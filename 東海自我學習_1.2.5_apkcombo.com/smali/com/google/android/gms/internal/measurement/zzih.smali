.class final Lcom/google/android/gms/internal/measurement/zzih;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaov:Lcom/google/android/gms/internal/measurement/zzif;

.field private final synthetic zzaow:Lcom/google/android/gms/internal/measurement/zzie;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzif;Lcom/google/android/gms/internal/measurement/zzie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzaow:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzaow:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzif;Lcom/google/android/gms/internal/measurement/zzie;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzih;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzif;->zzaol:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(Lcom/google/android/gms/internal/measurement/zzie;)V

    return-void
.end method
