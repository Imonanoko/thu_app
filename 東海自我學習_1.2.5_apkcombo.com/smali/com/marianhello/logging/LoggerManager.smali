.class public Lcom/marianhello/logging/LoggerManager;
.super Ljava/lang/Object;
.source "LoggerManager.java"


# static fields
.field public static final SQLITE_APPENDER_NAME:Ljava/lang/String; = "sqlite"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    .line 25
    invoke-virtual {v0}, Lch/qos/logback/classic/LoggerContext;->reset()V

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lch/qos/logback/classic/LoggerContext;->setPackagingDataEnabled(Z)V

    .line 30
    new-instance v1, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;

    invoke-direct {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;-><init>()V

    .line 31
    invoke-virtual {v1, v0}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setContext(Lch/qos/logback/core/Context;)V

    const-string v2, "%msg"

    .line 32
    invoke-virtual {v1, v2}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->setPattern(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lch/qos/logback/classic/encoder/PatternLayoutEncoder;->start()V

    .line 35
    new-instance v2, Lch/qos/logback/classic/android/LogcatAppender;

    invoke-direct {v2}, Lch/qos/logback/classic/android/LogcatAppender;-><init>()V

    .line 36
    invoke-virtual {v2, v0}, Lch/qos/logback/classic/android/LogcatAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 37
    invoke-virtual {v2, v1}, Lch/qos/logback/classic/android/LogcatAppender;->setEncoder(Lch/qos/logback/classic/encoder/PatternLayoutEncoder;)V

    .line 38
    invoke-virtual {v2}, Lch/qos/logback/classic/android/LogcatAppender;->start()V

    const-string v0, "ROOT"

    .line 40
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    .line 41
    sget-object v1, Lch/qos/logback/classic/Level;->TRACE:Lch/qos/logback/classic/Level;

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    .line 42
    invoke-virtual {v0, v2}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableDBLogging()V
    .locals 2

    const-string v0, "ROOT"

    .line 59
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    const-string v1, "sqlite"

    .line 60
    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Lch/qos/logback/core/Appender;->stop()V

    .line 63
    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->detachAppender(Lch/qos/logback/core/Appender;)Z

    :cond_0
    return-void
.end method

.method public static enableDBLogging()V
    .locals 4

    const-string v0, "ROOT"

    .line 46
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    const-string v1, "sqlite"

    .line 47
    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v2

    if-nez v2, :cond_0

    .line 48
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/LoggerContext;

    .line 49
    new-instance v3, Lch/qos/logback/classic/android/SQLiteAppender;

    invoke-direct {v3}, Lch/qos/logback/classic/android/SQLiteAppender;-><init>()V

    .line 50
    invoke-virtual {v3, v1}, Lch/qos/logback/classic/android/SQLiteAppender;->setName(Ljava/lang/String;)V

    const-string v1, "7 days"

    .line 51
    invoke-virtual {v3, v1}, Lch/qos/logback/classic/android/SQLiteAppender;->setMaxHistory(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v3, v2}, Lch/qos/logback/classic/android/SQLiteAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 53
    invoke-virtual {v3}, Lch/qos/logback/classic/android/SQLiteAppender;->start()V

    .line 54
    invoke-virtual {v0, v3}, Lch/qos/logback/classic/Logger;->addAppender(Lch/qos/logback/core/Appender;)V

    :cond_0
    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;
    .locals 0

    .line 68
    invoke-static {p0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p0

    return-object p0
.end method
