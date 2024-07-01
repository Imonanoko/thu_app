.class public Lorg/apache/cordova/facebook/ConnectPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ConnectPlugin.java"


# static fields
.field private static final INVALID_ERROR_CODE:I = -0x2

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

.field private graphPath:Ljava/lang/String;

.field private lastGraphContext:Lorg/apache/cordova/CallbackContext;

.field private logger:Lcom/facebook/appevents/AppEventsLogger;

.field private loginContext:Lorg/apache/cordova/CallbackContext;

.field private messageDialog:Lcom/facebook/share/widget/MessageDialog;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private showDialogContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lorg/apache/cordova/facebook/ConnectPlugin$1;

    invoke-direct {v0}, Lorg/apache/cordova/facebook/ConnectPlugin$1;-><init>()V

    sput-object v0, Lorg/apache/cordova/facebook/ConnectPlugin;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const-string v0, "ConnectPlugin"

    .line 70
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    .line 75
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 76
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$102(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->handleError(Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$502(Lorg/apache/cordova/facebook/ConnectPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    return-object p1
.end method

.method private buildContent(Ljava/util/Map;)Lcom/facebook/share/model/ShareLinkContent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/ShareLinkContent;"
        }
    .end annotation

    .line 728
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v1, "href"

    .line 729
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    :cond_0
    const-string v1, "caption"

    .line 731
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 732
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_1
    const-string v1, "description"

    .line 733
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_2
    const-string v1, "link"

    .line 735
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 736
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    :cond_3
    const-string v1, "picture"

    .line 737
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 738
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_4
    const-string v1, "quote"

    .line 739
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 740
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_5
    const-string v1, "hashtag"

    .line 741
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 742
    new-instance v2, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 744
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    return-object p1
.end method

.method private enableHybridAppEvents()V
    .locals 6

    const-string v0, "ConnectPlugin"

    .line 712
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "fb_hybrid_app_events"

    const-string v4, "bool"

    .line 714
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    invoke-static {v2, v1}, Lcom/facebook/appevents/AppEventsLogger;->augmentWebView(Landroid/webkit/WebView;Landroid/content/Context;)V

    const-string v1, "FB Hybrid app events are enabled"

    .line 718
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "FB Hybrid app events are not enabled"

    .line 720
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "FB Hybrid app events cannot be enabled"

    .line 723
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private executeDialog(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 343
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 348
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 349
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "ConnectPlugin"

    if-eqz v3, :cond_1

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "method"

    .line 351
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 353
    :try_start_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v3, "Nonstring method parameter provided to dialog"

    .line 355
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    :cond_0
    :try_start_2
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string v3, "Non-string parameter provided to dialog discarded"

    .line 362
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    const-string p1, "No method provided"

    .line 368
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const-string p1, "apprequests"

    .line 369
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "Cannot show dialog"

    const/4 v3, 0x1

    if-eqz p1, :cond_b

    .line 371
    invoke-static {}, Lcom/facebook/share/widget/GameRequestDialog;->canShow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 372
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_3
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 376
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 377
    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 378
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 380
    new-instance p1, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    const-string p2, "message"

    .line 381
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 382
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_4
    const-string p2, "to"

    .line 383
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 384
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_5
    const-string p2, "data"

    .line 385
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 386
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_6
    const-string p2, "title"

    .line 387
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 388
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_7
    const-string p2, "objectId"

    .line 389
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 390
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_8
    const-string p2, "actionType"

    .line 391
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 393
    :try_start_3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object p2

    .line 394
    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    const-string p2, "Discarding invalid argument actionType"

    .line 396
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    const-string p2, "filters"

    .line 399
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    :try_start_4
    const-string p2, "filters"

    .line 401
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object p2

    .line 402
    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    const-string p2, "Discarding invalid argument filters"

    .line 404
    invoke-static {v4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_a
    :goto_3
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 411
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_b
    const-string p1, "share"

    .line 413
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    const-string p1, "feed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto/16 :goto_6

    :cond_c
    const-string p1, "share_open_graph"

    .line 428
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 429
    const-class p1, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 430
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_d
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 434
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 435
    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 436
    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    const-string p1, "action"

    .line 438
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Missing required parameter \'action\'"

    .line 439
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_e
    const-string v1, "object"

    .line 442
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "Missing required parameter \'object\'."

    .line 443
    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 446
    :cond_f
    new-instance v2, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;-><init>()V

    .line 447
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, ""

    move-object v5, v4

    .line 453
    :cond_10
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 454
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 455
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 457
    invoke-virtual {v2, v6, v7}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    const-string v8, "og:type"

    .line 459
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move-object v5, v7

    goto :goto_4

    .line 463
    :cond_11
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Missing required object parameter \'og:type\'"

    .line 464
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 467
    :cond_12
    new-instance p2, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    .line 468
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    const-string p1, "action_properties"

    .line 470
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 471
    new-instance p1, Lorg/json/JSONObject;

    const-string v1, "action_properties"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 475
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_5

    .line 482
    :cond_13
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 484
    new-instance p1, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;-><init>()V

    .line 485
    invoke-virtual {p1, v5}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object p1

    .line 488
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_14
    const-string p1, "send"

    .line 490
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 491
    const-class p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {p1}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 492
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 495
    :cond_15
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 496
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 497
    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 498
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 500
    new-instance p1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string p2, "link"

    .line 501
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 502
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    :cond_16
    const-string p2, "caption"

    .line 503
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 504
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_17
    const-string p2, "picture"

    .line 505
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 506
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_18
    const-string p2, "description"

    .line 507
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    const-string p2, "description"

    .line 508
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 510
    :cond_19
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    goto :goto_7

    :cond_1a
    const-string p1, "Unsupported dialog method."

    .line 513
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_7

    .line 414
    :cond_1b
    :goto_6
    const-class p1, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {p1}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 415
    invoke-virtual {p2, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 418
    :cond_1c
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 419
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 420
    invoke-virtual {p1, v3}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 421
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 423
    invoke-direct {p0, v0}, Lorg/apache/cordova/facebook/ConnectPlugin;->buildContent(Ljava/util/Map;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p1

    .line 425
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 426
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    invoke-virtual {p2, p1}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    :goto_7
    return-void
.end method

.method private executeGetDeferredApplink(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 319
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lorg/apache/cordova/facebook/ConnectPlugin$7;

    invoke-direct {v0, p0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin$7;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {p1, v0}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method private executeGraph(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 518
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    .line 520
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 v1, 0x1

    .line 521
    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 522
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    const/4 v0, 0x0

    .line 524
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    .line 525
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 527
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    .line 528
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 529
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 532
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 533
    invoke-direct {p0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 541
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    .line 542
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    invoke-direct {p0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    return-void

    .line 547
    :cond_2
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 550
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 551
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object p1, v6

    goto :goto_2

    .line 556
    :cond_4
    invoke-direct {p0, v6}, Lorg/apache/cordova/facebook/ConnectPlugin;->isPublishPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v5, :cond_3

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This request needs declined permission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v5, :cond_8

    const-string p1, "Cannot ask for both read and publish permissions."

    .line 574
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 578
    :cond_8
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 579
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    if-eqz v0, :cond_9

    .line 583
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_3

    .line 586
    :cond_9
    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_3
    return-void
.end method

.method private executeLogEvent(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 591
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Invalid arguments"

    .line 593
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 597
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 599
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p1, v0}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 605
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 606
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 607
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 609
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 610
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 613
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 614
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type in AppEvent parameters was not String for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConnectPlugin"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 620
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 623
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type in AppEvent parameters for key: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 629
    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 630
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 633
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 634
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    .line 635
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {p1, v0, v3, v4, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 636
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    :cond_4
    return-void
.end method

.method private executeLogin(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "ConnectPlugin"

    const-string v1, "login FB"

    .line 641
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 644
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    .line 647
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 649
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 650
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    :cond_0
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    .line 655
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 p2, 0x1

    .line 656
    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 657
    iget-object v3, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 660
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result p1

    if-nez p1, :cond_1

    .line 662
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 665
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void

    .line 673
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 680
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 681
    invoke-direct {p0, v4}, Lorg/apache/cordova/facebook/ConnectPlugin;->isPublishPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    :cond_5
    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    .line 693
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    const-string p2, "Cannot ask for both read and publish permissions."

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 694
    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    return-void

    .line 699
    :cond_6
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    if-eqz v2, :cond_7

    .line 703
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_3

    .line 706
    :cond_7
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    :goto_3
    return-void
.end method

.method private handleError(Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 758
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectPlugin"

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Facebook error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x2

    .line 764
    instance-of v3, p1, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v3, :cond_1

    const/16 v2, 0x1069

    const-string v0, "User cancelled dialog"

    goto :goto_0

    .line 767
    :cond_1
    instance-of v3, p1, Lcom/facebook/FacebookDialogException;

    if-eqz v3, :cond_2

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog error: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 773
    invoke-virtual {p0, p1, v0, v2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getErrorResponse(Ljava/lang/Exception;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 775
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error already sent so no context, msg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private hasAccessToken()Z
    .locals 1

    .line 749
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 754
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "publish"

    .line 827
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 828
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/cordova/facebook/ConnectPlugin;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 829
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private makeGraphCall(Lorg/apache/cordova/CallbackContext;)V
    .locals 9

    .line 782
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 787
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 788
    aget-object v2, v0, v1

    .line 789
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/facebook/ConnectPlugin$8;

    invoke-direct {v4, p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin$8;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v3, v2, v4}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 803
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    .line 805
    array-length v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 806
    aget-object v0, v0, v4

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 808
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    const-string v6, "="

    .line 809
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_0

    .line 811
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 812
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 813
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 818
    :cond_1
    invoke-virtual {p1, v2}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 819
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method private static wrapObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    .line 934
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object p0

    .line 936
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_9

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 939
    :cond_1
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 943
    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 944
    new-instance v0, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 945
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 948
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 949
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 951
    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_0

    .line 962
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 963
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-object p0

    :catch_0
    :cond_8
    const/4 p0, 0x0

    :cond_9
    :goto_1
    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "login"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeLogin(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_0
    const-string v0, "logout"

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 255
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    :cond_1
    const-string p1, "No valid session found, must call init and login before logout."

    .line 257
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_2
    const-string v0, "getLoginStatus"

    .line 261
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->getResponse()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return v1

    :cond_3
    const-string v0, "getAccessToken"

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 267
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "Session not open."

    .line 270
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_5
    const-string v0, "logEvent"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 275
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeLogEvent(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_6
    const-string v0, "logPurchase"

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 283
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const-string p1, "Invalid arguments"

    .line 284
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return v1

    .line 287
    :cond_7
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 289
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {p2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 290
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v1

    :cond_8
    const-string v0, "showDialog"

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 294
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeDialog(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_9
    const-string v0, "graphApi"

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 298
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeGraph(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_a
    const-string v0, "getDeferredApplink"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 302
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeGetDeferredApplink(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return v1

    :cond_b
    const-string p2, "activateApp"

    .line 304
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 305
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/facebook/ConnectPlugin$6;

    invoke-direct {p2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$6;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v1

    :cond_c
    return v2
.end method

.method public getErrorResponse(Ljava/lang/Exception;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    .line 892
    instance-of v0, p1, Lcom/facebook/FacebookServiceException;

    if-eqz v0, :cond_0

    .line 893
    check-cast p1, Lcom/facebook/FacebookServiceException;

    invoke-virtual {p1}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "{"

    .line 898
    instance-of v1, p1, Lcom/facebook/FacebookDialogException;

    if-eqz v1, :cond_1

    .line 899
    move-object p3, p1

    check-cast p3, Lcom/facebook/FacebookDialogException;

    invoke-virtual {p3}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result p3

    :cond_1
    const/4 v1, -0x2

    if-eq p3, v1, :cond_2

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"errorCode\": \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\","

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez p2, :cond_3

    .line 907
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 910
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\"errorMessage\": \""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 913
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 915
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 917
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;
    .locals 3

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"errorCode\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"errorType\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"errorMessage\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 872
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"errorUserMessage\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\"errorUserTitle\": \""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 883
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 886
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 888
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 6

    .line 838
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 839
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 841
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"status\": \"connected\",\"authResponse\": {\"accessToken\": \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"expiresIn\": \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    .line 846
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\",\"session_key\": true,\"sig\": \"...\",\"userID\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"}}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "{\"status\": \"unknown\"}"

    .line 858
    :goto_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 862
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 241
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity result in plugin: requestCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "), resultCode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnectPlugin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onPause(Z)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 236
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V

    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 230
    iget-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;)V

    return-void
.end method

.method protected pluginInitialize()V
    .locals 3

    .line 84
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    .line 90
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    .line 93
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->enableHybridAppEvents()V

    .line 96
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 98
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$2;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$2;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 148
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 149
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$3;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$3;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 171
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    .line 172
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$4;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$4;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 194
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    .line 195
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$5;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$5;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method
