.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;
.super Ljava/lang/Object;
.source "BackgroundGeolocationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$data:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$data:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$data:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    .line 312
    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$data:Lorg/json/JSONArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v4, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0, v1, v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$500(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Ljava/lang/Integer;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 315
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/16 v2, 0x3eb

    const-string v3, "Getting logs failed"

    invoke-static {v3, v0, v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void
.end method
