.class public final Lcom/github/jparkie/promise/Schedulers;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;,
        Lcom/github/jparkie/promise/Schedulers$SimpleScheduler;
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method

.method public static newExecutorServiceScheduler(Ljava/util/concurrent/ExecutorService;)Lcom/github/jparkie/promise/Scheduler;
    .locals 1

    .line 20
    new-instance v0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;

    invoke-direct {v0, p0}, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static newSimpleScheduler()Lcom/github/jparkie/promise/Scheduler;
    .locals 2

    .line 16
    new-instance v0, Lcom/github/jparkie/promise/Schedulers$SimpleScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/jparkie/promise/Schedulers$SimpleScheduler;-><init>(Lcom/github/jparkie/promise/Schedulers$1;)V

    return-object v0
.end method
