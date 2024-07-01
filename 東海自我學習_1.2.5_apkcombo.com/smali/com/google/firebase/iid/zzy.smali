.class final synthetic Lcom/google/firebase/iid/zzy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbo:Lcom/google/firebase/iid/zzu;

.field private final zzbp:Lcom/google/firebase/iid/zzab;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzu;Lcom/google/firebase/iid/zzab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzy;->zzbo:Lcom/google/firebase/iid/zzu;

    iput-object p2, p0, Lcom/google/firebase/iid/zzy;->zzbp:Lcom/google/firebase/iid/zzab;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/iid/zzy;->zzbo:Lcom/google/firebase/iid/zzu;

    iget-object v1, p0, Lcom/google/firebase/iid/zzy;->zzbp:Lcom/google/firebase/iid/zzab;

    iget v1, v1, Lcom/google/firebase/iid/zzab;->zzbr:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/iid/zzu;->zza(I)V

    return-void
.end method
