.class public Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteOpenHelper.java"


# static fields
.field public static final COMMA_SEP:Ljava/lang/String; = ","

.field public static final DATABASE_VERSION:I = 0xf

.field public static final INTEGER_TYPE:Ljava/lang/String; = " INTEGER"

.field public static final REAL_TYPE:Ljava/lang/String; = " REAL"

.field public static final SQLITE_DATABASE_NAME:Ljava/lang/String; = "cordova_bg_geolocation.db"

.field private static final TAG:Ljava/lang/String; = "com.marianhello.bgloc.data.sqlite.SQLiteOpenHelper"

.field public static final TEXT_TYPE:Ljava/lang/String; = " TEXT"

.field private static instance:Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "cordova_bg_geolocation.db"

    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 59
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;
    .locals 2

    const-class v0, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->instance:Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->instance:Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;

    .line 47
    :cond_0
    sget-object p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->instance:Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .line 136
    sget-object v0, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 140
    sget-object p2, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error executing sql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 64
    sget-object v0, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating db: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CREATE TABLE location (_id INTEGER PRIMARY KEY,time INTEGER,accuracy REAL,speed REAL,bearing REAL,altitude REAL,latitude REAL,longitude REAL,radius REAL,has_accuracy INTEGER,has_speed INTEGER,has_bearing INTEGER,has_altitude INTEGER,has_radius INTEGER,provider TEXT,service_provider INTEGER,valid INTEGER,batch_start INTEGER,mock_flags INTEGER )"

    .line 65
    invoke-virtual {p0, p1, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE configuration (_id INTEGER PRIMARY KEY,stationary_radius REAL,distance_filter INTEGER,desired_accuracy INTEGER,debugging INTEGER,notification_title TEXT,notification_text TEXT,notification_icon_small TEXT,notification_icon_large TEXT,notification_icon_color TEXT,stop_terminate INTEGER,stop_still INTEGER,start_boot INTEGER,start_foreground INTEGER,notifications_enabled INTEGER,service_provider TEXT,interval INTEGER,fastest_interval INTEGER,activities_interval INTEGER,url TEXT,sync_url TEXT,sync_threshold INTEGER,http_headers TEXT,max_locations INTEGER,template TEXT )"

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX time_idx ON location (time)"

    .line 67
    invoke-virtual {p0, p1, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "CREATE INDEX batch_id_idx ON location (batch_start)"

    .line 68
    invoke-virtual {p0, p1, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS location"

    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS configuration"

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    packed-switch p2, :pswitch_data_0

    const/4 p2, 0x0

    .line 118
    invoke-virtual {p0, p1, p2, p2}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void

    :pswitch_0
    const-string p2, "ALTER TABLE location ADD COLUMN valid INTEGER"

    .line 78
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "CREATE INDEX time_idx ON location (time)"

    .line 80
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "DROP TABLE IF EXISTS configuration"

    .line 81
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "CREATE TABLE configuration (_id INTEGER PRIMARY KEY,stationary_radius REAL,distance_filter INTEGER,desired_accuracy INTEGER,debugging INTEGER,notification_title TEXT,notification_text TEXT,notification_icon_small TEXT,notification_icon_large TEXT,notification_icon_color TEXT,stop_terminate INTEGER,stop_still INTEGER,start_boot INTEGER,start_foreground INTEGER,notifications_enabled INTEGER,service_provider TEXT,interval INTEGER,fastest_interval INTEGER,activities_interval INTEGER,url TEXT,sync_url TEXT,sync_threshold INTEGER,http_headers TEXT,max_locations INTEGER,template TEXT )"

    .line 82
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :pswitch_1
    const-string p2, "ALTER TABLE location ADD COLUMN radius REAL"

    .line 84
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN has_accuracy INTEGER"

    .line 86
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN has_speed INTEGER"

    .line 88
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN has_bearing INTEGER"

    .line 90
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN has_altitude INTEGER"

    .line 92
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN has_radius INTEGER"

    .line 94
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "ALTER TABLE location ADD COLUMN batch_start INTEGER"

    .line 96
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "CREATE INDEX batch_id_idx ON location (batch_start)"

    .line 98
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "UPDATE location SET has_accuracy= 1,has_speed= 1,has_bearing= 1,has_altitude= 1,has_radius= 1"

    .line 99
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :pswitch_2
    const-string p2, "ALTER TABLE configuration ADD COLUMN template TEXT"

    .line 107
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :pswitch_3
    const-string p2, "ALTER TABLE location ADD COLUMN mock_flags INTEGER"

    .line 110
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :pswitch_4
    const-string p2, "ALTER TABLE configuration ADD COLUMN notifications_enabled INTEGER"

    .line 113
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 123
    invoke-virtual {p0, p1, p3}, Lcom/marianhello/bgloc/data/sqlite/SQLiteOpenHelper;->execAndLogSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
