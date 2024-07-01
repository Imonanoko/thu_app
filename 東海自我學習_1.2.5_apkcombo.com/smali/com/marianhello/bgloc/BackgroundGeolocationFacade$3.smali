.class Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;
.super Ljava/lang/Object;
.source "BackgroundGeolocationFacade.java"

# interfaces
.implements Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->start()V
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

    .line 218
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "User denied requested permissions"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/marianhello/bgloc/PluginDelegate;->onAuthorizationChanged(I)V

    :cond_0
    return-void
.end method

.method public onPermissionGranted()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "User granted requested permissions"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$300(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    .line 224
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$400(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    .line 225
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$3;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$500(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)V

    return-void
.end method
