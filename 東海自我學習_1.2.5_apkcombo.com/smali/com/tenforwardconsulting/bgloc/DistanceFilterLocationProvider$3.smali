.class Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;
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

    .line 475
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 479
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$300(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Stationary location monitor fired"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    const/16 p2, 0x17

    invoke-static {p1, p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$400(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;I)V

    .line 482
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$500(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/Criteria;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 483
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$500(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/Criteria;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 484
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$500(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/Criteria;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 487
    :try_start_0
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$700(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/LocationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$500(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/location/Criteria;

    move-result-object p2

    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$600(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 489
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$3;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$800(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Security exception: {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
