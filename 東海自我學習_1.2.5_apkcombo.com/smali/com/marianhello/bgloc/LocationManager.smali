.class public Lcom/marianhello/bgloc/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;,
        Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;
    }
.end annotation


# static fields
.field public static final PERMISSIONS:[Ljava/lang/String;

.field private static mLocationManager:Lcom/marianhello/bgloc/LocationManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/marianhello/bgloc/LocationManager;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/marianhello/bgloc/LocationManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/LocationManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/marianhello/bgloc/LocationManager;->mLocationManager:Lcom/marianhello/bgloc/LocationManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/marianhello/bgloc/LocationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/LocationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/marianhello/bgloc/LocationManager;->mLocationManager:Lcom/marianhello/bgloc/LocationManager;

    .line 40
    :cond_0
    sget-object p0, Lcom/marianhello/bgloc/LocationManager;->mLocationManager:Lcom/marianhello/bgloc/LocationManager;

    return-object p0
.end method


# virtual methods
.method public getCurrentLocation(IJZ)Lcom/github/jparkie/promise/Promise;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJZ)",
            "Lcom/github/jparkie/promise/Promise<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/github/jparkie/promise/Promises;->promise()Lcom/github/jparkie/promise/Promise;

    move-result-object v7

    .line 46
    iget-object v0, p0, Lcom/marianhello/bgloc/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object v8

    .line 47
    sget-object v0, Lcom/marianhello/bgloc/LocationManager;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v10, Lcom/marianhello/bgloc/LocationManager$1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/marianhello/bgloc/LocationManager$1;-><init>(Lcom/marianhello/bgloc/LocationManager;IJZLcom/github/jparkie/promise/Promise;)V

    invoke-virtual {v8, v9, v10}, Lcom/intentfilter/androidpermissions/PermissionManager;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-object v7
.end method

.method public getCurrentLocationNoCheck(IJZ)Landroid/location/Location;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    .line 82
    iget-object p2, p0, Lcom/marianhello/bgloc/LocationManager;->mContext:Landroid/content/Context;

    const-string p3, "location"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    const-string p3, "gps"

    .line 84
    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 85
    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    return-object p3

    :cond_0
    const-string p3, "network"

    .line 89
    invoke-virtual {p2, p3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 90
    invoke-virtual {p3}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    return-object p3

    .line 94
    :cond_1
    new-instance p3, Landroid/location/Criteria;

    invoke-direct {p3}, Landroid/location/Criteria;-><init>()V

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x2

    .line 95
    :goto_0
    invoke-virtual {p3, p4}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 97
    new-instance p4, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;

    invoke-direct {p4}, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;-><init>()V

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, p3, p4, v0}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 100
    iget-object p3, p4, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 105
    iget-object p1, p4, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mLocation:Landroid/location/Location;

    if-eqz p1, :cond_3

    .line 106
    iget-object p1, p4, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mLocation:Landroid/location/Location;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_4
    invoke-virtual {p2, p4}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 102
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method
