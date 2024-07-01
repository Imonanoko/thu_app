.class final Lcom/google/android/gms/internal/measurement/zzhn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanv:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

.field private final synthetic zzanz:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zzhn;->zzanz:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
