.class public abstract Lcom/marianhello/bgloc/headless/StationaryTask;
.super Lcom/marianhello/bgloc/headless/LocationTask;
.source "StationaryTask.java"


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/marianhello/bgloc/headless/LocationTask;-><init>(Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 21
    invoke-super {p0}, Lcom/marianhello/bgloc/headless/LocationTask;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "stationary"

    return-object v0
.end method
