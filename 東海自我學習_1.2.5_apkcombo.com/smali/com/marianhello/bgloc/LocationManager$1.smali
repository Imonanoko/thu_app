.class Lcom/marianhello/bgloc/LocationManager$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/LocationManager;->getCurrentLocation(IJZ)Lcom/github/jparkie/promise/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/LocationManager;

.field final synthetic val$enableHighAccuracy:Z

.field final synthetic val$maximumAge:J

.field final synthetic val$promise:Lcom/github/jparkie/promise/Promise;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/LocationManager;IJZLcom/github/jparkie/promise/Promise;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/marianhello/bgloc/LocationManager$1;->this$0:Lcom/marianhello/bgloc/LocationManager;

    iput p2, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$timeout:I

    iput-wide p3, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$maximumAge:J

    iput-boolean p5, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$enableHighAccuracy:Z

    iput-object p6, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    new-instance v1, Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;

    iget-object v2, p0, Lcom/marianhello/bgloc/LocationManager$1;->this$0:Lcom/marianhello/bgloc/LocationManager;

    invoke-direct {v1, v2}, Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;-><init>(Lcom/marianhello/bgloc/LocationManager;)V

    invoke-interface {v0, v1}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 5

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/bgloc/LocationManager$1;->this$0:Lcom/marianhello/bgloc/LocationManager;

    iget v1, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$timeout:I

    iget-wide v2, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$maximumAge:J

    iget-boolean v4, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$enableHighAccuracy:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/marianhello/bgloc/LocationManager;->getCurrentLocationNoCheck(IJZ)Landroid/location/Location;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v1, v0}, Lcom/github/jparkie/promise/Promise;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/marianhello/bgloc/LocationManager$1;->val$promise:Lcom/github/jparkie/promise/Promise;

    invoke-interface {v1, v0}, Lcom/github/jparkie/promise/Promise;->setError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
