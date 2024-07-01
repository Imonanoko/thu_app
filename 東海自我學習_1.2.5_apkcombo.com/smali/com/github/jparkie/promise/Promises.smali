.class public final Lcom/github/jparkie/promise/Promises;
.super Ljava/lang/Object;
.source "Promises.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jparkie/promise/Promises$DefaultPromise;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method

.method public static create(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)Lcom/github/jparkie/promise/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/github/jparkie/promise/Promises$DefaultPromise;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>(Lcom/github/jparkie/promise/Promises$1;)V

    .line 28
    new-instance v1, Lcom/github/jparkie/promise/Promises$1;

    invoke-direct {v1, p1}, Lcom/github/jparkie/promise/Promises$1;-><init>(Lcom/github/jparkie/promise/Action;)V

    invoke-interface {v0, p0, v1}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    .line 40
    invoke-interface {p0, p1, v0}, Lcom/github/jparkie/promise/Scheduler;->schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V

    return-object v0
.end method

.method public static error(Ljava/lang/Throwable;)Lcom/github/jparkie/promise/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v0, Lcom/github/jparkie/promise/Promises$DefaultPromise;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>(Lcom/github/jparkie/promise/Promises$1;)V

    .line 74
    invoke-interface {v0, p0}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static promise()Lcom/github/jparkie/promise/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/github/jparkie/promise/Promises$DefaultPromise;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>(Lcom/github/jparkie/promise/Promises$1;)V

    return-object v0
.end method

.method public static value(Ljava/lang/Object;)Lcom/github/jparkie/promise/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/github/jparkie/promise/Promises$DefaultPromise;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>(Lcom/github/jparkie/promise/Promises$1;)V

    .line 62
    invoke-interface {v0, p0}, Lcom/github/jparkie/promise/Promise;->set(Ljava/lang/Object;)V

    return-object v0
.end method
