.class Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;
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

    .line 461
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 465
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$100(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "stationaryAlarm fired"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider$2;->this$0:Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;->access$200(Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;Ljava/lang/Boolean;)V

    return-void
.end method
