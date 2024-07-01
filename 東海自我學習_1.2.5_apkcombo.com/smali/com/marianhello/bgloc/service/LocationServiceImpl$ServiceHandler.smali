.class Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "LocationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;Landroid/os/Looper;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$ServiceHandler;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
