.class final Lcom/facebook/appevents/ml/ModelManager$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager;->initializeModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$000()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "models"

    if-eqz v0, :cond_0

    .line 84
    :try_start_1
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$100()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, ""

    .line 88
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-static {v0}, Lcom/facebook/appevents/ml/ModelManager;->access$200(Lorg/json/JSONObject;)V

    .line 91
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->access$300()V

    .line 92
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->enablePIIFiltering()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method
