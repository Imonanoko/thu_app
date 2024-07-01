.class final Lcom/google/android/gms/internal/measurement/zzgc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzalb:Lcom/google/android/gms/internal/measurement/zzgl;

.field private final synthetic zzalc:Lcom/google/android/gms/internal/measurement/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgb;Lcom/google/android/gms/internal/measurement/zzgl;Lcom/google/android/gms/internal/measurement/zzfg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzalb:Lcom/google/android/gms/internal/measurement/zzgl;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzalc:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzalb:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjp()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzalc:Lcom/google/android/gms/internal/measurement/zzfg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Install Referrer Reporter is null"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgc;->zzalb:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjp()Lcom/google/android/gms/internal/measurement/zzfx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfx;->zzjh()V

    return-void
.end method
