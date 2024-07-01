.class public Lcom/marianhello/bgloc/provider/LocationProviderFactory;
.super Ljava/lang/Object;
.source "LocationProviderFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/Integer;)Lcom/marianhello/bgloc/provider/LocationProvider;
    .locals 1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 40
    new-instance p1, Lcom/marianhello/bgloc/provider/RawLocationProvider;

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/marianhello/bgloc/provider/RawLocationProvider;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provider not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/marianhello/bgloc/provider/ActivityRecognitionLocationProvider;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;

    iget-object v0, p0, Lcom/marianhello/bgloc/provider/LocationProviderFactory;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/tenforwardconsulting/bgloc/DistanceFilterLocationProvider;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method
