.class public Lcom/bitpay/cordova/qrscanner/QRScanner;
.super Lorg/apache/cordova/CordovaPlugin;
.source "QRScanner.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bitpay/cordova/qrscanner/QRScanner$QRScannerError;
    }
.end annotation


# static fields
.field private static flashAvailable:Ljava/lang/Boolean;


# instance fields
.field private appPausedWithActivePreview:Z

.field private authorized:Z

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private cameraClosing:Z

.field private cameraPreviewing:Z

.field private currentCameraId:I

.field private denied:Z

.field private keepDenied:Z

.field private lightOn:Z

.field private mBarcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

.field private nextScanCallback:Lorg/apache/cordova/CallbackContext;

.field private oneTime:Z

.field private permissions:[Ljava/lang/String;

.field private prepared:Z

.field private previewing:Z

.field private restricted:Z

.field private scanning:Z

.field private shouldScanAgain:Z

.field private showing:Z

.field private switchFlashOff:Z

.field private switchFlashOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 44
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->showing:Z

    .line 45
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 46
    iput v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    const-string v1, "android.permission.CAMERA"

    .line 47
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->permissions:[Ljava/lang/String;

    .line 49
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    .line 51
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOn:Z

    .line 52
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOff:Z

    .line 54
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->oneTime:Z

    .line 61
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->keepDenied:Z

    .line 62
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->appPausedWithActivePreview:Z

    return-void
.end method

.method static synthetic access$000(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->show(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->scan(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bitpay/cordova/qrscanner/QRScanner;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->requestPermission(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->enableLight(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOff:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->disableLight(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/bitpay/cordova/qrscanner/QRScanner;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    return p1
.end method

.method static synthetic access$1500(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepare(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->destroy(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->mBarcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/bitpay/cordova/qrscanner/QRScanner;Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->mBarcodeView:Lcom/journeyapps/barcodescanner/BarcodeView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->cancelScan(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraPreviewing:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->showing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->openSettings(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$400(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->pausePreview(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$500(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->resumePreview(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$600(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hide(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$700(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraClosing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraClosing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOn:Z

    return p0
.end method

.method static synthetic access$802(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOn:Z

    return p1
.end method

.method static synthetic access$900(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasFlash()Z

    move-result p0

    return p0
.end method

.method private boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 0

    .line 268
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    return-object p1

    :cond_0
    const-string p1, "0"

    return-object p1
.end method

.method private canChangeCamera()Z
    .locals 5

    .line 306
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 308
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 309
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 310
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private cancelScan(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 604
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/bitpay/cordova/qrscanner/QRScanner$23;

    invoke-direct {v0, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$23;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 613
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 614
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :cond_0
    const/4 p1, 0x0

    .line 615
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method private closeCamera()V
    .locals 2

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraClosing:Z

    .line 412
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$16;

    invoke-direct {v1, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$16;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private destroy(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 760
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 761
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->makeOpaque()V

    .line 762
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    .line 763
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bitpay/cordova/qrscanner/QRScanner$27;

    invoke-direct {v2, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$27;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 773
    iput-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    .line 776
    :cond_0
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraPreviewing:Z

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bitpay/cordova/qrscanner/QRScanner$28;

    invoke-direct {v2, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$28;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 785
    :cond_1
    iget v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 786
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    if-eqz v1, :cond_2

    .line 787
    invoke-direct {p0, v0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlash(ZLorg/apache/cordova/CallbackContext;)V

    .line 789
    :cond_2
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->closeCamera()V

    .line 790
    iput v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    .line 791
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private disableLight(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 677
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 678
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOn:Z

    .line 679
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-direct {p0, v0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlash(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 681
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :goto_0
    return-void
.end method

.method private doswitchFlash(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getCurrentCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x7

    .line 276
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(I)V

    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 281
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 284
    :goto_0
    invoke-direct {p0, p2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepare(Lorg/apache/cordova/CallbackContext;)V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/bitpay/cordova/qrscanner/QRScanner$14;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;ZLorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableLight(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 671
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-direct {p0, v0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlash(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :goto_0
    return-void
.end method

.method private getStatus(Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    .line 718
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->oneTime:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v0

    .line 721
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    if-eqz v0, :cond_0

    .line 723
    iput-boolean v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->keepDenied:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    if-nez v0, :cond_1

    .line 726
    iput-boolean v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    goto :goto_0

    .line 728
    :cond_1
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    .line 731
    :goto_0
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->restricted:Z

    .line 735
    :cond_2
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasFlash()Z

    move-result v0

    .line 737
    iget v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    if-ne v3, v2, :cond_3

    const/4 v0, 0x0

    .line 740
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 741
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "authorized"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "denied"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->restricted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "restricted"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "prepared"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scanning"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "previewing"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->showing:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showing"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lightEnabled"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "canOpenSettings"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "canEnableLight"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->canChangeCamera()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->boolToNumberString(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "canChangeCamera"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getCurrentCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "currentCamera"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 755
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 756
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private hasCamera()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasFlash()Z
    .locals 5

    .line 241
    sget-object v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->flashAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 242
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/bitpay/cordova/qrscanner/QRScanner;->flashAvailable:Ljava/lang/Boolean;

    .line 243
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 245
    iget-object v3, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const-string v4, "android.hardware.camera.flash"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 246
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->flashAvailable:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    :goto_1
    sget-object v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->flashAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private hasFrontCamera()Z
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hide(Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 630
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->makeOpaque()V

    .line 631
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private makeOpaque()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$17;

    invoke-direct {v1, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$17;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 431
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->showing:Z

    return-void
.end method

.method private openSettings(Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->oneTime:Z

    .line 686
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    if-eqz v1, :cond_0

    .line 687
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->keepDenied:Z

    :cond_0
    const/4 v0, 0x0

    .line 689
    :try_start_0
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    .line 690
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 691
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 692
    iget-boolean v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 693
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->showing:Z

    .line 694
    iget-boolean v4, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    if-eqz v4, :cond_1

    .line 695
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->destroy(Lorg/apache/cordova/CallbackContext;)V

    .line 696
    :cond_1
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 698
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 699
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "package"

    .line 700
    iget-object v5, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 701
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 702
    iget-object v4, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 703
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    if-eqz v1, :cond_2

    .line 705
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepare(Lorg/apache/cordova/CallbackContext;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 707
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->enableLight(Lorg/apache/cordova/CallbackContext;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 709
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->show(Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x8

    .line 711
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private pausePreview(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$25;

    invoke-direct {v1, p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner$25;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private prepare(Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 504
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 505
    iget v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    const/16 v2, 0x21

    if-nez v0, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0, v2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->requestPermission(I)V

    goto :goto_0

    .line 511
    :cond_0
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V

    .line 512
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-nez v0, :cond_8

    .line 513
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 517
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 521
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 523
    invoke-direct {p0, v2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->requestPermission(I)V

    goto :goto_0

    .line 526
    :cond_3
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V

    .line 527
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-nez v0, :cond_8

    .line 528
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 532
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    .line 536
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 540
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 541
    iget-object v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/bitpay/cordova/qrscanner/QRScanner$19;

    invoke-direct {v3, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$19;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    iget-boolean v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraPreviewing:Z

    if-eqz v2, :cond_7

    .line 548
    iget-object v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/bitpay/cordova/qrscanner/QRScanner$20;

    invoke-direct {v3, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$20;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    iput-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    .line 557
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 559
    :cond_7
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V

    .line 560
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private requestPermission(I)V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->permissions:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    return-void
.end method

.method private resumePreview(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$26;

    invoke-direct {v1, p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner$26;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scan(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    .line 566
    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    if-nez v1, :cond_1

    .line 567
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->shouldScanAgain:Z

    .line 568
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    invoke-virtual {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x21

    .line 570
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->requestPermission(I)V

    goto :goto_0

    .line 572
    :cond_0
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 576
    :cond_1
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    if-nez v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$21;

    invoke-direct {v1, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$21;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->shouldScanAgain:Z

    .line 590
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    .line 592
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/bitpay/cordova/qrscanner/QRScanner$22;

    invoke-direct {v0, p0, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$22;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupCamera(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$18;

    invoke-direct {v1, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$18;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 476
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    .line 477
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->shouldScanAgain:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->scan(Lorg/apache/cordova/CallbackContext;)V

    :cond_0
    return-void
.end method

.method private show(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$24;

    invoke-direct {v1, p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner$24;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private switchFlash(ZLorg/apache/cordova/CallbackContext;)V
    .locals 2

    const/4 v0, 0x7

    .line 256
    :try_start_0
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasFlash()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-direct {p0, p1, p2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->doswitchFlash(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 262
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->lightOn:Z

    .line 263
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 489
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    .line 490
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 491
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    goto :goto_0

    .line 494
    :cond_1
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->scan(Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 78
    iput-object p3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "show"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$1;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$1;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_0
    const-string v1, "scan"

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$2;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$2;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    const-string v1, "cancelScan"

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$3;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$3;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_2
    const-string v1, "openSettings"

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$4;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$4;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_3
    const-string v1, "pausePreview"

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$5;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$5;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_4
    const-string v1, "useCamera"

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 121
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$6;

    invoke-direct {v1, p0, p3, p2}, Lcom/bitpay/cordova/qrscanner/QRScanner$6;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_5
    const-string v1, "resumePreview"

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 129
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$7;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$7;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_6
    const-string v1, "hide"

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 137
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$8;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$8;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_7
    const-string v1, "enableLight"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 145
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$9;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$9;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_8
    const-string v1, "disableLight"

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 167
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$10;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$10;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_9
    const-string v1, "prepare"

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 183
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v1, Lcom/bitpay/cordova/qrscanner/QRScanner$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$11;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_a
    const-string p2, "destroy"

    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 200
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$12;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$12;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_b
    const-string p2, "getStatus"

    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 208
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/bitpay/cordova/qrscanner/QRScanner$13;

    invoke-direct {p2, p0, p3}, Lcom/bitpay/cordova/qrscanner/QRScanner$13;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_c
    return v0

    .line 219
    :catch_0
    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    return v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .line 302
    iget v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    return v0
.end method

.method public hasPermission()Z
    .locals 5

    .line 396
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->permissions:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 398
    invoke-static {p0, v4}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause(Z)V
    .locals 0

    .line 226
    iget-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->previewing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->appPausedWithActivePreview:Z

    const/4 p1, 0x0

    .line 228
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->pausePreview(Lorg/apache/cordova/CallbackContext;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->oneTime:Z

    const/16 v1, 0x21

    if-ne p1, v1, :cond_7

    const/4 v2, 0x0

    .line 353
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_7

    .line 354
    aget-object v3, p2, v2

    .line 355
    aget v4, p3, v2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    .line 356
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 359
    iput-boolean v6, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    .line 360
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 361
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v6}, Lorg/apache/cordova/CallbackContext;->error(I)V

    return-void

    .line 364
    :cond_0
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 365
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    .line 366
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v6}, Lorg/apache/cordova/CallbackContext;->error(I)V

    return-void

    .line 369
    :cond_1
    aget v3, p3, v2

    if-nez v3, :cond_5

    .line 370
    iput-boolean v6, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 371
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 374
    :cond_2
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOn:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOff:Z

    if-nez v3, :cond_3

    .line 375
    iget-object v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v6, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlash(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 376
    :cond_3
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlashOff:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-nez v3, :cond_4

    .line 377
    iget-object v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->switchFlash(ZLorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 379
    :cond_4
    iget-object v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V

    .line 380
    iget-boolean v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-nez v3, :cond_6

    .line 381
    iget-object v3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, v3}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getStatus(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 387
    :cond_5
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->authorized:Z

    .line 388
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->denied:Z

    .line 389
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->restricted:Z

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .line 234
    iget-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->appPausedWithActivePreview:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 235
    iput-boolean p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->appPausedWithActivePreview:Z

    const/4 p1, 0x0

    .line 236
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->resumePreview(Lorg/apache/cordova/CallbackContext;)V

    :cond_0
    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public switchCamera(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 321
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(I)V

    const/4 p2, 0x0

    .line 325
    :goto_0
    iput p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->currentCameraId:I

    .line 326
    iget-boolean p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    if-eqz p2, :cond_1

    .line 327
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->scanning:Z

    .line 328
    iput-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepared:Z

    .line 329
    iget-boolean p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cameraPreviewing:Z

    if-eqz p2, :cond_0

    .line 330
    iget-object p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/bitpay/cordova/qrscanner/QRScanner$15;

    invoke-direct {v0, p0}, Lcom/bitpay/cordova/qrscanner/QRScanner$15;-><init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->closeCamera()V

    .line 339
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepare(Lorg/apache/cordova/CallbackContext;)V

    .line 340
    iget-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner;->nextScanCallback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->scan(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 343
    :cond_1
    invoke-direct {p0, p1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->prepare(Lorg/apache/cordova/CallbackContext;)V

    :goto_1
    return-void
.end method
