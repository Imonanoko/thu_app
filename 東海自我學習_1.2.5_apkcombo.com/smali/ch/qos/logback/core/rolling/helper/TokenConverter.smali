.class public Lch/qos/logback/core/rolling/helper/TokenConverter;
.super Ljava/lang/Object;


# static fields
.field static final DATE:I = 0x1

.field static final IDENTITY:I = 0x0

.field static final INTEGER:I = 0x1


# instance fields
.field next:Lch/qos/logback/core/rolling/helper/TokenConverter;

.field type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lch/qos/logback/core/rolling/helper/TokenConverter;->type:I

    return-void
.end method


# virtual methods
.method public getNext()Lch/qos/logback/core/rolling/helper/TokenConverter;
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/rolling/helper/TokenConverter;->next:Lch/qos/logback/core/rolling/helper/TokenConverter;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lch/qos/logback/core/rolling/helper/TokenConverter;->type:I

    return v0
.end method

.method public setNext(Lch/qos/logback/core/rolling/helper/TokenConverter;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/rolling/helper/TokenConverter;->next:Lch/qos/logback/core/rolling/helper/TokenConverter;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lch/qos/logback/core/rolling/helper/TokenConverter;->type:I

    return-void
.end method
