.class final Lcom/google/android/gms/internal/measurement/zziu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzane:Lcom/google/android/gms/internal/measurement/zzdz;

.field private final synthetic zzanl:Lcom/google/android/gms/internal/measurement/zzjx;

.field private final synthetic zzape:Lcom/google/android/gms/internal/measurement/zzii;

.field private final synthetic zzaph:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzii;ZLcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzdz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaph:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzanl:Lcom/google/android/gms/internal/measurement/zzjx;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzane:Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzd(Lcom/google/android/gms/internal/measurement/zzii;)Lcom/google/android/gms/internal/measurement/zzey;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Discarding data. Failed to set user attribute"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzaph:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzanl:Lcom/google/android/gms/internal/measurement/zzjx;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzane:Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/internal/measurement/zzdz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziu;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zze(Lcom/google/android/gms/internal/measurement/zzii;)V

    return-void
.end method
