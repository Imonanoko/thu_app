.class Lcom/marianhello/bgloc/Config$1;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/marianhello/bgloc/Config;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/Config;
    .locals 2

    .line 195
    new-instance v0, Lcom/marianhello/bgloc/Config;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/Config;-><init>(Landroid/os/Parcel;Lcom/marianhello/bgloc/Config$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/Config$1;->createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/Config;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/marianhello/bgloc/Config;
    .locals 0

    .line 199
    new-array p1, p1, [Lcom/marianhello/bgloc/Config;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/Config$1;->newArray(I)[Lcom/marianhello/bgloc/Config;

    move-result-object p1

    return-object p1
.end method
