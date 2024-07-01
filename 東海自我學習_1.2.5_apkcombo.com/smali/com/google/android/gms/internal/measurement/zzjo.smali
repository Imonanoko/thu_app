.class final Lcom/google/android/gms/internal/measurement/zzjo;
.super Lcom/google/android/gms/internal/measurement/zzem;


# instance fields
.field private final synthetic zzapt:Lcom/google/android/gms/internal/measurement/zzjr;

.field private final synthetic zzapz:Lcom/google/android/gms/internal/measurement/zzjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjn;Lcom/google/android/gms/internal/measurement/zzhi;Lcom/google/android/gms/internal/measurement/zzjr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzapz:Lcom/google/android/gms/internal/measurement/zzjn;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzapt:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzem;-><init>(Lcom/google/android/gms/internal/measurement/zzhi;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzapz:Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjn;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzapz:Lcom/google/android/gms/internal/measurement/zzjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjo;->zzapt:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzks()V

    return-void
.end method
