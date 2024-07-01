.class Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;
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

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    iput-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;->this$0:Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->access$100(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->deleteAllLocations()V

    .line 269
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method
