.class Lcom/marianhello/bgloc/service/LocationServiceImpl$1;
.super Ljava/lang/Object;
.source "LocationServiceImpl.java"

# interfaces
.implements Lcom/marianhello/bgloc/PostLocationTask$PostLocationTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/service/LocationServiceImpl;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/service/LocationServiceImpl;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHttpAuthorizationUpdates()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->handleHttpAuthorizationUpdates()V

    return-void
.end method

.method public onRequestedAbortUpdates()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->handleRequestedAbortUpdates()V

    return-void
.end method

.method public onSyncRequested()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$000(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$1;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v1}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$100(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/marianhello/bgloc/ResourceResolver;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/marianhello/bgloc/sync/SyncService;->sync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    return-void
.end method
