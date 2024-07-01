.class public abstract Lcom/github/jparkie/promise/actions/OnFailureAction;
.super Ljava/lang/Object;
.source "OnFailureAction.java"

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

    if-nez v0, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/jparkie/promise/actions/OnFailureAction;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public abstract onFailure(Ljava/lang/Throwable;)V
.end method
