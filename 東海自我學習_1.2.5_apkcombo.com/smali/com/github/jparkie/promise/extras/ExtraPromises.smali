.class public final Lcom/github/jparkie/promise/extras/ExtraPromises;
.super Ljava/lang/Object;
.source "ExtraPromises.java"


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method

.method public static varargs firstCompletedOf(Lcom/github/jparkie/promise/Scheduler;[Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "[",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 39
    invoke-static {}, Lcom/github/jparkie/promise/Promises;->promise()Lcom/github/jparkie/promise/Promise;

    move-result-object v2

    .line 40
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 41
    new-instance v6, Lcom/github/jparkie/promise/extras/ExtraPromises$1;

    invoke-direct {v6, v0, v2, v1}, Lcom/github/jparkie/promise/extras/ExtraPromises$1;-><init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v5, p0, v6}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static varargs whenAll(Lcom/github/jparkie/promise/Scheduler;[Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "[",
            "Lcom/github/jparkie/promise/Promise<",
            "*>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 85
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 86
    invoke-static {}, Lcom/github/jparkie/promise/Promises;->promise()Lcom/github/jparkie/promise/Promise;

    move-result-object v3

    .line 87
    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p1, v5

    .line 88
    new-instance v7, Lcom/github/jparkie/promise/extras/ExtraPromises$2;

    invoke-direct {v7, v0, v3, v1, v2}, Lcom/github/jparkie/promise/extras/ExtraPromises$2;-><init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, p0, v7}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public static zip(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;",
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "Lcom/github/jparkie/promise/extras/Pair<",
            "TT;TU;>;>;"
        }
    .end annotation

    move-object v0, p0

    .line 130
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 132
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 133
    new-instance v11, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 134
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v12, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/github/jparkie/promise/Promises;->promise()Lcom/github/jparkie/promise/Promise;

    move-result-object v13

    .line 136
    new-instance v14, Lcom/github/jparkie/promise/extras/ExtraPromises$3;

    move-object v1, v14

    move-object v2, v8

    move-object v3, v13

    move-object v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/github/jparkie/promise/extras/ExtraPromises$3;-><init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v1, p1

    invoke-interface {v1, p0, v14}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    .line 164
    new-instance v14, Lcom/github/jparkie/promise/extras/ExtraPromises$4;

    move-object v1, v14

    move-object v4, v10

    move-object v5, v12

    move-object v6, v9

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/github/jparkie/promise/extras/ExtraPromises$4;-><init>(Ljava/lang/Object;Lcom/github/jparkie/promise/Promise;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v1, p2

    invoke-interface {v1, p0, v14}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    return-object v13
.end method
