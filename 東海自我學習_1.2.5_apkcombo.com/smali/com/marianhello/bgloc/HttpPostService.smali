.class public Lcom/marianhello/bgloc/HttpPostService;
.super Ljava/lang/Object;
.source "HttpPostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x400


# instance fields
.field private mHttpURLConnection:Ljava/net/HttpURLConnection;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/marianhello/bgloc/HttpPostService;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/marianhello/bgloc/HttpPostService;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private openConnection()Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/marianhello/bgloc/HttpPostService;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/marianhello/bgloc/HttpPostService;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/marianhello/bgloc/HttpPostService;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/HttpPostService;->mHttpURLConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public static postJSON(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Lcom/marianhello/bgloc/HttpPostService;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/HttpPostService;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1, p2}, Lcom/marianhello/bgloc/HttpPostService;->postJSON(Lorg/json/JSONArray;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static postJSON(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/marianhello/bgloc/HttpPostService;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/HttpPostService;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/marianhello/bgloc/HttpPostService;->postJSON(Lorg/json/JSONObject;Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static postJSONFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/marianhello/bgloc/HttpPostService;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/HttpPostService;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, p1, p2, p3}, Lcom/marianhello/bgloc/HttpPostService;->postJSONFile(Ljava/io/File;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public postJSON(Lorg/json/JSONArray;Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 62
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/HttpPostService;->postJSONString(Ljava/lang/String;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public postJSON(Lorg/json/JSONObject;Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    .line 53
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/HttpPostService;->postJSONString(Ljava/lang/String;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public postJSONFile(Ljava/io/File;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/marianhello/bgloc/HttpPostService;->postJSONFile(Ljava/io/InputStream;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I

    move-result p1

    return p1
.end method

.method public postJSONFile(Ljava/io/InputStream;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 102
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 105
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    .line 106
    invoke-direct {p0}, Lcom/marianhello/bgloc/HttpPostService;->openConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x1

    .line 109
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 110
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 111
    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_0
    const-string v4, "POST"

    .line 115
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    .line 116
    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 118
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    const/16 p2, 0x400

    .line 125
    new-array p2, p2, [B

    const/4 v6, 0x0

    .line 130
    :try_start_0
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 131
    :try_start_1
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {p1, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v7, p2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    .line 133
    invoke-virtual {p1, p2, v3, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 134
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    int-to-long v8, v6

    add-long/2addr v4, v8

    const-wide/16 v8, 0x64

    mul-long v8, v8, v4

    .line 136
    div-long/2addr v8, v0

    long-to-int v6, v8

    if-eqz p3, :cond_3

    .line 138
    invoke-interface {p3, v6}, Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;->onProgress(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 143
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 144
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    .line 147
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 151
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    return p1

    :catchall_0
    move-exception p2

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v6

    goto :goto_3

    :catchall_2
    move-exception p2

    move-object p1, v6

    move-object v7, p1

    :goto_3
    if-eqz p1, :cond_5

    .line 143
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 144
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v7, :cond_6

    .line 147
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 149
    :cond_6
    throw p2

    return-void
.end method

.method public postJSONString(Ljava/lang/String;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 67
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/marianhello/bgloc/HttpPostService;->openConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const-string v1, "POST"

    .line 73
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 76
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 83
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 89
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 93
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    move-object p2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 89
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    .line 91
    :cond_2
    throw p1

    return-void
.end method
