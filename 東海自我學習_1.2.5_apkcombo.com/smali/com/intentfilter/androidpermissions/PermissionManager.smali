.class public Lcom/intentfilter/androidpermissions/PermissionManager;
.super Landroid/content/BroadcastReceiver;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;
    }
.end annotation


# static fields
.field private static permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;


# instance fields
.field private context:Landroid/content/Context;

.field private final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

.field private permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-direct {v0, p0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;-><init>(Lcom/intentfilter/androidpermissions/PermissionManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    .line 39
    const-class p1, Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-static {p1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/intentfilter/androidpermissions/PermissionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/intentfilter/androidpermissions/PermissionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    .line 46
    :cond_0
    sget-object p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionManager:Lcom/intentfilter/androidpermissions/PermissionManager;

    return-object p0
.end method

.method private logPermissionsResponse([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "Received broadcast response for permission(s). \nGranted: %s\nDenied: %s"

    .line 107
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private notificationDismissIntent(Ljava/util/Set;)Landroid/app/PendingIntent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const-class v2, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v1, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const/16 v1, 0x64

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    const-class v2, Lcom/intentfilter/androidpermissions/PermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v2, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    .line 50
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->checkPermissions(Ljava/util/Collection;Lcom/intentfilter/androidpermissions/PermissionManager$PermissionRequestListener;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED"

    .line 55
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.intentfilter.androidpermissions.PERMISSIONS_DENIED"

    .line 56
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionManager;->logPermissionsResponse([Ljava/lang/String;[Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1, p2}, Lcom/intentfilter/androidpermissions/PermissionHandler;->onPermissionsResult([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method permissionAlreadyGranted(Ljava/lang/String;)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method registerBroadcastReceiver(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string v1, "Registering for PERMISSIONS_REQUEST broadcast"

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method removePendingPermissionRequests(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionHandler:Lcom/intentfilter/androidpermissions/PermissionHandler;

    invoke-virtual {v0, p1}, Lcom/intentfilter/androidpermissions/PermissionHandler;->invalidatePendingPermissionRequests(Ljava/util/Collection;)V

    return-void
.end method

.method showPermissionNotification(Ljava/util/Set;II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/intentfilter/androidpermissions/services/NotificationService;

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/intentfilter/androidpermissions/services/NotificationService;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->notificationDismissIntent(Ljava/util/Set;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 68
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/intentfilter/androidpermissions/services/NotificationService;->buildNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p2

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Set;->hashCode()I

    move-result p1

    invoke-virtual {v0, p3, p1, p2}, Lcom/intentfilter/androidpermissions/services/NotificationService;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method startPermissionActivity(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->permissionActivityIntent(Ljava/util/Set;)Landroid/content/Intent;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string v1, "Un-registering for PERMISSIONS_REQUEST broadcast"

    invoke-virtual {v0, v1}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/intentfilter/androidpermissions/PermissionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
