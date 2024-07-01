.class Lcom/bitpay/cordova/qrscanner/QRScanner$QRScannerError;
.super Ljava/lang/Object;
.source "QRScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bitpay/cordova/qrscanner/QRScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QRScannerError"
.end annotation


# static fields
.field private static final BACK_CAMERA_UNAVAILABLE:I = 0x3

.field private static final CAMERA_ACCESS_DENIED:I = 0x1

.field private static final CAMERA_ACCESS_RESTRICTED:I = 0x2

.field private static final CAMERA_UNAVAILABLE:I = 0x5

.field private static final FRONT_CAMERA_UNAVAILABLE:I = 0x4

.field private static final LIGHT_UNAVAILABLE:I = 0x7

.field private static final OPEN_SETTINGS_UNAVAILABLE:I = 0x8

.field private static final SCAN_CANCELED:I = 0x6

.field private static final UNEXPECTED_ERROR:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
