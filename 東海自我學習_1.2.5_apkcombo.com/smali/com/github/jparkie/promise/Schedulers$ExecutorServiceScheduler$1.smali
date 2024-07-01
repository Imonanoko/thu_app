.class Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;->schedule(Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;

.field final synthetic val$action:Lcom/github/jparkie/promise/Action;

.field final synthetic val$promise:Lcom/github/jparkie/promise/Promise;


# direct methods
.method constructor <init>(Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promise;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;->this$0:Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;

    iput-object p2, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;->val$action:Lcom/github/jparkie/promise/Action;

    iput-object p3, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;->val$action:Lcom/github/jparkie/promise/Action;

    iget-object v1, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v0, v1}, Lcom/github/jparkie/promise/Action;->call(Lcom/github/jparkie/promise/Promise;)V

    return-void
.end method
