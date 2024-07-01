.class Lcom/facebook/appevents/ml/ModelManager$3$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager$3;->onCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/ml/ModelManager$3;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/ml/ModelManager$3;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$3$1;->this$0:Lcom/facebook/appevents/ml/ModelManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 212
    invoke-static {}, Lcom/facebook/appevents/restrictivedatafilter/AddressFilterManager;->enable()V

    return-void
.end method
