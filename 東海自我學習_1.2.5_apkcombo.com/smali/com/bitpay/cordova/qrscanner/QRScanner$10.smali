.class Lcom/bitpay/cordova/qrscanner/QRScanner$10;
.super Ljava/lang/Object;
.source "QRScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
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

    .line 167
    iput-object p1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iput-object p2, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1202(Lcom/bitpay/cordova/qrscanner/QRScanner;Z)Z

    .line 170
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-static {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$900(Lcom/bitpay/cordova/qrscanner/QRScanner;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    invoke-virtual {v0}, Lcom/bitpay/cordova/qrscanner/QRScanner;->hasPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1000(Lcom/bitpay/cordova/qrscanner/QRScanner;I)V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->this$0:Lcom/bitpay/cordova/qrscanner/QRScanner;

    iget-object v1, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1}, Lcom/bitpay/cordova/qrscanner/QRScanner;->access$1300(Lcom/bitpay/cordova/qrscanner/QRScanner;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/bitpay/cordova/qrscanner/QRScanner$10;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :goto_0
    return-void
.end method
