.class public Lcom/marianhello/logging/DBLogReader;
.super Ljava/lang/Object;
.source "DBLogReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/logging/DBLogReader$QueryBuilder;
    }
.end annotation


# static fields
.field public static final DB_FILENAME:Ljava/lang/String; = "logback.db"


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbNameResolver:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDbEntries(IILorg/slf4j/event/Level;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/slf4j/event/Level;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/marianhello/logging/LogEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-direct {p0}, Lcom/marianhello/logging/DBLogReader;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 174
    :try_start_0
    invoke-direct {p0}, Lcom/marianhello/logging/DBLogReader;->getDbNameResolver()Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    move-result-object v3

    .line 175
    new-instance v4, Lcom/marianhello/logging/DBLogReader$QueryBuilder;

    invoke-direct {v4, v3}, Lcom/marianhello/logging/DBLogReader$QueryBuilder;-><init>(Lch/qos/logback/classic/db/names/DBNameResolver;)V

    .line 176
    invoke-virtual {v4, p1, p2, p3}, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->buildQuery(IILorg/slf4j/event/Level;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 177
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    new-instance p1, Lcom/marianhello/logging/LogEntry;

    invoke-direct {p1}, Lcom/marianhello/logging/LogEntry;-><init>()V

    .line 179
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setContext(Ljava/lang/Integer;)V

    .line 180
    iget-object p3, p0, Lcom/marianhello/logging/DBLogReader;->mDbNameResolver:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    sget-object v4, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {p3, v4}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setId(Ljava/lang/Integer;)V

    .line 181
    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, p3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setLevel(Ljava/lang/String;)V

    .line 182
    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, p3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setMessage(Ljava/lang/String;)V

    .line 183
    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, p3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setTimestamp(Ljava/lang/Long;)V

    .line 184
    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->LOGGER_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v3, p3}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setLoggerName(Ljava/lang/String;)V

    const-string p3, "ERROR"

    .line 185
    invoke-virtual {p1}, Lcom/marianhello/logging/LogEntry;->getLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/marianhello/logging/LogEntry;->getId()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/marianhello/logging/DBLogReader;->getStackTrace(I)Ljava/util/Collection;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/marianhello/logging/LogEntry;->setStackTrace(Ljava/util/Collection;)V

    .line 188
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 194
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    :try_start_1
    new-instance p2, Ljava/sql/SQLException;

    const-string p3, "Cannot retrieve log entries"

    invoke-direct {p2, p3, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_4

    .line 194
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 197
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 199
    :cond_5
    throw p1

    return-void
.end method

.method private getDbNameResolver()Lch/qos/logback/classic/db/names/DefaultDBNameResolver;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDbNameResolver:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    if-eqz v0, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-direct {v0}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;-><init>()V

    iput-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDbNameResolver:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    .line 142
    iget-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDbNameResolver:Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    return-object v0
.end method

.method private getStackTrace(I)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-direct {p0}, Lcom/marianhello/logging/DBLogReader;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/marianhello/logging/DBLogReader;->getDbNameResolver()Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/marianhello/logging/DBLogReader$QueryBuilder;

    invoke-direct {v3, v2}, Lcom/marianhello/logging/DBLogReader$QueryBuilder;-><init>(Lch/qos/logback/classic/db/names/DBNameResolver;)V

    .line 153
    iget-object v4, p0, Lcom/marianhello/logging/DBLogReader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p1}, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->buildStackTraceQuery(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 154
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 155
    sget-object p1, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-virtual {v2, p1}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 158
    :try_start_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v2, "Cannot retrieve log entries"

    invoke-direct {v0, v2, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_2

    .line 161
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    throw p1

    return-void
.end method

.method private openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 116
    :cond_0
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "PACKAGE_NAME"

    .line 119
    invoke-virtual {v0, v2}, Lch/qos/logback/classic/LoggerContext;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {v0}, Lch/qos/logback/core/android/CommonPathUtil;->getDatabaseDirectoryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "logback.db"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    iget-object v0, p0, Lcom/marianhello/logging/DBLogReader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/sql/SQLException;

    const-string v2, "Cannot open database"

    invoke-direct {v1, v2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Cannot open database without package name"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getEntries(IILorg/slf4j/event/Level;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/slf4j/event/Level;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/marianhello/logging/LogEntry;",
            ">;"
        }
    .end annotation

    .line 102
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/marianhello/logging/DBLogReader;->getDbEntries(IILorg/slf4j/event/Level;)Ljava/util/Collection;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/sql/SQLException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
