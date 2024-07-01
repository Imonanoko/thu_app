.class public Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;
.super Ljava/lang/Object;
.source "SQLiteConfigurationDAO.java"

# interfaces
.implements Lcom/marianhello/bgloc/data/ConfigurationDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.marianhello.bgloc.data.sqlite.SQLiteConfigurationDAO"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->getHelper(Landroid/content/Context;)Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getContentValues(Lcom/marianhello/bgloc/Config;)Landroid/content/ContentValues;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v2

    const-string v3, "stationary_radius"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 134
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "distance_filter"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "desired_accuracy"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "debugging"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_title"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_text"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_icon_small"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_icon_large"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v2

    const-string v4, "notification_icon_color"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "stop_terminate"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "stop_still"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStartOnBoot()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "start_boot"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_4

    const/4 v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "start_foreground"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "notifications_enabled"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_provider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fastest_interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "activities_interval"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sync_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sync_threshold"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http_headers"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getMaxLocations()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_locations"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasTemplate()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    const/4 p1, 0x0

    :goto_6
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/Config;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/marianhello/bgloc/Config;->getDefault()Lcom/marianhello/bgloc/Config;

    move-result-object v0

    const-string v1, "stationary_radius"

    .line 102
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStationaryRadius(F)V

    const-string v1, "distance_filter"

    .line 103
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDistanceFilter(Ljava/lang/Integer;)V

    const-string v1, "desired_accuracy"

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDesiredAccuracy(Ljava/lang/Integer;)V

    const-string v1, "debugging"

    .line 105
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setDebugging(Ljava/lang/Boolean;)V

    const-string v1, "notification_title"

    .line 106
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationTitle(Ljava/lang/String;)V

    const-string v1, "notification_text"

    .line 107
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationText(Ljava/lang/String;)V

    const-string v1, "notification_icon_small"

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSmallNotificationIcon(Ljava/lang/String;)V

    const-string v1, "notification_icon_large"

    .line 109
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setLargeNotificationIcon(Ljava/lang/String;)V

    const-string v1, "notification_icon_color"

    .line 110
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationIconColor(Ljava/lang/String;)V

    const-string v1, "stop_terminate"

    .line 111
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStopOnTerminate(Ljava/lang/Boolean;)V

    const-string v1, "stop_still"

    .line 112
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStopOnStillActivity(Ljava/lang/Boolean;)V

    const-string v1, "start_boot"

    .line 113
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStartOnBoot(Ljava/lang/Boolean;)V

    const-string v1, "start_foreground"

    .line 114
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setStartForeground(Ljava/lang/Boolean;)V

    const-string v1, "notifications_enabled"

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationsEnabled(Ljava/lang/Boolean;)V

    const-string v1, "service_provider"

    .line 116
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setLocationProvider(Ljava/lang/Integer;)V

    const-string v1, "interval"

    .line 117
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setInterval(Ljava/lang/Integer;)V

    const-string v1, "fastest_interval"

    .line 118
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setFastestInterval(Ljava/lang/Integer;)V

    const-string v1, "activities_interval"

    .line 119
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setActivitiesInterval(Ljava/lang/Integer;)V

    const-string v1, "url"

    .line 120
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setUrl(Ljava/lang/String;)V

    const-string v1, "sync_url"

    .line 121
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSyncUrl(Ljava/lang/String;)V

    const-string v1, "sync_threshold"

    .line 122
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setSyncThreshold(Ljava/lang/Integer;)V

    .line 123
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "http_headers"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setHttpHeaders(Lorg/json/JSONObject;)V

    const-string v1, "max_locations"

    .line 124
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/Config;->setMaxLocations(Ljava/lang/Integer;)V

    const-string v1, "template"

    .line 125
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->fromJSONString(Ljava/lang/String;)Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/Config;->setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V

    return-object v0
.end method


# virtual methods
.method public persistConfiguration(Lcom/marianhello/bgloc/Config;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->getContentValues(Lcom/marianhello/bgloc/Config;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "configuration"

    const-string v2, "NULLHACK"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 92
    sget-object p1, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuration persisted with rowId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public retrieveConfiguration()Lcom/marianhello/bgloc/Config;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "_id"

    const-string v3, "stationary_radius"

    const-string v4, "distance_filter"

    const-string v5, "desired_accuracy"

    const-string v6, "debugging"

    const-string v7, "notification_title"

    const-string v8, "notification_text"

    const-string v9, "notification_icon_large"

    const-string v10, "notification_icon_small"

    const-string v11, "notification_icon_color"

    const-string v12, "stop_terminate"

    const-string v13, "stop_still"

    const-string v14, "start_boot"

    const-string v15, "start_foreground"

    const-string v16, "notifications_enabled"

    const-string v17, "service_provider"

    const-string v18, "interval"

    const-string v19, "fastest_interval"

    const-string v20, "activities_interval"

    const-string v21, "url"

    const-string v22, "sync_url"

    const-string v23, "sync_threshold"

    const-string v24, "http_headers"

    const-string v25, "max_locations"

    const-string v26, "template"

    .line 34
    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v29

    const/4 v2, 0x0

    .line 70
    :try_start_0
    iget-object v0, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v28, "configuration"

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v34}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {v1, v3}, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;->hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/Config;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v3, :cond_1

    .line 84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_2
    throw v0
.end method
