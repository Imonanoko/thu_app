.class final Lcom/google/android/gms/internal/measurement/zzht;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanh:Ljava/lang/String;

.field private final synthetic zzani:Ljava/lang/String;

.field private final synthetic zzanj:Ljava/lang/String;

.field private final synthetic zzanv:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanh:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzani:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzhk;->zzacw:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanv:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanj:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzanh:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzht;->zzani:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
