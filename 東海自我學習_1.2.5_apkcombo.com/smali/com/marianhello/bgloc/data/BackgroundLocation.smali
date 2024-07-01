.class public Lcom/marianhello/bgloc/data/BackgroundLocation;
.super Ljava/lang/Object;
.source "BackgroundLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETED:I = 0x0

.field public static final POST_PENDING:I = 0x1

.field public static final SYNC_PENDING:I = 0x2

.field private static final TWO_MINUTES_IN_NANOS:J = 0x1bf08eb000L


# instance fields
.field private accuracy:F

.field private altitude:D

.field private batchStartMillis:Ljava/lang/Long;

.field private bearing:F

.field private elapsedRealtimeNanos:J

.field private extras:Landroid/os/Bundle;

.field private hasAccuracy:Z

.field private hasAltitude:Z

.field private hasBearing:Z

.field private hasRadius:Z

.field private hasSpeed:Z

.field private latitude:D

.field private locationId:Ljava/lang/Long;

.field private locationProvider:Ljava/lang/Integer;

.field private longitude:D

.field private mockFlags:I

.field private provider:Ljava/lang/String;

.field private radius:F

.field private speed:F

.field private status:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation$1;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation$1;-><init>()V

    sput-object v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    .line 24
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 28
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    const-wide/16 v3, 0x0

    .line 29
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 30
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    const/4 v3, 0x0

    .line 31
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 32
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 33
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 34
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 35
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 37
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 38
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 39
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 40
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    .line 41
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    .line 43
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    invoke-static {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromLocation(Landroid/location/Location;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method

.method public constructor <init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    .line 24
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 28
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    const-wide/16 v3, 0x0

    .line 29
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 30
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    const/4 v3, 0x0

    .line 31
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 32
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 33
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 34
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 35
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 37
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 38
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 39
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 40
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    .line 41
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    .line 43
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    .line 85
    iget-object v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    iput-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    .line 86
    iget-object v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    .line 87
    iget-object v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    iput-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    .line 88
    iget-object v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    iput-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    .line 89
    iget-wide v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 90
    iget-wide v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    .line 91
    iget-wide v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 92
    iget-wide v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    .line 93
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 94
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 95
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 96
    iget-wide v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 97
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    .line 98
    iget-boolean v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 99
    iget-boolean v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 100
    iget-boolean v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 101
    iget-boolean v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 102
    iget-boolean v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    .line 103
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    .line 104
    iget v1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    .line 105
    iget-object p1, p1, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/location/Location;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-direct {p0, p2}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Landroid/location/Location;)V

    .line 65
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Landroid/location/Location;F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Ljava/lang/Integer;Landroid/location/Location;)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setRadius(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    .line 24
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 27
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 28
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    const-wide/16 v3, 0x0

    .line 29
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 30
    iput-wide v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    const/4 v3, 0x0

    .line 31
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 32
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 33
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 34
    iput-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 35
    iput v3, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 37
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 38
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 39
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 40
    iput-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    .line 41
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    .line 43
    iput-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    .line 50
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->fromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-result-object p0

    return-object p0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 5

    .line 169
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>()V

    const-string v1, "provider"

    .line 171
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setProvider(Ljava/lang/String;)V

    const-string v1, "time"

    .line 172
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setTime(J)V

    const-string v1, "has_accuracy"

    .line 173
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "accuracy"

    .line 174
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setAccuracy(F)V

    :cond_0
    const-string v1, "has_speed"

    .line 176
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    const-string v1, "speed"

    .line 177
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setSpeed(F)V

    :cond_1
    const-string v1, "has_bearing"

    .line 179
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "bearing"

    .line 180
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setBearing(F)V

    :cond_2
    const-string v1, "has_altitude"

    .line 182
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, "altitude"

    .line 183
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setAltitude(D)V

    :cond_3
    const-string v1, "has_radius"

    .line 185
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "radius"

    .line 186
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setRadius(F)V

    :cond_4
    const-string v1, "latitude"

    .line 188
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLatitude(D)V

    const-string v1, "longitude"

    .line 189
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLongitude(D)V

    const-string v1, "service_provider"

    .line 190
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLocationProvider(Ljava/lang/Integer;)V

    const-string v1, "batch_start"

    .line 191
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setBatchStartMillis(Ljava/lang/Long;)V

    const-string v1, "valid"

    .line 192
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setStatus(I)V

    const-string v1, "_id"

    .line 193
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setLocationId(Ljava/lang/Long;)V

    const-string v1, "mock_flags"

    .line 194
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setMockFlags(I)V

    return-object v0
.end method

.method public static fromLocation(Landroid/location/Location;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 3

    .line 137
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 141
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    .line 142
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 143
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 144
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 145
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 146
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 147
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 148
    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 149
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 150
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 151
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    .line 152
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    .line 155
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 156
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->setIsFromMockProvider(Z)V

    :cond_1
    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 4

    .line 109
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    .line 112
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    .line 114
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    .line 116
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    .line 117
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    .line 118
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    .line 119
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    .line 122
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    .line 124
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    .line 125
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    .line 126
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    .line 127
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    .line 128
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    .line 129
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    .line 130
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    .line 131
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, v0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public static isBetterLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;Lcom/marianhello/bgloc/data/BackgroundLocation;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 730
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 732
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getElapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_0

    .line 735
    :cond_2
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    mul-long v2, v2, v4

    :goto_0
    const-wide v4, 0x1bf08eb000L

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const-wide v5, -0x1bf08eb000L

    cmp-long v7, v2, v5

    if-gez v7, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v4, :cond_6

    return v1

    :cond_6
    if-eqz v5, :cond_7

    return v0

    .line 752
    :cond_7
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-lez v3, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-gez v3, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0xc8

    if-le v3, v6, :cond_a

    const/4 v3, 0x1

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    .line 758
    :goto_6
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getProvider()Ljava/lang/String;

    move-result-object p0

    .line 759
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getProvider()Ljava/lang/String;

    move-result-object p1

    .line 758
    invoke-static {p0, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v5, :cond_b

    return v1

    :cond_b
    if-eqz v2, :cond_c

    if-nez v4, :cond_c

    return v1

    :cond_c
    if-eqz v2, :cond_d

    if-nez v3, :cond_d

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 801
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public areMockLocationsEnabled()Z
    .locals 2

    .line 625
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    and-int/lit8 v0, v0, 0x4

    shr-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .locals 1

    .line 427
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .locals 2

    .line 494
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    return-wide v0
.end method

.method public getBatchStartMillis()Ljava/lang/Long;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .line 471
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .locals 2

    .line 392
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    return-wide v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 3

    .line 696
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 697
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 698
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 699
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 700
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 701
    :cond_0
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setAltitude(D)V

    .line 702
    :cond_1
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 703
    :cond_2
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    .line 704
    :cond_3
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 705
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_4

    .line 706
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    :cond_4
    return-object v0
.end method

.method public getLocationId()Ljava/lang/Long;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocationProvider()Ljava/lang/Integer;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .line 334
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    return-wide v0
.end method

.method public getMockFlags()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 448
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 648
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    return-wide v0
.end method

.method public getValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "@id"

    .line 904
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    return-object p1

    :cond_0
    const-string v0, "@provider"

    .line 907
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v0, "@locationProvider"

    .line 910
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    iget-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    return-object p1

    :cond_2
    const-string v0, "@time"

    .line 913
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 914
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "@latitude"

    .line 916
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 917
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "@longitude"

    .line 919
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "@accuracy"

    .line 922
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 923
    iget-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    if-eqz p1, :cond_6

    iget p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_6
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    return-object p1

    :cond_7
    const-string v0, "@speed"

    .line 925
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 926
    iget-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_8
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    return-object p1

    :cond_9
    const-string v0, "@altitude"

    .line 928
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 929
    iget-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    if-eqz p1, :cond_a

    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_2

    :cond_a
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_2
    return-object p1

    :cond_b
    const-string v0, "@bearing"

    .line 931
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 932
    iget-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_3

    :cond_c
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    return-object p1

    :cond_d
    const-string v0, "@radius"

    .line 934
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 935
    iget-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_4

    :cond_e
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_4
    return-object p1

    :cond_f
    const-string v0, "@isFromMockProvider"

    .line 937
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 938
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasIsFromMockProvider()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isFromMockProvider()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_5

    :cond_10
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_5
    return-object p1

    :cond_11
    const-string v0, "@mockLocationsEnabled"

    .line 940
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 941
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasMockLocationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->areMockLocationsEnabled()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_6

    :cond_12
    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_6
    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAccuracy()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .locals 1

    .line 550
    iget-boolean v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    return v0
.end method

.method public hasIsFromMockProvider()Z
    .locals 2

    .line 587
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMockLocationsEnabled()Z
    .locals 2

    .line 615
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    and-int/lit8 v0, v0, 0x8

    shr-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasRadius()Z
    .locals 1

    .line 557
    iget-boolean v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    return v0
.end method

.method public hasSpeed()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    return v0
.end method

.method public isBetterLocationThan(Landroid/location/Location;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 781
    :cond_0
    new-instance v1, Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {v1, p1}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Landroid/location/Location;)V

    invoke-static {v1, p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isBetterLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;Lcom/marianhello/bgloc/data/BackgroundLocation;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isBetterLocationThan(Lcom/marianhello/bgloc/data/BackgroundLocation;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 793
    :cond_0
    invoke-static {p1, p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isBetterLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;Lcom/marianhello/bgloc/data/BackgroundLocation;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public isFromMockProvider()Z
    .locals 2

    .line 597
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public makeClone()Lcom/marianhello/bgloc/data/BackgroundLocation;
    .locals 1

    .line 240
    new-instance v0, Lcom/marianhello/bgloc/data/BackgroundLocation;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;-><init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-object v0
.end method

.method public setAccuracy(F)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    const/4 p1, 0x1

    .line 439
    iput-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 0

    .line 503
    iput-wide p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    const/4 p1, 0x1

    .line 504
    iput-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    return-void
.end method

.method public setBatchStartMillis(Ljava/lang/Long;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    return-void
.end method

.method public setBearing(F)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    const/4 p1, 0x1

    .line 484
    iput-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .locals 0

    .line 401
    iput-wide p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public setIsFromMockProvider(Z)V
    .locals 1

    .line 607
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 324
    iput-wide p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    return-void
.end method

.method public setLocationId(Ljava/lang/Long;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    return-void
.end method

.method public setLocationProvider(Ljava/lang/Integer;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 341
    iput-wide p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    return-void
.end method

.method public setMockFlags(I)V
    .locals 0

    .line 579
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    return-void
.end method

.method public setMockLocationsEnabled(Ljava/lang/Boolean;)V
    .locals 1

    .line 635
    iget v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 518
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    const/4 p1, 0x1

    .line 519
    iput-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    const/4 p1, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 661
    iput p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 373
    iput-wide p1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 880
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 882
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 884
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "speed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 885
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 886
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 887
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 888
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 889
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 890
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_accuracy"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 891
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_speed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 892
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_bearing"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 893
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_altitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 894
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "has_radius"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 895
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    const-string v2, "service_provider"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    const-string v2, "batch_start"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 899
    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mock_flags"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 846
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 847
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 848
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    const-string v2, "locationProvider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 849
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    const-string v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 850
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 851
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 852
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    float-to-double v1, v1

    const-string v3, "accuracy"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 853
    :cond_0
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    float-to-double v1, v1

    const-string v3, "speed"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 854
    :cond_1
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    const-string v3, "altitude"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 855
    :cond_2
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    float-to-double v1, v1

    const-string v3, "bearing"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 856
    :cond_3
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    float-to-double v1, v1

    const-string v3, "radius"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 857
    :cond_4
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasIsFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isFromMockProvider()Z

    move-result v1

    const-string v2, "isFromMockProvider"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 858
    :cond_5
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasMockLocationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->areMockLocationsEnabled()Z

    move-result v1

    const-string v2, "mockLocationsEnabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_6
    return-object v0
.end method

.method public toJSONObjectWithId()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 872
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BGLocation["

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    .line 808
    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " %.6f,%.6f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 810
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    if-eqz v1, :cond_0

    .line 811
    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " acc=%.0f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " acc=???"

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :goto_0
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v1, " t=?!?"

    .line 816
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, " t="

    .line 818
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 820
    :goto_1
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    const-string v1, " et=?!?"

    .line 821
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v1, " et="

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 826
    :goto_2
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    if-eqz v1, :cond_3

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 827
    :cond_3
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    if-eqz v1, :cond_4

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 828
    :cond_4
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    if-eqz v1, :cond_5

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 829
    :cond_5
    iget-boolean v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    if-eqz v1, :cond_6

    const-string v1, " radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 830
    :cond_6
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->isFromMockProvider()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_7
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/BackgroundLocation;->areMockLocationsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " mocksEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :cond_8
    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_9

    const-string v1, " {"

    .line 833
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, " locprov="

    .line 835
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 206
    iget-object p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationId:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-object p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->locationProvider:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->batchStartMillis:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 209
    iget-object p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 211
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 212
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 213
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->elapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->accuracy:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 215
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->speed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 216
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->bearing:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 217
    iget-wide v0, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 218
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->radius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 219
    iget-boolean p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAccuracy:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-boolean p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasAltitude:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-boolean p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasSpeed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-boolean p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasBearing:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    iget-boolean p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->hasRadius:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->mockFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object p2, p0, Lcom/marianhello/bgloc/data/BackgroundLocation;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
