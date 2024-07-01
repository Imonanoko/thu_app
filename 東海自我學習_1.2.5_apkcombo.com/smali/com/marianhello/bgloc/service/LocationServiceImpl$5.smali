.class Lcom/marianhello/bgloc/service/LocationServiceImpl$5;
.super Ljava/lang/Object;
.source "LocationServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;->executeProviderCommand(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

.field final synthetic val$arg1:I

.field final synthetic val$command:I


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;II)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    iput p2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->val$command:I

    iput p3, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->val$arg1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$300(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/provider/LocationProvider;

    move-result-object v0

    iget v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->val$command:I

    iget v2, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$5;->val$arg1:I

    invoke-interface {v0, v1, v2}, Lcom/marianhello/bgloc/provider/LocationProvider;->onCommand(II)V

    return-void
.end method
