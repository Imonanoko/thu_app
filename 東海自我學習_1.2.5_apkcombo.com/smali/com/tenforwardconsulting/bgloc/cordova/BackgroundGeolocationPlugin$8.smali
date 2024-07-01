.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;
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

    .line 275
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$data:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 278
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$data:Lorg/json/JSONArray;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    .line 279
    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$data:Lorg/json/JSONArray;

    const/4 v3, 0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v2

    .line 280
    iget-object v4, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$data:Lorg/json/JSONArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v1

    .line 282
    :try_start_0
    iget-object v4, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v4}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$100(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getCurrentLocation(IJZ)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/marianhello/bgloc/PluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 287
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Lcom/marianhello/bgloc/PluginException;)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 285
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;I)Lorg/apache/cordova/PluginResult;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_0
    return-void
.end method
