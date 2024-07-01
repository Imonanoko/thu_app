.class Lorg/apache/cordova/facebook/ConnectPlugin$5;
.super Ljava/lang/Object;
.source "ConnectPlugin.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/facebook/ConnectPlugin;->pluginInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/facebook/ConnectPlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 214
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 215
    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const/4 v0, 0x1

    .line 220
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Error: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 200
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "requestId"

    .line 201
    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "recipientsIds"

    .line 202
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    .line 204
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1, v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$402(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 207
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$5;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1, v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$402(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin$5;->onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method
