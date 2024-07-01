.class public abstract Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationContract$ConfigurationEntry;
.super Ljava/lang/Object;
.source "SQLiteConfigurationContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ConfigurationEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_ACTIVITIES_INTERVAL:Ljava/lang/String; = "activities_interval"

.field public static final COLUMN_NAME_DEBUG:Ljava/lang/String; = "debugging"

.field public static final COLUMN_NAME_DESIRED_ACCURACY:Ljava/lang/String; = "desired_accuracy"

.field public static final COLUMN_NAME_DISTANCE_FILTER:Ljava/lang/String; = "distance_filter"

.field public static final COLUMN_NAME_FASTEST_INTERVAL:Ljava/lang/String; = "fastest_interval"

.field public static final COLUMN_NAME_HEADERS:Ljava/lang/String; = "http_headers"

.field public static final COLUMN_NAME_INTERVAL:Ljava/lang/String; = "interval"

.field public static final COLUMN_NAME_LOCATION_PROVIDER:Ljava/lang/String; = "service_provider"

.field public static final COLUMN_NAME_MAX_LOCATIONS:Ljava/lang/String; = "max_locations"

.field public static final COLUMN_NAME_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "notifications_enabled"

.field public static final COLUMN_NAME_NOTIF_COLOR:Ljava/lang/String; = "notification_icon_color"

.field public static final COLUMN_NAME_NOTIF_ICON_LARGE:Ljava/lang/String; = "notification_icon_large"

.field public static final COLUMN_NAME_NOTIF_ICON_SMALL:Ljava/lang/String; = "notification_icon_small"

.field public static final COLUMN_NAME_NOTIF_TEXT:Ljava/lang/String; = "notification_text"

.field public static final COLUMN_NAME_NOTIF_TITLE:Ljava/lang/String; = "notification_title"

.field public static final COLUMN_NAME_NULLABLE:Ljava/lang/String; = "NULLHACK"

.field public static final COLUMN_NAME_RADIUS:Ljava/lang/String; = "stationary_radius"

.field public static final COLUMN_NAME_START_BOOT:Ljava/lang/String; = "start_boot"

.field public static final COLUMN_NAME_START_FOREGROUND:Ljava/lang/String; = "start_foreground"

.field public static final COLUMN_NAME_STOP_ON_STILL:Ljava/lang/String; = "stop_still"

.field public static final COLUMN_NAME_STOP_TERMINATE:Ljava/lang/String; = "stop_terminate"

.field public static final COLUMN_NAME_SYNC_THRESHOLD:Ljava/lang/String; = "sync_threshold"

.field public static final COLUMN_NAME_SYNC_URL:Ljava/lang/String; = "sync_url"

.field public static final COLUMN_NAME_TEMPLATE:Ljava/lang/String; = "template"

.field public static final COLUMN_NAME_URL:Ljava/lang/String; = "url"

.field public static final SQL_CREATE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE configuration (_id INTEGER PRIMARY KEY,stationary_radius REAL,distance_filter INTEGER,desired_accuracy INTEGER,debugging INTEGER,notification_title TEXT,notification_text TEXT,notification_icon_small TEXT,notification_icon_large TEXT,notification_icon_color TEXT,stop_terminate INTEGER,stop_still INTEGER,start_boot INTEGER,start_foreground INTEGER,notifications_enabled INTEGER,service_provider TEXT,interval INTEGER,fastest_interval INTEGER,activities_interval INTEGER,url TEXT,sync_url TEXT,sync_threshold INTEGER,http_headers TEXT,max_locations INTEGER,template TEXT )"

.field public static final SQL_DROP_CONFIG_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS configuration"

.field public static final TABLE_NAME:Ljava/lang/String; = "configuration"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
