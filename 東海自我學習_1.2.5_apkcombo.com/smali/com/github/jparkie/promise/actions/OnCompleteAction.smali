.class public abstract Lcom/github/jparkie/promise/actions/OnCompleteAction;
.super Ljava/lang/Object;
.source "OnCompleteAction.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Action<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
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
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/jparkie/promise/actions/OnCompleteAction;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/jparkie/promise/actions/OnCompleteAction;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
