.class public abstract Lcom/marianhello/bgloc/headless/LocationTask;
.super Lcom/marianhello/bgloc/headless/Task;
.source "LocationTask.java"


# instance fields
.field protected mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/marianhello/bgloc/headless/Task;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 5

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "provider"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "locationProvider"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getTime()J

    move-result-wide v2

    const-string v4, "time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLatitude()D

    move-result-wide v2

    const-string v4, "latitude"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 30
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLongitude()D

    move-result-wide v2

    const-string v4, "longitude"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 31
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAccuracy()F

    move-result v2

    const-string v3, "accuracy"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getSpeed()F

    move-result v2

    const-string v3, "speed"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAltitude()D

    move-result-wide v2

    const-string v4, "altitude"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 34
    :cond_2
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getBearing()F

    move-result v2

    const-string v3, "bearing"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 35
    :cond_3
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getRadius()F

    move-result v2

    const-string v3, "radius"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    :cond_4
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasIsFromMockProvider()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isFromMockProvider()Z

    move-result v2

    const-string v3, "isFromMockProvider"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    :cond_5
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasMockLocationsEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->areMockLocationsEnabled()Z

    move-result v2

    const-string v3, "mockLocationsEnabled"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    :cond_6
    invoke-virtual {p0}, Lcom/marianhello/bgloc/headless/LocationTask;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "params"

    .line 40
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/marianhello/bgloc/headless/LocationTask;->mLocation:Lcom/marianhello/bgloc/data/BackgroundLocation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 52
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/headless/LocationTask;->onError(Ljava/lang/String;)V

    return-object v1
.end method
