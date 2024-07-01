.class Lcom/marianhello/bgloc/service/LocationServiceImpl$3;
.super Ljava/lang/Object;
.source "LocationServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;->start()V
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

    .line 363
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/marianhello/bgloc/provider/LocationProvider;->onStart()V

    .line 367
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$400(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$3;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->startForeground()V

    :cond_0
    return-void
.end method
