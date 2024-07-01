.class Lcom/bitpay/cordova/qrscanner/QRScanner$14;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->doswitchFlash(ZLorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$toggleLight:Z


# direct methods
.method constructor <init>(Lcom/bitpay/cordova/qrscanner/QRScanner;ZLorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iput-boolean p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->val$toggleLight:Z

    iput-object p3, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1800(Lcom/bitpay/cordova/qrscanner/QRScanner;)Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->val$toggleLight:Z

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setTorch(Z)V

    .line 291
    iget-boolean v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->val$toggleLight:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1902(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1902(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$14;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1700(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
