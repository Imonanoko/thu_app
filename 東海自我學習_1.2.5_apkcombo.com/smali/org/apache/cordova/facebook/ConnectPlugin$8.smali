.class Lorg/apache/cordova/facebook/ConnectPlugin$8;
.super Ljava/lang/Object;
.source "ConnectPlugin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

.field final synthetic val$graphContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 2

    .line 792
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_1

    .line 793
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 796
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 798
    :goto_0
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$502(Lorg/apache/cordova/facebook/ConnectPlugin;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method
