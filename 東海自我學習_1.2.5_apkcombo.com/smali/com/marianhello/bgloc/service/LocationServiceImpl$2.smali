.class Lcom/marianhello/bgloc/service/LocationServiceImpl$2;
.super Ljava/lang/Object;
.source "LocationServiceImpl.java"

# interfaces
.implements Lcom/marianhello/bgloc/ConnectivityListener;


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

    .line 217
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$2;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasConnectivity()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceImpl$2;->this$0:Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-static {v0}, Lcom/marianhello/bgloc/service/LocationServiceImpl;->access$200(Lcom/marianhello/bgloc/service/LocationServiceImpl;)Z

    move-result v0

    return v0
.end method
