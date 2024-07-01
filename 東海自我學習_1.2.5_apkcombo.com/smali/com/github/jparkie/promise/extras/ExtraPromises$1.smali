.class final Lcom/github/jparkie/promise/extras/ExtraPromises$1;
.super Ljava/lang/Object;
.source "ExtraPromises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/extras/ExtraPromises;->firstCompletedOf(Lcom/github/jparkie/promise/Scheduler;[Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Action<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$cancelCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

.field final synthetic val$sequenceLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$sequenceLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    iput-object p3, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$cancelCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$sequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v1}, Lcom/github/jparkie/promise/Promise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    monitor-exit v0

    return-void

    .line 49
    :cond_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/github/jparkie/promise/Promise;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$cancelCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$1;->val$firstCompletedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->cancel()V

    :cond_0
    return-void
.end method
