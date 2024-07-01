.class public abstract Lcom/marianhello/bgloc/provider/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"

# interfaces
.implements Lcom/marianhello/bgloc/provider/LocationProvider;


# instance fields
.field protected PROVIDER_ID:Ljava/lang/Integer;

.field protected logger:Lorg/slf4j/Logger;

.field protected mConfig:Lcom/marianhello/bgloc/Config;

.field protected mContext:Landroid/content/Context;

.field private mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

.field protected toneGenerator:Lcom/marianhello/utils/ToneGenerator;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->logger:Lorg/slf4j/Logger;

    .line 47
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected handleActivity(Lcom/google/android/gms/location/DetectedActivity;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Lcom/marianhello/bgloc/data/BackgroundActivity;

    iget-object v2, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    invoke-direct {v1, v2, p1}, Lcom/marianhello/bgloc/data/BackgroundActivity;-><init>(Ljava/lang/Integer;Lcom/google/android/gms/location/DetectedActivity;)V

    invoke-interface {v0, v1}, Lcom/marianhello/bgloc/provider/ProviderDelegate;->onActivity(Lcom/marianhello/bgloc/data/BackgroundActivity;)V

    :cond_0
    return-void
.end method

.method protected handleLocation(Landroid/location/Location;)V
    .locals 2

    const/16 v0, 0x18

    .line 96
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->playDebugTone(I)V

    .line 97
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    invoke-direct {v0, v1, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Ljava/lang/Integer;Landroid/location/Location;)V

    .line 99
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->hasMockLocationsEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setMockLocationsEnabled(Ljava/lang/Boolean;)V

    .line 100
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    invoke-interface {p1, v0}, Lcom/marianhello/bgloc/provider/ProviderDelegate;->onLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    :cond_0
    return-void
.end method

.method protected handleSecurityException(Ljava/lang/SecurityException;)V
    .locals 2

    .line 145
    new-instance v0, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3e8

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    .line 146
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    if-eqz p1, :cond_0

    .line 147
    invoke-interface {p1, v0}, Lcom/marianhello/bgloc/provider/ProviderDelegate;->onError(Lcom/marianhello/bgloc/PluginException;)V

    :cond_0
    return-void
.end method

.method protected handleStationary(Landroid/location/Location;)V
    .locals 2

    const/16 v0, 0x61

    .line 126
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->playDebugTone(I)V

    .line 127
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    invoke-direct {v0, v1, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Ljava/lang/Integer;Landroid/location/Location;)V

    .line 129
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->hasMockLocationsEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setMockLocationsEnabled(Ljava/lang/Boolean;)V

    .line 130
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    invoke-interface {p1, v0}, Lcom/marianhello/bgloc/provider/ProviderDelegate;->onStationary(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    :cond_0
    return-void
.end method

.method protected handleStationary(Landroid/location/Location;F)V
    .locals 2

    const/16 v0, 0x61

    .line 111
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->playDebugTone(I)V

    .line 112
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    iget-object v1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->PROVIDER_ID:Ljava/lang/Integer;

    invoke-direct {v0, v1, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Ljava/lang/Integer;Landroid/location/Location;)V

    .line 114
    invoke-virtual {v0, p2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setRadius(F)V

    .line 115
    invoke-virtual {p0}, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->hasMockLocationsEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setMockLocationsEnabled(Ljava/lang/Boolean;)V

    .line 116
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    invoke-interface {p1, v0}, Lcom/marianhello/bgloc/provider/ProviderDelegate;->onStationary(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    :cond_0
    return-void
.end method

.method public hasMockLocationsEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mock_location"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(II)V
    .locals 0

    return-void
.end method

.method public onConfigure(Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 52
    new-instance v0, Lcom/marianhello/utils/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lcom/marianhello/utils/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->toneGenerator:Lcom/marianhello/utils/ToneGenerator;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->toneGenerator:Lcom/marianhello/utils/ToneGenerator;

    invoke-virtual {v0}, Lcom/marianhello/utils/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->toneGenerator:Lcom/marianhello/utils/ToneGenerator;

    return-void
.end method

.method protected playDebugTone(I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->toneGenerator:Lcom/marianhello/utils/ToneGenerator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    .line 169
    iget-object v1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->toneGenerator:Lcom/marianhello/utils/ToneGenerator;

    invoke-virtual {v1, p1, v0}, Lcom/marianhello/utils/ToneGenerator;->startTone(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public setDelegate(Lcom/marianhello/bgloc/provider/ProviderDelegate;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mDelegate:Lcom/marianhello/bgloc/provider/ProviderDelegate;

    return-void
.end method

.method protected showDebugToast(Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method protected unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/marianhello/bgloc/provider/AbstractLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
