.class public Lcom/marianhello/bgloc/provider/RawLocationProvider;
.super Lcom/marianhello/bgloc/provider/AbstractLocationProvider;
.source "RawLocationProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private isStarted:Z

.field private locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    const/4 p1, 0x2

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    return-void
.end method

.method private translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 4

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x2

    if-lt v0, v1, :cond_1

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 121
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    const/4 v3, 0x3

    if-lt v0, v1, :cond_2

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 124
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ltz p1, :cond_3

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 128
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isStarted()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    return v0
.end method

.method public onConfigure(Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    .line 75
    iget-boolean p1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->onStop()V

    .line 77
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->onStart()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 28
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onCreate()V

    .line 30
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying RawLocationProvider"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->onStop()V

    .line 135
    invoke-super {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->onDestroy()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Location change: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
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

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->showDebugToast(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->handleLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Provider {} was disabled"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v1, "Provider {} was enabled"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 9

    .line 35
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 45
    iget-object v2, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->translateDesiredAccuracy(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    const/4 v2, 0x3

    .line 46
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v7, v0

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 50
    iput-boolean v1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Security exception: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V

    :goto_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    .line 96
    iget-object p3, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Provider {} status changed: {}"

    invoke-interface {p3, v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    .line 59
    iget-boolean v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_0
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 65
    :try_start_1
    iget-object v2, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->logger:Lorg/slf4j/Logger;

    const-string v3, "Security exception: {}"

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/provider/RawLocationProvider;->handleSecurityException(Ljava/lang/SecurityException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 68
    :goto_2
    iput-boolean v0, p0, Lcom/marianhello/bgloc/provider/RawLocationProvider;->isStarted:Z

    .line 69
    throw v1

    return-void
.end method
