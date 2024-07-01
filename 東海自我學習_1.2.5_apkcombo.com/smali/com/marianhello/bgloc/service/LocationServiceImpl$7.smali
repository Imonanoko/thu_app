.class Lcom/marianhello/bgloc/service/LocationServiceImpl$7;
.super Lcom/marianhello/bgloc/headless/StationaryTask;
.source "LocationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;->onStationary(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$7;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0, p2}, Lcom/marianhello/bgloc/headless/StationaryTask;-><init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$7;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$700(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Stationary task error: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$7;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$700(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Stationary task result: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
