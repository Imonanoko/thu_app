.class Lorg/apache/cordova/facebook/ConnectPlugin$4;
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
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/facebook/ConnectPlugin;


# direct methods
.method constructor <init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 183
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 184
    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const/4 v0, 0x1

    .line 189
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

    .line 190
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-static {p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 177
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$4;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$402(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin$4;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method
