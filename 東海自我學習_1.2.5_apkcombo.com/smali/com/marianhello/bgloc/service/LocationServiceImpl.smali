.class public Lcom/marianhello/bgloc/service/LocationServiceImpl;
.super Landroid/app/Service;
.source "LocationServiceImpl.java"

# interfaces
.implements Lcom/marianhello/bgloc/provider/ProviderDelegate;
.implements Lcom/marianhello/bgloc/service/LocationService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;,
        Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BROADCAST:Ljava/lang/String; = ".broadcast"

.field public static final MSG_ON_ABORT_REQUESTED:I = 0x6a

.field public static final MSG_ON_ACTIVITY:I = 0x67

.field public static final MSG_ON_ERROR:I = 0x64

.field public static final MSG_ON_HTTP_AUTHORIZATION:I = 0x6b

.field public static final MSG_ON_LOCATION:I = 0x65

.field public static final MSG_ON_SERVICE_STARTED:I = 0x68

.field public static final MSG_ON_SERVICE_STOPPED:I = 0x69

.field public static final MSG_ON_STATIONARY:I = 0x66

.field private static NOTIFICATION_ID:I = 0x1

.field private static sIsRunning:Z = false

.field private static sLocationProviderFactory:Lcom/marianhello/bgloc/provider/LocationProviderFactory;

.field private static sLocationTransform:Lcom/marianhello/bgloc/data/LocationTransform;


# instance fields
.field private connectivityChangeReceiver:Landroid/content/BroadcastReceiver;

.field private logger:Lorg/slf4j/Logger;

.field private final mBinder:Landroid/os/IBinder;

.field private mConfig:Lcom/marianhello/bgloc/Config;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;

.field private mHeadlessTaskRunnerClass:Ljava/lang/String;

.field private mIsInForeground:Z

.field private mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

.field private mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

.field private mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

.field private mResolver:Lcom/marianhello/bgloc/ResourceResolver;

.field private mServiceHandler:Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;

.field private mServiceId:J

.field private mSyncAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mBinder:Landroid/os/IBinder;

    const-wide/16 v0, -0x1

    .line 124
    iput-wide v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceId:J

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mIsInForeground:Z

    .line 710
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->connectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Landroid/accounts/Account;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mSyncAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$100(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/ResourceResolver;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    return-object p0
.end method

.method static synthetic access$200(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    return-object p0
.end method

.method static synthetic access$302(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/provider/LocationProvider;)Lcom/marianhello/bgloc/provider/LocationProvider;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    return-object p1
.end method

.method static synthetic access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 70
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 70
    sget v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->NOTIFICATION_ID:I

    return v0
.end method

.method static synthetic access$700(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lorg/slf4j/Logger;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$800(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/PostLocationTask;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    return-object p0
.end method

.method private broadcastMessage(I)V
    .locals 2

    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    .line 621
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 622
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method private broadcastMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, ".broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static getLocationTransform()Lcom/marianhello/bgloc/data/LocationTransform;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 744
    sget-object v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationTransform:Lcom/marianhello/bgloc/data/LocationTransform;

    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 721
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 722
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRunning()Z
    .locals 1

    .line 736
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    return v0
.end method

.method private postLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/PostLocationTask;->add(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method

.method private processCommand(ILjava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 330
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopHeadlessTask()V

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startHeadlessTask()V

    goto :goto_0

    .line 324
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->registerHeadlessTask(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_3
    check-cast p2, Lcom/marianhello/bgloc/Config;

    invoke-virtual {p0, p2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->configure(Lcom/marianhello/bgloc/Config;)V

    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startForeground()V

    goto :goto_0

    .line 318
    :pswitch_5
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopForeground()V

    goto :goto_0

    .line 312
    :pswitch_6
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stop()V

    goto :goto_0

    .line 309
    :pswitch_7
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startForegroundService()V

    goto :goto_0

    .line 306
    :pswitch_8
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 334
    iget-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "processCommand: exception"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private runHeadlessTask(Lcom/marianhello/bgloc/headless/Task;)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;

    if-nez v0, :cond_0

    return-void

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Running headless task: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;

    invoke-interface {v0, p1}, Lcom/marianhello/bgloc/headless/TaskRunner;->runTask(Lcom/marianhello/bgloc/headless/Task;)V

    return-void
.end method

.method public static setLocationProviderFactory(Lcom/marianhello/bgloc/provider/LocationProviderFactory;)V
    .locals 0

    .line 665
    sput-object p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationProviderFactory:Lcom/marianhello/bgloc/provider/LocationProviderFactory;

    return-void
.end method

.method public static setLocationTransform(Lcom/marianhello/bgloc/data/LocationTransform;)V
    .locals 0
    .param p0    # Lcom/marianhello/bgloc/data/LocationTransform;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 740
    sput-object p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationTransform:Lcom/marianhello/bgloc/data/LocationTransform;

    return-void
.end method

.method private transformLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 1

    .line 688
    sget-object v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationTransform:Lcom/marianhello/bgloc/data/LocationTransform;

    if-eqz v0, :cond_0

    .line 689
    invoke-interface {v0, p0, p1}, Lcom/marianhello/bgloc/data/LocationTransform;->transformLocationBeforeCommit(Landroid/content/Context;Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/marianhello/bgloc/Config;)V
    .locals 2

    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    if-nez v0, :cond_0

    .line 437
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 441
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 442
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 444
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1, v1}, Lcom/marianhello/bgloc/PostLocationTask;->setConfig(Lcom/marianhello/bgloc/Config;)V

    .line 446
    new-instance p1, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;

    invoke-direct {p1, p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/Config;)V

    invoke-static {p1}, Lorg/chromium/content/browser/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized executeProviderCommand(II)V
    .locals 1

    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 518
    monitor-exit p0

    return-void

    .line 521
    :cond_0
    :try_start_1
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;II)V

    invoke-static {v0}, Lorg/chromium/content/browser/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConfig()Lcom/marianhello/bgloc/Config;
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    if-nez v0, :cond_0

    .line 648
    invoke-static {p0}, Lcom/marianhello/bgloc/data/DAOFactory;->createConfigurationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/ConfigurationDAO;

    move-result-object v1

    .line 650
    :try_start_0
    invoke-interface {v1}, Lcom/marianhello/bgloc/data/ConfigurationDAO;->retrieveConfiguration()Lcom/marianhello/bgloc/Config;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 652
    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Config exception: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 657
    invoke-static {}, Lcom/marianhello/bgloc/Config;->getDefault()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    .line 660
    :cond_1
    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 661
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    return-object v0
.end method

.method public getServiceId()J
    .locals 2

    .line 727
    iget-wide v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceId:J

    return-wide v0
.end method

.method public handleHttpAuthorizationUpdates()V
    .locals 1

    const/16 v0, 0x6b

    .line 704
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(I)V

    return-void
.end method

.method public handleRequestedAbortUpdates()V
    .locals 1

    const/16 v0, 0x6a

    .line 700
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(I)V

    return-void
.end method

.method public isBound()Z
    .locals 1

    .line 731
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;-><init>(Landroid/content/Context;)V

    .line 732
    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationServiceInfo;->isBound()Z

    move-result v0

    return v0
.end method

.method public onActivity(Lcom/marianhello/bgloc/data/BackgroundActivity;)V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundActivity;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New activity {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const/16 v2, 0x67

    .line 594
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "payload"

    .line 595
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 596
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V

    .line 598
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$8;

    invoke-direct {v0, p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl$8;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/data/BackgroundActivity;)V

    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->runHeadlessTask(Lcom/marianhello/bgloc/headless/Task;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 148
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "Client binds to service"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 168
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x0

    .line 170
    sput-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    .line 172
    invoke-static {p0}, Lcom/marianhello/logging/UncaughtExceptionLogger;->register(Landroid/content/Context;)V

    .line 174
    const-class v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    .line 175
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Creating LocationServiceImpl"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceId:J

    .line 183
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "LocationServiceImpl.Thread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceHandler:Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;

    .line 190
    invoke-static {p0}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    .line 192
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    .line 193
    invoke-virtual {v1}, Lcom/marianhello/bgloc/ResourceResolver;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {p0, v0, v1}, Lcom/marianhello/bgloc/sync/AccountHelper;->CreateSyncAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mSyncAccount:Landroid/accounts/Account;

    .line 195
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mSyncAccount:Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 197
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mSyncAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 199
    invoke-static {p0}, Lcom/marianhello/bgloc/data/DAOFactory;->createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    .line 201
    new-instance v0, Lcom/marianhello/bgloc/PostLocationTask;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    new-instance v2, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V

    new-instance v3, Lcom/marianhello/bgloc/service/LocationServiceImpl$2;

    invoke-direct {v3, p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$2;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/marianhello/bgloc/PostLocationTask;-><init>(Lcom/marianhello/bgloc/data/LocationDAO;Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;Lcom/marianhello/bgloc/ConnectivityListener;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    .line 224
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->connectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    invoke-static {p0}, Lcom/marianhello/bgloc/sync/NotificationHelper;->registerServiceChannel(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying LocationServiceImpl"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->onDestroy()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 245
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    if-eqz v0, :cond_3

    .line 246
    invoke-virtual {v0}, Lcom/marianhello/bgloc/PostLocationTask;->shutdown()V

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->connectivityChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 252
    sput-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    .line 253
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onError(Lcom/marianhello/bgloc/PluginException;)V
    .locals 3

    .line 613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const/16 v2, 0x64

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    invoke-virtual {p1}, Lcom/marianhello/bgloc/PluginException;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "payload"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 616
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V

    return-void
.end method

.method public onLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New location {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->transformLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 535
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "Skipping location as requested by the locationTransform"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 539
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x65

    const-string v2, "action"

    .line 540
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "payload"

    .line 541
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 542
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V

    .line 544
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl$6;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->runHeadlessTask(Lcom/marianhello/bgloc/headless/Task;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->postLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Client rebinds to service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->start()V

    return p2

    .line 278
    :cond_0
    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->containsCommand(Landroid/content/Intent;)Z

    move-result v0

    .line 279
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 281
    sget-boolean v4, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    if-eqz v4, :cond_1

    const-string v4, "STARTED"

    goto :goto_0

    :cond_1
    const-string v4, "NOT STARTED"

    :goto_0
    aput-object v4, v2, v3

    if-eqz v0, :cond_2

    .line 282
    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->getCommand(Landroid/content/Intent;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "N/A"

    :goto_1
    aput-object v3, v2, p2

    const/4 v3, 0x2

    .line 283
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    const-string p3, "Service in [%s] state. cmdId: [%s]. startId: [%d]"

    .line 280
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 279
    invoke-interface {v1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 287
    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->getCommand(Landroid/content/Intent;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    move-result-object p3

    .line 288
    invoke-virtual {p3}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->getId()I

    move-result v0

    invoke-virtual {p3}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->getArgument()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->processCommand(ILjava/lang/Object;)V

    .line 291
    :cond_3
    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->containsMessage(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 292
    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->processMessage(Ljava/lang/String;)V

    :cond_4
    return p2
.end method

.method public onStationary(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "New stationary {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->transformLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    if-nez p1, :cond_0

    .line 565
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "Skipping location as requested by the locationTransform"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 569
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x66

    const-string v2, "action"

    .line 570
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "payload"

    .line 571
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V

    .line 574
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl$7;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->runHeadlessTask(Lcom/marianhello/bgloc/headless/Task;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->postLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Task has been removed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stopping self"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopSelf()V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Continue running in background"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 161
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v0, "All clients have been unbound from service"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized registerHeadlessTask(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Registering headless task"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 494
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunnerClass:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceHandler:Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v1, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    .line 340
    :try_start_0
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Attempt to start unconfigured service. Will use stored or default."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v1, "Will start service with: {}"

    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/PostLocationTask;->setConfig(Lcom/marianhello/bgloc/Config;)V

    .line 353
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mPostLocationTask:Lcom/marianhello/bgloc/PostLocationTask;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/PostLocationTask;->clearQueue()V

    .line 355
    sget-object v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationProviderFactory:Lcom/marianhello/bgloc/provider/LocationProviderFactory;

    if-eqz v0, :cond_2

    .line 356
    sget-object v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sLocationProviderFactory:Lcom/marianhello/bgloc/provider/LocationProviderFactory;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/marianhello/bgloc/provider/LocationProviderFactory;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/provider/LocationProviderFactory;-><init>(Landroid/content/Context;)V

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->getInstance(Ljava/lang/Integer;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    .line 358
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    invoke-interface {v0, p0}, Lcom/marianhello/bgloc/provider/LocationProvider;->setDelegate(Lcom/marianhello/bgloc/provider/ProviderDelegate;)V

    .line 359
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->onCreate()V

    .line 360
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-interface {v0, v1}, Lcom/marianhello/bgloc/provider/LocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    const/4 v0, 0x1

    .line 362
    sput-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    .line 363
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;-><init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V

    invoke-static {v0}, Lorg/chromium/content/browser/ThreadUtils;->runOnUiThreadBlocking(Ljava/lang/Runnable;)V

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const/16 v2, 0x68

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "serviceId"

    .line 375
    iget-wide v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mServiceId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startForeground()V
    .locals 7

    .line 404
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mIsInForeground:Z

    if-nez v0, :cond_1

    .line 405
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    .line 406
    new-instance v1, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;

    invoke-direct {v1, p0}, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;-><init>(Landroid/content/Context;)V

    .line 407
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v5

    .line 411
    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-virtual/range {v1 .. v6}, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 414
    invoke-interface {v1, v2, v2}, Lcom/marianhello/bgloc/provider/LocationProvider;->onCommand(II)V

    .line 417
    :cond_0
    sget v1, Lcom/marianhello/bgloc/service/LocationServiceImpl;->NOTIFICATION_ID:I

    invoke-super {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 418
    iput-boolean v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mIsInForeground:Z

    :cond_1
    return-void
.end method

.method public declared-synchronized startForegroundService()V
    .locals 1

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->start()V

    .line 382
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startForeground()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHeadlessTask()V
    .locals 3

    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunnerClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Lcom/marianhello/bgloc/headless/TaskRunnerFactory;

    invoke-direct {v0}, Lcom/marianhello/bgloc/headless/TaskRunnerFactory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :try_start_1
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunnerClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/headless/TaskRunnerFactory;->getTaskRunner(Ljava/lang/String;)Lcom/marianhello/bgloc/headless/TaskRunner;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;

    .line 503
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;

    check-cast v0, Lcom/marianhello/bgloc/headless/AbstractTaskRunner;

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/headless/AbstractTaskRunner;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    :try_start_2
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->logger:Lorg/slf4j/Logger;

    const-string v2, "Headless task start failed: {}"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 387
    :try_start_0
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 388
    monitor-exit p0

    return-void

    .line 391
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->onStop()V

    :cond_1
    const/4 v0, 0x1

    .line 395
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopForeground(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopSelf()V

    const/16 v0, 0x69

    .line 398
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->broadcastMessage(I)V

    const/4 v0, 0x0

    .line 399
    sput-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopForeground()V
    .locals 3

    monitor-enter p0

    .line 424
    :try_start_0
    sget-boolean v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->sIsRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mIsInForeground:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopForeground(Z)V

    .line 426
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mProvider:Lcom/marianhello/bgloc/provider/LocationProvider;

    invoke-interface {v1, v0, v2}, Lcom/marianhello/bgloc/provider/LocationProvider;->onCommand(II)V

    .line 430
    :cond_0
    iput-boolean v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mIsInForeground:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHeadlessTask()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 512
    :try_start_0
    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl;->mHeadlessTaskRunner:Lcom/marianhello/bgloc/headless/TaskRunner;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 639
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
