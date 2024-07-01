.class public Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;
.super Ljava/lang/Object;
.source "LocationServiceIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Command"
.end annotation


# static fields
.field private static final ARGUMENT_TYPE_MISSING:I = 0x0

.field private static final ARGUMENT_TYPE_PARCELABLE:I = 0x2

.field private static final ARGUMENT_TYPE_STRING:I = 0x1

.field private static final KEY_COMMAND_ARGUMENT:Ljava/lang/String; = "cmd_arg"

.field private static final KEY_COMMAND_ARGUMENT_TYPE:Ljava/lang/String; = "cmd_arg_type"

.field private static final KEY_COMMAND_ID:Ljava/lang/String; = "cmd_id"


# instance fields
.field private mArgType:I

.field private final mCommandId:I

.field private mParcelableArg:Landroid/os/Parcelable;

.field private mStringArg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    .line 80
    iput p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mCommandId:I

    return-void
.end method

.method public constructor <init>(ILandroid/os/Parcelable;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    .line 90
    iput p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mCommandId:I

    .line 91
    iput-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mParcelableArg:Landroid/os/Parcelable;

    const/4 p1, 0x2

    .line 92
    iput p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    .line 84
    iput p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mCommandId:I

    .line 85
    iput-object p2, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mStringArg:Ljava/lang/String;

    const/4 p1, 0x1

    .line 86
    iput p1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    return-void
.end method

.method public static from(Landroid/os/Bundle;)Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;
    .locals 4

    const-string v0, "cmd_id"

    .line 128
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cmd_arg_type"

    .line 129
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "cmd_arg"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 132
    new-instance v1, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 136
    new-instance v1, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(ILandroid/os/Parcelable;)V

    return-object v1

    .line 139
    :cond_1
    new-instance p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;

    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;-><init>(I)V

    return-object p0
.end method


# virtual methods
.method public getArgument()Ljava/lang/Object;
    .locals 2

    .line 100
    iget v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mArgType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mParcelableArg:Landroid/os/Parcelable;

    return-object v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mStringArg:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mCommandId:I

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    iget v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mCommandId:I

    const-string v2, "cmd_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mStringArg:Ljava/lang/String;

    const-string v2, "cmd_arg"

    const-string v3, "cmd_arg_type"

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mStringArg:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mParcelableArg:Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 118
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    iget-object v1, p0, Lcom/marianhello/bgloc/service/LocationServiceIntentBuilder$Command;->mParcelableArg:Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method
