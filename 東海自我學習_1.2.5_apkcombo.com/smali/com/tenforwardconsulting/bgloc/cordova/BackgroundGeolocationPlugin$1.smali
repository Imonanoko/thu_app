.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$1;
.super Ljava/lang/Object;
.source "BackgroundGeolocationPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;


# direct methods
.method constructor <init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$1;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$1;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$000(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)V

    return-void
.end method
