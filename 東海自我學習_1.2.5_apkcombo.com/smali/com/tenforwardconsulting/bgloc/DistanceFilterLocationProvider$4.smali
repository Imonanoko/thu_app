.class Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "DistanceFilterLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;


# direct methods
.method constructor <init>(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x0

    const-string v0, "entering"

    .line 501
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 503
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 504
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$900(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v0, "Entering stationary region"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 505
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$1000(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 506
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$200(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 510
    :cond_0
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$1100(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Exiting stationary region"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-virtual {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->getLastBestLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 514
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$4;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-virtual {p2, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onExitStationaryRegion(Landroid/location/Location;)V

    :cond_1
    :goto_0
    return-void
.end method
