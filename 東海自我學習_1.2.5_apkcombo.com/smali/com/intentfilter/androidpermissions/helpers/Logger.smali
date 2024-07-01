.class public Lcom/intentfilter/androidpermissions/helpers/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/intentfilter/androidpermissions/helpers/Logger;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;
    .locals 1

    .line 15
    new-instance v0, Lcom/intentfilter/androidpermissions/helpers/Logger;

    invoke-direct {v0, p0}, Lcom/intentfilter/androidpermissions/helpers/Logger;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/helpers/Logger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
