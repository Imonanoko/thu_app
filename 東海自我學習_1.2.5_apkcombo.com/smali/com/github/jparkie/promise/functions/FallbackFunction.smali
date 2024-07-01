.class public final Lcom/github/jparkie/promise/functions/FallbackFunction;
.super Ljava/lang/Object;
.source "FallbackFunction.java"

# interfaces
.implements Lcom/github/jparkie/promise/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/jparkie/promise/Function<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final fallbackPromise:Lcom/github/jparkie/promise/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/jparkie/promise/Promise;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/github/jparkie/promise/functions/FallbackFunction;->fallbackPromise:Lcom/github/jparkie/promise/Promise;

    return-void
.end method


# virtual methods
.method public call(Lcom/github/jparkie/promise/Promise;)Lcom/github/jparkie/promise/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;)",
            "Lcom/github/jparkie/promise/Promise<",
            "TT;>;"
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/github/jparkie/promise/functions/FallbackFunction;->fallbackPromise:Lcom/github/jparkie/promise/Promise;

    return-object p1
.end method
