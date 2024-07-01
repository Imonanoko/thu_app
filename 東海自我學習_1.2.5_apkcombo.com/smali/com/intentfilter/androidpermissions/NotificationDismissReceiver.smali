.class public Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationDismissReceiver.java"


# static fields
.field private static final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object v0

    sput-object v0, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private showPermissionsDialog(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/intentfilter/androidpermissions/PermissionsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.intentfilter.androidpermissions.PERMISSIONS"

    .line 34
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 35
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.intentfilter.androidpermissions.PERMISSIONS"

    .line 21
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 23
    new-instance v0, Lcom/intentfilter/androidpermissions/helpers/AppStatus;

    invoke-direct {v0, p1}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/intentfilter/androidpermissions/helpers/AppStatus;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;->showPermissionsDialog(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intentfilter/androidpermissions/PermissionManager;->removePendingPermissionRequests(Ljava/util/List;)V

    .line 29
    :goto_0
    sget-object p1, Lcom/intentfilter/androidpermissions/NotificationDismissReceiver;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending permission notification dismissed. Cancelling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    return-void
.end method
