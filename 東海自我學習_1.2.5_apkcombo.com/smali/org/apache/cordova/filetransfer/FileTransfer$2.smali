.class Lorg/apache/cordova/filetransfer/FileTransfer$2;
.super Ljava/lang/Object;
.source "FileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/filetransfer/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

.field final synthetic val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

.field final synthetic val$headers:Lorg/json/JSONObject;

.field final synthetic val$isLocalTransfer:Z

.field final synthetic val$objectId:Ljava/lang/String;

.field final synthetic val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

.field final synthetic val$source:Ljava/lang/String;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/filetransfer/FileTransfer;Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;Ljava/lang/String;Lorg/apache/cordova/CordovaResourceApi;Landroid/net/Uri;ZLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iput-object p2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object p3, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iput-object p5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$sourceUri:Landroid/net/Uri;

    iput-boolean p6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$isLocalTransfer:Z

    iput-object p7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$headers:Lorg/json/JSONObject;

    iput-object p8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iput-object p9, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 725
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iget-boolean v0, v0, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 732
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 731
    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/cordova/CordovaResourceApi;->remapUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 743
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_16
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 744
    :try_start_1
    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v4, v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    const-string v5, "FileTransfer"

    .line 746
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Download file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$sourceUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v5, Lorg/apache/cordova/filetransfer/FileProgressResult;

    invoke-direct {v5}, Lorg/apache/cordova/filetransfer/FileProgressResult;-><init>()V

    .line 750
    iget-boolean v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$isLocalTransfer:Z

    if-eqz v6, :cond_3

    .line 751
    iget-object v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$sourceUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CordovaResourceApi;->openForRead(Landroid/net/Uri;)Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;

    move-result-object v6

    .line 752
    iget-wide v7, v6, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_2

    .line 753
    invoke-virtual {v5, v1}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLengthComputable(Z)V

    .line 754
    iget-wide v7, v6, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->length:J

    invoke-virtual {v5, v7, v8}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setTotal(J)V

    .line 756
    :cond_2
    new-instance v7, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;

    iget-object v6, v6, Lorg/apache/cordova/CordovaResourceApi$OpenForReadResult;->inputStream:Ljava/io/InputStream;

    invoke-direct {v7, v6}, Lorg/apache/cordova/filetransfer/FileTransfer$SimpleTrackingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v9, v3

    move-object v8, v7

    const/4 v6, 0x0

    move-object v7, v9

    goto/16 :goto_1

    .line 760
    :cond_3
    iget-object v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$sourceUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CordovaResourceApi;->createHttpConnection(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    :try_start_2
    const-string v7, "GET"

    .line 761
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 764
    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iget-object v8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$sourceUri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$000(Lorg/apache/cordova/filetransfer/FileTransfer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string v8, "cookie"

    .line 768
    invoke-virtual {v6, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    .line 772
    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$headers:Lorg/json/JSONObject;

    if-eqz v7, :cond_5

    .line 776
    iget-object v7, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$headers:Lorg/json/JSONObject;

    invoke-static {v6, v7}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$100(Ljava/net/URLConnection;Lorg/json/JSONObject;)V

    .line 779
    :cond_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 780
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    const/16 v8, 0x130

    if-ne v7, v8, :cond_6

    .line 782
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v7, "FileTransfer"

    .line 783
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Resource not modified: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    sget v7, Lorg/apache/cordova/filetransfer/FileTransfer;->NOT_MODIFIED_ERR:I

    iget-object v8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v9, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v7, v8, v9, v6, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v7

    .line 785
    new-instance v8, Lorg/apache/cordova/PluginResult;

    sget-object v9, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v8, v9, v7}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v7, v6

    move-object v9, v8

    const/4 v6, 0x1

    move-object v8, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    const/4 v6, 0x1

    goto/16 :goto_1c

    :catch_0
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_1a

    .line 787
    :cond_6
    :try_start_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gzip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 790
    :cond_7
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    .line 791
    invoke-virtual {v5, v1}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLengthComputable(Z)V

    .line 792
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v7, v8}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setTotal(J)V

    .line 795
    :cond_8
    invoke-static {v6}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$300(Ljava/net/URLConnection;)Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;

    move-result-object v7
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    move-object v9, v3

    move-object v8, v7

    move-object v7, v6

    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_10

    .line 801
    :try_start_5
    iget-object v10, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 802
    :try_start_6
    iget-object v11, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iget-boolean v11, v11, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->aborted:Z

    if-eqz v11, :cond_b

    .line 803
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 821
    :try_start_7
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    monitor-enter v0
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 822
    :try_start_8
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v3, v1, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 823
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 824
    :try_start_9
    invoke-static {v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V

    .line 825
    invoke-static {v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 882
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 883
    :try_start_a
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v9, :cond_9

    .line 887
    new-instance v9, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v1, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v1, v2, v5, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    :cond_9
    if-nez v6, :cond_a

    .line 890
    invoke-virtual {v9}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v0

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v1}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_a

    if-eqz v4, :cond_a

    .line 891
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 893
    :cond_a
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    invoke-virtual {v0, v9}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    :catchall_1
    move-exception v1

    .line 884
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    .line 823
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 805
    :cond_b
    :try_start_e
    iget-object v11, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v7, v11, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 806
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    const/16 v10, 0x4000

    .line 809
    :try_start_f
    new-array v10, v10, [B

    .line 811
    iget-object v11, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v11, v0}, Lorg/apache/cordova/CordovaResourceApi;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 812
    :goto_2
    :try_start_10
    invoke-virtual {v8, v10}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_c

    .line 813
    invoke-virtual {v11, v10, v2, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 815
    invoke-virtual {v8}, Lorg/apache/cordova/filetransfer/FileTransfer$TrackingInputStream;->getTotalRawBytesRead()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/apache/cordova/filetransfer/FileProgressResult;->setLoaded(J)V

    .line 816
    new-instance v12, Lorg/apache/cordova/PluginResult;

    sget-object v13, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v5}, Lorg/apache/cordova/filetransfer/FileProgressResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 817
    invoke-virtual {v12, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 818
    iget-object v13, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    invoke-virtual {v13, v12}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_2

    .line 821
    :cond_c
    :try_start_11
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    monitor-enter v1
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 822
    :try_start_12
    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v3, v5, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 823
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 824
    :try_start_13
    invoke-static {v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V

    .line 825
    invoke-static {v11}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V

    const-string v1, "FileTransfer"

    .line 828
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saved file: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iget-object v1, v1, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    const-string v5, "getPluginManager"

    .line 835
    new-array v8, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 836
    iget-object v8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iget-object v8, v8, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/PluginManager;
    :try_end_14
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    goto :goto_3

    :catch_4
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_d

    :try_start_15
    const-string v5, "pluginManager"

    .line 843
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 844
    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->this$0:Lorg/apache/cordova/filetransfer/FileTransfer;

    iget-object v5, v5, Lorg/apache/cordova/filetransfer/FileTransfer;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/PluginManager;
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_4

    :catch_5
    :cond_d
    move-object v1, v2

    .line 849
    :goto_4
    :try_start_16
    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CordovaResourceApi;->mapUriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 850
    :try_start_17
    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v0, v2, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->targetFile:Ljava/io/File;

    const-string v2, "File"

    .line 851
    invoke-virtual {v1, v2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/file/FileUtils;

    if-eqz v1, :cond_f

    .line 853
    invoke-virtual {v1, v0}, Lorg/apache/cordova/file/FileUtils;->getEntryForFile(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 855
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v4, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    :goto_5
    move-object v9, v2

    goto/16 :goto_b

    .line 857
    :cond_e
    sget v1, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v1, v2, v4, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "FileTransfer"

    const-string v4, "File plugin cannot represent download path"

    .line 858
    invoke-static {v2, v4}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v4, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_f
    const-string v1, "FileTransfer"

    const-string v2, "File plugin not found; cannot save downloaded file"

    .line 862
    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string v4, "File plugin not found; cannot save downloaded file"

    invoke-direct {v1, v2, v4}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_9
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    move-object v9, v1

    goto :goto_b

    :catchall_3
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_1c

    :catch_6
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_8

    :catch_8
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_9

    :catch_9
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_a

    :catchall_4
    move-exception v0

    .line 823
    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v0
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :catchall_5
    move-exception v0

    goto :goto_6

    :catchall_6
    move-exception v0

    .line 806
    :try_start_1a
    monitor-exit v10
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v11, v3

    .line 821
    :goto_6
    :try_start_1c
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 822
    :try_start_1d
    iget-object v2, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    iput-object v3, v2, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->connection:Ljava/net/HttpURLConnection;

    .line 823
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 824
    :try_start_1e
    invoke-static {v8}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V

    .line 825
    invoke-static {v11}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$200(Ljava/io/Closeable;)V

    .line 826
    throw v0
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :catchall_8
    move-exception v0

    .line 823
    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :try_start_20
    throw v0
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_a
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    :catchall_9
    move-exception v0

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    :goto_7
    move v1, v6

    goto/16 :goto_10

    :catch_b
    move-exception v0

    :goto_8
    move v1, v6

    goto/16 :goto_13

    :catch_c
    move-exception v0

    :goto_9
    move v1, v6

    goto/16 :goto_17

    :catch_d
    move-exception v0

    :goto_a
    move v1, v6

    goto/16 :goto_1a

    :cond_10
    move-object v0, v4

    .line 882
    :goto_b
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_21
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    if-nez v9, :cond_11

    .line 887
    new-instance v9, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v2, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v4, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v2, v4, v5, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    :cond_11
    if-nez v6, :cond_12

    .line 890
    invoke-virtual {v9}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_12

    if-eqz v0, :cond_12

    .line 891
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 893
    :cond_12
    iget-object v0, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    invoke-virtual {v0, v9}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_1b

    :catchall_a
    move-exception v0

    .line 884
    :try_start_22
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    throw v0

    :catchall_b
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto :goto_d

    :catch_e
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto :goto_f

    :catch_f
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_12

    :catch_10
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_16

    :catch_11
    move-exception v0

    move-object v9, v3

    move-object v7, v6

    goto/16 :goto_19

    :catchall_c
    move-exception v0

    move-object v7, v3

    goto :goto_c

    :catch_12
    move-exception v0

    move-object v7, v3

    goto :goto_e

    :catch_13
    move-exception v0

    move-object v7, v3

    goto :goto_11

    :catch_14
    move-exception v0

    move-object v7, v3

    goto/16 :goto_15

    :catch_15
    move-exception v0

    move-object v7, v3

    goto/16 :goto_18

    :catchall_d
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    :goto_c
    move-object v9, v7

    :goto_d
    const/4 v6, 0x0

    goto/16 :goto_1c

    :catch_16
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    :goto_e
    move-object v9, v7

    :goto_f
    const/4 v1, 0x0

    .line 878
    :goto_10
    :try_start_23
    sget v2, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v2, v5, v6, v7, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "FileTransfer"

    .line 879
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 880
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v5, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    .line 882
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 883
    :try_start_24
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    if-nez v1, :cond_13

    .line 890
    invoke-virtual {v0}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_13

    if-eqz v4, :cond_13

    goto :goto_14

    :catchall_e
    move-exception v0

    .line 884
    :try_start_25
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    throw v0

    :catch_17
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    :goto_11
    move-object v9, v7

    :goto_12
    const/4 v1, 0x0

    :goto_13
    :try_start_26
    const-string v2, "FileTransfer"

    .line 875
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 876
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    .line 882
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 883
    :try_start_27
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    if-nez v1, :cond_13

    .line 890
    invoke-virtual {v0}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_13

    if-eqz v4, :cond_13

    .line 891
    :goto_14
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 893
    :cond_13
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_1b

    :catchall_f
    move-exception v0

    .line 884
    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_f

    throw v0

    :catch_18
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    :goto_15
    move-object v9, v7

    :goto_16
    const/4 v1, 0x0

    .line 871
    :goto_17
    :try_start_29
    sget v2, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v2, v5, v6, v7, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "FileTransfer"

    .line 872
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 873
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v5, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    .line 882
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 883
    :try_start_2a
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    if-nez v1, :cond_13

    .line 890
    invoke-virtual {v0}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_13

    if-eqz v4, :cond_13

    goto :goto_14

    :catchall_10
    move-exception v0

    .line 884
    :try_start_2b
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    throw v0

    :catch_19
    move-exception v0

    move-object v4, v3

    move-object v7, v4

    :goto_18
    move-object v9, v7

    :goto_19
    const/4 v1, 0x0

    .line 867
    :goto_1a
    :try_start_2c
    sget v2, Lorg/apache/cordova/filetransfer/FileTransfer;->FILE_NOT_FOUND_ERR:I

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v2, v5, v6, v7, v0}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "FileTransfer"

    .line 868
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 869
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v5, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    .line 882
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 883
    :try_start_2d
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v3

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_11

    if-nez v1, :cond_13

    .line 890
    invoke-virtual {v0}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_13

    if-eqz v4, :cond_13

    goto/16 :goto_14

    :goto_1b
    return-void

    :catchall_11
    move-exception v0

    .line 884
    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_11

    throw v0

    :catchall_12
    move-exception v0

    move v6, v1

    .line 882
    :goto_1c
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 883
    :try_start_2f
    invoke-static {}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$500()Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$objectId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    if-nez v9, :cond_14

    .line 887
    new-instance v9, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    sget v2, Lorg/apache/cordova/filetransfer/FileTransfer;->CONNECTION_ERR:I

    iget-object v5, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$source:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$target:Ljava/lang/String;

    invoke-static {v2, v5, v8, v7, v3}, Lorg/apache/cordova/filetransfer/FileTransfer;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/net/URLConnection;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    :cond_14
    if-nez v6, :cond_15

    .line 890
    invoke-virtual {v9}, Lorg/apache/cordova/PluginResult;->getStatus()I

    move-result v1

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-virtual {v2}, Lorg/apache/cordova/PluginResult$Status;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_15

    if-eqz v4, :cond_15

    .line 891
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 893
    :cond_15
    iget-object v1, p0, Lorg/apache/cordova/filetransfer/FileTransfer$2;->val$context:Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;

    invoke-virtual {v1, v9}, Lorg/apache/cordova/filetransfer/FileTransfer$RequestContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 894
    throw v0

    :catchall_13
    move-exception v0

    .line 884
    :try_start_30
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_13

    throw v0

    return-void
.end method
