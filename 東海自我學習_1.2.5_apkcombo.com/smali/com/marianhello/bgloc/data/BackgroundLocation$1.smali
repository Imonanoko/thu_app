.class Lcom/marianhello/bgloc/data/BackgroundLocation$1;
.super Ljava/lang/Object;
.source "BackgroundLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/data/BackgroundLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/marianhello/bgloc/data/BackgroundLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 0

    .line 232
    invoke-static {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->access$000(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 0

    .line 235
    new-array p1, p1, [Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation$1;->newArray(I)[Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    return-object p1
.end method
