.class Lcom/marianhello/bgloc/service/LocationServiceImpl$4;
.super Ljava/lang/Object;
.source "LocationServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;->configure(Lcom/marianhello/bgloc/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

.field final synthetic val$currentConfig:Lcom/marianhello/bgloc/Config;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/Config;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    iput-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->val$currentConfig:Lcom/marianhello/bgloc/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 449
    invoke-static {}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->val$currentConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->stopForeground(Z)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 455
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->val$currentConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startForeground()V

    goto :goto_0

    .line 460
    :cond_1
    new-instance v1, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {v1, v0}, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 461
    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 462
    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 463
    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 464
    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 465
    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v6

    .line 460
    invoke-virtual/range {v1 .. v6}, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 468
    invoke-static {}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$600()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 473
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->val$currentConfig:Lcom/marianhello/bgloc/Config;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 474
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->isStarted()Z

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/marianhello/bgloc/provider/LocationProvider;->onDestroy()V

    .line 476
    new-instance v1, Lcom/marianhello/bgloc/provider/LocationProviderFactory;

    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {v1, v2}, Lcom/marianhello/bgloc/provider/LocationProviderFactory;-><init>(Landroid/content/Context;)V

    .line 477
    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->getInstance(Ljava/lang/Integer;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$302(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/provider/LocationProvider;)Lcom/marianhello/bgloc/provider/LocationProvider;

    .line 478
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-interface {v1, v2}, Lcom/marianhello/bgloc/provider/LocationProvider;->setDelegate(Lcom/marianhello/bgloc/provider/ProviderDelegate;)V

    .line 479
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/marianhello/bgloc/provider/LocationProvider;->onCreate()V

    .line 480
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/marianhello/bgloc/provider/LocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    if-eqz v0, :cond_4

    .line 482
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->onStart()V

    goto :goto_1

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$4;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/marianhello/bgloc/provider/LocationProvider;->onConfigure(Lcom/marianhello/bgloc/Config;)V

    :cond_4
    :goto_1
    return-void
.end method
