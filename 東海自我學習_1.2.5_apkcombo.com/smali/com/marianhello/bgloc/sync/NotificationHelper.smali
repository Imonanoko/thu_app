.class public Lcom/marianhello/bgloc/sync/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;
    }
.end annotation


# static fields
.field public static final ANDROID_PERMISSIONS_CHANNEL_ID:Ljava/lang/String; = "android-permissions"

.field public static final SERVICE_CHANNEL_ID:Ljava/lang/String; = "bglocservice"

.field public static final SYNC_CHANNEL_DESCRIPTION:Ljava/lang/String; = "Shows sync progress"

.field public static final SYNC_CHANNEL_ID:Ljava/lang/String; = "syncservice"

.field public static final SYNC_CHANNEL_NAME:Ljava/lang/String; = "Sync Service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAndroidPermissionsChannel(Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 137
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "android-permissions"

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 138
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object v0
.end method

.method public static createServiceChannel(Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 122
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "bglocservice"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 123
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object v0
.end method

.method public static createSyncChannel()Landroid/app/NotificationChannel;
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 129
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "syncservice"

    const-string v2, "Sync Service"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Shows sync progress"

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    return-object v0
.end method

.method public static registerAllChannels(Landroid/content/Context;)V
    .locals 2

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {p0}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/ResourceResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 95
    invoke-static {v0}, Lcom/marianhello/bgloc/sync/NotificationHelper;->createServiceChannel(Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 96
    invoke-static {}, Lcom/marianhello/bgloc/sync/NotificationHelper;->createSyncChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 97
    invoke-static {v0}, Lcom/marianhello/bgloc/sync/NotificationHelper;->createAndroidPermissionsChannel(Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static registerServiceChannel(Landroid/content/Context;)V
    .locals 2

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 103
    invoke-static {p0}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object v0

    const-string v1, "app_name"

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/ResourceResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 106
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 107
    invoke-static {v0}, Lcom/marianhello/bgloc/sync/NotificationHelper;->createServiceChannel(Ljava/lang/CharSequence;)Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public static registerSyncChannel(Landroid/content/Context;)V
    .locals 2

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 116
    invoke-static {}, Lcom/marianhello/bgloc/sync/NotificationHelper;->createSyncChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method
