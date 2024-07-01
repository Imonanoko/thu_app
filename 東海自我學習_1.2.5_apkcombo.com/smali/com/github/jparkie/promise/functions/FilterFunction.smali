.class public abstract Lcom/github/jparkie/promise/functions/FilterFunction;
.super Ljava/lang/Object;
.source "FilterFunction.java"

# interfaces
.implements Lcom/github/jparkie/promise/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Function<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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
            "TT;>;"
        }
    .end annotation

    .line 12
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/jparkie/promise/functions/FilterFunction;->filter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-static {p1}, Lcom/github/jparkie/promise/Promises;->error(Ljava/lang/Throwable;)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public abstract filter(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
