.class public Lcom/marianhello/bgloc/data/BackgroundActivity;
.super Ljava/lang/Object;
.source "BackgroundActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/marianhello/bgloc/data/BackgroundActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private confidence:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundActivity$1;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/BackgroundActivity$1;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/data/BackgroundActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/marianhello/bgloc/data/BackgroundActivity$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundActivity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/google/android/gms/location/DetectedActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result p1

    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    .line 21
    invoke-virtual {p2}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result p1

    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    return-void
.end method

.method public static getActivityString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v0

    :pswitch_1
    const-string p0, "RUNNING"

    return-object p0

    :pswitch_2
    const-string p0, "WALKING"

    return-object p0

    :pswitch_3
    const-string p0, "TILTING"

    return-object p0

    :pswitch_4
    return-object v0

    :pswitch_5
    const-string p0, "STILL"

    return-object p0

    :pswitch_6
    const-string p0, "ON_FOOT"

    return-object p0

    :pswitch_7
    const-string p0, "ON_BICYCLE"

    return-object p0

    :pswitch_8
    const-string p0, "IN_VEHICLE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    return v0
.end method

.method public setConfidence(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    const-string v2, "confidence"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    invoke-static {v1}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getActivityString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "BackgroundActivity[confidence="

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " type="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    invoke-static {v1}, Lcom/marianhello/bgloc/data/BackgroundActivity;->getActivityString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 96
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->confidence:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundActivity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
