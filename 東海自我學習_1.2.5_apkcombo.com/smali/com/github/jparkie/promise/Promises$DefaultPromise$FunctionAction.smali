.class final Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;
.super Ljava/lang/Object;
.source "Promises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jparkie/promise/Promises$DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FunctionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Action<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final deferredPromise:Lcom/github/jparkie/promise/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final function:Lcom/github/jparkie/promise/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/jparkie/promise/Function<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lcom/github/jparkie/promise/Scheduler;


# direct methods
.method private constructor <init>(Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TU;>;",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Function<",
            "TT;TU;>;)V"
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->deferredPromise:Lcom/github/jparkie/promise/Promise;

    .line 251
    iput-object p2, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->scheduler:Lcom/github/jparkie/promise/Scheduler;

    .line 252
    iput-object p3, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->function:Lcom/github/jparkie/promise/Function;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Function;Lcom/github/jparkie/promise/Promises$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;-><init>(Lcom/github/jparkie/promise/Promise;Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Function;)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)Lcom/github/jparkie/promise/Promise;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->deferredPromise:Lcom/github/jparkie/promise/Promise;

    return-object p0
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

    .line 257
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->function:Lcom/github/jparkie/promise/Function;

    invoke-interface {v0, p1}, Lcom/github/jparkie/promise/Function;->call(Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->scheduler:Lcom/github/jparkie/promise/Scheduler;

    new-instance v1, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;

    invoke-direct {v1, p0}, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction$1;-><init>(Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;)V

    invoke-interface {p1, v0, v1}, Lcom/github/jparkie/promise/Promise;->then(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->deferredPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$FunctionAction;->deferredPromise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Promise;->cancel()V

    :cond_0
    return-void
.end method
