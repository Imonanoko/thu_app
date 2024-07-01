.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;
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


# direct methods
.method constructor <init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$300(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 230
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$200(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Getting all locations failed: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/16 v2, 0x3ec

    const-string v3, "Converting locations to JSON failed"

    invoke-static {v3, v0, v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void
.end method
