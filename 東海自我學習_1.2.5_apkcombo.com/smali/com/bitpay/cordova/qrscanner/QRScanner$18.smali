.class Lcom/bitpay/cordova/qrscanner/QRScanner$18;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->setupCamera(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;


# direct methods
.method constructor <init>(Lcom/bitpay/cordova/qrscanner/QRScanner;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    new-instance v1, Lcom/journeyapps/barcodescanner/BarcodeView;

    iget-object v2, v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1802(Lcom/bitpay/cordova/qrscanner/QRScanner;Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    new-instance v2, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->setDecoderFactory(Lcom/journeyapps/barcodescanner/DecoderFactory;)V

    .line 462
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    .line 463
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-virtual {v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->getCurrentCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->setRequestedCameraId(I)V

    .line 464
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 466
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 467
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v1, v1, Lcom/bitpay/cordova/qrscanner/QRScanner;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v2}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$2002(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 470
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v0, v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 472
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$18;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->resume()V

    return-void
.end method
