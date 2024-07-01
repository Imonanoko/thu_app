.class public final Lcom/google/android/gms/internal/measurement/zzii;
.super Lcom/google/android/gms/internal/measurement/zzhh;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zzaox:Lcom/google/android/gms/internal/measurement/zziw;

.field private zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

.field private volatile zzaoz:Ljava/lang/Boolean;

.field private final zzapa:Lcom/google/android/gms/internal/measurement/zzem;

.field private final zzapb:Lcom/google/android/gms/internal/measurement/zzjm;

.field private final zzapc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapd:Lcom/google/android/gms/internal/measurement/zzem;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhh;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjm;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapb:Lcom/google/android/gms/internal/measurement/zzjm;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zziw;-><init>(Lcom/google/android/gms/internal/measurement/zzii;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaox:Lcom/google/android/gms/internal/measurement/zziw;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzij;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzij;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzhi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapa:Lcom/google/android/gms/internal/measurement/zzem;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzio;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzio;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzhi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapd:Lcom/google/android/gms/internal/measurement/zzem;

    return-void
.end method

.method private final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzdf()V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzey;)Lcom/google/android/gms/internal/measurement/zzey;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzii;)Lcom/google/android/gms/internal/measurement/zziw;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaox:Lcom/google/android/gms/internal/measurement/zziw;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/measurement/zzii;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzii;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/measurement/zzii;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzkg()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/measurement/zzii;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzcv()V

    return-void
.end method

.method private final zzcu()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapb:Lcom/google/android/gms/internal/measurement/zzjm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjm;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapa:Lcom/google/android/gms/internal/measurement/zzem;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzew;->zzaho:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzex;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzem;->zzh(J)V

    return-void
.end method

.method private final zzcv()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->disconnect()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/measurement/zzii;)Lcom/google/android/gms/internal/measurement/zzey;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/measurement/zzii;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzcu()V

    return-void
.end method

.method private final zzf(Ljava/lang/Runnable;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapd:Lcom/google/android/gms/internal/measurement/zzem;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzem;->zzh(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzdf()V

    return-void
.end method

.method private final zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zziv()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfb;->zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object p1

    return-object p1
.end method

.method private final zzkg()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapc:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzapd:Lcom/google/android/gms/internal/measurement/zzem;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzem;->cancel()V

    return-void
.end method


# virtual methods
.method public final disconnect()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaox:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    return-void
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final resetAnalyticsData()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfc;->resetAnalyticsData()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzik;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzey;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoy:Lcom/google/android/gms/internal/measurement/zzey;

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzcu()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzii;->zzkg()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/measurement/zzey;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/internal/measurement/zzdz;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x64

    :goto_0
    const/16 v4, 0x3e9

    if-ge v2, v4, :cond_6

    if-ne v3, v1, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/measurement/zzfc;->zzp(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz p2, :cond_1

    if-ge v4, v1, :cond_1

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/zzeu;

    if-eqz v8, :cond_2

    :try_start_0
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Lcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzdz;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "Failed to send event to the service"

    :goto_3
    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/zzjx;

    if-eqz v8, :cond_3

    :try_start_1
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzjx;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Lcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzdz;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "Failed to send attribute to the service"

    goto :goto_3

    :cond_3
    instance-of v8, v7, Lcom/google/android/gms/internal/measurement/zzed;

    if-eqz v8, :cond_4

    :try_start_2
    check-cast v7, Lcom/google/android/gms/internal/measurement/zzed;

    invoke-interface {p1, v7, p3}, Lcom/google/android/gms/internal/measurement/zzey;->zza(Lcom/google/android/gms/internal/measurement/zzed;Lcom/google/android/gms/internal/measurement/zzdz;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    const-string v9, "Failed to send conditional property to the service"

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    const-string v8, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzil;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzil;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzed;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzis;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzis;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzjx;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzit;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/measurement/zzit;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzjx;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zziv;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/internal/measurement/zziv;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/measurement/zzdz;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzab()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzab()V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zza(Lcom/google/android/gms/internal/measurement/zzeu;)Z

    move-result v4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zziq;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Lcom/google/android/gms/internal/measurement/zzii;ZZLcom/google/android/gms/internal/measurement/zzeu;Lcom/google/android/gms/internal/measurement/zzdz;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/measurement/zzie;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzin;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzin;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzie;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzb(Lcom/google/android/gms/internal/measurement/zzjx;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zza(Lcom/google/android/gms/internal/measurement/zzjx;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/zziu;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zziu;-><init>(Lcom/google/android/gms/internal/measurement/zzii;ZLcom/google/android/gms/internal/measurement/zzjx;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd(Lcom/google/android/gms/internal/measurement/zzed;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfc;->zzc(Lcom/google/android/gms/internal/measurement/zzed;)Z

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzed;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/measurement/zzed;-><init>(Lcom/google/android/gms/internal/measurement/zzed;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzir;

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/zzir;-><init>(Lcom/google/android/gms/internal/measurement/zzii;ZZLcom/google/android/gms/internal/measurement/zzed;Lcom/google/android/gms/internal/measurement/zzdz;Lcom/google/android/gms/internal/measurement/zzed;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzdf()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzii;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoz:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zzjb()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzik()I

    move-result v0

    if-ne v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x30a3

    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0x12

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Unexpected service status"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service updating"

    goto :goto_7

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service invalid"

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service disabled"

    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzis()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzka;->zzld()I

    move-result v0

    const/16 v3, 0x3138

    if-ge v0, v3, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfr;->zzjb()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v3, v0

    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    :goto_6
    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v3, "Service available"

    :goto_7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_8
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfr;->zzf(Z)V

    :cond_c
    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoz:Ljava/lang/Boolean;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoz:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaox:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzkh()V

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_10

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaox:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zziw;->zzc(Landroid/content/Intent;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzfr()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfr()V

    return-void
.end method

.method public final bridge synthetic zzfs()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfs()V

    return-void
.end method

.method public final bridge synthetic zzft()Lcom/google/android/gms/internal/measurement/zzdu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzft()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfu()Lcom/google/android/gms/internal/measurement/zzhk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfu()Lcom/google/android/gms/internal/measurement/zzhk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfv()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfw()Lcom/google/android/gms/internal/measurement/zzeo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfx()Lcom/google/android/gms/internal/measurement/zzii;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfy()Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfy()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfz()Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzga()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgb()Lcom/google/android/gms/internal/measurement/zzka;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgc()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgc()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgd()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzge()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()Lcom/google/android/gms/internal/measurement/zzfr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgg()Lcom/google/android/gms/internal/measurement/zzef;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v0

    return-object v0
.end method

.method protected final zzhf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzkb()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzke()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzk(Z)Lcom/google/android/gms/internal/measurement/zzdz;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzip;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/zzip;-><init>(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzdz;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zzf(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzkf()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzii;->zzaoz:Ljava/lang/Boolean;

    return-object v0
.end method
