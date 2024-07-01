.class public Lcom/intentfilter/androidpermissions/PermissionsActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PermissionsActivity.java"


# static fields
.field static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS"

.field public static final EXTRA_PERMISSIONS_DENIED:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS_DENIED"

.field public static final EXTRA_PERMISSIONS_GRANTED:Ljava/lang/String; = "com.intentfilter.androidpermissions.PERMISSIONS_GRANTED"

.field static final PERMISSIONS_REQUEST_CODE:I = 0x64

.field static final logger:Lcom/intentfilter/androidpermissions/helpers/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/intentfilter/androidpermissions/PermissionsActivity;

    invoke-static {v0}, Lcom/intentfilter/androidpermissions/helpers/Logger;->loggerFor(Ljava/lang/Class;)Lcom/intentfilter/androidpermissions/helpers/Logger;

    move-result-object v0

    sput-object v0, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private sendPermissionResponse([Ljava/lang/String;[I)V
    .locals 4
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 60
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 61
    aget v3, p2, v2

    if-nez v3, :cond_0

    .line 62
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_0
    aget-object v3, p1, v2

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lcom/intentfilter/androidpermissions/services/BroadcastService;

    invoke-direct {p1, p0}, Lcom/intentfilter/androidpermissions/services/BroadcastService;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0, v1}, Lcom/intentfilter/androidpermissions/services/BroadcastService;->broadcastPermissionRequestResult(Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    .line 32
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 39
    array-length p1, p3

    if-eqz p1, :cond_1

    array-length p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestPermissionsResult, sending broadcast for permissions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/intentfilter/androidpermissions/helpers/Logger;->i(Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p2, p3}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->sendPermissionResponse([Ljava/lang/String;[I)V

    .line 53
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->finish()V

    return-void

    .line 40
    :cond_1
    :goto_0
    sget-object p1, Lcom/intentfilter/androidpermissions/PermissionsActivity;->logger:Lcom/intentfilter/androidpermissions/helpers/Logger;

    const-string p2, "Permission request interrupted. Aborting."

    invoke-virtual {p1, p2}, Lcom/intentfilter/androidpermissions/helpers/Logger;->e(Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/intentfilter/androidpermissions/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/intentfilter/androidpermissions/PermissionManager;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "com.intentfilter.androidpermissions.PERMISSIONS"

    invoke-virtual {p2, p3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/intentfilter/androidpermissions/PermissionManager;->removePendingPermissionRequests(Ljava/util/List;)V

    .line 46
    invoke-virtual {p0}, Lcom/intentfilter/androidpermissions/PermissionsActivity;->finish()V

    return-void
.end method
