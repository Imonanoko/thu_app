.class public Lcom/marianhello/bgloc/sync/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"

# interfaces
.implements Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;


# static fields
.field private static final NOTIFICATION_ID:I = 0x29a


# instance fields
.field private batchManager:Lcom/marianhello/bgloc/sync/BatchManager;

.field private configDAO:Lcom/marianhello/bgloc/data/ConfigurationDAO;

.field contentResolver:Landroid/content/ContentResolver;

.field private logger:Lorg/slf4j/Logger;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/marianhello/bgloc/sync/SyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x1

    .line 42
    iput-boolean p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationsEnabled:Z

    .line 65
    const-class p2, Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-static {p2}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    iput-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 72
    invoke-static {p1}, Lcom/marianhello/bgloc/data/DAOFactory;->createConfigurationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/ConfigurationDAO;

    move-result-object p2

    iput-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->configDAO:Lcom/marianhello/bgloc/data/ConfigurationDAO;

    .line 73
    new-instance p2, Lcom/marianhello/bgloc/sync/BatchManager;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/marianhello/bgloc/sync/BatchManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->batchManager:Lcom/marianhello/bgloc/sync/BatchManager;

    .line 74
    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "notification"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    .line 76
    invoke-static {p1}, Lcom/marianhello/bgloc/sync/NotificationHelper;->registerSyncChannel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/bgloc/sync/SyncAdapter;)Lorg/slf4j/Logger;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/marianhello/bgloc/sync/SyncAdapter;)Landroid/app/NotificationManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method private broadcastMessage(Landroid/os/Bundle;)V
    .locals 2

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, ".broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private uploadLocations(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 9

    const-string v0, "Syncing endAt: {}"

    .line 146
    iget-boolean v1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationsEnabled:Z

    const/16 v2, 0x29a

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "syncservice"

    invoke-direct {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "Syncing locations"

    .line 149
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v4, "Sync in progress"

    .line 150
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v4, 0x108009b

    .line 151
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    iget-object v4, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v4, 0x1388

    const/4 v6, 0x0

    .line 156
    :try_start_0
    invoke-static {p2, p1, p3, p0}, Lcom/marianhello/bgloc/HttpPostService;->postJSONFile(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;Lcom/marianhello/bgloc/HttpPostService$UploadingProgressListener;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_1

    const/16 p2, 0x12c

    if-ge p1, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/16 p3, 0x11d

    const-string v7, "action"

    if-ne p1, p3, :cond_2

    .line 164
    :try_start_1
    iget-object p3, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string v8, "Location was sent to the server, and received an \"HTTP 285 Updates Not Required\""

    invoke-interface {p3, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 166
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/16 v8, 0x6a

    .line 167
    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 168
    invoke-direct {p0, p3}, Lcom/marianhello/bgloc/sync/SyncAdapter;->broadcastMessage(Landroid/os/Bundle;)V

    :cond_2
    const/16 p3, 0x191

    if-ne p1, p3, :cond_3

    .line 172
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/16 p3, 0x6b

    .line 173
    invoke-virtual {p1, v7, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/sync/SyncAdapter;->broadcastMessage(Landroid/os/Bundle;)V

    :cond_3
    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    const-string p1, "Sync completed"

    .line 179
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    :cond_4
    const-string p1, "Sync failed due server error"

    .line 181
    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_6

    .line 195
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    invoke-virtual {v1, v6, v6, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 198
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    new-instance p3, Lcom/marianhello/bgloc/sync/SyncAdapter$1;

    invoke-direct {p3, p0}, Lcom/marianhello/bgloc/sync/SyncAdapter$1;-><init>(Lcom/marianhello/bgloc/sync/SyncAdapter;)V

    invoke-virtual {p1, p3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 187
    :try_start_2
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string p3, "Error uploading locations: {}"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, p3, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sync failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_7
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    .line 195
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    invoke-virtual {v1, v6, v6, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 198
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    new-instance p2, Lcom/marianhello/bgloc/sync/SyncAdapter$1;

    invoke-direct {p2, p0}, Lcom/marianhello/bgloc/sync/SyncAdapter$1;-><init>(Lcom/marianhello/bgloc/sync/SyncAdapter;)V

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return v6

    .line 192
    :goto_3
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    .line 195
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    invoke-virtual {v1, v6, v6, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 198
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p2, v2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 200
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    new-instance p3, Lcom/marianhello/bgloc/sync/SyncAdapter$1;

    invoke-direct {p3, p0}, Lcom/marianhello/bgloc/sync/SyncAdapter$1;-><init>(Lcom/marianhello/bgloc/sync/SyncAdapter;)V

    invoke-virtual {p2, p3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    :cond_9
    throw p1
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 5

    const/4 p1, 0x0

    .line 94
    :try_start_0
    iget-object p3, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->configDAO:Lcom/marianhello/bgloc/data/ConfigurationDAO;

    invoke-interface {p3}, Lcom/marianhello/bgloc/data/ConfigurationDAO;->retrieveConfiguration()Lcom/marianhello/bgloc/Config;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 96
    iget-object p4, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Error retrieving config: {}"

    invoke-interface {p4, v0, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p3, p1

    :goto_0
    if-eqz p3, :cond_7

    .line 99
    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->hasValidSyncUrl()Z

    move-result p4

    if-nez p4, :cond_0

    goto/16 :goto_5

    .line 104
    :cond_0
    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->hasNotificationsEnabled()Z

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p4, 0x1

    :goto_2
    iput-boolean p4, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationsEnabled:Z

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v2, "force"

    .line 107
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    .line 108
    :cond_3
    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 109
    :goto_3
    iget-object v3, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v4, v1

    aput-object p4, v4, v0

    const/4 p2, 0x2

    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p2

    const-string p2, "Sync request isForced: {}, batchId: {}, config: {}"

    invoke-interface {v3, p2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :try_start_1
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->batchManager:Lcom/marianhello/bgloc/sync/BatchManager;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v1

    invoke-virtual {p2, p4, v0, v1}, Lcom/marianhello/bgloc/sync/BatchManager;->createBatch(Ljava/lang/Long;Ljava/lang/Integer;Lcom/marianhello/bgloc/data/LocationTemplate;)Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 115
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Failed to create batch: {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    if-nez p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string p2, "Nothing to sync"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_4
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string v0, "Syncing startAt: {}"

    invoke-interface {p2, v0, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object p2

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    invoke-virtual {p3}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 127
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "x-batch-id"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->uploadLocations(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 130
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string p3, "Batch sync successful"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->batchManager:Lcom/marianhello/bgloc/sync/BatchManager;

    invoke-virtual {p2, p4}, Lcom/marianhello/bgloc/sync/BatchManager;->setBatchCompleted(Ljava/lang/Long;)V

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 133
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Batch file has been deleted: {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 135
    :cond_5
    iget-object p2, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Batch file has not been deleted: {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 138
    :cond_6
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    const-string p2, "Batch sync failed due server error"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 139
    iget-object p1, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 p4, 0x1

    add-long/2addr p2, p4

    iput-wide p2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    :cond_7
    :goto_5
    return-void
.end method

.method public onProgress(I)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->logger:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Syncing progress: {} updatedAt: {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    iget-boolean v0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "syncservice"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "Syncing locations"

    .line 220
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "Sync in progress"

    .line 221
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x108009b

    .line 222
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 223
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 224
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x29a

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method
