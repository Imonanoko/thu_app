.class Lcom/journeyapps/barcodescanner/RotationListener$1;
.super Landroid/view/OrientationEventListener;
.source "RotationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/RotationListener;->listen(Landroid/content/Context;Lcom/journeyapps/barcodescanner/RotationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/RotationListener;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/RotationListener;Landroid/content/Context;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/RotationListener;->access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/RotationListener;->access$100(Lcom/journeyapps/barcodescanner/RotationListener;)Lcom/journeyapps/barcodescanner/RotationCallback;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/RotationListener;->access$000(Lcom/journeyapps/barcodescanner/RotationListener;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 47
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/RotationListener;->access$200(Lcom/journeyapps/barcodescanner/RotationListener;)I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/RotationListener$1;->this$0:Lcom/journeyapps/barcodescanner/RotationListener;

    invoke-static {v1, p1}, Lcom/journeyapps/barcodescanner/RotationListener;->access$202(Lcom/journeyapps/barcodescanner/RotationListener;I)I

    .line 49
    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/RotationCallback;->onRotationChanged(I)V

    :cond_0
    return-void
.end method
