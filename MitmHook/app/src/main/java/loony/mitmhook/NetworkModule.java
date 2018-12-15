package loony.mitmhook;

import org.json.JSONException;
import org.json.JSONObject;


import java.io.IOException;

import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class NetworkModule {
    public static JSONObject sendPost(JSONObject jsonObject, String url) {



        MediaType JSON = MediaType.parse("application/json; charset=utf-8");

        try {
            OkHttpClient client = new OkHttpClient();


            RequestBody body = RequestBody.create(JSON, jsonObject.toString());
            Request request = new Request.Builder()
                    .url(url)
                    .post(body)
                    .build();

            Response response = client.newCall(request).execute();
            String responseData = null;
            if ((response.body() != null)) {
                JSONObject retJSON = new JSONObject(response.body().string());
                return retJSON;
            }

        } catch (IOException | JSONException e) {
            e.printStackTrace();
        }
        return null;
    }
}
