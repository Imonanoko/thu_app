.class Lcom/marianhello/bgloc/data/BackgroundActivity$1;
.super Ljava/lang/Object;
.source "BackgroundActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/data/BackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/marianhello/bgloc/data/BackgroundActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundActivity;
    .locals 2

    .line 82
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/marianhello/bgloc/data/BackgroundActivity;-><init>(Landroid/os/Parcel;Lcom/marianhello/bgloc/data/BackgroundActivity$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundActivity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundActivity;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/marianhello/bgloc/data/BackgroundActivity;
    .locals 0

    .line 85
    new-array p1, p1, [Lcom/marianhello/bgloc/data/BackgroundActivity;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundActivity$1;->newArray(I)[Lcom/marianhello/bgloc/data/BackgroundActivity;

    move-result-object p1

    return-object p1
.end method
