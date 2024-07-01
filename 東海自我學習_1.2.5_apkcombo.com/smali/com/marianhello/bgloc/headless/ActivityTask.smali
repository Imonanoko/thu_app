.class public abstract Lcom/marianhello/bgloc/headless/ActivityTask;
.super Lcom/marianhello/bgloc/headless/Task;
.source "ActivityTask.java"


# instance fields
.field private mActivity:Lcom/marianhello/bgloc/data/BackgroundActivity;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/BackgroundActivity;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/marianhello/bgloc/headless/Task;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/marianhello/bgloc/headless/ActivityTask;->mActivity:Lcom/marianhello/bgloc/data/BackgroundActivity;

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 4

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/ActivityTask;->mActivity:Lcom/marianhello/bgloc/data/BackgroundActivity;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getConfidence()I

    move-result v2

    const-string v3, "confidence"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    iget-object v2, p0, Lcom/marianhello/bgloc/headless/ActivityTask;->mActivity:Lcom/marianhello/bgloc/data/BackgroundActivity;

    invoke-virtual {v2}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getActivityString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/marianhello/bgloc/headless/ActivityTask;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "params"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "activity"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/marianhello/bgloc/headless/ActivityTask;->mActivity:Lcom/marianhello/bgloc/data/BackgroundActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/marianhello/bgloc/data/BackgroundActivity;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/headless/ActivityTask;->onError(Ljava/lang/String;)V

    return-object v1
.end method
