.class final Lcom/github/jparkie/promise/extras/ExtraPromises$3;
.super Ljava/lang/Object;
.source "ExtraPromises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/extras/ExtraPromises;->zip(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
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
.field final synthetic val$leftFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$leftReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$rightFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$rightReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$sequenceLock:Ljava/lang/Object;

.field final synthetic val$zippedPromise:Lcom/github/jparkie/promise/Promise;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$sequenceLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    iput-object p3, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$rightFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$rightReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$sequenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v1}, Lcom/github/jparkie/promise/Promise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    monitor-exit v0

    return-void

    .line 143
    :cond_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    .line 145
    monitor-exit v0

    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$rightFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    iget-object v1, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$leftReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$rightReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/jparkie/promise/extras/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/jparkie/promise/extras/Pair;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/github/jparkie/promise/Promise;->set(Ljava/lang/Object;)V

    .line 154
    :cond_2
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

    .line 159
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/github/jparkie/promise/extras/ExtraPromises$3;->val$zippedPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->cancel()V

    :cond_0
    return-void
.end method
