package com.loony.mitmdemo;

import android.os.AsyncTask;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

import okhttp3.FormBody;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class Demo extends AppCompatActivity {

    Button sendButton;
    TextView textView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_demo);

        sendButton = (Button) findViewById(R.id.sendButton);
        textView = (TextView) findViewById(R.id.textView);

        sendButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sendButton.setClickable(false);
                textView.setText("Wait...");

                SendRequest sr = new SendRequest();
                sr.execute("test");
            }
        });

    }

    private class SendRequest extends AsyncTask<String, Void, Void> {
        /**
         * The system calls this to perform work in a worker thread and
         * delivers it the parameters given to AsyncTask.execute()
         */
        @Override
        protected Void doInBackground(String... urls) {
            final String response = sendPost();
            runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    textView.setText(response);
                    sendButton.setClickable(true);
                }
            });

            return null;
        }

        protected JSONObject getJSON() throws JSONException {
            return new JSONObject().put("secret","Hacker is everywhere");
        }

        protected String sendPost(){

            String url = "http://192.168.1.187:2451/api/v1.0/magic";

            MediaType JSON = MediaType.parse("application/json; charset=utf-8");

            try {
                JSONObject requestJson = getJSON();

                OkHttpClient client = new OkHttpClient();

                RequestBody body = RequestBody.create(JSON, requestJson.toString());
                Request request = new Request.Builder()
                        .url(url)
                        .addHeader("Cookie","secret_token")
                        .post(body)
                        .build();

                Response response = client.newCall(request).execute();
                String responseData = null;
                if ((response.body() != null)&&(response.body().string().contains("true"))) {
                    return "Congratulations!";
                }

            }catch (JSONException | IOException ignore) {
                ignore.printStackTrace();
            }
            return "Sorry, not today";
        }
    }
    }
