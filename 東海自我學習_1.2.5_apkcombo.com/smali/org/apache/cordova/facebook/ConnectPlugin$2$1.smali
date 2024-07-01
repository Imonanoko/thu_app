.class Lorg/apache/cordova/facebook/ConnectPlugin$2$1;
.super Ljava/lang/Object;
.source "ConnectPlugin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$GraphJSONObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/facebook/ConnectPlugin$2;->onSuccess(Lcom/facebook/login/LoginResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;


# direct methods
.method constructor <init>(Lorg/apache/cordova/facebook/ConnectPlugin$2;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lorg/json/JSONObject;Lcom/facebook/GraphResponse;)V
    .locals 1

    .line 104
    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 105
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-virtual {p2}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p2, p2, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 116
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p2, p2, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$200(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 120
    :cond_3
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p2, p2, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returning login object "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConnectPlugin"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p2, p2, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-virtual {p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getResponse()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 123
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$2$1;->this$1:Lorg/apache/cordova/facebook/ConnectPlugin$2;

    iget-object p1, p1, Lorg/apache/cordova/facebook/ConnectPlugin$2;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$102(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    :cond_4
    return-void
.end method
