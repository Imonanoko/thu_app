.class public Lcom/marianhello/utils/ToneGenerator;
.super Ljava/lang/Object;
.source "ToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/utils/ToneGenerator$Tone;
    }
.end annotation


# instance fields
.field private logger:Lorg/slf4j/Logger;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mStreamType:I

.field private mVolume:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/marianhello/utils/ToneGenerator;->mStreamType:I

    .line 30
    iput p2, p0, Lcom/marianhello/utils/ToneGenerator;->mVolume:I

    const/4 p1, 0x1

    .line 31
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/utils/ToneGenerator;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/marianhello/utils/ToneGenerator;)Lorg/slf4j/Logger;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/marianhello/utils/ToneGenerator;->logger:Lorg/slf4j/Logger;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    iget-object v0, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    return-void
.end method

.method public startTone(II)V
    .locals 4

    .line 47
    new-instance v0, Landroid/media/ToneGenerator;

    iget v1, p0, Lcom/marianhello/utils/ToneGenerator;->mStreamType:I

    iget v2, p0, Lcom/marianhello/utils/ToneGenerator;->mVolume:I

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 48
    iget-object v1, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/marianhello/utils/ToneGenerator$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/marianhello/utils/ToneGenerator$1;-><init>(Lcom/marianhello/utils/ToneGenerator;Landroid/media/ToneGenerator;II)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 58
    iget-object p1, p0, Lcom/marianhello/utils/ToneGenerator;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/marianhello/utils/ToneGenerator$2;

    invoke-direct {v1, p0, v0}, Lcom/marianhello/utils/ToneGenerator$2;-><init>(Lcom/marianhello/utils/ToneGenerator;Landroid/media/ToneGenerator;)V

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
