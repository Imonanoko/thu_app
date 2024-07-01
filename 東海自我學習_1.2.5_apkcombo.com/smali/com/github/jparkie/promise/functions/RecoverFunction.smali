.class public final Lcom/github/jparkie/promise/functions/RecoverFunction;
.super Ljava/lang/Object;
.source "RecoverFunction.java"

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
.field private final recoverValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/github/jparkie/promise/functions/RecoverFunction;->recoverValue:Ljava/lang/Object;

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

    .line 16
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/github/jparkie/promise/functions/RecoverFunction;->recoverValue:Ljava/lang/Object;

    invoke-static {p1}, Lcom/github/jparkie/promise/Promises;->value(Ljava/lang/Object;)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    return-object p1
.end method
