.class Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;
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

    .line 446
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 450
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 452
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$000(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single location update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 453
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$1;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-virtual {p2, p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->onPollStationaryLocation(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
