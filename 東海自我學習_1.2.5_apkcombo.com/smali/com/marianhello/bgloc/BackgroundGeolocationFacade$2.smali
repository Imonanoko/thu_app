.class Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;
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

    .line 96
    iput-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "action"

    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "payload"

    packed-switch p2, :pswitch_data_0

    return-void

    .line 166
    :pswitch_0
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Received MSG_ON_HTTP_AUTHORIZATION"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/marianhello/bgloc/PluginDelegate;->onHttpAuthorization()V

    :cond_0
    return-void

    .line 150
    :pswitch_1
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Received MSG_ON_ABORT_REQUESTED"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/marianhello/bgloc/PluginDelegate;->onAbortRequested()V

    goto :goto_0

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->stop()V

    :goto_0
    return-void

    .line 144
    :pswitch_2
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Received MSG_ON_SERVICE_STOPPED"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/marianhello/bgloc/PluginDelegate;->onServiceStatusChanged(I)V

    return-void

    .line 138
    :pswitch_3
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p1

    const-string p2, "Received MSG_ON_SERVICE_STARTED"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/marianhello/bgloc/PluginDelegate;->onServiceStatusChanged(I)V

    return-void

    .line 121
    :pswitch_4
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v1, "Received MSG_ON_ACTIVITY"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 122
    const-class p2, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/marianhello/bgloc/data/BackgroundActivity;

    .line 124
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/marianhello/bgloc/PluginDelegate;->onActivityChanged(Lcom/marianhello/bgloc/data/BackgroundActivity;)V

    return-void

    .line 112
    :pswitch_5
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v1, "Received MSG_ON_STATIONARY"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 113
    const-class p2, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/marianhello/bgloc/data/BackgroundLocation;

    .line 115
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2, p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$202(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    .line 116
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/marianhello/bgloc/PluginDelegate;->onStationaryChanged(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void

    .line 104
    :pswitch_6
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v1, "Received MSG_ON_LOCATION"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 105
    const-class p2, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/marianhello/bgloc/data/BackgroundLocation;

    .line 107
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/marianhello/bgloc/PluginDelegate;->onLocationChanged(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void

    .line 129
    :pswitch_7
    iget-object p2, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$000(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lorg/slf4j/Logger;

    move-result-object p2

    const-string v1, "Received MSG_ON_ERROR"

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "code"

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "message"

    .line 132
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade$2;->this$0:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->access$100(Lcom/marianhello/bgloc/BackgroundGeolocationFacade;)Lcom/marianhello/bgloc/PluginDelegate;

    move-result-object v0

    new-instance v1, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v1, p1, p2}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/marianhello/bgloc/PluginDelegate;->onError(Lcom/marianhello/bgloc/PluginException;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
