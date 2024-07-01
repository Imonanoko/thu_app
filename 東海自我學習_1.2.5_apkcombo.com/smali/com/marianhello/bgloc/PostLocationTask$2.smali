.class Lcom/marianhello/bgloc/PostLocationTask$2;
.super Ljava/lang/Object;
.source "PostLocationTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/PostLocationTask;->add(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/PostLocationTask;

.field final synthetic val$location:Lcom/marianhello/bgloc/data/BackgroundLocation;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/PostLocationTask;Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/marianhello/bgloc/PostLocationTask$2;->this$0:Lcom/marianhello/bgloc/PostLocationTask;

    iput-object p2, p0, Lcom/marianhello/bgloc/PostLocationTask$2;->val$location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/marianhello/bgloc/PostLocationTask$2;->this$0:Lcom/marianhello/bgloc/PostLocationTask;

    iget-object v1, p0, Lcom/marianhello/bgloc/PostLocationTask$2;->val$location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-static {v0, v1}, Lcom/marianhello/bgloc/PostLocationTask;->access$100(Lcom/marianhello/bgloc/PostLocationTask;Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method
