.class Lcom/marianhello/utils/ToneGenerator$2;
.super Ljava/lang/Object;
.source "ToneGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/utils/ToneGenerator;->startTone(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/utils/ToneGenerator;

.field final synthetic val$toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method constructor <init>(Lcom/marianhello/utils/ToneGenerator;Landroid/media/ToneGenerator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/marianhello/utils/ToneGenerator$2;->this$0:Lcom/marianhello/utils/ToneGenerator;

    iput-object p2, p0, Lcom/marianhello/utils/ToneGenerator$2;->val$toneGenerator:Landroid/media/ToneGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/utils/ToneGenerator$2;->val$toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    iget-object v1, p0, Lcom/marianhello/utils/ToneGenerator$2;->this$0:Lcom/marianhello/utils/ToneGenerator;

    invoke-static {v1}, Lcom/marianhello/utils/ToneGenerator;->access$000(Lcom/marianhello/utils/ToneGenerator;)Lorg/slf4j/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Exception while playing tone: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
