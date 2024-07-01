.class public Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;
.super Lcom/marianhello/bgloc/provider/AbstractLocationProvider;
.source "DistanceFilterLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final MAX_SPEED_ACQUISITION_ATTEMPTS:I = 0x3

.field private static final MAX_STATIONARY_ACQUISITION_ATTEMPTS:I = 0x5

.field private static final P_NAME:Ljava/lang/String; = "com.tenforwardconsulting.cordova.bgloc"

.field private static final SINGLE_LOCATION_UPDATE_ACTION:Ljava/lang/String; = "com.tenforwardconsulting.cordova.bgloc.SINGLE_LOCATION_UPDATE_ACTION"

.field private static final STATIONARY_ALARM_ACTION:Ljava/lang/String; = "com.tenforwardconsulting.cordova.bgloc.STATIONARY_ALARM_ACTION"

.field private static final STATIONARY_LOCATION_MONITOR_ACTION:Ljava/lang/String; = "com.tenforwardconsulting.cordova.bgloc.STATIONARY_LOCATION_MONITOR_ACTION"

.field private static final STATIONARY_LOCATION_POLLING_INTERVAL_AGGRESSIVE:J = 0xea60L

.field private static final STATIONARY_LOCATION_POLLING_INTERVAL_LAZY:J = 0x2bf20L

.field private static final STATIONARY_REGION_ACTION:Ljava/lang/String; = "com.tenforwardconsulting.cordova.bgloc.STATIONARY_REGION_ACTION"

.field private static final STATIONARY_TIMEOUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "DistanceFilterLocationProvider"


# instance fields
.field private alarmManager:Landroid/app/AlarmManager;

.field private criteria:Landroid/location/Criteria;

.field private isAcquiringSpeed:Ljava/lang/Boolean;

.field private isAcquiringStationaryLocation:Ljava/lang/Boolean;

.field private isMoving:Ljava/lang/Boolean;

.field private isStarted:Z

.field private lastLocation:Landroid/location/Location;

.field private locationAcquisitionAttempts:Ljava/lang/Integer;

.field private locationManager:Landroid/location/LocationManager;

.field private scaledDistanceFilter:Ljava/lang/Integer;

.field private singleUpdatePI:Landroid/app/PendingIntent;

.field private singleUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private stationaryAlarmPI:Landroid/app/PendingIntent;

.field private stationaryAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private stationaryLocation:Landroid/location/Location;

.field private stationaryLocationMonitorReceiver:Landroid/content/BroadcastReceiver;

.field private stationaryLocationPollingInterval:J

.field private stationaryLocationPollingPI:Landroid/app/PendingIntent;

.field private stationaryRadius:F

.field private stationaryRegionPI:Landroid/app/PendingIntent;

.field private stationaryRegionReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    .line 54
    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    .line 55
    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    .line 56
    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    .line 73
    iput-boolean p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    .line 446
    new-instance p1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;-><init>(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)V

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 461
    new-instance p1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;-><init>(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)V

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 475
    new-instance p1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;-><init>(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)V

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationMonitorReceiver:Landroid/content/BroadcastReceiver;

    .line 497
    new-instance p1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;-><init>(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)V

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Ljava/lang/Boolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;I)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/Criteria;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/app/PendingIntent;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->singleUpdatePI:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/LocationManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method private calculateDistanceFilter(Ljava/lang/Float;)Ljava/lang/Integer;
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 351
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    int-to-float p1, p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 352
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result p1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private setPace(Ljava/lang/Boolean;)V
    .locals 9

    .line 167
    iget-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Setting pace: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    .line 174
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 175
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    .line 176
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 177
    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 181
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 182
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v3}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 183
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 185
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    .line 195
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 205
    :cond_3
    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float v7, p1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    .line 196
    :cond_4
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    .line 198
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object p1

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "passive"

    if-eq v2, v0, :cond_5

    .line 201
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 208
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Security exception: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private startMonitoringStationaryRegion(Landroid/location/Location;)V
    .locals 10

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 361
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 362
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 363
    :goto_0
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    .line 365
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v2, "startMonitoringStationaryRegion: lat={} lon={} acy={}"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 369
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 370
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const-wide/16 v7, -0x1

    iget-object v9, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionPI:Landroid/app/PendingIntent;

    move v6, v0

    .line 368
    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 376
    iput v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRadius:F

    const-wide/32 v0, 0x2bf20

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->startPollingStationaryLocation(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 380
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Security exception: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :goto_1
    return-void
.end method

.method private translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .line 219
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x2

    if-lt v0, v1, :cond_1

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    const/4 v3, 0x3

    if-lt v0, v1, :cond_2

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 228
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 232
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getLastBestLocation()Landroid/location/Location;
    .locals 18

    move-object/from16 v1, p0

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 250
    iget-object v0, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    iget-object v4, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v4}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "Fetching last best location: radius={} minTime={}"

    invoke-interface {v0, v6, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 256
    :try_start_0
    iget-object v0, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v5, v4

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 258
    iget-object v15, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v15, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 260
    iget-object v8, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v9, "Test provider={} lat={} lon={} acy={} v={}m/s time={}"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v13

    invoke-virtual {v15}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-virtual {v15}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v14, v11

    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v14, v10

    invoke-virtual {v15}, Landroid/location/Location;->getSpeed()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v14, v11

    invoke-virtual {v15}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x5

    aput-object v10, v14, v11

    invoke-interface {v8, v9, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v15}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    .line 262
    invoke-virtual {v15}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v11, v9, v2

    if-lez v11, :cond_0

    cmpg-float v9, v8, v6

    if-gez v9, :cond_0

    move-object v5, v7

    move v6, v8

    move-object v4, v15

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 273
    iget-object v0, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v2, "Best result found provider={} lat={} lon={} acy={} v={}m/s time={}"

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v5, v3, v13

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v11

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-virtual {v4}, Landroid/location/Location;->getSpeed()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v3, v6

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 276
    iget-object v2, v1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Security exception: {}"

    invoke-interface {v2, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    invoke-virtual {v1, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :cond_2
    :goto_1
    return-object v4
.end method

.method public isStarted()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    return v0
.end method

.method public onCommand(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 143
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onConfigure(Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    .line 151
    iget-boolean p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onStop()V

    .line 153
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onStart()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 82
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onCreate()V

    .line 84
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    .line 85
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    .line 88
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tenforwardconsulting.cordova.bgloc.STATIONARY_ALARM_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmPI:Landroid/app/PendingIntent;

    .line 89
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tenforwardconsulting.cordova.bgloc.STATIONARY_REGION_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionPI:Landroid/app/PendingIntent;

    .line 93
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tenforwardconsulting.cordova.bgloc.STATIONARY_LOCATION_MONITOR_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingPI:Landroid/app/PendingIntent;

    .line 97
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationMonitorReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tenforwardconsulting.cordova.bgloc.SINGLE_LOCATION_UPDATE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->singleUpdatePI:Landroid/app/PendingIntent;

    .line 101
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    .line 105
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 106
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 107
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 108
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->criteria:Landroid/location/Criteria;

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying DistanceFilterLocationProvider"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onStop()V

    .line 540
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmPI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 541
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingPI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 543
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->singleUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationMonitorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onDestroy()V

    return-void
.end method

.method public onExitStationaryRegion(Landroid/location/Location;)V
    .locals 4

    const/16 v0, 0x29

    .line 390
    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    .line 392
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 393
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Exited stationary: lat={} long={} acy={}}\'"

    .line 392
    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    :try_start_0
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingPI:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 399
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionPI:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 401
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 403
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Security exception: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 404
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    const-string v3, "Location change: {} isMoving={}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mv:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",acy:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",v:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",df:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->showDebugToast(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 295
    :cond_1
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 298
    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringStationaryLocation:Ljava/lang/Boolean;

    .line 299
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->startMonitoringStationaryRegion(Landroid/location/Location;)V

    .line 300
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    iget v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRadius:F

    invoke-virtual {p0, p1, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleStationary(Landroid/location/Location;F)V

    return-void

    .line 304
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    return-void

    .line 307
    :cond_4
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 308
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationAcquisitionAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    const/16 v0, 0x56

    .line 310
    invoke-virtual {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    .line 311
    iput-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isAcquiringSpeed:Ljava/lang/Boolean;

    .line 312
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->calculateDistanceFilter(Ljava/lang/Float;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    .line 313
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 315
    :cond_5
    invoke-virtual {p0, v2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    return-void

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {p0, v2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    .line 322
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->resetStationaryAlarm()V

    .line 326
    :cond_7
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->calculateDistanceFilter(Ljava/lang/Float;)Ljava/lang/Integer;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 328
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    const-string v4, "Updating distanceFilter: new={} old={}"

    invoke-interface {v1, v4, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 329
    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    .line 330
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    return-void

    .line 335
    :cond_9
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    if-eqz v0, :cond_a

    return-void

    .line 339
    :cond_a
    :goto_0
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->lastLocation:Landroid/location/Location;

    .line 340
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->handleLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onPollStationaryLocation(Landroid/location/Location;)V
    .locals 6

    .line 418
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isMoving:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x18

    .line 422
    invoke-virtual {p0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->playDebugTone(I)V

    .line 425
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 429
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stationary exit in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-float v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->showDebugToast(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "Distance from stationary location: {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 435
    invoke-virtual {p0, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onExitStationaryRegion(Landroid/location/Location;)V

    goto :goto_1

    :cond_2
    cmpl-float p1, v1, v2

    if-lez p1, :cond_3

    const-wide/32 v0, 0xea60

    .line 437
    invoke-virtual {p0, v0, v1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->startPollingStationaryLocation(J)V

    goto :goto_1

    .line 438
    :cond_3
    iget-wide v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingInterval:J

    const-wide/32 v2, 0x2bf20

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    .line 439
    invoke-virtual {p0, v2, v3}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->startPollingStationaryLocation(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Provider {} was disabled"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Provider {} was enabled"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start recording"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->scaledDistanceFilter:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->setPace(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 532
    iget-object p3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Provider {} status changed: {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 131
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryRegionPI:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 135
    iput-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    .line 136
    throw v1

    .line 135
    :catch_0
    :goto_0
    iput-boolean v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->isStarted:Z

    return-void
.end method

.method public resetStationaryAlarm()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmPI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 345
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryAlarmPI:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public startPollingStationaryLocation(J)V
    .locals 11

    .line 411
    iput-wide p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingInterval:J

    .line 412
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingPI:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long v6, v0, v2

    .line 414
    iget-object v4, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->alarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->stationaryLocationPollingPI:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    move-wide v8, p1

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
