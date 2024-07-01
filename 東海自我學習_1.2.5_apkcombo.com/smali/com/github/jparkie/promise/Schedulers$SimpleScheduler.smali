.class Lcom/github/jparkie/promise/Schedulers$SimpleScheduler;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Lcom/github/jparkie/promise/Scheduler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jparkie/promise/Schedulers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleScheduler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/jparkie/promise/Schedulers$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/github/jparkie/promise/Schedulers$SimpleScheduler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/github/jparkie/promise/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/github/jparkie/promise/Action;->cancel()V

    return-void
.end method

.method public schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V
    .locals 0
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

    .line 30
    invoke-interface {p1, p2}, Lcom/github/jparkie/promise/Action;->call(Lcom/github/jparkie/promise/Promise;)V

    return-void
.end method
