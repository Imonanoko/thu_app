.class Lcom/marianhello/bgloc/sync/SyncAdapter$1;
.super Ljava/lang/Object;
.source "SyncAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/marianhello/bgloc/sync/SyncAdapter;->uploadLocations(Ljava/io/File;Ljava/lang/String;Ljava/util/HashMap;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/sync/SyncAdapter;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/sync/SyncAdapter;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/marianhello/bgloc/sync/SyncAdapter$1;->this$0:Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter$1;->this$0:Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-static {v0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->access$000(Lcom/marianhello/bgloc/sync/SyncAdapter;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Notification cancelledAt: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/SyncAdapter$1;->this$0:Lcom/marianhello/bgloc/sync/SyncAdapter;

    invoke-static {v0}, Lcom/marianhello/bgloc/sync/SyncAdapter;->access$100(Lcom/marianhello/bgloc/sync/SyncAdapter;)Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
