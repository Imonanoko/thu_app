.class Lcom/bitpay/cordova/qrscanner/QRScanner$21;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->scan(Lorg/apache/cordova/CallbackContext;)V
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

    .line 577
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->resume()V

    .line 582
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$2102(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 583
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$21;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1902(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    :cond_0
    return-void
.end method
