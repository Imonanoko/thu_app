.class public Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;
.super Lcom/marianhello/bgloc/headless/AbstractTaskRunner;
.source "JsEvaluatorTaskRunner.java"


# static fields
.field public static BUNDLE_KEY:Ljava/lang/String; = "JS"


# instance fields
.field private mJsEvaluator:Lcom/evgenii/jsevaluator/JsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/marianhello/bgloc/headless/AbstractTaskRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/marianhello/bgloc/headless/Task;)V
    .locals 6

    .line 19
    invoke-static {}, Lcom/marianhello/bgloc/cordova/PluginRegistry;->getInstance()Lcom/marianhello/bgloc/cordova/PluginRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/marianhello/bgloc/cordova/PluginRegistry;->getHeadlessTask()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Cannot run task due missing jsEvaluator. Did you called setFunction?"

    .line 22
    invoke-virtual {p1, v0}, Lcom/marianhello/bgloc/headless/Task;->onError(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    new-instance v1, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;

    invoke-direct {v1, p0, p1}, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;-><init>(Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;Lcom/marianhello/bgloc/headless/Task;)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "function task(name, paramsString) {"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "var params = JSON.parse(paramsString);"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "var task = { name: name, params: params };"

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")(task);"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;->mJsEvaluator:Lcom/evgenii/jsevaluator/JsEvaluator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/marianhello/bgloc/headless/Task;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "task"

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/evgenii/jsevaluator/JsEvaluator;->callFunction(Ljava/lang/String;Lcom/evgenii/jsevaluator/interfaces/JsCallback;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/marianhello/bgloc/headless/AbstractTaskRunner;->setContext(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/evgenii/jsevaluator/JsEvaluator;

    invoke-direct {v0, p1}, Lcom/evgenii/jsevaluator/JsEvaluator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;->mJsEvaluator:Lcom/evgenii/jsevaluator/JsEvaluator;

    return-void
.end method
