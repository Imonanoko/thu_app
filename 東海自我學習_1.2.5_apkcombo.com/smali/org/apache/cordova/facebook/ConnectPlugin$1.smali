.class Lorg/apache/cordova/facebook/ConnectPlugin$1;
.super Ljava/util/HashSet;
.source "ConnectPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/facebook/ConnectPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "ads_management"

    .line 65
    invoke-virtual {p0, v0}, Lorg/apache/cordova/facebook/ConnectPlugin$1;->add(Ljava/lang/Object;)Z

    const-string v0, "create_event"

    .line 66
    invoke-virtual {p0, v0}, Lorg/apache/cordova/facebook/ConnectPlugin$1;->add(Ljava/lang/Object;)Z

    const-string v0, "rsvp_event"

    .line 67
    invoke-virtual {p0, v0}, Lorg/apache/cordova/facebook/ConnectPlugin$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
