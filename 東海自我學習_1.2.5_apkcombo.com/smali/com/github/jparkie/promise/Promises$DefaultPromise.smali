.class final Lcom/github/jparkie/promise/Promises$DefaultPromise;
.super Ljava/lang/Object;
.source "Promises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jparkie/promise/Promises;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPromise"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;,
        Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Promise<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final actionContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final awaitLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile cancelFlag:Z

.field private volatile error:Ljava/lang/Throwable;

.field private volatile promiseFlag:Z

.field private final promiseLock:Ljava/lang/Object;

.field private volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/jparkie/promise/Promises$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>()V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->cancelFlag:Z

    .line 112
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    iget-object v2, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;

    .line 118
    invoke-static {v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$200(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Scheduler;

    move-result-object v2

    invoke-static {v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$100(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Action;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/github/jparkie/promise/Scheduler;->cancel(Lcom/github/jparkie/promise/Action;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v1

    .line 115
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 149
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->cancelFlag:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseFlag:Z

    return v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->error:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_0
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseFlag:Z

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    iget-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;

    .line 173
    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$200(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Scheduler;

    move-result-object v1

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$100(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Action;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/github/jparkie/promise/Scheduler;->schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 161
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->value:Ljava/lang/Object;

    .line 192
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseFlag:Z

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 196
    iget-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;

    .line 200
    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$200(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Scheduler;

    move-result-object v1

    invoke-static {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->access$100(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Action;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/github/jparkie/promise/Scheduler;->schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->awaitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 188
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 197
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    return-void
.end method

.method public then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Function;)Lcom/github/jparkie/promise/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Function<",
            "TT;TU;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/github/jparkie/promise/Promises$DefaultPromise;

    invoke-direct {v0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->cancel()V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, p2, v2}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;-><init>(Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Function;Lcom/github/jparkie/promise/Promises$1;)V

    invoke-virtual {p0, p1, v1}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    :goto_0
    return-object v0
.end method

.method public then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)V"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {p1, p2}, Lcom/github/jparkie/promise/Scheduler;->cancel(Lcom/github/jparkie/promise/Action;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->promiseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    invoke-virtual {p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise;->actionContexts:Ljava/util/List;

    new-instance v2, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;-><init>(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promises$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_1
    invoke-interface {p1, p2, p0}, Lcom/github/jparkie/promise/Scheduler;->schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V

    .line 231
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
