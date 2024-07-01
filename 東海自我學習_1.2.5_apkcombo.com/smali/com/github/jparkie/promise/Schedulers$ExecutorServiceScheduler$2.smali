.class Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;->cancel(Lcom/github/jparkie/promise/Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;

.field final synthetic val$action:Lcom/github/jparkie/promise/Action;


# direct methods
.method constructor <init>(Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;Lcom/github/jparkie/promise/Action;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;->this$0:Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler;

    iput-object p2, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;->val$action:Lcom/github/jparkie/promise/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/github/jparkie/promise/Schedulers$ExecutorServiceScheduler$2;->val$action:Lcom/github/jparkie/promise/Action;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Action;->cancel()V

    return-void
.end method
