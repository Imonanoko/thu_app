.class public abstract Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationContract$LocationEntry;
.super Ljava/lang/Object;
.source "SQLiteLocationContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocationEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_ACCURACY:Ljava/lang/String; = "accuracy"

.field public static final COLUMN_NAME_ALTITUDE:Ljava/lang/String; = "altitude"

.field public static final COLUMN_NAME_BATCH_START_MILLIS:Ljava/lang/String; = "batch_start"

.field public static final COLUMN_NAME_BEARING:Ljava/lang/String; = "bearing"

.field public static final COLUMN_NAME_HAS_ACCURACY:Ljava/lang/String; = "has_accuracy"

.field public static final COLUMN_NAME_HAS_ALTITUDE:Ljava/lang/String; = "has_altitude"

.field public static final COLUMN_NAME_HAS_BEARING:Ljava/lang/String; = "has_bearing"

.field public static final COLUMN_NAME_HAS_RADIUS:Ljava/lang/String; = "has_radius"

.field public static final COLUMN_NAME_HAS_SPEED:Ljava/lang/String; = "has_speed"

.field public static final COLUMN_NAME_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final COLUMN_NAME_LOCATION_PROVIDER:Ljava/lang/String; = "service_provider"

.field public static final COLUMN_NAME_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final COLUMN_NAME_MOCK_FLAGS:Ljava/lang/String; = "mock_flags"

.field public static final COLUMN_NAME_NULLABLE:Ljava/lang/String; = "NULLHACK"

.field public static final COLUMN_NAME_PROVIDER:Ljava/lang/String; = "provider"

.field public static final COLUMN_NAME_RADIUS:Ljava/lang/String; = "radius"

.field public static final COLUMN_NAME_SPEED:Ljava/lang/String; = "speed"

.field public static final COLUMN_NAME_STATUS:Ljava/lang/String; = "valid"

.field public static final COLUMN_NAME_TIME:Ljava/lang/String; = "time"

.field public static final DIR_BASEPATH:Ljava/lang/String; = "locations"

.field public static final ITEM_BASEPATH:Ljava/lang/String; = "locations/#"

.field public static final PROJECTION_ALL:[Ljava/lang/String;

.field public static final SQL_CREATE_LOCATION_TABLE:Ljava/lang/String; = "CREATE TABLE location (_id INTEGER PRIMARY KEY,time INTEGER,accuracy REAL,speed REAL,bearing REAL,altitude REAL,latitude REAL,longitude REAL,radius REAL,has_accuracy INTEGER,has_speed INTEGER,has_bearing INTEGER,has_altitude INTEGER,has_radius INTEGER,provider TEXT,service_provider INTEGER,valid INTEGER,batch_start INTEGER,mock_flags INTEGER )"

.field public static final SQL_CREATE_LOCATION_TABLE_BATCH_ID_IDX:Ljava/lang/String; = "CREATE INDEX batch_id_idx ON location (batch_start)"

.field public static final SQL_CREATE_LOCATION_TABLE_TIME_IDX:Ljava/lang/String; = "CREATE INDEX time_idx ON location (time)"

.field public static final SQL_DROP_LOCATION_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS location"

.field public static final TABLE_NAME:Ljava/lang/String; = "location"


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-string v0, "_id"

    const-string v1, "time"

    const-string v2, "accuracy"

    const-string v3, "speed"

    const-string v4, "bearing"

    const-string v5, "altitude"

    const-string v6, "latitude"

    const-string v7, "longitude"

    const-string v8, "radius"

    const-string v9, "has_accuracy"

    const-string v10, "has_speed"

    const-string v11, "has_bearing"

    const-string v12, "has_altitude"

    const-string v13, "has_radius"

    const-string v14, "provider"

    const-string v15, "service_provider"

    const-string v16, "valid"

    const-string v17, "batch_start"

    const-string v18, "mock_flags"

    .line 84
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationContract$LocationEntry;->PROJECTION_ALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
