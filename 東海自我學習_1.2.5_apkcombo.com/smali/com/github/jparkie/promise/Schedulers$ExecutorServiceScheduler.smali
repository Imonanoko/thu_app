.class Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;
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
    name = "ExecutorServiceScheduler"
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public cancel(Lcom/github/jparkie/promise/Action;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;

    invoke-direct {v1, p0, p1}, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;-><init>(Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;Lcom/github/jparkie/promise/Action;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V
    .locals 2
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

    .line 48
    iget-object v0, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;-><init>(Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
