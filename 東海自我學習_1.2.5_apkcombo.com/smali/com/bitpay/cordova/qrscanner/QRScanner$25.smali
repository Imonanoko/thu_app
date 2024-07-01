.class Lcom/bitpay/cordova/qrscanner/QRScanner$25;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->pausePreview(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iput-object p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->pause()V

    .line 640
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$2102(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 641
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1900(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1902(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_1

    .line 646
    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$25;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v1, v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1700(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    :cond_1
    return-void
.end method
