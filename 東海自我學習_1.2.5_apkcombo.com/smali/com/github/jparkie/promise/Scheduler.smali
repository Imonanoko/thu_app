.class public interface abstract Lcom/github/jparkie/promise/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# virtual methods
.method public abstract cancel(Lcom/github/jparkie/promise/Action;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)V"
        }
    .end annotation
.end method
