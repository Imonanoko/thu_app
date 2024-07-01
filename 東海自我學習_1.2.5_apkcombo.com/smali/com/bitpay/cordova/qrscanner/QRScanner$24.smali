.class Lcom/bitpay/cordova/qrscanner/QRScanner$24;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->show(Lorg/apache/cordova/CallbackContext;)V
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

    .line 619
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iput-object p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v0, v0, Lcom/bitpay/cordova/qrscanner/QRScanner;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 623
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$2302(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 624
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$24;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1700(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method
