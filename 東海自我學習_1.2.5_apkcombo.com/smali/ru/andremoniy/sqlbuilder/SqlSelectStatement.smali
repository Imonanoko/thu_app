.class public Lru/andremoniy/sqlbuilder/SqlSelectStatement;
.super Ljava/lang/Object;
.source "SqlSelectStatement.java"

# interfaces
.implements Lru/andremoniy/sqlbuilder/SqlStatement;


# instance fields
.field protected _all:Ljava/lang/String;

.field protected _column:Ljava/util/List;

.field protected _combine:Ljava/util/List;

.field protected _distinct:Ljava/lang/Boolean;

.field protected _groupBy:Ljava/util/List;

.field protected _having:Ljava/util/List;

.field protected _join:Ljava/util/List;

.field protected _limit:Ljava/lang/Integer;

.field protected _offset:Ljava/lang/Integer;

.field protected _orderBy:Ljava/util/List;

.field protected _table:Ljava/util/List;

.field protected _where:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_distinct:Ljava/lang/Boolean;

    .line 35
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_groupBy:Ljava/util/List;

    .line 41
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_having:Ljava/util/List;

    .line 42
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    const/4 v1, 0x0

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    .line 44
    iput-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    .line 45
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_combine:Ljava/util/List;

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_distinct:Ljava/lang/Boolean;

    const-string v0, "*"

    .line 49
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_groupBy:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_having:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    .line 57
    iput-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    .line 58
    iput-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_combine:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public all(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    .line 81
    iget-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    const-string v0, ".*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 82
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "%s.*"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "*"

    .line 86
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    .line 88
    :cond_1
    :goto_0
    iget-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public column(Ljava/lang/Object;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public column(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "%s AS %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public columns([Ljava/lang/String;)V
    .locals 4

    .line 119
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 120
    iget-object v3, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    invoke-static {v2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public combine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 565
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public distinct(Ljava/lang/Boolean;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_distinct:Ljava/lang/Boolean;

    return-void
.end method

.method public from(Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public from(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 142
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "%s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public groupBy(Ljava/lang/String;)V
    .locals 0

    .line 387
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHaving(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 422
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHaving(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 435
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHavingBlock(Ljava/lang/String;)V
    .locals 0

    .line 397
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHavingBlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 408
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHavingValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 447
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public groupByHavingValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 460
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public join(Ljava/lang/String;)V
    .locals 1

    const-string v0, "INNER"

    .line 152
    invoke-virtual {p0, p1, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->join(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public join(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x2

    .line 174
    new-array v1, v0, [Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareJoinType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "%s JOIN %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    aput-object p1, v3, p2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    aput-object p1, v3, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "INNER"

    .line 163
    invoke-virtual {p0, p1, p2, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 187
    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p3}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareJoinType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v1, p3

    invoke-static {p2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const-string p1, "%s JOIN %s %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    aput-object p1, v0, p3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    aput-object p1, v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public joinOn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 256
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public joinOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 243
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public joinOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "AND"

    .line 200
    invoke-virtual {p0, p1, p2, p3, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->joinOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public joinOn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 213
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 216
    iget-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 220
    iget-object v2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 221
    new-array v2, v3, [Ljava/lang/Object;

    .line 222
    invoke-static {p4}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareConnector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v4, 0x0

    aput-object p4, v2, v4

    const/4 p4, 0x3

    new-array p4, p4, [Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v4

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    aput-object p1, p4, v1

    .line 226
    invoke-static {p3}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%s %s %s"

    .line 223
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "May not declare two different types of constraints on a JOIN statement."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must declare a JOIN clause before declaring a constraint."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public joinUsing(Ljava/lang/String;)V
    .locals 0

    .line 266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public limit(Ljava/lang/Integer;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    return-void
.end method

.method public limit(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    .line 543
    iput-object p2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    return-void
.end method

.method public offset(Ljava/lang/Integer;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    return-void
.end method

.method public orderBy(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 470
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public orderBy(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 481
    invoke-virtual {p0, p1, p2, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public orderBy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    .line 510
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareSortOrder(Z)Ljava/lang/String;

    move-result-object p2

    .line 512
    invoke-static {p3}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareSortWeight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "FIRST"

    .line 513
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 514
    iget-object p3, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    const-string p1, "CASE WHEN %s IS NULL THEN 0 ELSE 1 END, %s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v0, "LAST"

    .line 516
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 517
    iget-object p3, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    const-string p1, "CASE WHEN %s IS NULL THEN 1 ELSE 0 END, %s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    :cond_1
    iget-object p3, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v3

    const-string p1, "%s %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public orderBy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 495
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->orderBy(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method public statement()Ljava/lang/String;
    .locals 14

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_distinct:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DISTINCT "

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_0
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_1

    .line 584
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_column:Ljava/util/List;

    invoke-static {v2, v1}, Lru/andremoniy/utils/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 586
    :cond_1
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_all:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    :goto_0
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " FROM "

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_table:Ljava/util/List;

    invoke-static {v2, v1}, Lru/andremoniy/utils/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_2
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_join:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ")"

    const-string v5, " "

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 595
    check-cast v3, [Ljava/lang/Object;

    .line 596
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    aget-object v8, v3, v6

    check-cast v8, [Ljava/lang/Object;

    .line 598
    array-length v9, v8

    if-lez v9, :cond_6

    const-string v9, " ON ("

    .line 599
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v12, v8, v10

    .line 603
    aget-object v12, v3, v6

    check-cast v12, Ljava/lang/String;

    if-lez v11, :cond_4

    .line 605
    aget-object v13, v3, v7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_4
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 610
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/4 v5, 0x2

    .line 612
    aget-object v3, v3, v5

    check-cast v3, [Ljava/lang/Object;

    .line 613
    array-length v5, v3

    if-lez v5, :cond_3

    const-string v5, " USING ("

    .line 614
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lru/andremoniy/utils/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 619
    :cond_7
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v3, "("

    if-lez v1, :cond_9

    const-string v1, " WHERE "

    .line 621
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 623
    check-cast v9, [Ljava/lang/Object;

    .line 624
    aget-object v10, v9, v6

    check-cast v10, Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 625
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 626
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v9, v7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_8
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    goto :goto_3

    .line 633
    :cond_9
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_groupBy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, " GROUP BY "

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_groupBy:Ljava/util/List;

    invoke-static {v2, v1}, Lru/andremoniy/utils/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_a
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_having:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    const-string v1, " HAVING "

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_having:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 641
    check-cast v9, [Ljava/lang/Object;

    .line 642
    aget-object v10, v9, v6

    check-cast v10, Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 643
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 644
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v9, v7

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_b
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    goto :goto_4

    .line 651
    :cond_c
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    const-string v1, " ORDER BY "

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_orderBy:Ljava/util/List;

    invoke-static {v2, v1}, Lru/andremoniy/utils/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    :cond_d
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_e

    const-string v1, " LIMIT "

    .line 656
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_limit:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 659
    :cond_e
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_f

    const-string v1, " OFFSET "

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_offset:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 663
    :cond_f
    iget-object v1, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_combine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 664
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    const-string v1, ";"

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "AND"

    .line 327
    invoke-virtual {p0, p1, p2, p3, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 343
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BETWEEN"

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, "Operator requires the value to be declared as an array"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_8

    const-string v0, "NOT BETWEEN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "IN"

    .line 358
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NOT IN"

    .line 359
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p3, :cond_7

    .line 360
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const-string v0, "NULL"

    .line 362
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "="

    .line 363
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p2, "IS"

    goto :goto_0

    :cond_4
    const-string v0, "<>"

    .line 365
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "!="

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string p2, "IS NOT"

    .line 369
    :cond_6
    :goto_0
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    new-array v2, v3, [Ljava/lang/Object;

    .line 370
    invoke-static {p4}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareConnector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v5

    new-array p4, v1, [Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v5

    aput-object p2, p4, v4

    .line 374
    invoke-static {p3}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%s %s %s"

    .line 371
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 369
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 361
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 345
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    new-array v2, v3, [Ljava/lang/Object;

    .line 349
    invoke-static {p4}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareConnector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, v2, v5

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v5

    aput-object p2, p4, v4

    check-cast p3, [Ljava/lang/Object;

    aget-object p1, p3, v5

    .line 353
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v3

    aget-object p1, p3, v4

    .line 354
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    const-string p1, "%s %s %s AND %s"

    .line 350
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    .line 348
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void

    .line 346
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "AND"

    .line 299
    invoke-virtual {p0, p1, p2, p3, v0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 312
    iget-object p2, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->_where:Ljava/util/List;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 313
    invoke-static {p4}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareConnector(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 v2, 0x0

    aput-object p4, v1, v2

    new-array p4, v0, [Ljava/lang/Object;

    .line 314
    invoke-static {p1}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p3}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, p4, p3

    const-string p1, "%s %s %s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p3

    .line 312
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whereBlock(Ljava/lang/String;)V
    .locals 0

    .line 276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public whereBlock(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
