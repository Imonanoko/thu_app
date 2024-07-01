.class final Lcom/google/android/gms/internal/measurement/zzhp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanv:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhp;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
