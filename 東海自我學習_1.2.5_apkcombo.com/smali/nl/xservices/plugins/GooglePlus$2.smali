.class Lnl/xservices/plugins/GooglePlus$2;
.super Ljava/lang/Object;
.source "GooglePlus.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/GooglePlus;->disconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/GooglePlus;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/GooglePlus;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lnl/xservices/plugins/GooglePlus$2;->this$0:Lnl/xservices/plugins/GooglePlus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .line 252
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lnl/xservices/plugins/GooglePlus$2;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus$2;->this$0:Lnl/xservices/plugins/GooglePlus;

    invoke-static {p1}, Lnl/xservices/plugins/GooglePlus;->access$000(Lnl/xservices/plugins/GooglePlus;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    const-string v0, "Disconnected user"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_0
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus$2;->this$0:Lnl/xservices/plugins/GooglePlus;

    invoke-static {v0}, Lnl/xservices/plugins/GooglePlus;->access$000(Lnl/xservices/plugins/GooglePlus;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(I)V

    :goto_0
    return-void
.end method
