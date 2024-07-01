.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;
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

    .line 175
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Configuration error: {}"

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$data:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/marianhello/bgloc/cordova/ConfigMapper;->fromJSONObject(Lorg/json/JSONObject;)Lcom/marianhello/bgloc/Config;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$100(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->configure(Lcom/marianhello/bgloc/Config;)V

    .line 180
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/marianhello/bgloc/PluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 185
    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$200(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/marianhello/bgloc/PluginException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Lcom/marianhello/bgloc/PluginException;)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 182
    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$200(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/16 v2, 0x3ea

    const-string v3, "Configuration error"

    invoke-static {v3, v1, v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void
.end method
