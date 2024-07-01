.class Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityRecognitionLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;


# direct methods
.method constructor <init>(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 240
    invoke-static {p2}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getProbableActivities()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 244
    iget-object p2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-static {p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->getProbableActivity(Ljava/util/ArrayList;)Lcom/google/android/gms/location/DetectedActivity;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->access$002(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;Lcom/google/android/gms/location/DetectedActivity;)Lcom/google/android/gms/location/DetectedActivity;

    .line 246
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    iget-object p1, p1, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->logger:Lorg/slf4j/Logger;

    iget-object p2, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-static {p2}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->access$000(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)Lcom/google/android/gms/location/DetectedActivity;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result p2

    invoke-static {p2}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getActivityString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-static {v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->access$000(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Detected activity={} confidence={}"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-static {p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->access$000(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)Lcom/google/android/gms/location/DetectedActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->handleActivity(Lcom/google/android/gms/location/DetectedActivity;)V

    .line 250
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-static {p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->access$000(Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;)Lcom/google/android/gms/location/DetectedActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 251
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    const-string p2, "Detected STILL Activity"

    invoke-virtual {p1, p2}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->showDebugToast(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    const-string p2, "Detected ACTIVE Activity"

    invoke-virtual {p1, p2}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->showDebugToast(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider$1;->this$0:Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;->startTracking()V

    :goto_0
    return-void
.end method
