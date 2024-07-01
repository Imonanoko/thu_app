.class public Lcom/marianhello/bgloc/cordova/ConfigMapper;
.super Ljava/lang/Object;
.source "ConfigMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/marianhello/bgloc/Config;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/marianhello/bgloc/Config;

    invoke-direct {v0}, Lcom/marianhello/bgloc/Config;-><init>()V

    const-string v1, "stationaryRadius"

    .line 24
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/Config;->setStationaryRadius(D)V

    :cond_0
    const-string v1, "distanceFilter"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDistanceFilter(Ljava/lang/Integer;)V

    :cond_1
    const-string v1, "desiredAccuracy"

    .line 30
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDesiredAccuracy(Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "debug"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDebugging(Ljava/lang/Boolean;)V

    :cond_3
    const-string v1, "notificationsEnabled"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationsEnabled(Ljava/lang/Boolean;)V

    :cond_4
    const-string v1, "notificationTitle"

    .line 39
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationTitle(Ljava/lang/String;)V

    :cond_6
    const-string v1, "notificationText"

    .line 42
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 43
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationText(Ljava/lang/String;)V

    :cond_8
    const-string v1, "stopOnTerminate"

    .line 45
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 46
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStopOnTerminate(Ljava/lang/Boolean;)V

    :cond_9
    const-string v1, "startOnBoot"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStartOnBoot(Ljava/lang/Boolean;)V

    :cond_a
    const-string v1, "locationProvider"

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "locationProvider"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setLocationProvider(Ljava/lang/Integer;)V

    :cond_b
    const-string v1, "interval"

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "interval"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setInterval(Ljava/lang/Integer;)V

    :cond_c
    const-string v1, "fastestInterval"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "fastestInterval"

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setFastestInterval(Ljava/lang/Integer;)V

    :cond_d
    const-string v1, "activitiesInterval"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "activitiesInterval"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setActivitiesInterval(Ljava/lang/Integer;)V

    :cond_e
    const-string v1, "notificationIconColor"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_f
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationIconColor(Ljava/lang/String;)V

    :cond_10
    const-string v1, "notificationIconLarge"

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_11
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setLargeNotificationIcon(Ljava/lang/String;)V

    :cond_12
    const-string v1, "notificationIconSmall"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_13
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSmallNotificationIcon(Ljava/lang/String;)V

    :cond_14
    const-string v1, "startForeground"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "startForeground"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStartForeground(Ljava/lang/Boolean;)V

    :cond_15
    const-string v1, "stopOnStillActivity"

    .line 75
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "stopOnStillActivity"

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStopOnStillActivity(Ljava/lang/Boolean;)V

    :cond_16
    const-string v1, "url"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_17
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setUrl(Ljava/lang/String;)V

    :cond_18
    const-string v1, "syncUrl"

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_19
    sget-object v1, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    :goto_6
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSyncUrl(Ljava/lang/String;)V

    :cond_1a
    const-string v1, "syncThreshold"

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "syncThreshold"

    .line 85
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSyncThreshold(Ljava/lang/Integer;)V

    :cond_1b
    const-string v1, "httpHeaders"

    .line 87
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "httpHeaders"

    .line 88
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setHttpHeaders(Lorg/json/JSONObject;)V

    :cond_1c
    const-string v1, "maxLocations"

    .line 90
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "maxLocations"

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setMaxLocations(Ljava/lang/Integer;)V

    :cond_1d
    const-string v1, "postTemplate"

    .line 93
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 95
    invoke-static {}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->getDefault()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V

    goto :goto_7

    .line 97
    :cond_1e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 98
    invoke-static {p0}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->fromJSON(Ljava/lang/Object;)Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V

    :cond_1f
    :goto_7
    return-object v0
.end method

.method public static toJSONObject(Lcom/marianhello/bgloc/Config;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v1

    const-string v2, "stationaryRadius"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "distanceFilter"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "desiredAccuracy"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "notificationsEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    const-string v2, "notificationTitle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    const-string v2, "notificationText"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    const-string v2, "notificationIconLarge"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    const-string v2, "notificationIconSmall"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_4
    const-string v2, "notificationIconColor"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "stopOnTerminate"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartOnBoot()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "startOnBoot"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "startForeground"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "locationProvider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fastestInterval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "activitiesInterval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "stopOnStillActivity"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_5
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_6
    const-string v2, "syncUrl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "syncThreshold"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "httpHeaders"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getMaxLocations()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "maxLocations"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p0

    .line 131
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 132
    instance-of v2, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    if-eqz v2, :cond_7

    .line 133
    check-cast p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->toMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 135
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_7

    .line 137
    :cond_7
    instance-of v2, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    if-eqz v2, :cond_8

    .line 138
    check-cast p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->toArray()[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 140
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    :cond_8
    :goto_7
    const-string p0, "postTemplate"

    .line 144
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
