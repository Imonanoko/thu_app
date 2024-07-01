.class Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;
.super Ljava/lang/Object;
.source "JsEvaluatorTaskRunner.java"

# interfaces
.implements Lcom/evgenii/jsevaluator/interfaces/JsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;->runTask(Lcom/marianhello/bgloc/headless/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;

.field final synthetic val$task:Lcom/marianhello/bgloc/headless/Task;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;Lcom/marianhello/bgloc/headless/Task;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;->this$0:Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner;

    iput-object p2, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;->val$task:Lcom/marianhello/bgloc/headless/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;->val$task:Lcom/marianhello/bgloc/headless/Task;

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/headless/Task;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/marianhello/bgloc/cordova/headless/JsEvaluatorTaskRunner$1;->val$task:Lcom/marianhello/bgloc/headless/Task;

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/headless/Task;->onResult(Ljava/lang/String;)V

    return-void
.end method
