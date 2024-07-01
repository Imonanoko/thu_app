.class public abstract Lcom/github/jparkie/promise/functions/MapFunction;
.super Ljava/lang/Object;
.source "MapFunction.java"

# interfaces
.implements Lcom/github/jparkie/promise/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Function<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/jparkie/promise/functions/MapFunction;->map(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/github/jparkie/promise/Promises;->value(Ljava/lang/Object;)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lcom/github/jparkie/promise/Promises;->error(Ljava/lang/Throwable;)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    return-object p1
.end method

.method public abstract map(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TU;"
        }
    .end annotation
.end method
