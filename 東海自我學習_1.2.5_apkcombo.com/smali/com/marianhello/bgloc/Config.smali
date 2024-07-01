.class public Lcom/marianhello/bgloc/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTIVITY_PROVIDER:I = 0x1

.field public static final BUNDLE_KEY:Ljava/lang/String; = "config"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/marianhello/bgloc/Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTANCE_FILTER_PROVIDER:I = 0x0

.field public static final NullString:Ljava/lang/String;

.field public static final RAW_PROVIDER:I = 0x2


# instance fields
.field private activitiesInterval:Ljava/lang/Integer;

.field private debug:Ljava/lang/Boolean;

.field private desiredAccuracy:Ljava/lang/Integer;

.field private distanceFilter:Ljava/lang/Integer;

.field private fastestInterval:Ljava/lang/Integer;

.field private httpHeaders:Ljava/util/HashMap;

.field private interval:Ljava/lang/Integer;

.field private locationProvider:Ljava/lang/Integer;

.field private maxLocations:Ljava/lang/Integer;

.field private notificationIconColor:Ljava/lang/String;

.field private notificationIconLarge:Ljava/lang/String;

.field private notificationIconSmall:Ljava/lang/String;

.field private notificationText:Ljava/lang/String;

.field private notificationTitle:Ljava/lang/String;

.field private notificationsEnabled:Ljava/lang/Boolean;

.field private startForeground:Ljava/lang/Boolean;

.field private startOnBoot:Ljava/lang/Boolean;

.field private stationaryRadius:Ljava/lang/Float;

.field private stopOnStillActivity:Ljava/lang/Boolean;

.field private stopOnTerminate:Ljava/lang/Boolean;

.field private syncThreshold:Ljava/lang/Integer;

.field private syncUrl:Ljava/lang/String;

.field private template:Lcom/marianhello/bgloc/data/LocationTemplate;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/Config;->NullString:Ljava/lang/String;

    .line 192
    new-instance v0, Lcom/marianhello/bgloc/Config$1;

    invoke-direct {v0}, Lcom/marianhello/bgloc/Config$1;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setStationaryRadius(F)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setDistanceFilter(Ljava/lang/Integer;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setDesiredAccuracy(Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setDebugging(Ljava/lang/Boolean;)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationTitle(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationText(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setLargeNotificationIcon(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setSmallNotificationIcon(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationIconColor(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setStopOnTerminate(Ljava/lang/Boolean;)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setStartOnBoot(Ljava/lang/Boolean;)V

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setStartForeground(Ljava/lang/Boolean;)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setNotificationsEnabled(Ljava/lang/Boolean;)V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setLocationProvider(Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setInterval(Ljava/lang/Integer;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setFastestInterval(Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/marianhello/bgloc/Config;->setActivitiesInterval(Ljava/lang/Integer;)V

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setStopOnStillActivity(Ljava/lang/Boolean;)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setUrl(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setSyncUrl(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setSyncThreshold(Ljava/lang/Integer;)V

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setMaxLocations(Ljava/lang/Integer;)V

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "httpHeaders"

    .line 124
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/Config;->setHttpHeaders(Ljava/util/HashMap;)V

    const-string v0, "template"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/marianhello/bgloc/data/LocationTemplate;

    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/Config;->setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/marianhello/bgloc/Config$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/Config;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/marianhello/bgloc/Config;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    .line 73
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    .line 74
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    .line 75
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    .line 76
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    .line 77
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    .line 78
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    .line 82
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    .line 83
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    .line 84
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    .line 85
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    .line 86
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    .line 87
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    .line 88
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    .line 89
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    .line 90
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    .line 93
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/marianhello/utils/CloneHelper;->deepCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    .line 94
    iget-object v0, p1, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    .line 95
    iget-object p1, p1, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    instance-of v0, p1, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;->clone()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    :cond_0
    return-void
.end method

.method public static fromByteArray([B)Lcom/marianhello/bgloc/Config;
    .locals 3

    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 649
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 650
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 651
    sget-object p0, Lcom/marianhello/bgloc/Config;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/marianhello/bgloc/Config;

    return-object p0
.end method

.method public static getDefault()Lcom/marianhello/bgloc/Config;
    .locals 6

    .line 129
    new-instance v0, Lcom/marianhello/bgloc/Config;

    invoke-direct {v0}, Lcom/marianhello/bgloc/Config;-><init>()V

    const/high16 v1, 0x42480000    # 50.0f

    .line 130
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    const/16 v1, 0x1f4

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    const/16 v1, 0x64

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 133
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    const-string v4, "Background tracking"

    .line 134
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    const-string v4, "ENABLED"

    .line 135
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    const-string v4, ""

    .line 136
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    .line 137
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    .line 138
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    const v2, 0x927c0

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    const v2, 0x1d4c0

    .line 141
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    const/16 v2, 0x2710

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    const/4 v5, 0x1

    .line 143
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    .line 144
    iput-object v3, v0, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    .line 145
    iput-object v5, v0, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    .line 146
    iput-object v5, v0, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    .line 147
    iput-object v5, v0, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    .line 148
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    .line 149
    iput-object v4, v0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    .line 150
    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 151
    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    .line 152
    iput-object v2, v0, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    .line 153
    iput-object v1, v0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    return-object v0
.end method

.method public static merge(Lcom/marianhello/bgloc/Config;Lcom/marianhello/bgloc/Config;)Lcom/marianhello/bgloc/Config;
    .locals 1

    .line 569
    new-instance v0, Lcom/marianhello/bgloc/Config;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/Config;-><init>(Lcom/marianhello/bgloc/Config;)V

    .line 571
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasStationaryRadius()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 572
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setStationaryRadius(F)V

    .line 574
    :cond_0
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasDistanceFilter()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 575
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setDistanceFilter(Ljava/lang/Integer;)V

    .line 577
    :cond_1
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasDesiredAccuracy()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 578
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setDesiredAccuracy(Ljava/lang/Integer;)V

    .line 580
    :cond_2
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasDebug()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 581
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setDebugging(Ljava/lang/Boolean;)V

    .line 583
    :cond_3
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasNotificationTitle()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 584
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setNotificationTitle(Ljava/lang/String;)V

    .line 586
    :cond_4
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasNotificationText()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 587
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setNotificationText(Ljava/lang/String;)V

    .line 589
    :cond_5
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasStopOnTerminate()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 590
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setStopOnTerminate(Ljava/lang/Boolean;)V

    .line 592
    :cond_6
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasStartOnBoot()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 593
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStartOnBoot()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setStartOnBoot(Ljava/lang/Boolean;)V

    .line 595
    :cond_7
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasLocationProvider()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 596
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setLocationProvider(Ljava/lang/Integer;)V

    .line 598
    :cond_8
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasInterval()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 599
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setInterval(Ljava/lang/Integer;)V

    .line 601
    :cond_9
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasFastestInterval()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 602
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setFastestInterval(Ljava/lang/Integer;)V

    .line 604
    :cond_a
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasActivitiesInterval()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 605
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setActivitiesInterval(Ljava/lang/Integer;)V

    .line 607
    :cond_b
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasNotificationIconColor()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 608
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setNotificationIconColor(Ljava/lang/String;)V

    .line 610
    :cond_c
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasLargeNotificationIcon()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 611
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setLargeNotificationIcon(Ljava/lang/String;)V

    .line 613
    :cond_d
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasSmallNotificationIcon()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 614
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setSmallNotificationIcon(Ljava/lang/String;)V

    .line 616
    :cond_e
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasStartForeground()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 617
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setStartForeground(Ljava/lang/Boolean;)V

    .line 619
    :cond_f
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasNotificationsEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 620
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setNotificationsEnabled(Ljava/lang/Boolean;)V

    .line 622
    :cond_10
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasStopOnStillActivity()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 623
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setStopOnStillActivity(Ljava/lang/Boolean;)V

    .line 625
    :cond_11
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasUrl()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 626
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setUrl(Ljava/lang/String;)V

    .line 628
    :cond_12
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasSyncUrl()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 629
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setSyncUrl(Ljava/lang/String;)V

    .line 631
    :cond_13
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasSyncThreshold()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 632
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setSyncThreshold(Ljava/lang/Integer;)V

    .line 634
    :cond_14
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasHttpHeaders()Z

    move-result p0

    if-eqz p0, :cond_15

    .line 635
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setHttpHeaders(Ljava/util/HashMap;)V

    .line 637
    :cond_15
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasMaxLocations()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 638
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getMaxLocations()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setMaxLocations(Ljava/lang/Integer;)V

    .line 640
    :cond_16
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->hasTemplate()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 641
    invoke-virtual {p1}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/Config;->setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V

    :cond_17
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivitiesInterval()Ljava/lang/Integer;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDesiredAccuracy()Ljava/lang/Integer;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistanceFilter()Ljava/lang/Integer;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFastestInterval()Ljava/lang/Integer;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getHttpHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->hasHttpHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInterval()Ljava/lang/Integer;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLargeNotificationIcon()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationProvider()Ljava/lang/Integer;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMaxLocations()Ljava/lang/Integer;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationIconColor()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationsEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSmallNotificationIcon()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getStartForeground()Ljava/lang/Boolean;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStartOnBoot()Ljava/lang/Boolean;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStationaryRadius()Ljava/lang/Float;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    return-object v0
.end method

.method public getStopOnStillActivity()Ljava/lang/Boolean;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStopOnTerminate()Ljava/lang/Boolean;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSyncThreshold()Ljava/lang/Integer;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSyncUrl()Ljava/lang/String;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1

    .line 514
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->hasTemplate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-static {}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->getDefault()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasActivitiesInterval()Z
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDebug()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDesiredAccuracy()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDistanceFilter()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFastestInterval()Z
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttpHeaders()Z
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInterval()Z
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLargeNotificationIcon()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocationProvider()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxLocations()Z
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationIconColor()Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationText()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationTitle()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationsEnabled()Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSmallNotificationIcon()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartForeground()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStartOnBoot()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStationaryRadius()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStopOnStillActivity()Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStopOnTerminate()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSyncThreshold()Z
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSyncUrl()Z
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTemplate()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidSyncUrl()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidUrl()Z
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDebugging()Ljava/lang/Boolean;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setActivitiesInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->activitiesInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setDebugging(Ljava/lang/Boolean;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->debug:Ljava/lang/Boolean;

    return-void
.end method

.method public setDesiredAccuracy(Ljava/lang/Integer;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->desiredAccuracy:Ljava/lang/Integer;

    return-void
.end method

.method public setDistanceFilter(Ljava/lang/Integer;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->distanceFilter:Ljava/lang/Integer;

    return-void
.end method

.method public setFastestInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->fastestInterval:Ljava/lang/Integer;

    return-void
.end method

.method public setHttpHeaders(Ljava/util/HashMap;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    return-void
.end method

.method public setHttpHeaders(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 493
    iget-object v2, p0, Lcom/marianhello/bgloc/Config;->httpHeaders:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInterval(Ljava/lang/Integer;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->interval:Ljava/lang/Integer;

    return-void
.end method

.method public setLargeNotificationIcon(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationIconLarge:Ljava/lang/String;

    return-void
.end method

.method public setLocationProvider(Ljava/lang/Integer;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->locationProvider:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxLocations(Ljava/lang/Integer;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->maxLocations:Ljava/lang/Integer;

    return-void
.end method

.method public setNotificationIconColor(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationIconColor:Ljava/lang/String;

    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationText:Ljava/lang/String;

    return-void
.end method

.method public setNotificationTitle(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationTitle:Ljava/lang/String;

    return-void
.end method

.method public setNotificationsEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 362
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationsEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setSmallNotificationIcon(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->notificationIconSmall:Ljava/lang/String;

    return-void
.end method

.method public setStartForeground(Ljava/lang/Boolean;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->startForeground:Ljava/lang/Boolean;

    return-void
.end method

.method public setStartOnBoot(Ljava/lang/Boolean;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->startOnBoot:Ljava/lang/Boolean;

    return-void
.end method

.method public setStationaryRadius(D)V
    .locals 0

    double-to-float p1, p1

    .line 216
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    return-void
.end method

.method public setStationaryRadius(F)V
    .locals 0

    .line 212
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->stationaryRadius:Ljava/lang/Float;

    return-void
.end method

.method public setStopOnStillActivity(Ljava/lang/Boolean;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->stopOnStillActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public setStopOnTerminate(Ljava/lang/Boolean;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->stopOnTerminate:Ljava/lang/Boolean;

    return-void
.end method

.method public setSyncThreshold(Ljava/lang/Integer;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->syncThreshold:Ljava/lang/Integer;

    return-void
.end method

.method public setSyncUrl(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->syncUrl:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Lcom/marianhello/bgloc/data/LocationTemplate;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/marianhello/bgloc/Config;->url:Ljava/lang/String;

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    .line 564
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public toParcel()Landroid/os/Parcel;
    .locals 2

    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0, v0, v1}, Lcom/marianhello/bgloc/Config;->writeToParcel(Landroid/os/Parcel;I)V

    .line 558
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 526
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Config[distanceFilter="

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " stationaryRadius="

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " desiredAccuracy="

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " interval="

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " fastestInterval="

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " activitiesInterval="

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " isDebugging="

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " stopOnTerminate="

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " stopOnStillActivity="

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " startOnBoot="

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartOnBoot()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " startForeground="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " notificationsEnabled="

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " locationProvider="

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " nTitle="

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " nText="

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " nIconLarge="

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " nIconSmall="

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " nIconColor="

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " url="

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " syncUrl="

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " syncThreshold="

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " httpHeaders="

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " maxLocations="

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getMaxLocations()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " postTemplate="

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->hasTemplate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStationaryRadius()Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 165
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDistanceFilter()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getDesiredAccuracy()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->isDebugging()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLargeNotificationIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSmallNotificationIcon()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationIconColor()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnTerminate()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartOnBoot()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStartForeground()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getNotificationsEnabled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getLocationProvider()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getInterval()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getFastestInterval()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getActivitiesInterval()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getStopOnStillActivity()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getSyncThreshold()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getMaxLocations()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 187
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getHttpHeaders()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "httpHeaders"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 188
    invoke-virtual {p0}, Lcom/marianhello/bgloc/Config;->getTemplate()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v0

    check-cast v0, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;

    const-string v1, "template"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 189
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
