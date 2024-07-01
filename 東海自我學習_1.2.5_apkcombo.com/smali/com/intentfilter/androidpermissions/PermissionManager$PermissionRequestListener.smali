.class public interface abstract Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intentfilter/androidpermissions/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PermissionRequestListener"
.end annotation


# virtual methods
.method public abstract onPermissionDenied()V
.end method

.method public abstract onPermissionGranted()V
.end method
