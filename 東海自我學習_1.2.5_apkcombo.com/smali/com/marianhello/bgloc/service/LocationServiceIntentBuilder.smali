.class public Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
.super Ljava/lang/Object;
.source "LocationServiceIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_COMMAND:Ljava/lang/String; = "cmd"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"


# instance fields
.field private mCommand:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static containsCommand(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "cmd"

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static containsMessage(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "msg"

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getCommand(Landroid/content/Intent;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;
    .locals 1

    const-string v0, "cmd"

    .line 196
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    .line 197
    invoke-static {p0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->from(Landroid/os/Bundle;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
    .locals 1

    .line 144
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    const-string v0, "msg"

    .line 201
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3

    .line 177
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mContext:Landroid/content/Context;

    const-class v2, Lcom/marianhello/bgloc/service/LocationServiceImpl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mCommand:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "cmd"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "msg"

    .line 182
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public setCommand(I)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
    .locals 1

    .line 161
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-direct {v0, p1}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(I)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mCommand:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    return-object p0
.end method

.method public setCommand(ILandroid/os/Parcelable;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
    .locals 1

    .line 171
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-direct {v0, p1, p2}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(ILandroid/os/Parcelable;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mCommand:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    return-object p0
.end method

.method public setCommand(ILjava/lang/String;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
    .locals 1

    .line 166
    new-instance v0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-direct {v0, p1, p2}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mCommand:Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;->mMessage:Ljava/lang/String;

    return-object p0
.end method
