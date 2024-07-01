.class Lcom/intentfilter/androidpermissions/PermissionHandler;
.super Ljava/lang/Object;
.source "PermissionHandler.java"


# instance fields
.field private final appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

.field private logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

.field private manager:Lcom/intentfilter/androidpermissions/PermissionManager;

.field private pendingPermissionRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requiredPermissionsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            "Ljava/util/Set;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/intentfilter/androidpermissions/PermissionManager;Landroid/content/Context;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    invoke-direct {v0, p2}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-static {p2}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object p2

    invoke-direct {p0, v0, p2, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;-><init>(Lcom/intentfilter/androidpermissions/helpers/AppStatus;Lcom/intentfilter/androidpermissions/helpers/Logger;Lcom/intentfilter/androidpermissions/PermissionManager;)V

    return-void
.end method

.method constructor <init>(Lcom/intentfilter/androidpermissions/helpers/AppStatus;Lcom/intentfilter/androidpermissions/helpers/Logger;Lcom/intentfilter/androidpermissions/PermissionManager;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    .line 32
    iput-object p2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    .line 33
    iput-object p3, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    .line 34
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    return-void
.end method

.method private filterGrantedPermissions(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v2, v1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionAlreadyGranted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private filterPendingPermissions(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pending, not asking again."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private informPermissionsDenied([Ljava/lang/String;)V
    .locals 7

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 90
    iget-object v4, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 91
    iget-object v6, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 92
    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    invoke-interface {v5}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionDenied()V

    .line 94
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 99
    iget-object v5, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private informPermissionsGranted([Ljava/lang/String;)V
    .locals 5

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 109
    iget-object v3, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 111
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-interface {v2}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    .line 113
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;

    .line 118
    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private registerForBroadcastIfNeeded(Ljava/lang/String;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->registerBroadcastReceiver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->filterGrantedPermissions(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {p2}, Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;->onPermissionGranted()V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->requiredPermissionsMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "com.intentfilter.androidpermissions.PERMISSIONS_REQUEST"

    .line 44
    invoke-direct {p0, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->registerForBroadcastIfNeeded(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->filterPendingPermissions(Ljava/util/Set;)V

    .line 46
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 47
    invoke-virtual {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->requestPermissions(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method invalidatePendingPermissionRequests(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 79
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsDenied([Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->unregisterBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method onPermissionsResult([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsDenied([Ljava/lang/String;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->informPermissionsGranted([Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 57
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 58
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->unregisterBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method requestPermissions(Ljava/util/Set;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No pending foreground permission request for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", asking."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->pendingPermissionRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->appStatus:Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    invoke-virtual {v0}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->startPermissionActivity(Ljava/util/Set;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionHandler;->manager:Lcom/intentfilter/androidpermissions/PermissionManager;

    sget v1, Lcom/intentfilter/androidpermissions/R$string;->title_permission_required:I

    sget v2, Lcom/intentfilter/androidpermissions/R$string;->message_permission_required:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/intentfilter/androidpermissions/PermissionManager;->showPermissionNotification(Ljava/util/Set;II)V

    :goto_0
    return-void
.end method
