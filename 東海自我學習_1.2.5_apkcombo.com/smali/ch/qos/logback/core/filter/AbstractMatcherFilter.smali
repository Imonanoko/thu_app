.class public abstract Lch/qos/logback/core/filter/AbstractMatcherFilter;
.super Lch/qos/logback/core/filter/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/filter/Filter<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected onMatch:Lch/qos/logback/core/spi/FilterReply;

.field protected onMismatch:Lch/qos/logback/core/spi/FilterReply;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lch/qos/logback/core/filter/Filter;-><init>()V

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    sget-object v0, Lch/qos/logback/core/spi/FilterReply;->NEUTRAL:Lch/qos/logback/core/spi/FilterReply;

    iput-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method


# virtual methods
.method public final getOnMatch()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public final getOnMismatch()Lch/qos/logback/core/spi/FilterReply;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-object v0
.end method

.method public final setOnMatch(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMatch:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method

.method public final setOnMismatch(Lch/qos/logback/core/spi/FilterReply;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/filter/AbstractMatcherFilter;->onMismatch:Lch/qos/logback/core/spi/FilterReply;

    return-void
.end method
