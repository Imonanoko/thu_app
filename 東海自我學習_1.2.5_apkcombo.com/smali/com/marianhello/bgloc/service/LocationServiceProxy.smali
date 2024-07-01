.class public Lcom/marianhello/bgloc/service/LocationServiceProxy;
.super Ljava/lang/Object;
.source "LocationServiceProxy.java"

# interfaces
.implements Lcom/marianhello/bgloc/service/LocationService;
.implements Lcom/marianhello/bgloc/service/LocationServiceInfo;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    invoke-direct {v0, p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    return-void
.end method

.method private executeIntentCommand(Landroid/content/Intent;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public configure(Lcom/marianhello/bgloc/Config;)V
    .locals 2

    .line 25
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x5

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(ILandroid/os/Parcelable;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public executeProviderCommand(II)V
    .locals 0

    return-void
.end method

.method public isBound()Z
    .locals 2

    .line 123
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationServiceInfo;->isBound()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->isRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 110
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-interface {v0}, Lcom/marianhello/bgloc/service/LocationServiceInfo;->isStarted()Z

    move-result v0

    return v0
.end method

.method public registerHeadlessTask(Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x6

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(ILjava/lang/String;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 71
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public startForeground()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public startForegroundService()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 77
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method public startHeadlessTask()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x7

    .line 46
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 48
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public stopForeground()V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method

.method public stopHeadlessTask()V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceProxy;->mIntentBuilder:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    const/16 v1, 0x8

    .line 56
    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceProxy;->executeIntentCommand(Landroid/content/Intent;)V

    return-void
.end method
