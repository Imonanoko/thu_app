.class public Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "BackgroundGeolocationPlugin.java"

# interfaces
.implements Lcom/marianhello/bgloc/PluginDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;
    }
.end annotation


# static fields
.field public static final ABORT_REQUESTED_EVENT:Ljava/lang/String; = "abort_requested"

.field public static final ACTION_CHECK_STATUS:Ljava/lang/String; = "checkStatus"

.field public static final ACTION_CONFIGURE:Ljava/lang/String; = "configure"

.field public static final ACTION_DELETE_ALL_LOCATIONS:Ljava/lang/String; = "deleteAllLocations"

.field public static final ACTION_DELETE_LOCATION:Ljava/lang/String; = "deleteLocation"

.field public static final ACTION_END_TASK:Ljava/lang/String; = "endTask"

.field public static final ACTION_FORCE_SYNC:Ljava/lang/String; = "forceSync"

.field public static final ACTION_GET_ALL_LOCATIONS:Ljava/lang/String; = "getLocations"

.field public static final ACTION_GET_CONFIG:Ljava/lang/String; = "getConfig"

.field public static final ACTION_GET_CURRENT_LOCATION:Ljava/lang/String; = "getCurrentLocation"

.field public static final ACTION_GET_LOG_ENTRIES:Ljava/lang/String; = "getLogEntries"

.field public static final ACTION_GET_STATIONARY:Ljava/lang/String; = "getStationaryLocation"

.field public static final ACTION_GET_VALID_LOCATIONS:Ljava/lang/String; = "getValidLocations"

.field public static final ACTION_LOCATION_ENABLED_CHECK:Ljava/lang/String; = "isLocationEnabled"

.field public static final ACTION_REGISTER_EVENT_LISTENER:Ljava/lang/String; = "addEventListener"

.field public static final ACTION_REGISTER_HEADLESS_TASK:Ljava/lang/String; = "registerHeadlessTask"

.field public static final ACTION_SHOW_APP_SETTINGS:Ljava/lang/String; = "showAppSettings"

.field public static final ACTION_SHOW_LOCATION_SETTINGS:Ljava/lang/String; = "showLocationSettings"

.field public static final ACTION_START:Ljava/lang/String; = "start"

.field public static final ACTION_START_TASK:Ljava/lang/String; = "startTask"

.field public static final ACTION_STOP:Ljava/lang/String; = "stop"

.field public static final ACTION_SWITCH_MODE:Ljava/lang/String; = "switchMode"

.field public static final ACTIVITY_EVENT:Ljava/lang/String; = "activity"

.field public static final AUTHORIZATION_EVENT:Ljava/lang/String; = "authorization"

.field public static final BACKGROUND_EVENT:Ljava/lang/String; = "background"

.field public static final FOREGROUND_EVENT:Ljava/lang/String; = "foreground"

.field public static final HTTP_AUTHORIZATION_EVENT:Ljava/lang/String; = "http_authorization"

.field public static final LOCATION_EVENT:Ljava/lang/String; = "location"

.field public static final START_EVENT:Ljava/lang/String; = "start"

.field public static final STATIONARY_EVENT:Ljava/lang/String; = "stationary"

.field public static final STOP_EVENT:Ljava/lang/String; = "stop"


# instance fields
.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

.field private logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->start()V

    return-void
.end method

.method static synthetic access$100(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lcom/marianhello/bgloc/BackgroundGeolocationFacade;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/slf4j/Logger;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getAllLocations()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getValidLocations()Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Ljava/lang/Integer;ILjava/lang/String;)Lorg/json/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getLogs(Ljava/lang/Integer;ILjava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->checkStatus()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private checkStatus()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/marianhello/bgloc/PluginException;
        }
    .end annotation

    .line 512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 513
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->isRunning()Z

    move-result v1

    const-string v2, "isRunning"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 514
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->hasPermissions()Z

    move-result v1

    const-string v2, "hasPermissions"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 515
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->locationServicesEnabled()Z

    move-result v1

    const-string v2, "locationServicesEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 516
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getAuthorizationStatus()I

    move-result v1

    const-string v2, "authorization"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getAllLocations()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 485
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 486
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getLocations()Ljava/util/Collection;

    move-result-object v1

    .line 487
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/marianhello/bgloc/data/BackgroundLocation;

    .line 488
    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObjectWithId()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getLogs(Ljava/lang/Integer;ILjava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1, p2, p3}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getLogEntries(IILjava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .line 505
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/marianhello/logging/LogEntry;

    .line 506
    invoke-virtual {p2}, Lcom/marianhello/logging/LogEntry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValidLocations()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 494
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 495
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getValidLocations()Ljava/util/Collection;

    move-result-object v1

    .line 496
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/marianhello/bgloc/data/BackgroundLocation;

    .line 497
    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObjectWithId()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runOnWebViewThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendError(Lcom/marianhello/bgloc/PluginException;)V
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    .line 471
    :cond_0
    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Lcom/marianhello/bgloc/PluginException;)Lorg/apache/cordova/PluginResult;

    move-result-object p1

    const/4 v0, 0x1

    .line 472
    invoke-virtual {p1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 473
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 426
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 428
    invoke-virtual {v1, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 429
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 431
    iget-object v1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error sending event {}: {}"

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 457
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    .line 458
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p2, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 461
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 463
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error sending event {}: {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 441
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "payload"

    .line 442
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v1, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    .line 444
    invoke-virtual {p2, v0}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 445
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 447
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error sending event {}: {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private start()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->start()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5

    .line 140
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "addEventListener"

    .line 142
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string p2, "Registering event listeners"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 144
    iput-object p3, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return v2

    :cond_0
    const-string v1, "start"

    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$1;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$1;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    const-string v1, "stop"

    .line 156
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$2;

    invoke-direct {p1, p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$2;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_2
    const-string v1, "switchMode"

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x3ec

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 166
    :try_start_0
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result p1

    .line 167
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p2, p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->switchMode(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 169
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Switch mode error: {}"

    invoke-interface {p2, v0, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    new-instance p2, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendError(Lcom/marianhello/bgloc/PluginException;)V

    :goto_0
    return v2

    :cond_3
    const-string v1, "configure"

    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 175
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$3;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_4
    const-string v1, "isLocationEnabled"

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 193
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string p2, "Location services enabled check"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 195
    :try_start_1
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->locationServicesEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    :cond_5
    invoke-virtual {p3, v4}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_1
    .catch Lcom/marianhello/bgloc/PluginException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 197
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/PluginException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Location service checked failed: {}"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-static {p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Lcom/marianhello/bgloc/PluginException;)Lorg/apache/cordova/PluginResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_1
    return v2

    :cond_6
    const-string v1, "showLocationSettings"

    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 203
    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->showLocationSettings(Landroid/content/Context;)V

    return v2

    :cond_7
    const-string v1, "showAppSettings"

    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 207
    invoke-static {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->showAppSettings(Landroid/content/Context;)V

    return v2

    :cond_8
    const-string v0, "getStationaryLocation"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 212
    :try_start_2
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->getStationaryLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 214
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_2

    .line 216
    :cond_9
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 219
    iget-object p2, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Getting stationary location failed: {}"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "Getting stationary location failed"

    .line 220
    invoke-static {p2, p1, v3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_2
    return v2

    :cond_a
    const-string v0, "getLocations"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 225
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;

    invoke-direct {p1, p0, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$4;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_b
    const-string v0, "getValidLocations"

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 238
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$5;

    invoke-direct {p1, p0, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$5;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_c
    const-string v0, "deleteLocation"

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 251
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$6;

    invoke-direct {p1, p0, p2, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$6;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_d
    const-string v0, "deleteAllLocations"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 266
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;

    invoke-direct {p1, p0, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$7;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_e
    const-string v0, "getCurrentLocation"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 275
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;

    invoke-direct {p1, p0, p2, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$8;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_f
    const-string v0, "getConfig"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 294
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;

    invoke-direct {p1, p0, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$9;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_10
    const-string v0, "getLogEntries"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 307
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;

    invoke-direct {p1, p0, p2, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$10;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_11
    const-string v0, "checkStatus"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 322
    new-instance p1, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$11;

    invoke-direct {p1, p0, p3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$11;-><init>(Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->runOnWebViewThread(Ljava/lang/Runnable;)V

    return v2

    :cond_12
    const-string v0, "startTask"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 334
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return v2

    :cond_13
    const-string v0, "endTask"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 337
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v2

    :cond_14
    const-string v0, "registerHeadlessTask"

    .line 339
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 340
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string v0, "Registering headless task"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 342
    :try_start_3
    invoke-static {}, Lcom/marianhello/bgloc/cordova/PluginRegistry;->getInstance()Lcom/marianhello/bgloc/cordova/PluginRegistry;

    move-result-object p1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/marianhello/bgloc/cordova/PluginRegistry;->registerHeadlessTask(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    const-class p2, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->registerHeadlessTask(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string p2, "Registering headless task failed"

    .line 345
    invoke-static {p2, p1, v3}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin$ErrorPluginResult;->from(Ljava/lang/String;Ljava/lang/Throwable;I)Lorg/apache/cordova/PluginResult;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :goto_3
    return v2

    :cond_15
    const-string p2, "forceSync"

    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 349
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string p2, "Forced location sync requested"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->forceSync()V

    return v2

    :cond_16
    return v4
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getApplication()Landroid/app/Application;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onAbortRequested()V
    .locals 2

    const/4 v0, 0x0

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "abort_requested"

    invoke-direct {p0, v1, v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onActivityChanged(Lcom/marianhello/bgloc/data/BackgroundActivity;)V
    .locals 3

    :try_start_0
    const-string v0, "activity"

    .line 549
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundActivity;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 551
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error converting activity to json: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    new-instance v0, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ec

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendError(Lcom/marianhello/bgloc/PluginException;)V

    :goto_0
    return-void
.end method

.method public onAuthorizationChanged(I)V
    .locals 1

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "authorization"

    invoke-direct {p0, v0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string v1, "Destroying plugin"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->destroy()V

    .line 405
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    return-void
.end method

.method public onError(Lcom/marianhello/bgloc/PluginException;)V
    .locals 0

    .line 580
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendError(Lcom/marianhello/bgloc/PluginException;)V

    return-void
.end method

.method public onHttpAuthorization()V
    .locals 1

    const-string v0, "http_authorization"

    .line 575
    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onLocationChanged(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 3

    :try_start_0
    const-string v0, "location"

    .line 529
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObjectWithId()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 531
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error converting location to json: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    new-instance v0, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ec

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendError(Lcom/marianhello/bgloc/PluginException;)V

    :goto_0
    return-void
.end method

.method public onPause(Z)V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "App will be paused multitasking={}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 368
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->pause()V

    const-string p1, "background"

    .line 369
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Z)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "App will be resumed multitasking={}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->resume()V

    const-string p1, "foreground"

    .line 380
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceStatusChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "start"

    .line 560
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "stop"

    .line 563
    invoke-direct {p0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string v1, "App is visible"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onStationaryChanged(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 3

    :try_start_0
    const-string v0, "stationary"

    .line 539
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObjectWithId()Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error converting location to json: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    new-instance v0, Lcom/marianhello/bgloc/PluginException;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3ec

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/PluginException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->sendError(Lcom/marianhello/bgloc/PluginException;)V

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    const-string v1, "App is no longer visible"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method protected pluginInitialize()V
    .locals 2

    .line 132
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->pluginInitialize()V

    .line 134
    const-class v0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;

    invoke-static {v0}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->logger:Lorg/slf4j/Logger;

    .line 135
    new-instance v0, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {p0}, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;-><init>(Landroid/content/Context;Lcom/marianhello/bgloc/PluginDelegate;)V

    iput-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    .line 136
    iget-object v0, p0, Lcom/tenforwardconsulting/bgloc/cordova/BackgroundGeolocationPlugin;->facade:Lcom/marianhello/bgloc/BackgroundGeolocationFacade;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/BackgroundGeolocationFacade;->resume()V

    return-void
.end method
