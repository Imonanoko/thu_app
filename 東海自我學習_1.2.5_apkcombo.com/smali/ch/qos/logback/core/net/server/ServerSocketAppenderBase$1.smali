.class Lch/qos/logback/core/net/server/ServerSocketAppenderBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lch/qos/logback/core/net/server/ClientVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch/qos/logback/core/net/server/ServerSocketAppenderBase;->append(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/net/server/ClientVisitor<",
        "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/core/net/server/ServerSocketAppenderBase;

.field final synthetic val$serEvent:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lch/qos/logback/core/net/server/ServerSocketAppenderBase;Ljava/io/Serializable;)V
    .locals 0

    iput-object p1, p0, Lch/qos/logback/core/net/server/ServerSocketAppenderBase$1;->this$0:Lch/qos/logback/core/net/server/ServerSocketAppenderBase;

    iput-object p2, p0, Lch/qos/logback/core/net/server/ServerSocketAppenderBase$1;->val$serEvent:Ljava/io/Serializable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visit(Lch/qos/logback/core/net/server/Client;)V
    .locals 0

    check-cast p1, Lch/qos/logback/core/net/server/RemoteReceiverClient;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/server/ServerSocketAppenderBase$1;->visit(Lch/qos/logback/core/net/server/RemoteReceiverClient;)V

    return-void
.end method

.method public visit(Lch/qos/logback/core/net/server/RemoteReceiverClient;)V
    .locals 1

    iget-object v0, p0, Lch/qos/logback/core/net/server/ServerSocketAppenderBase$1;->val$serEvent:Ljava/io/Serializable;

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/server/RemoteReceiverClient;->offer(Ljava/io/Serializable;)Z

    return-void
.end method
