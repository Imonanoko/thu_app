.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;
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

    .line 294
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$100(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0}, Lcom/marianhello/bgloc/cordova/ConfigMapper;->toJSONObject(Lcom/marianhello/bgloc/Config;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/16 v2, 0x3ec

    const-string v3, "Error getting config"

    invoke-static {v3, v0, v2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void
.end method
