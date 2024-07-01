.class public Lcom/marianhello/bgloc/sync/BatchManager;
.super Ljava/lang/Object;
.source "BatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;,
        Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-class v0, Lcom/marianhello/bgloc/sync/BatchManager;

    invoke-static {v0}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager;->logger:Lorg/slf4j/Logger;

    .line 48
    iput-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager;->context:Landroid/content/Context;

    return-void
.end method

.method private createBatchFromTemplate(Ljava/lang/Long;Ljava/lang/Integer;Lcom/marianhello/bgloc/data/LocationTemplate;)Ljava/io/File;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager;->logger:Lorg/slf4j/Logger;

    const-string v1, "Creating batch {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Lcom/marianhello/bgloc/sync/BatchManager;->getLocationContentUri()Landroid/net/Uri;

    move-result-object v7

    const-string v1, "valid = ? AND ( "

    const-string v2, "batch_start IS NULL OR "

    const-string v3, "batch_start < ? )"

    .line 63
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x2

    .line 68
    new-array v9, v1, [Ljava/lang/String;

    .line 69
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v9, v2

    const/4 v3, 0x0

    const/4 v10, 0x0

    :try_start_0
    const-string v6, "time ASC"

    move-object v1, v0

    move-object v2, v7

    move-object v4, v8

    move-object v5, v9

    .line 77
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 86
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v2, p2, :cond_1

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v10

    :cond_1
    :try_start_2
    const-string p2, "locations"

    const-string v2, ".json"

    .line 90
    invoke-static {p2, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 91
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 92
    new-instance v3, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;

    invoke-direct {v3, v2, p3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;-><init>(Ljava/io/FileOutputStream;Lcom/marianhello/bgloc/data/LocationTemplate;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    :try_start_3
    invoke-virtual {v3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->beginArray()V

    .line 95
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 96
    invoke-static {v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p3

    .line 97
    invoke-virtual {v3, p3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->write(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->endArray()V

    .line 101
    invoke-virtual {v3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->close()V

    .line 102
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 105
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "batch_start"

    .line 106
    invoke-virtual {p3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    invoke-virtual {v0, v7, p3, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager;->logger:Lorg/slf4j/Logger;

    const-string p3, "Batch file: {} created successfully"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_3
    invoke-virtual {v3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v10

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v1, v10

    move-object v3, v1

    :goto_1
    if-eqz v1, :cond_4

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_5

    .line 117
    invoke-virtual {v3}, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->close()V

    .line 119
    :cond_5
    throw p1

    return-void
.end method

.method private getLocationContentUri()Landroid/net/Uri;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/marianhello/bgloc/data/provider/LocationContentProvider;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createBatch(Ljava/lang/Long;Ljava/lang/Integer;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, p2, v0}, Lcom/marianhello/bgloc/sync/BatchManager;->createBatch(Ljava/lang/Long;Ljava/lang/Integer;Lcom/marianhello/bgloc/data/LocationTemplate;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public createBatch(Ljava/lang/Long;Ljava/lang/Integer;Lcom/marianhello/bgloc/data/LocationTemplate;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->getDefault()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p3

    .line 129
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/marianhello/bgloc/sync/BatchManager;->createBatchFromTemplate(Ljava/lang/Long;Ljava/lang/Integer;Lcom/marianhello/bgloc/data/LocationTemplate;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setBatchCompleted(Ljava/lang/Long;)V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 139
    invoke-direct {p0}, Lcom/marianhello/bgloc/sync/BatchManager;->getLocationContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    .line 142
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 144
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 145
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "valid"

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "batch_start = ?"

    .line 146
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
