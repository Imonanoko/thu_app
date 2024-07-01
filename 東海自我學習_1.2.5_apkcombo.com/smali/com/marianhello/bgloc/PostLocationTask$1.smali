.class Lcom/marianhello/bgloc/PostLocationTask$1;
.super Ljava/lang/Object;
.source "PostLocationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/PostLocationTask;->clearQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/PostLocationTask;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/PostLocationTask;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask$1;->this$0:Lcom/marianhello/bgloc/PostLocationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask$1;->this$0:Lcom/marianhello/bgloc/PostLocationTask;

    invoke-static {v0}, Lcom/marianhello/bgloc/PostLocationTask;->access$000(Lcom/marianhello/bgloc/PostLocationTask;)Lcom/marianhello/bgloc/data/LocationDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/marianhello/bgloc/data/LocationDAO;->deleteUnpostedLocations()I

    return-void
.end method
