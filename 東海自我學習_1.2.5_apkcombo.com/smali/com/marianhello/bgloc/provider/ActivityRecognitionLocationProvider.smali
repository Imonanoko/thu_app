.class public Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;
.super Lcom/marianhello/bgloc/provider/AbstractLocationProvider;
.source "ActivityRecognitionLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;


# static fields
.field private static final DETECTED_ACTIVITY_UPDATE:Ljava/lang/String; = " com.marianhello.bgloc.DETECTED_ACTIVITY_UPDATE"

.field private static final P_NAME:Ljava/lang/String; = " com.marianhello.bgloc"

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionLocationProvider"


# instance fields
.field private detectedActivitiesPI:Landroid/app/PendingIntent;

.field private detectedActivitiesReceiver:Landroid/content/BroadcastReceiver;

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private isStarted:Z

.field private isTracking:Z

.field private isWatchingActivity:Z

.field private lastActivity:Lcom/google/android/gms/location/DetectedActivity;

.field private lastLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 44
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isTracking:Z

    .line 39
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isWatchingActivity:Z

    .line 41
    new-instance v0, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v1, 0x4

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->lastActivity:Lcom/google/android/gms/location/DetectedActivity;

    .line 237
    new-instance v0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;-><init>(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)Lcom/google/android/gms/location/DetectedActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->lastActivity:Lcom/google/android/gms/location/DetectedActivity;

    return-object p0
.end method

.method static synthetic access$002(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;Lcom/google/android/gms/location/DetectedActivity;)Lcom/google/android/gms/location/DetectedActivity;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->lastActivity:Lcom/google/android/gms/location/DetectedActivity;

    return-object p1
.end method

.method private attachRecorder()V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->connectToPlayAPI()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isWatchingActivity:Z

    if-eqz v0, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->startTracking()V

    .line 155
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 158
    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesPI:Landroid/app/PendingIntent;

    .line 156
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/ActivityRecognitionApi;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isWatchingActivity:Z

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_3
    :goto_0
    return-void
.end method

.method private connectToPlayAPI()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Connecting to Google Play Services"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 140
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method private detachRecorder()V
    .locals 3

    .line 169
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isWatchingActivity:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Detaching recorder"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesPI:Landroid/app/PendingIntent;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/ActivityRecognitionApi;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isWatchingActivity:Z

    :cond_0
    return-void
.end method

.method private disconnectFromPlayAPI()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public static getProbableActivity(Ljava/util/ArrayList;)Lcom/google/android/gms/location/DetectedActivity;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/location/DetectedActivity;",
            ">;)",
            "Lcom/google/android/gms/location/DetectedActivity;"
        }
    .end annotation

    .line 223
    new-instance v0, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    .line 225
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/location/DetectedActivity;

    .line 226
    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 227
    :cond_1
    sget-object v4, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->TAG:Ljava/lang/String;

    const-string v5, "Received a Detected Activity that was not tilting / unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 229
    invoke-virtual {v3}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v0

    move v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    const/16 p1, 0x69

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    const/16 p1, 0x68

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 207
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    const/16 v2, 0x64

    if-lt v0, v2, :cond_2

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 210
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_3

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 213
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    .line 214
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 217
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    return v0
.end method

.method public onConfigure(Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    .line 79
    iget-boolean p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->onStop()V

    .line 81
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->onStart()V

    :cond_0
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    .line 178
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v0, "Connected to Google Play Services"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 179
    iget-boolean p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->attachRecorder()V

    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v0, "Connection to Google Play Services failed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 187
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v0, "Connection to Google Play Services suspended"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 50
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onCreate()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v1, " com.marianhello.bgloc.DETECTED_ACTIVITY_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x232a

    const/16 v4, 0x1f

    if-ge v2, v4, :cond_0

    .line 54
    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesPI:Landroid/app/PendingIntent;

    goto :goto_0

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mContext:Landroid/content/Context;

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesPI:Landroid/app/PendingIntent;

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying ActivityRecognitionLocationProvider"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->onStop()V

    .line 266
    invoke-direct {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->disconnectFromPlayAPI()V

    .line 267
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detectedActivitiesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Location change: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->lastActivity:Lcom/google/android/gms/location/DetectedActivity;

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->handleStationary(Landroid/location/Location;)V

    .line 96
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->stopTracking()V

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->showDebugToast(Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->lastLocation:Landroid/location/Location;

    .line 103
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->handleLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Start recording"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    .line 65
    invoke-direct {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->attachRecorder()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Stop recording"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isStarted:Z

    .line 72
    invoke-direct {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->detachRecorder()V

    .line 73
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->stopTracking()V

    return-void
.end method

.method public startTracking()V
    .locals 6

    .line 107
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isTracking:Z

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 112
    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    .line 113
    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    .line 116
    :try_start_0
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v1, 0x1

    .line 117
    iput-boolean v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isTracking:Z

    .line 118
    iget-object v2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v3, "Start tracking with priority={} fastestInterval={} interval={} activitiesInterval={} stopOnStillActivity={}"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Security exception: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isTracking:Z

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->isTracking:Z

    return-void
.end method
