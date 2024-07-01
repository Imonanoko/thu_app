.class public Lru/andremoniy/sqlbuilder/SqlExpression;
.super Ljava/lang/Object;
.source "SqlExpression.java"


# static fields
.field public static final NULL:Ljava/lang/String; = "NULL"

.field public static final SqlConnectorAnd:Ljava/lang/String; = "AND"

.field public static final SqlConnectorOr:Ljava/lang/String; = "OR"

.field public static final SqlDataTypeBigInt:Ljava/lang/String; = "BIGINT"

.field public static final SqlDataTypeBlob:Ljava/lang/String; = "BLOB"

.field public static final SqlDataTypeBoolean:Ljava/lang/String; = "BOOLEAN"

.field static SqlDataTypeChar:Ljava/lang/Integer; = null

.field static SqlDataTypeCharacter:Ljava/lang/Integer; = null

.field public static final SqlDataTypeClob:Ljava/lang/String; = "CLOB"

.field public static final SqlDataTypeDate:Ljava/lang/String; = "DATE"

.field public static final SqlDataTypeDateTime:Ljava/lang/String; = "DATETIME"

.field static SqlDataTypeDecimal:Ljava/lang/Integer; = null

.field public static final SqlDataTypeDouble:Ljava/lang/String; = "DOUBLE"

.field public static final SqlDataTypeDoublePrecision:Ljava/lang/String; = "DOUBLE PRECISION"

.field public static final SqlDataTypeFloat:Ljava/lang/String; = "FLOAT"

.field public static final SqlDataTypeInt:Ljava/lang/String; = "INT"

.field public static final SqlDataTypeInt2:Ljava/lang/String; = "INT2"

.field public static final SqlDataTypeInt8:Ljava/lang/String; = "INT8"

.field public static final SqlDataTypeInteger:Ljava/lang/String; = "INTEGER"

.field public static final SqlDataTypeMediumInt:Ljava/lang/String; = "MEDIUMINT"

.field static SqlDataTypeNChar:Ljava/lang/Integer; = null

.field static SqlDataTypeNVarChar:Ljava/lang/Integer; = null

.field static SqlDataTypeNativeCharacter:Ljava/lang/Integer; = null

.field public static final SqlDataTypeNumeric:Ljava/lang/String; = "NUMERIC"

.field public static final SqlDataTypeReal:Ljava/lang/String; = "REAL"

.field public static final SqlDataTypeSmallInt:Ljava/lang/String; = "SMALLINT"

.field public static final SqlDataTypeText:Ljava/lang/String; = "TEXT"

.field public static final SqlDataTypeTimestamp:Ljava/lang/String; = "TIMESTAMP"

.field public static final SqlDataTypeTinyInt:Ljava/lang/String; = "TINYINT"

.field public static final SqlDataTypeUnsignedBigInt:Ljava/lang/String; = "UNSIGNED BIG INT"

.field static SqlDataTypeVarChar:Ljava/lang/Integer; = null

.field public static final SqlDataTypeVariant:Ljava/lang/String; = "VARIANT"

.field static SqlDataTypeVaryingCharacter:Ljava/lang/Integer; = null

.field static SqlDefaultValue:Ljava/lang/Object; = null

.field public static final SqlDefaultValueIsAutoIncremented:Ljava/lang/String; = "PRIMARY KEY AUTOINCREMENT NOT NULL"

.field public static final SqlDefaultValueIsCurrentDate:Ljava/lang/String; = "DEFAULT CURRENT_DATE"

.field public static final SqlDefaultValueIsCurrentDateTime:Ljava/lang/String; = "DEFAULT (datetime(\'now\',\'localtime\'))"

.field public static final SqlDefaultValueIsCurrentTime:Ljava/lang/String; = "DEFAULT CURRENT_TIME"

.field public static final SqlDefaultValueIsCurrentTimestamp:Ljava/lang/String; = "DEFAULT CURRENT_TIMESTAMP"

.field public static final SqlDefaultValueIsNotNull:Ljava/lang/String; = "NOT NULL"

.field public static final SqlDefaultValueIsNull:Ljava/lang/String; = "DEFAULT NULL"

.field public static final SqlEnclosureClosingBrace:Ljava/lang/String; = ")"

.field public static final SqlEnclosureOpeningBrace:Ljava/lang/String; = "("

.field public static final SqlJoinTypeCross:Ljava/lang/String; = "CROSS"

.field public static final SqlJoinTypeInner:Ljava/lang/String; = "INNER"

.field public static final SqlJoinTypeLeft:Ljava/lang/String; = "LEFT"

.field public static final SqlJoinTypeLeftOuter:Ljava/lang/String; = "LEFT OUTER"

.field public static final SqlJoinTypeNatural:Ljava/lang/String; = "NATURAL"

.field public static final SqlJoinTypeNaturalCross:Ljava/lang/String; = "NATURAL CROSS"

.field public static final SqlJoinTypeNaturalInner:Ljava/lang/String; = "NATURAL INNER"

.field public static final SqlJoinTypeNaturalLeft:Ljava/lang/String; = "NATURAL LEFT"

.field public static final SqlJoinTypeNaturalLeftOuter:Ljava/lang/String; = "NATURAL LEFT OUTER"

.field public static final SqlJoinTypeNone:Ljava/lang/String; = ""

.field public static final SqlNullsFirst:Ljava/lang/String; = "FIRST"

.field public static final SqlNullsLast:Ljava/lang/String; = "LAST"

.field public static final SqlOperatorAdd:Ljava/lang/String; = "+"

.field public static final SqlOperatorAnd:Ljava/lang/String; = "AND"

.field public static final SqlOperatorBetween:Ljava/lang/String; = "BETWEEN"

.field public static final SqlOperatorBitwiseAnd:Ljava/lang/String; = "&"

.field public static final SqlOperatorBitwiseNegation:Ljava/lang/String; = "~"

.field public static final SqlOperatorBitwiseOr:Ljava/lang/String; = "|"

.field public static final SqlOperatorBitwiseShiftLeft:Ljava/lang/String; = "<<"

.field public static final SqlOperatorBitwiseShiftRight:Ljava/lang/String; = ">>"

.field public static final SqlOperatorConcatenate:Ljava/lang/String; = "||"

.field public static final SqlOperatorDivide:Ljava/lang/String; = "/"

.field public static final SqlOperatorEqualTo:Ljava/lang/String; = "="

.field public static final SqlOperatorExcept:Ljava/lang/String; = "EXCEPT"

.field public static final SqlOperatorGlob:Ljava/lang/String; = "GLOB"

.field public static final SqlOperatorGreaterThan:Ljava/lang/String; = ">"

.field public static final SqlOperatorGreaterThanOrEqualTo:Ljava/lang/String; = ">="

.field public static final SqlOperatorIn:Ljava/lang/String; = "IN"

.field public static final SqlOperatorIntersect:Ljava/lang/String; = "INTERSECT"

.field public static final SqlOperatorIs:Ljava/lang/String; = "IS"

.field public static final SqlOperatorIsNot:Ljava/lang/String; = "IS NOT"

.field public static final SqlOperatorLessThan:Ljava/lang/String; = "<"

.field public static final SqlOperatorLessThanOrEqualTo:Ljava/lang/String; = "<="

.field public static final SqlOperatorLike:Ljava/lang/String; = "LIKE"

.field public static final SqlOperatorMod:Ljava/lang/String; = "%"

.field public static final SqlOperatorMultiply:Ljava/lang/String; = "*"

.field public static final SqlOperatorNot:Ljava/lang/String; = "NOT"

.field public static final SqlOperatorNotBetween:Ljava/lang/String; = "NOT BETWEEN"

.field public static final SqlOperatorNotEqualTo:Ljava/lang/String; = "<>"

.field public static final SqlOperatorNotGlob:Ljava/lang/String; = "NOT GLOB"

.field public static final SqlOperatorNotIn:Ljava/lang/String; = "NOT IN"

.field public static final SqlOperatorNotLike:Ljava/lang/String; = "NOT LIKE"

.field public static final SqlOperatorOr:Ljava/lang/String; = "OR"

.field public static final SqlOperatorSubtract:Ljava/lang/String; = "-"

.field public static final SqlOperatorUnion:Ljava/lang/String; = "UNION"

.field public static final SqlOperatorUnionAll:Ljava/lang/String; = "UNION ALL"

.field public static final SqlShowTypeAll:Ljava/lang/String; = "ALL"

.field public static final SqlShowTypePermanent:Ljava/lang/String; = "PERMANENT"

.field public static final SqlShowTypeTemporary:Ljava/lang/String; = "TEMPORARY"


# instance fields
.field protected _expression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeChar:Ljava/lang/Integer;

    .line 167
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeCharacter:Ljava/lang/Integer;

    .line 168
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeDecimal:Ljava/lang/Integer;

    .line 169
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeNativeCharacter:Ljava/lang/Integer;

    .line 170
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeNChar:Ljava/lang/Integer;

    .line 171
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeNVarChar:Ljava/lang/Integer;

    .line 172
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeVarChar:Ljava/lang/Integer;

    .line 173
    sput-object v0, Lru/andremoniy/sqlbuilder/SqlExpression;->SqlDataTypeVaryingCharacter:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lru/andremoniy/sqlbuilder/SqlExpression;->_expression:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>()V

    .line 190
    iput-object p1, p0, Lru/andremoniy/sqlbuilder/SqlExpression;->_expression:Ljava/lang/String;

    return-void
.end method

.method static SqlDataTypeChar(J)Ljava/lang/String;
    .locals 0

    .line 141
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeCharacter(J)Ljava/lang/String;
    .locals 0

    .line 144
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeDecimal(JJ)Ljava/lang/String;
    .locals 0

    .line 147
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeNChar(J)Ljava/lang/String;
    .locals 0

    .line 153
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeNVarChar(J)Ljava/lang/String;
    .locals 0

    .line 156
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeNativeCharacter(J)Ljava/lang/String;
    .locals 0

    .line 150
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeVarChar(J)Ljava/lang/String;
    .locals 0

    .line 159
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDataTypeVaryingCharacter(J)Ljava/lang/String;
    .locals 0

    .line 162
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method static SqlDefaultValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 138
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static prepareAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, ""

    const-string v1, "(?i)[^a-z0-9_ ]"

    .line 224
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\\n\\r\\s]+"

    .line 225
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 226
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "[%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static prepareConnector(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "^(and|or)?i$"

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid connector token provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static prepareEnclosure(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "("

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid enclosure token provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static prepareIdentifier(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    .line 270
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    check-cast p0, Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 273
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    if-lez v4, :cond_0

    const-string v5, "."

    .line 277
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    aget-object v5, p0, v4

    const-string v6, "^\\\\s*\\\\*\\\\s*$\""

    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "*"

    .line 281
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v6, ""

    const-string v7, "(?i)[^a-z0-9_ ]"

    .line 283
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "[\\n\\r\\s]+"

    .line 284
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "[%s]"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_3
    instance-of v0, p0, Lru/andremoniy/sqlbuilder/SqlExpression;

    if-eqz v0, :cond_4

    .line 290
    check-cast p0, Lru/andremoniy/sqlbuilder/SqlExpression;

    invoke-virtual {p0}, Lru/andremoniy/sqlbuilder/SqlExpression;->expression()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :cond_4
    instance-of v0, p0, Lru/andremoniy/sqlbuilder/SqlStatement;

    if-eqz v0, :cond_5

    .line 293
    check-cast p0, Lru/andremoniy/sqlbuilder/SqlStatement;

    invoke-interface {p0}, Lru/andremoniy/sqlbuilder/SqlStatement;->statement()Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 295
    new-array v0, v1, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 298
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Unable to prepare identifier. \'%s\'"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static prepareJoinType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 309
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static prepareOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 321
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static prepareSortOrder(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "DESC"

    goto :goto_0

    :cond_0
    const-string p0, "ASC"

    :goto_0
    return-object p0
.end method

.method public static prepareSortWeight(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "^(first|last)?i$"

    .line 345
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid weight token provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "DEFAULT"

    return-object p0
.end method

.method public static prepareValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string v0, "NULL"

    if-eqz p0, :cond_9

    .line 364
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_0
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    if-lez v1, :cond_1

    const-string v3, ", "

    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    aget-object v2, v2, v1

    invoke-static {v2}, Lru/andremoniy/sqlbuilder/SqlExpression;->prepareValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, ")"

    .line 375
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 377
    :cond_3
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 379
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 380
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    const-string v3, "\'%s\'"

    if-eqz v0, :cond_5

    .line 382
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 384
    :cond_5
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_6

    .line 385
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 386
    new-array v2, v2, [Ljava/lang/Object;

    check-cast p0, Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_6
    instance-of v0, p0, Lru/andremoniy/sqlbuilder/SqlExpression;

    if-eqz v0, :cond_7

    .line 388
    check-cast p0, Lru/andremoniy/sqlbuilder/SqlExpression;

    invoke-virtual {p0}, Lru/andremoniy/sqlbuilder/SqlExpression;->expression()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :cond_7
    instance-of v0, p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    if-eqz v0, :cond_8

    .line 390
    check-cast p0, Lru/andremoniy/sqlbuilder/SqlSelectStatement;

    invoke-virtual {p0}, Lru/andremoniy/sqlbuilder/SqlSelectStatement;->statement()Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 392
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    const-string p0, "(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 396
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Unable to prepare value. \'%s\'"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    return-object v0
.end method

.method public static sql(Ljava/lang/String;)Lru/andremoniy/sqlbuilder/SqlExpression;
    .locals 1

    .line 211
    new-instance v0, Lru/andremoniy/sqlbuilder/SqlExpression;

    invoke-direct {v0, p0}, Lru/andremoniy/sqlbuilder/SqlExpression;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public expression()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lru/andremoniy/sqlbuilder/SqlExpression;->_expression:Ljava/lang/String;

    return-object v0
.end method
