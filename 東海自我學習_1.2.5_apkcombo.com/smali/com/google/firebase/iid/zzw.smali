.class final synthetic Lcom/google/firebase/iid/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbo:Lcom/google/firebase/iid/zzu;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzw;->zzbo:Lcom/google/firebase/iid/zzu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzw;->zzbo:Lcom/google/firebase/iid/zzu;

    invoke-virtual {v0}, Lcom/google/firebase/iid/zzu;->zzv()V

    return-void
.end method
