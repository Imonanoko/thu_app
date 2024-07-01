.class public interface abstract Lcom/marianhello/bgloc/provider/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# static fields
.field public static final BACKGROUND_MODE:I = 0x0

.field public static final CMD_SWITCH_MODE:I = 0x1

.field public static final FOREGROUND_MODE:I = 0x1


# virtual methods
.method public abstract isStarted()Z
.end method

.method public abstract onCommand(II)V
.end method

.method public abstract onConfigure(Lcom/marianhello/bgloc/Config;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract setDelegate(Lcom/marianhello/bgloc/provider/ProviderDelegate;)V
.end method
