.class Lcom/loony/mitmdemo/Demo$SendRequest;
.super Landroid/os/AsyncTask;
.source "Demo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loony/mitmdemo/Demo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loony/mitmdemo/Demo;


# direct methods
.method private constructor <init>(Lcom/loony/mitmdemo/Demo;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/loony/mitmdemo/Demo$SendRequest;->this$0:Lcom/loony/mitmdemo/Demo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loony/mitmdemo/Demo;Lcom/loony/mitmdemo/Demo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/loony/mitmdemo/Demo;
    .param p2, "x1"    # Lcom/loony/mitmdemo/Demo$1;

    .line 47
    invoke-direct {p0, p1}, Lcom/loony/mitmdemo/Demo$SendRequest;-><init>(Lcom/loony/mitmdemo/Demo;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/loony/mitmdemo/Demo$SendRequest;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "urls"    # [Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/loony/mitmdemo/Demo$SendRequest;->sendPost()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "response":Ljava/lang/String;
    iget-object v1, p0, Lcom/loony/mitmdemo/Demo$SendRequest;->this$0:Lcom/loony/mitmdemo/Demo;

    new-instance v2, Lcom/loony/mitmdemo/Demo$SendRequest$1;

    invoke-direct {v2, p0, v0}, Lcom/loony/mitmdemo/Demo$SendRequest$1;-><init>(Lcom/loony/mitmdemo/Demo$SendRequest;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/loony/mitmdemo/Demo;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "secret"

    const-string v2, "Hacker are everywhere"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected sendPost()Ljava/lang/String;
    .locals 10

    .line 72
    const-string v0, "http://10.0.2.2:2451/api/v1.0/magic"

    .line 74
    .local v0, "url":Ljava/lang/String;
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 77
    .local v1, "JSON":Lokhttp3/MediaType;
    :try_start_0
    invoke-virtual {p0}, Lcom/loony/mitmdemo/Demo$SendRequest;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    .line 79
    .local v2, "requestJson":Lorg/json/JSONObject;
    new-instance v3, Lokhttp3/OkHttpClient;

    invoke-direct {v3}, Lokhttp3/OkHttpClient;-><init>()V

    .line 81
    .local v3, "client":Lokhttp3/OkHttpClient;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 82
    .local v4, "body":Lokhttp3/RequestBody;
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 83
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 86
    .local v5, "request":Lokhttp3/Request;
    invoke-virtual {v3, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v6}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v6

    .line 87
    .local v6, "response":Lokhttp3/Response;
    const/4 v7, 0x0

    .line 88
    .local v7, "responseData":Ljava/lang/String;
    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    const-string v8, "Congratulations!"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 94
    .end local v2    # "requestJson":Lorg/json/JSONObject;
    .end local v3    # "client":Lokhttp3/OkHttpClient;
    .end local v4    # "body":Lokhttp3/RequestBody;
    .end local v5    # "request":Lokhttp3/Request;
    .end local v6    # "response":Lokhttp3/Response;
    .end local v7    # "responseData":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "ignore":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .end local v2    # "ignore":Ljava/lang/Exception;
    :goto_0
    const-string v2, "Sorry, not today"

    return-object v2
.end method
