.class public Lcom/marianhello/bgloc/BackgroundGeolocationFacade;
.super Ljava/lang/Object;
.source "BackgroundGeolocationFacade.java"


# static fields
.field public static final AUTHORIZATION_AUTHORIZED:I = 0x1

.field public static final AUTHORIZATION_DENIED:I = 0x0

.field public static final PERMISSIONS:[Ljava/lang/String;

.field public static final SERVICE_STARTED:I = 0x1

.field public static final SERVICE_STOPPED:I


# instance fields
.field private locationModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private logger:Lorg/slf4j/Logger;

.field private mConfig:Lcom/marianhello/bgloc/Config;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/marianhello/bgloc/PluginDelegate;

.field private mIsPaused:Z

.field private mLocationModeChangeReceiverRegistered:Z

.field private final mService:Lcom/marianhello/bgloc/service/LocationService;

.field private mServiceBroadcastReceiverRegistered:Z

.field private mStationaryLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

.field private serviceBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 55
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/marianhello/bgloc/PluginDelegate;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mServiceBroadcastReceiverRegistered:Z

    .line 61
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mLocationModeChangeReceiverRegistered:Z

    .line 62
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mIsPaused:Z

    .line 88
    new-instance v0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;-><init>(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->locationModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;-><init>(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->serviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mDelegate:Lcom/marianhello/bgloc/PluginDelegate;

    .line 76
    new-instance p2, Lcom/marianhello/bgloc/service/LocationServiceProxy;

    invoke-direct {p2, p1}, Lcom/marianhello/bgloc/service/LocationServiceProxy;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/marianhello/logging/UncaughtExceptionLogger;->register(Landroid/content/Context;)V

    .line 80
    const-class p1, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    .line 81
    invoke-static {}, Lcom/marianhello/logging/LoggerManager;->enableDBLogging()V

    .line 83
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string p2, "Initializing plugin"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/marianhello/bgloc/sync/NotificationHelper;->registerAllChannels(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mDelegate:Lcom/marianhello/bgloc/PluginDelegate;

    return-object p0
.end method

.method static synthetic access$202(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mStationaryLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-object p1
.end method

.method static synthetic access$300(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->registerLocationModeChangeReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->registerServiceBroadcast()V

    return-void
.end method

.method static synthetic access$500(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->startBackgroundService()V

    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getLocationTransform()Lcom/marianhello/bgloc/data/LocationTransform;
    .locals 1

    .line 508
    invoke-static {}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getLocationTransform()Lcom/marianhello/bgloc/data/LocationTransform;

    move-result-object v0

    return-object v0
.end method

.method public static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 488
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 489
    invoke-static {p0, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private persistConfiguration(Lcom/marianhello/bgloc/Config;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createConfigurationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/ConfigurationDAO;

    move-result-object v0

    .line 457
    invoke-interface {v0, p1}, Lcom/marianhello/bgloc/data/ConfigurationDAO;->persistConfiguration(Lcom/marianhello/bgloc/Config;)Z

    return-void
.end method

.method private declared-synchronized registerLocationModeChangeReceiver()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mLocationModeChangeReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->locationModeChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mLocationModeChangeReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized registerServiceBroadcast()V
    .locals 4

    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mServiceBroadcastReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->serviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, ".broadcast"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mServiceBroadcastReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static setLocationTransform(Lcom/marianhello/bgloc/data/LocationTransform;)V
    .locals 0

    .line 504
    invoke-static {p0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->setLocationTransform(Lcom/marianhello/bgloc/data/LocationTransform;)V

    return-void
.end method

.method public static showAppSettings(Landroid/content/Context;)V
    .locals 3

    .line 469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 470
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 473
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 474
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showLocationSettings(Landroid/content/Context;)V
    .locals 2

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 480
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 481
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 482
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x800000

    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startBackgroundService()V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Attempt to start bg service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 439
    iget-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->startForegroundService()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->start()V

    :goto_0
    return-void
.end method

.method private stopBackgroundService()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Attempt to stop bg service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->stop()V

    return-void
.end method

.method private declared-synchronized unregisterLocationModeChangeReceiver()V
    .locals 2

    monitor-enter p0

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mLocationModeChangeReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->locationModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mLocationModeChangeReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterServiceBroadcast()V
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mServiceBroadcastReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 206
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->serviceBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mServiceBroadcastReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/marianhello/bgloc/Config;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    monitor-enter p0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getStoredConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/marianhello/bgloc/Config;->merge(Lcom/marianhello/bgloc/Config;Lcom/marianhello/bgloc/Config;)Lcom/marianhello/bgloc/Config;

    move-result-object p1

    .line 344
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->persistConfiguration(Lcom/marianhello/bgloc/Config;)V

    .line 345
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Service configured with: {}"

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 347
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0, p1}, Lcom/marianhello/bgloc/service/LocationService;->configure(Lcom/marianhello/bgloc/Config;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    :try_start_1
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Configuration error: {}"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    new-instance v0, Lcom/marianhello/bgloc/PluginException;

    const-string v1, "Configuration error"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, p1, v2}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public deleteAllLocations()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Deleting all locations"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Lcom/marianhello/bgloc/data/LocationDAO;->deleteAllLocations()I

    return-void
.end method

.method public deleteLocation(Ljava/lang/Long;)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Deleting location locationId={}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    .line 291
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/marianhello/bgloc/data/LocationDAO;->deleteLocationById(J)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying plugin"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->unregisterLocationModeChangeReceiver()V

    .line 265
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->unregisterServiceBroadcast()V

    .line 267
    invoke-virtual {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->stopBackgroundService()V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->startHeadlessTask()V

    :goto_0
    return-void
.end method

.method public forceSync()V
    .locals 4

    .line 400
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Sync locations forced"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    .line 402
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAccountType()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v1, v2, v3}, Lcom/marianhello/bgloc/sync/AccountHelper;->CreateSyncAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 404
    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/marianhello/bgloc/sync/SyncService;->sync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method

.method public getAuthorizationStatus()I
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->hasPermissions()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getConfig()Lcom/marianhello/bgloc/Config;
    .locals 3

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 360
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getStoredConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;
    :try_end_1
    .catch Lcom/marianhello/bgloc/PluginException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 362
    :try_start_2
    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error getting stored config will use default"

    invoke-virtual {v0}, Lcom/marianhello/bgloc/PluginException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/marianhello/bgloc/Config;->getDefault()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mConfig:Lcom/marianhello/bgloc/Config;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentLocation(IJZ)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string v3, "Getting current location with timeout:{} maximumAge:{} enableHighAccuracy:{}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/LocationManager;->getInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/LocationManager;

    move-result-object v0

    .line 304
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/marianhello/bgloc/LocationManager;->getCurrentLocation(IJZ)Lcom/github/jparkie/promise/Promise;

    move-result-object p1

    .line 306
    :try_start_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->await()V

    .line 307
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    if-eqz p2, :cond_0

    .line 309
    invoke-static {p2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromLocation(Landroid/location/Location;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    return-object p1

    .line 312
    :cond_0
    invoke-interface {p1}, Lcom/github/jparkie/promise/Promise;->getError()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 316
    instance-of p2, p1, Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;

    if-nez p2, :cond_2

    .line 320
    instance-of p2, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p2, :cond_1

    .line 321
    new-instance p1, Lcom/marianhello/bgloc/PluginException;

    const-string p2, "Location request timed out"

    invoke-direct {p1, p2, v1}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 324
    :cond_1
    new-instance p2, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v5}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 317
    :cond_2
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string p2, "Getting current location failed due missing permissions"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 318
    new-instance p1, Lcom/marianhello/bgloc/PluginException;

    const-string p2, "Permission denied"

    invoke-direct {p1, p2, v4}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 314
    :cond_3
    new-instance p1, Lcom/marianhello/bgloc/PluginException;

    const-string p2, "Location not available"

    invoke-direct {p1, p2, v5}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 326
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string p3, "Interrupted while waiting location"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 328
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getLocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Lcom/marianhello/bgloc/data/LocationDAO;->getAllLocations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getLogEntries(I)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/marianhello/logging/LogEntry;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/marianhello/logging/DBLogReader;

    invoke-direct {v0}, Lcom/marianhello/logging/DBLogReader;-><init>()V

    .line 385
    sget-object v1, Lorg/slf4j/event/Level;->DEBUG:Lorg/slf4j/event/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/marianhello/logging/DBLogReader;->getEntries(IILorg/slf4j/event/Level;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getLogEntries(IILjava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/marianhello/logging/LogEntry;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Lcom/marianhello/logging/DBLogReader;

    invoke-direct {v0}, Lcom/marianhello/logging/DBLogReader;-><init>()V

    .line 390
    invoke-static {p3}, Lorg/slf4j/event/Level;->valueOf(Ljava/lang/String;)Lorg/slf4j/event/Level;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Lcom/marianhello/logging/DBLogReader;->getEntries(IILorg/slf4j/event/Level;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getStationaryLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mStationaryLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-object v0
.end method

.method public declared-synchronized getStoredConfig()Lcom/marianhello/bgloc/Config;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createConfigurationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/ConfigurationDAO;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Lcom/marianhello/bgloc/data/ConfigurationDAO;->retrieveConfiguration()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 374
    invoke-static {}, Lcom/marianhello/bgloc/Config;->getDefault()Lcom/marianhello/bgloc/Config;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    :try_start_1
    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v2, "Error getting stored config: {}"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    new-instance v1, Lcom/marianhello/bgloc/PluginException;

    const-string v2, "Error getting stored config"

    const/16 v3, 0x3ec

    invoke-direct {v1, v2, v0, v3}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getValidLocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation

    .line 280
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/marianhello/bgloc/data/DAOFactory;->createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Lcom/marianhello/bgloc/data/LocationDAO;->getValidLocations()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasPermissions()Z
    .locals 2

    .line 412
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    check-cast v0, Lcom/marianhello/bgloc/service/LocationServiceProxy;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isRunning()Z

    move-result v0

    return v0
.end method

.method public locationServicesEnabled()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x13

    if-lt v1, v3, :cond_1

    .line 420
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .line 423
    iget-object v1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v2, "Location services check failed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    new-instance v1, Lcom/marianhello/bgloc/PluginException;

    const/16 v3, 0x3e9

    invoke-direct {v1, v2, v0, v3}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 427
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mIsPaused:Z

    .line 250
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->startForeground()V

    return-void
.end method

.method public registerHeadlessTask(Ljava/lang/String;)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Registering headless task: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0, p1}, Lcom/marianhello/bgloc/service/LocationService;->registerHeadlessTask(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mIsPaused:Z

    .line 255
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->stopHeadlessTask()V

    .line 256
    invoke-virtual {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getConfig()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationService;->stopForeground()V

    :cond_0
    return-void
.end method

.method public sendCommand(I)V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/marianhello/bgloc/service/LocationService;->executeProviderCommand(II)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Starting service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;

    invoke-direct {v2, p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;-><init>(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    invoke-virtual {v0, v1, v2}, Lcom/intentfilter/androidpermissions/PermissionManager;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stopping service"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->unregisterLocationModeChangeReceiver()V

    .line 245
    invoke-direct {p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->stopBackgroundService()V

    return-void
.end method

.method public switchMode(I)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->mService:Lcom/marianhello/bgloc/service/LocationService;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/marianhello/bgloc/service/LocationService;->executeProviderCommand(II)V

    return-void
.end method
