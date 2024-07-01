.class public Lcom/marianhello/bgloc/cordova/PluginRegistry;
.super Ljava/lang/Object;
.source "PluginRegistry.java"


# static fields
.field private static instance:Lcom/marianhello/bgloc/cordova/PluginRegistry;


# instance fields
.field private headlessTask:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/marianhello/bgloc/cordova/PluginRegistry;
    .locals 1

    .line 20
    sget-object v0, Lcom/marianhello/bgloc/cordova/PluginRegistry;->instance:Lcom/marianhello/bgloc/cordova/PluginRegistry;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/marianhello/bgloc/cordova/PluginRegistry;

    invoke-direct {v0}, Lcom/marianhello/bgloc/cordova/PluginRegistry;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/cordova/PluginRegistry;->instance:Lcom/marianhello/bgloc/cordova/PluginRegistry;

    .line 23
    :cond_0
    sget-object v0, Lcom/marianhello/bgloc/cordova/PluginRegistry;->instance:Lcom/marianhello/bgloc/cordova/PluginRegistry;

    return-object v0
.end method


# virtual methods
.method public getHeadlessTask()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/marianhello/bgloc/cordova/PluginRegistry;->headlessTask:Ljava/lang/String;

    return-object v0
.end method

.method public registerHeadlessTask(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/marianhello/bgloc/cordova/PluginRegistry;->headlessTask:Ljava/lang/String;

    return-void
.end method
