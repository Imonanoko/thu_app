.class Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;
.super Ljava/lang/Object;
.source "Promises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->call(Lcom/github/jparkie/promise/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Action<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;


# direct methods
.method constructor <init>(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;->this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;)V"
        }
    .end annotation

    .line 261
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;->this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->access$500(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)Lcom/github/jparkie/promise/Promise;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/jparkie/promise/Promise;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;->this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->access$500(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)Lcom/github/jparkie/promise/Promise;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;->this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->access$500(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)Lcom/github/jparkie/promise/Promise;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;->this$0:Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->access$500(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)Lcom/github/jparkie/promise/Promise;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->cancel()V

    :cond_0
    return-void
.end method
