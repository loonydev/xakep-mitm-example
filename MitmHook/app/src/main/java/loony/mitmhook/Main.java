package loony.mitmhook;

import android.content.Context;
import android.util.Base64;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.nio.charset.Charset;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

import static de.robv.android.xposed.XposedHelpers.callMethod;
import static de.robv.android.xposed.XposedHelpers.callStaticMethod;
import static de.robv.android.xposed.XposedHelpers.findAndHookConstructor;
import static de.robv.android.xposed.XposedHelpers.findAndHookMethod;
import static de.robv.android.xposed.XposedHelpers.findClass;
import static de.robv.android.xposed.XposedHelpers.getObjectField;
import static de.robv.android.xposed.XposedHelpers.newInstance;
import static de.robv.android.xposed.XposedHelpers.setObjectField;

public class Main implements IXposedHookLoadPackage {

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam lpparam) throws Throwable {
        findAndHookMethod("android.app.Application",
                lpparam.classLoader,
                "attach",
                Context.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) throws Throwable {


                        if (lpparam.packageName.contains("com.loony.mitmdemo")) {
                            okhttpMitm(lpparam.classLoader);
                        }
                    }
                });
    }

    private JSONObject madeRequest(Object object) {
        JSONObject finalJSON = new JSONObject();
        try {
            finalJSON.put("url", getObjectField(object, "url"));
            finalJSON.put("method", callMethod(object, "method"));

            Object content = "null";

            try {
                Object body = callMethod(object, "body");
                content = getObjectField(body, "val$content");
            } catch (NullPointerException | NoSuchFieldError ignore) {

            }
            finalJSON.put("body", Base64.encodeToString((byte[]) content,Base64.DEFAULT));
            String[] namesAndValues = (String[]) getObjectField(callMethod(object, "headers"), "namesAndValues");
            finalJSON.put("headers", new JSONArray(namesAndValues));
//            System.out.println("hook_manager: "+finalJSON.toString());
//
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return finalJSON;
    }

    private JSONObject madeResponse(Object object) {
        JSONObject finalJSON = new JSONObject();
        try {
            finalJSON.put("code", getObjectField(object, "code"));
            finalJSON.put("message", getObjectField(object, "message"));

            String content = "null";
            if ((boolean) callMethod(object, "isSuccessful")) {
                try {

                    Object source = callMethod(getObjectField(object, "body"), "source");
                    callMethod(source, "request", Long.MAX_VALUE);
                    Object buffer = callMethod(source, "buffer");
                    Object cloned_buffer = callMethod(buffer, "clone");
                    content = Base64.encodeToString((byte[]) callMethod(cloned_buffer, "readByteArray"), Base64.DEFAULT);


                } catch (NullPointerException | NoSuchFieldError | IllegalStateException ignore) {

                }
            }

            finalJSON.put("body", content);
            String[] namesAndValues = (String[]) getObjectField(callMethod(object, "headers"), "namesAndValues");
            finalJSON.put("headers", new JSONArray(namesAndValues));

        } catch (JSONException e) {
            e.printStackTrace();
        }
        return finalJSON;
    }

    private void okhttpMitm(final ClassLoader classLoader) {
        try {
            classLoader.loadClass("okhttp3.RealCall");
            findAndHookMethod("okhttp3.RealCall", classLoader, "execute", new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    JSONObject requestJSON = madeRequest(callMethod(param.thisObject, "request"));
                    JSONObject task = NetworkModule.sendPost(requestJSON,"http://192.168.1.187:2452/api/v1.0/request");
                    System.out.println(task);
                    if ((task.getBoolean("success"))&&(task.getBoolean("task"))){
                        System.out.println("HERE");
//                        Object newByteString = newInstance(findClass("okio.ByteString",classLoader),);
                        Object mediaType = callStaticMethod(findClass("okhttp3.MediaType",classLoader),"parse","application/json; charset=utf-8");
                        byte[] newData = Base64.decode(task.getString("data"),Base64.DEFAULT);
                        Object newBody = callStaticMethod(findClass("okhttp3.RequestBody",classLoader),"create",mediaType,newData);

                        setObjectField(callMethod(param.thisObject, "request"),"body",newBody);
                    }
                    requestJSON = madeRequest(callMethod(param.thisObject, "request"));
                    System.out.println("hook_manager req: " + requestJSON);

                }

                @Override
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {

                    JSONObject responseJSON = madeResponse(param.getResult());
                    if (!responseJSON.getJSONArray("headers").getString(responseJSON.getJSONArray("headers").length() - 1).contains("gzip")) {
                                System.out.println("hook_manager res: " + responseJSON);
                    }
                }
            });
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

    }
}
