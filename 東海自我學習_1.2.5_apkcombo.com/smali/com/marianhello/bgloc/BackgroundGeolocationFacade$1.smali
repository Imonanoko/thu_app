.class Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundGeolocationFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/BackgroundGeolocationFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Authorization has changed"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$1;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getAuthorizationStatus()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/marianhello/bgloc/PluginDelegate;->onAuthorizationChanged(I)V

    return-void
.end method
