.class public final enum Lch/qos/logback/core/rolling/helper/CompressionMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lch/qos/logback/core/rolling/helper/CompressionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/qos/logback/core/rolling/helper/CompressionMode;

.field public static final enum GZ:Lch/qos/logback/core/rolling/helper/CompressionMode;

.field public static final enum NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

.field public static final enum ZIP:Lch/qos/logback/core/rolling/helper/CompressionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lch/qos/logback/core/rolling/helper/CompressionMode;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lch/qos/logback/core/rolling/helper/CompressionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/CompressionMode;->NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

    new-instance v0, Lch/qos/logback/core/rolling/helper/CompressionMode;

    const/4 v2, 0x1

    const-string v3, "GZ"

    invoke-direct {v0, v3, v2}, Lch/qos/logback/core/rolling/helper/CompressionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/CompressionMode;->GZ:Lch/qos/logback/core/rolling/helper/CompressionMode;

    new-instance v0, Lch/qos/logback/core/rolling/helper/CompressionMode;

    const/4 v3, 0x2

    const-string v4, "ZIP"

    invoke-direct {v0, v4, v3}, Lch/qos/logback/core/rolling/helper/CompressionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/qos/logback/core/rolling/helper/CompressionMode;->ZIP:Lch/qos/logback/core/rolling/helper/CompressionMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lch/qos/logback/core/rolling/helper/CompressionMode;

    sget-object v4, Lch/qos/logback/core/rolling/helper/CompressionMode;->NONE:Lch/qos/logback/core/rolling/helper/CompressionMode;

    aput-object v4, v0, v1

    sget-object v1, Lch/qos/logback/core/rolling/helper/CompressionMode;->GZ:Lch/qos/logback/core/rolling/helper/CompressionMode;

    aput-object v1, v0, v2

    sget-object v1, Lch/qos/logback/core/rolling/helper/CompressionMode;->ZIP:Lch/qos/logback/core/rolling/helper/CompressionMode;

    aput-object v1, v0, v3

    sput-object v0, Lch/qos/logback/core/rolling/helper/CompressionMode;->$VALUES:[Lch/qos/logback/core/rolling/helper/CompressionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lch/qos/logback/core/rolling/helper/CompressionMode;
    .locals 1

    const-class v0, Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lch/qos/logback/core/rolling/helper/CompressionMode;

    return-object p0
.end method

.method public static values()[Lch/qos/logback/core/rolling/helper/CompressionMode;
    .locals 1

    sget-object v0, Lch/qos/logback/core/rolling/helper/CompressionMode;->$VALUES:[Lch/qos/logback/core/rolling/helper/CompressionMode;

    invoke-virtual {v0}, [Lch/qos/logback/core/rolling/helper/CompressionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/qos/logback/core/rolling/helper/CompressionMode;

    return-object v0
.end method
