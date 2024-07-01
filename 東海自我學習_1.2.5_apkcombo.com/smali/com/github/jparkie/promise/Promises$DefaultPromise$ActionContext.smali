.class final Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;
.super Ljava/lang/Object;
.source "Promises.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/jparkie/promise/Promises$DefaultPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final action:Lcom/github/jparkie/promise/Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final scheduler:Lcom/github/jparkie/promise/Scheduler;


# direct methods
.method private constructor <init>(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Scheduler;",
            "Lcom/github/jparkie/promise/Action<",
            "TT;>;)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->scheduler:Lcom/github/jparkie/promise/Scheduler;

    .line 240
    iput-object p2, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->action:Lcom/github/jparkie/promise/Action;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;Lcom/github/jparkie/promise/Promises$1;)V
    .locals 0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;-><init>(Lcom/github/jparkie/promise/Scheduler;Lcom/github/jparkie/promise/Action;)V

    return-void
.end method

.method static synthetic access$100(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Action;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->action:Lcom/github/jparkie/promise/Action;

    return-object p0
.end method

.method static synthetic access$200(Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;)Lcom/github/jparkie/promise/Scheduler;
    .locals 0

    .line 234
    iget-object p0, p0, Lcom/github/jparkie/promise/Promises$DefaultPromise$ActionContext;->scheduler:Lcom/github/jparkie/promise/Scheduler;

    return-object p0
.end method
