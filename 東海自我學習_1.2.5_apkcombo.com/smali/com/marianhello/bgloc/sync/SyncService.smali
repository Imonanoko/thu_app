.class public Lcom/marianhello/bgloc/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static sSyncAdapter:Lcom/marianhello/bgloc/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static sync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "force"

    .line 57
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expedited"

    .line 58
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "do_not_retry"

    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "upload"

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 51
    sget-object p1, Lcom/marianhello/bgloc/sync/SyncService;->sSyncAdapter:Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 31
    sget-object v0, Lcom/marianhello/bgloc/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/marianhello/bgloc/sync/SyncService;->sSyncAdapter:Lcom/marianhello/bgloc/sync/SyncAdapter;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/marianhello/bgloc/sync/SyncAdapter;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/marianhello/bgloc/sync/SyncService;->sSyncAdapter:Lcom/marianhello/bgloc/sync/SyncAdapter;

    .line 35
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
