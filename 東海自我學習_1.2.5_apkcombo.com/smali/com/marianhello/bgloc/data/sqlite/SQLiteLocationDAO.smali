.class public Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;
.super Ljava/lang/Object;
.source "SQLiteLocationDAO.java"

# interfaces
.implements Lcom/marianhello/bgloc/data/LocationDAO;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
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

    iput-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private getContentValues(Lcom/marianhello/bgloc/data/BackgroundLocation;)Landroid/content/ContentValues;
    .locals 3

    .line 438
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 439
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 442
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "speed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 443
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 444
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 445
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getRadius()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 446
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 447
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 448
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_accuracy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_speed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_bearing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_altitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_radius"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_provider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 455
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getBatchStartMillis()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "batch_start"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getMockFlags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "mock_flags"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->queryColumns()[Ljava/lang/String;

    move-result-object v3

    const-string v8, "time ASC"

    const/4 v9, 0x0

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "location"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 57
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0, v9}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_2
    throw p1

    return-void
.end method

.method private hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 5

    .line 409
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    const-string v1, "provider"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Ljava/lang/String;)V

    const-string v1, "time"

    .line 410
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setTime(J)V

    const-string v1, "has_accuracy"

    .line 411
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "accuracy"

    .line 412
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setAccuracy(F)V

    :cond_0
    const-string v1, "has_speed"

    .line 414
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "speed"

    .line 415
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setSpeed(F)V

    :cond_1
    const-string v1, "has_bearing"

    .line 417
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "bearing"

    .line 418
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setBearing(F)V

    :cond_2
    const-string v1, "has_altitude"

    .line 420
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, "altitude"

    .line 421
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setAltitude(D)V

    :cond_3
    const-string v1, "has_radius"

    .line 423
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "radius"

    .line 424
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setRadius(F)V

    :cond_4
    const-string v1, "latitude"

    .line 426
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLatitude(D)V

    const-string v1, "longitude"

    .line 427
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLongitude(D)V

    const-string v1, "service_provider"

    .line 428
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLocationProvider(Ljava/lang/Integer;)V

    const-string v1, "batch_start"

    .line 429
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setBatchStartMillis(Ljava/lang/Long;)V

    const-string v1, "valid"

    .line 430
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setStatus(I)V

    const-string v1, "_id"

    .line 431
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLocationId(Ljava/lang/Long;)V

    const-string v1, "mock_flags"

    .line 432
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setMockFlags(I)V

    return-object v0
.end method

.method private queryColumns()[Ljava/lang/String;
    .locals 19

    const-string v0, "_id"

    const-string v1, "provider"

    const-string v2, "time"

    const-string v3, "accuracy"

    const-string v4, "speed"

    const-string v5, "bearing"

    const-string v6, "altitude"

    const-string v7, "radius"

    const-string v8, "latitude"

    const-string v9, "longitude"

    const-string v10, "has_accuracy"

    const-string v11, "has_speed"

    const-string v12, "has_bearing"

    const-string v13, "has_altitude"

    const-string v14, "has_radius"

    const-string v15, "service_provider"

    const-string v16, "valid"

    const-string v17, "batch_start"

    const-string v18, "mock_flags"

    .line 462
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllLocations()I
    .locals 4

    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    iget-object v1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const-string v3, "location"

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 3

    .line 347
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->getFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->deleteLocationById(J)V

    return-object v0
.end method

.method public deleteLocationById(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 337
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "valid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    .line 341
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 343
    iget-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "_id = ?"

    const-string v1, "location"

    invoke-virtual {p1, v1, v0, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteUnpostedLocations()I
    .locals 5

    .line 399
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 403
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 405
    iget-object v1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "valid = ?"

    const-string v4, "location"

    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAllLocations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 8

    .line 112
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 113
    new-instance v1, Lru/andremoniy/sqlbuilder/SqlExpression;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v6, "MIN(%s)"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->column(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    .line 114
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "="

    const-string v6, "valid"

    invoke-virtual {v0, v6, v3, v2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "time"

    .line 116
    invoke-virtual {v0, v2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 119
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->queryColumns()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->columns([Ljava/lang/String;)V

    .line 120
    invoke-virtual {v2, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2, v5, v3, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-direct {p0, v1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v0

    .line 129
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Expected single location"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_3
    throw v0

    return-void
.end method

.method public getLocationById(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 9

    .line 80
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->queryColumns()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    .line 82
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v8, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v8

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not unique"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v8

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_3
    throw p1

    return-void
.end method

.method public getLocationsForSyncCount(J)J
    .locals 4

    const-string v0, "valid = ? AND ( "

    const-string v1, "batch_start IS NULL OR "

    const-string v2, "batch_start < ? )"

    .line 182
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 187
    new-array v2, v1, [Ljava/lang/String;

    .line 188
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 189
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 192
    iget-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "location"

    invoke-static {p1, p2, v0, v2}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNextUnpostedLocation(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 8

    .line 143
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 144
    new-instance v1, Lru/andremoniy/sqlbuilder/SqlExpression;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v6, "MIN(%s)"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->column(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    .line 145
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "="

    const-string v6, "valid"

    invoke-virtual {v0, v6, v3, v2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "<>"

    invoke-virtual {v0, v5, p2, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "time"

    .line 148
    invoke-virtual {v0, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 150
    new-instance p1, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 151
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->queryColumns()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->columns([Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, v5, v3, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->hydrate(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p2

    .line 161
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Expected single location"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 167
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_3
    throw p2

    return-void
.end method

.method public getUnpostedLocationsCount()J
    .locals 4

    const/4 v0, 0x1

    .line 176
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 178
    iget-object v0, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "valid = ?"

    const-string v3, "location"

    invoke-static {v0, v3, v2, v1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValidLocations()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 74
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "valid <> ?"

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)J
    .locals 3

    .line 202
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->getContentValues(Lcom/marianhello/bgloc/data/BackgroundLocation;)Landroid/content/ContentValues;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "location"

    const-string v2, "NULLHACK"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p2

    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_0
    const/4 v2, 0x0

    .line 225
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 227
    iget-object v4, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "location"

    invoke-static {v4, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    .line 230
    invoke-direct/range {p0 .. p1}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->getContentValues(Lcom/marianhello/bgloc/data/BackgroundLocation;)Landroid/content/ContentValues;

    move-result-object v0

    .line 231
    iget-object v2, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "NULLHACK"

    invoke-virtual {v2, v5, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2

    .line 234
    :cond_1
    iget-object v0, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    const-string v0, "time"

    const-string v4, " WHERE "

    const/4 v10, 0x1

    const-string v11, "_id"

    cmp-long v12, v6, v8

    if-lez v12, :cond_2

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "DELETE FROM "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " IN (SELECT "

    .line 240
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " FROM "

    .line 241
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ORDER BY "

    .line 242
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " LIMIT ?)"

    .line 243
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v12, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-array v13, v10, [Ljava/lang/Object;

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v13, v2

    invoke-virtual {v12, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_2
    const/4 v6, 0x0

    .line 253
    :try_start_0
    iget-object v12, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "location"

    const-string v7, "min(_id)"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const-string v7, ""

    const-string v15, "time"

    const-string v16, "= (SELECT min("

    const-string v17, "time"

    const-string v18, ") FROM "

    const-string v19, "location"

    const-string v20, ")"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v8

    .line 256
    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 253
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 266
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_3

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 273
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "UPDATE "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " SET "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "provider"

    .line 275
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "= ?,"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "accuracy"

    .line 277
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "speed"

    .line 278
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bearing"

    .line 279
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "altitude"

    .line 280
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "radius"

    .line 281
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "latitude"

    .line 282
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "longitude"

    .line 283
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_accuracy"

    .line 284
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_speed"

    .line 285
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_bearing"

    .line 286
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_altitude"

    .line 287
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "has_radius"

    .line 288
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "service_provider"

    .line 289
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "batch_start"

    .line 290
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "valid"

    .line 291
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mock_flags"

    .line 292
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "= ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    iget-object v4, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v5, 0x13

    new-array v5, v5, [Ljava/lang/Object;

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getProvider()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    const/4 v2, 0x2

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAccuracy()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getSpeed()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x4

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getBearing()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x5

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAltitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x6

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getRadius()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x7

    .line 304
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x8

    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x9

    .line 306
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xa

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xb

    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xc

    .line 309
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xd

    .line 310
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xe

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0xf

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getBatchStartMillis()Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x10

    .line 313
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x11

    .line 314
    invoke-virtual/range {p1 .. p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getMockFlags()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x12

    .line 315
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    .line 296
    invoke-virtual {v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 319
    iget-object v0, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 321
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "VACUUM"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    return-wide v7

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 269
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_5
    throw v0
.end method

.method public persistLocationForSync(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
    .locals 4

    .line 354
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p1, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setStatus(I)V

    .line 358
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J

    move-result-wide p1

    return-wide p1

    .line 360
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "valid"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 364
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 366
    iget-object v1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_id = ?"

    const-string v3, "location"

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public updateLocationForSync(J)V
    .locals 3

    .line 372
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 373
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 376
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 378
    iget-object p1, p0, Lcom/marianhello/bgloc/data/sqlite/SQLiteLocationDAO;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "_id = ?"

    const-string v2, "location"

    invoke-virtual {p1, v2, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
