.class public Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/sync/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationFactory"
.end annotation


# instance fields
.field private logger:Lorg/slf4j/Logger;

.field private mContext:Landroid/content/Context;

.field private mResolver:Lcom/marianhello/bgloc/ResourceResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {p1}, Lcom/marianhello/bgloc/ResourceResolver;->newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    .line 36
    const-class p1, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;

    invoke-static {p1}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private parseNotificationIconColor(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->logger:Lorg/slf4j/Logger;

    const-string v0, "Couldn\'t parse color from android options"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mContext:Landroid/content/Context;

    const-string v3, "bglocservice"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 58
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz p4, :cond_0

    .line 59
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    invoke-virtual {p1, p4}, Lcom/marianhello/bgloc/ResourceResolver;->getDrawable(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    :cond_0
    const p1, 0x1080047

    .line 62
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :goto_0
    if-eqz p3, :cond_1

    .line 64
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->mResolver:Lcom/marianhello/bgloc/ResourceResolver;

    invoke-virtual {p2, p3}, Lcom/marianhello/bgloc/ResourceResolver;->getDrawable(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_1
    if-eqz p5, :cond_2

    .line 67
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    invoke-direct {p0, p5}, Lcom/marianhello/bgloc/sync/NotificationHelper$NotificationFactory;->parseNotificationIconColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 72
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const/high16 p2, 0x20020000

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p3, 0x4000000

    .line 78
    invoke-static {v0, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 79
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    :cond_3
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 83
    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x62

    iput p2, p1, Landroid/app/Notification;->flags:I

    return-object p1
.end method
