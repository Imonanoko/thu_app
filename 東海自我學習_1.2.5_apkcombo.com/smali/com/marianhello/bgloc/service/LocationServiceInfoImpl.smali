.class public Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;
.super Ljava/lang/Object;
.source "LocationServiceInfoImpl.java"

# interfaces
.implements Lcom/marianhello/bgloc/service/LocationServiceInfo;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getRunningServiceInfo()Landroid/app/ActivityManager$RunningServiceInfo;
    .locals 4

    .line 32
    const-class v0, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const v2, 0x7fffffff

    .line 34
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 35
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isBound()Z
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;->getRunningServiceInfo()Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 26
    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/marianhello/bgloc/service/LocationServiceInfoImpl;->getRunningServiceInfo()Landroid/app/ActivityManager$RunningServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
