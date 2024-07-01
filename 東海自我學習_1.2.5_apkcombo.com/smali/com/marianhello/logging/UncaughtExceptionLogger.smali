.class public Lcom/marianhello/logging/UncaughtExceptionLogger;
.super Ljava/lang/Object;
.source "UncaughtExceptionLogger.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile mIsCrashing:Z = false

.field private static sDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class p1, Lcom/marianhello/logging/UncaughtExceptionLogger;

    invoke-static {p1}, Lcom/marianhello/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/logging/UncaughtExceptionLogger;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 31
    instance-of v1, v0, Lcom/marianhello/logging/UncaughtExceptionLogger;

    if-nez v1, :cond_0

    .line 32
    sput-object v0, Lcom/marianhello/logging/UncaughtExceptionLogger;->sDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 33
    new-instance v0, Lcom/marianhello/logging/UncaughtExceptionLogger;

    invoke-direct {v0, p0}, Lcom/marianhello/logging/UncaughtExceptionLogger;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 18
    sget-boolean v0, Lcom/marianhello/logging/UncaughtExceptionLogger;->mIsCrashing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lcom/marianhello/logging/UncaughtExceptionLogger;->mIsCrashing:Z

    .line 23
    iget-object v0, p0, Lcom/marianhello/logging/UncaughtExceptionLogger;->logger:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FATAL EXCEPTION: {}"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/marianhello/logging/UncaughtExceptionLogger;->sDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
