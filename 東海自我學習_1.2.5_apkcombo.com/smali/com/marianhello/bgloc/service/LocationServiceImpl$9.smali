.class Lcom/marianhello/bgloc/service/LocationServiceImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "LocationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 713
    iget-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {p1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$200(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Z

    move-result p1

    .line 714
    iget-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {p2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$800(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/PostLocationTask;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/marianhello/bgloc/PostLocationTask;->setHasConnectivity(Z)V

    .line 715
    iget-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$9;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {p2}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$700(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lorg/slf4j/Logger;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "Network condition changed has connectivity: {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
