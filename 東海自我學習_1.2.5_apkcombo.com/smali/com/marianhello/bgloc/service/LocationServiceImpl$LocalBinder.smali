.class public Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;
.super Landroid/os/Binder;
.source "LocationServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/marianhello/bgloc/service/LocationServiceImpl;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$LocalBinder;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    return-object v0
.end method
