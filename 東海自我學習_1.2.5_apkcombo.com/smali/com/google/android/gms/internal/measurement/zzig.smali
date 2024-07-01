.class final Lcom/google/android/gms/internal/measurement/zzig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzaos:Z

.field private final synthetic zzaot:Lcom/google/android/gms/internal/measurement/zzie;

.field private final synthetic zzaou:Lcom/google/android/gms/internal/measurement/zzie;

.field private final synthetic zzaov:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzif;ZLcom/google/android/gms/internal/measurement/zzie;Lcom/google/android/gms/internal/measurement/zzie;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaos:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaos:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzif;->zzaol:Lcom/google/android/gms/internal/measurement/zzie;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzif;->zzaol:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzif;Lcom/google/android/gms/internal/measurement/zzie;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/zzie;->zzaoj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    iget-wide v4, v0, Lcom/google/android/gms/internal/measurement/zzie;->zzaoj:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzie;->zzaoi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzie;->zzaoi:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzie;->zzul:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzie;->zzul:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zzs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/zzif;->zza(Lcom/google/android/gms/internal/measurement/zzie;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzie;->zzul:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzie;->zzul:Ljava/lang/String;

    const-string v2, "_pn"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzie;->zzaoi:Ljava/lang/String;

    const-string v2, "_pc"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaot:Lcom/google/android/gms/internal/measurement/zzie;

    iget-wide v1, v1, Lcom/google/android/gms/internal/measurement/zzie;->zzaoj:J

    const-string v3, "_pi"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfu()Lcom/google/android/gms/internal/measurement/zzhk;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_vs"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaov:Lcom/google/android/gms/internal/measurement/zzif;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzif;->zzaol:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzig;->zzaou:Lcom/google/android/gms/internal/measurement/zzie;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(Lcom/google/android/gms/internal/measurement/zzie;)V

    return-void
.end method
