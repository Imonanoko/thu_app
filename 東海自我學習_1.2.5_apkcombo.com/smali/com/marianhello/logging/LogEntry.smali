.class public Lcom/marianhello/logging/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# instance fields
.field private context:Ljava/lang/Integer;

.field private id:Ljava/lang/Integer;

.field private level:Ljava/lang/String;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private stackTrace:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Integer;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->context:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->stackTrace:Ljava/util/Collection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->stackTrace:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public hasStackTrace()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/marianhello/logging/LogEntry;->stackTrace:Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setContext(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->context:Ljava/lang/Integer;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->level:Ljava/lang/String;

    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->loggerName:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->message:Ljava/lang/String;

    return-void
.end method

.method public setStackTrace(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->stackTrace:Ljava/util/Collection;

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/marianhello/logging/LogEntry;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->id:Ljava/lang/Integer;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->context:Ljava/lang/Integer;

    const-string v2, "context"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->level:Ljava/lang/String;

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->message:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->timestamp:Ljava/lang/Long;

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/marianhello/logging/LogEntry;->loggerName:Ljava/lang/String;

    const-string v2, "logger"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    invoke-virtual {p0}, Lcom/marianhello/logging/LogEntry;->hasStackTrace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/marianhello/logging/LogEntry;->getStackTrace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stackTrace"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
