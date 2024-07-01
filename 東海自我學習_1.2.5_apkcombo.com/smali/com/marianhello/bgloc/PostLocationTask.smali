.class public Lcom/marianhello/bgloc/PostLocationTask;
.super Ljava/lang/Object;
.source "PostLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;
    }
.end annotation


# instance fields
.field private logger:Lorg/slf4j/Logger;

.field private volatile mConfig:Lcom/marianhello/bgloc/Config;

.field private final mConnectivityListener:Lcom/marianhello/bgloc/ConnectivityListener;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mHasConnectivity:Z

.field private final mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

.field private final mTaskListener:Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/LocationDAO;Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;Lcom/marianhello/bgloc/ConnectivityListener;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mHasConnectivity:Z

    .line 51
    const-class v0, Lcom/marianhello/bgloc/PostLocationTask;

    invoke-static {v0}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    .line 52
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    const-string v1, "Creating PostLocationTask"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    .line 55
    iput-object p2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mTaskListener:Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;

    .line 56
    iput-object p3, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConnectivityListener:Lcom/marianhello/bgloc/ConnectivityListener;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/bgloc/PostLocationTask;)Lcom/marianhello/bgloc/data/LocationDAO;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    return-object p0
.end method

.method static synthetic access$100(Lcom/marianhello/bgloc/PostLocationTask;Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/PostLocationTask;->post(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method

.method private post(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 4

    .line 116
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 118
    iget-boolean v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mHasConnectivity:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->hasValidUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/PostLocationTask;->postLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {p1, v0, v1}, Lcom/marianhello/bgloc/data/LocationDAO;->deleteLocationById(J)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {p1, v0, v1}, Lcom/marianhello/bgloc/data/LocationDAO;->updateLocationForSync(J)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {p1, v0, v1}, Lcom/marianhello/bgloc/data/LocationDAO;->updateLocationForSync(J)V

    .line 130
    :goto_0
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasValidSyncUrl()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/marianhello/bgloc/data/LocationDAO;->getLocationsForSyncCount(J)J

    move-result-wide v0

    .line 132
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempt to sync locations: {} threshold: {}"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mTaskListener:Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;

    invoke-interface {p1}, Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;->onSyncRequested()V

    :cond_2
    return-void
.end method

.method private postLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)Z
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    const-string v1, "Executing PostLocationTask#postLocation"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 141
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/marianhello/bgloc/data/LocationTemplate;->locationToJson(Lcom/marianhello/bgloc/data/BackgroundLocation;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 150
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    iget-object v3, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v3}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "Posting json to url: {} headers: {}"

    invoke-interface {v2, v4, p1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    :try_start_1
    iget-object v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/marianhello/bgloc/HttpPostService;->postJSON(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Map;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x11d

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    const-string v2, "Location was sent to the server, and received an \"HTTP 285 Updates Not Required\""

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mTaskListener:Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0}, Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;->onRequestedAbortUpdates()V

    :cond_0
    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mTaskListener:Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;

    if-eqz v0, :cond_1

    .line 173
    invoke-interface {v0}, Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;->onHttpAuthorizationUpdates()V

    :cond_1
    const/16 v0, 0xc8

    const/4 v2, 0x1

    if-lt p1, v0, :cond_2

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Server error while posting locations responseCode: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_3
    return v2

    :catch_0
    move-exception p1

    .line 157
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConnectivityListener:Lcom/marianhello/bgloc/ConnectivityListener;

    invoke-interface {v0}, Lcom/marianhello/bgloc/ConnectivityListener;->hasConnectivity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mHasConnectivity:Z

    .line 158
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Error while posting locations: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 146
    :catch_1
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Location to json failed: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public add(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    if-nez v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->logger:Lorg/slf4j/Logger;

    const-string v0, "PostLocationTask has no config. Did you called setConfig? Skipping location."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {v0, p1}, Lcom/marianhello/bgloc/data/LocationDAO;->persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)J

    move-result-wide v0

    .line 85
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLocationId(Ljava/lang/Long;)V

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/marianhello/bgloc/PostLocationTask$2;

    invoke-direct {v3, p0, p1}, Lcom/marianhello/bgloc/PostLocationTask$2;-><init>(Lcom/marianhello/bgloc/PostLocationTask;Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {p1, v0, v1}, Lcom/marianhello/bgloc/data/LocationDAO;->updateLocationForSync(J)V

    :goto_0
    return-void
.end method

.method public clearQueue()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/marianhello/bgloc/PostLocationTask$1;

    invoke-direct {v1, p0}, Lcom/marianhello/bgloc/PostLocationTask$1;-><init>(Lcom/marianhello/bgloc/PostLocationTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setConfig(Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mConfig:Lcom/marianhello/bgloc/Config;

    return-void
.end method

.method public setHasConnectivity(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mHasConnectivity:Z

    return-void
.end method

.method public shutdown()V
    .locals 1

    const/16 v0, 0x3c

    .line 100
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/PostLocationTask;->shutdown(I)V

    return-void
.end method

.method public shutdown(I)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 108
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mLocationDAO:Lcom/marianhello/bgloc/data/LocationDAO;

    invoke-interface {p1}, Lcom/marianhello/bgloc/data/LocationDAO;->deleteUnpostedLocations()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    iget-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    return-void
.end method
