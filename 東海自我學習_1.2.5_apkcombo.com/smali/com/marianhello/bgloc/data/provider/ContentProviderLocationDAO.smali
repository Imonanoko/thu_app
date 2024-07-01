.class public Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;
.super Ljava/lang/Object;
.source "ContentProviderLocationDAO.java"

# interfaces
.implements Lcom/marianhello/bgloc/data/LocationDAO;


# instance fields
.field private logger:Lorg/slf4j/Logger;

.field private mAuthority:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;

    invoke-static {v0}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->logger:Lorg/slf4j/Logger;

    .line 32
    invoke-static {p1}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    invoke-static {v0}, Lcom/marianhello/bgloc/data/provider/LocationContentProvider;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;
    .locals 8
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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v7, "time ASC"

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-static {v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 64
    :cond_2
    throw p1

    return-void
.end method


# virtual methods
.method public deleteAllLocations()I
    .locals 3

    .line 374
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 3

    .line 366
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->getFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->deleteLocationById(J)V

    return-object v0
.end method

.method public deleteLocationById(J)V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1, p2}, Lcom/marianhello/bgloc/data/provider/LocationContentProvider;->buildUriWithId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deleteUnpostedLocations()I
    .locals 5

    .line 379
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 380
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 383
    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 385
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const-string v4, "valid = ?"

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 71
    invoke-direct {p0, v0, v0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 9

    .line 127
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 128
    new-instance v1, Lru/andremoniy/sqlbuilder/SqlExpression;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v5, "MIN(%s)"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->column(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    .line 129
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "time"

    .line 131
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    .line 134
    invoke-static {v0, v1}, Lcom/marianhello/utils/TextUtils;->removeLastChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-static {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v1

    .line 149
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected single location"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_3
    throw v0

    return-void
.end method

.method public getLocationById(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 7

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    .line 89
    invoke-static {v2, p1, p2}, Lcom/marianhello/bgloc/data/provider/LocationContentProvider;->buildUriWithId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 88
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-static {v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object v0

    .line 97
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not unique"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v1, :cond_2

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_3
    throw p1

    return-void
.end method

.method public getLocationsCount()I
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1
.end method

.method public getLocationsForSyncCount(J)J
    .locals 8

    const-string v0, "valid = ? AND ( "

    const-string v1, "batch_start IS NULL OR "

    const-string v2, "batch_start < ? )"

    .line 219
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    .line 224
    new-array v6, v0, [Ljava/lang/String;

    .line 225
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 226
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v6, p2

    .line 229
    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 237
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    int-to-long p1, p2

    return-wide p1
.end method

.method public getNextUnpostedLocation(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 7

    .line 164
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 165
    new-instance v1, Lru/andremoniy/sqlbuilder/SqlExpression;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v5, "MIN(%s)"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->column(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "location"

    .line 166
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "<>"

    invoke-virtual {v0, v4, p2, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "time"

    .line 169
    invoke-virtual {v0, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object p1

    const-string p2, ";"

    .line 172
    invoke-static {p1, p2}, Lcom/marianhello/utils/TextUtils;->removeLastChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-static {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p2

    .line 187
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Expected single location"

    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz p1, :cond_2

    .line 193
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_3
    throw p1

    return-void
.end method

.method public getOldestLocationUri()Landroid/net/Uri;
    .locals 11

    const/4 v0, 0x0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const-string v3, "min(_id)"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "time"

    const-string v6, "= (SELECT min("

    const-string v7, "time"

    const-string v8, ") FROM "

    const-string v9, "location"

    const-string v10, ")"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 244
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 260
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/marianhello/bgloc/data/provider/LocationContentProvider;->buildUriWithId(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    throw v1
.end method

.method public getUnpostedLocationsCount()J
    .locals 7

    const/4 v0, 0x1

    .line 203
    new-array v5, v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    .line 205
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const-string v4, "valid = ?"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 213
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    int-to-long v0, v1

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

    .line 77
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "valid <> ?"

    .line 79
    invoke-direct {p0, v1, v0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->getLocations(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)J
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
    .locals 11

    const-wide/16 v0, -0x1

    if-nez p2, :cond_0

    return-wide v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->getLocationsCount()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p2

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 289
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)J

    move-result-wide p1

    return-wide p1

    .line 292
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    cmp-long v7, v2, v4

    if-lez v7, :cond_2

    .line 298
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id"

    .line 299
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " IN (SELECT "

    .line 300
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " FROM "

    .line 301
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "location"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ORDER BY "

    .line 302
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " LIMIT ?)"

    .line 303
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 306
    iget-object v8, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    .line 307
    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    sub-long/2addr v2, v4

    .line 308
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v10

    invoke-virtual {v8, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 306
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->getOldestLocationUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 315
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toContentValues()Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p1

    .line 316
    invoke-virtual {p1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p1

    .line 313
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :try_start_0
    iget-object p1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v2, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p1, 0x0

    return-wide p1

    :catch_0
    move-exception p1

    .line 322
    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->logger:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Error persisting location (maxRows: {}): {}"

    invoke-interface {v2, v3, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v0
.end method

.method public persistLocationForSync(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
    .locals 4

    .line 331
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getLocationId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p1, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setStatus(I)V

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J

    move-result-wide p1

    return-wide p1

    .line 337
    :cond_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 338
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "valid"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    .line 341
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v1

    .line 343
    iget-object v1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const-string v3, "_id = ?"

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 344
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public updateLocationForSync(J)V
    .locals 3

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x2

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    .line 354
    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 356
    iget-object p1, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mResolver:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;->mContentUri:Landroid/net/Uri;

    const-string v2, "_id = ?"

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
