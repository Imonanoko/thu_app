.class Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentLocationListener"
.end annotation


# instance fields
.field final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field mLocation:Landroid/location/Location;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mLocation:Landroid/location/Location;

    .line 114
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mLocation:Landroid/location/Location;

    .line 119
    iget-object p1, p0, Lcom/marianhello/bgloc/LocationManager$CurrentLocationListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
