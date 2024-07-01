.class public abstract Lcom/marianhello/bgloc/headless/AbstractTaskRunner;
.super Ljava/lang/Object;
.source "AbstractTaskRunner.java"

# interfaces
.implements Lcom/marianhello/bgloc/headless/TaskRunner;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract runTask(Lcom/marianhello/bgloc/headless/Task;)V
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/marianhello/bgloc/headless/AbstractTaskRunner;->mContext:Landroid/content/Context;

    return-void
.end method
