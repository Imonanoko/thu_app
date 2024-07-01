.class final Lcom/github/jparkie/promise/Promises$1;
.super Ljava/lang/Object;
.source "Promises.java"

# interfaces
.implements Lcom/github/jparkie/promise/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jparkie/promise/Promises;->create(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)Lcom/github/jparkie/promise/Promise;
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
.field final synthetic val$onScheduleAction:Lcom/github/jparkie/promise/Action;


# direct methods
.method constructor <init>(Lcom/github/jparkie/promise/Action;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$1;->val$onScheduleAction:Lcom/github/jparkie/promise/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/github/jparkie/promise/Promises$1;->val$onScheduleAction:Lcom/github/jparkie/promise/Action;

    invoke-interface {v0}, Lcom/github/jparkie/promise/Action;->cancel()V

    return-void
.end method
