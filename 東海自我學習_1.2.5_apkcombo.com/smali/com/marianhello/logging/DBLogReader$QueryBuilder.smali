.class public Lcom/marianhello/logging/DBLogReader$QueryBuilder;
.super Ljava/lang/Object;
.source "DBLogReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/logging/DBLogReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryBuilder"
.end annotation


# instance fields
.field mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;

    invoke-direct {v0}, Lch/qos/logback/classic/db/names/DefaultDBNameResolver;-><init>()V

    iput-object v0, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    return-void
.end method

.method public constructor <init>(Lch/qos/logback/classic/db/names/DBNameResolver;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    return-void
.end method

.method private aboveLevel(Lorg/slf4j/event/Level;)[Ljava/lang/Object;
    .locals 6

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-static {}, Lorg/slf4j/event/Level;->values()[Lorg/slf4j/event/Level;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 52
    invoke-virtual {p1, v4}, Lorg/slf4j/event/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 53
    invoke-virtual {v4}, Lorg/slf4j/event/Level;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildQuery(IILorg/slf4j/event/Level;)Ljava/lang/String;
    .locals 5

    .line 70
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    const/4 v1, 0x5

    .line 71
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    .line 72
    invoke-interface {v2, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    .line 73
    invoke-interface {v2, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->FORMATTED_MESSAGE:Lch/qos/logback/classic/db/names/ColumnName;

    .line 74
    invoke-interface {v2, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->LOGGER_NAME:Lch/qos/logback/classic/db/names/ColumnName;

    .line 75
    invoke-interface {v2, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v3, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    .line 76
    invoke-interface {v2, v3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 71
    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->columns([Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v2, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v1, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->LEVEL_STRING:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {v1, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->aboveLevel(Lorg/slf4j/event/Level;)[Ljava/lang/Object;

    move-result-object p3

    const-string v2, "IN"

    invoke-virtual {v0, v1, v2, p3}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-lez p2, :cond_1

    if-ltz p1, :cond_0

    .line 82
    iget-object p3, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p3, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "<"

    invoke-virtual {v0, p3, v1, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p3, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p3, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, ">"

    invoke-virtual {v0, p3, v1, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    .line 88
    iget-object p2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p2, p3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p2, p3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    goto :goto_1

    .line 91
    :cond_2
    iget-object p2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->TIMESTMP:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p2, p3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    iget-object p2, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object p3, Lch/qos/logback/classic/db/names/ColumnName;->EVENT_ID:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p2, p3}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v4}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 94
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->limit(Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public buildStackTraceQuery(I)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-direct {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->TRACE_LINE:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {v1, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->column(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v2, Lch/qos/logback/classic/db/names/TableName;->LOGGING_EVENT_EXCEPTION:Lch/qos/logback/classic/db/names/TableName;

    invoke-interface {v1, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getTableName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->from(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v2, Lch/qos/logback/classic/db/names/ColumnName;->I:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {v1, v2}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/marianhello/logging/DBLogReader$QueryBuilder;->mDbNameResolver:Lch/qos/logback/classic/db/names/DBNameResolver;

    sget-object v1, Lch/qos/logback/classic/db/names/ColumnName;->I:Lch/qos/logback/classic/db/names/ColumnName;

    invoke-interface {p1, v1}, Lch/qos/logback/classic/db/names/DBNameResolver;->getColumnName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
