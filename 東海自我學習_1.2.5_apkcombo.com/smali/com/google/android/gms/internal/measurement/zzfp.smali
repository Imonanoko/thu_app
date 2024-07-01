.class Lcom/google/android/gms/internal/measurement/zzfp;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final zzaaw:Ljava/lang/String; = "com.google.android.gms.internal.measurement.zzfp"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private zzaax:Z

.field private zzaay:Z

.field private final zzajp:Lcom/google/android/gms/internal/measurement/zzjr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjr;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzfp;)Lcom/google/android/gms/internal/measurement/zzjr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkq()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjr;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkn()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfk;->zzex()Z

    move-result p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaay:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaay:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjr;->zzgd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzfq;-><init>(Lcom/google/android/gms/internal/measurement/zzfp;Z)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/zzgg;->zzc(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjr;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p2

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final unregister()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzab()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaax:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Unregistering connectivity change receiver"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaax:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaay:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "Failed to unregister the network broadcast receiver"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzeu()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzab()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaax:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkn()Lcom/google/android/gms/internal/measurement/zzfk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfk;->zzex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaay:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfp;->zzaax:Z

    return-void
.end method
