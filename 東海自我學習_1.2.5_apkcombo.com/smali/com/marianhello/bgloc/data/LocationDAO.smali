.class public interface abstract Lcom/marianhello/bgloc/data/LocationDAO;
.super Ljava/lang/Object;
.source "LocationDAO.java"


# virtual methods
.method public abstract deleteAllLocations()I
.end method

.method public abstract deleteFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
.end method

.method public abstract deleteLocationById(J)V
.end method

.method public abstract deleteUnpostedLocations()I
.end method

.method public abstract getAllLocations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFirstUnpostedLocation()Lcom/marianhello/bgloc/data/BackgroundLocation;
.end method

.method public abstract getLocationById(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
.end method

.method public abstract getLocationsForSyncCount(J)J
.end method

.method public abstract getNextUnpostedLocation(J)Lcom/marianhello/bgloc/data/BackgroundLocation;
.end method

.method public abstract getUnpostedLocationsCount()J
.end method

.method public abstract getValidLocations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/marianhello/bgloc/data/BackgroundLocation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;)J
.end method

.method public abstract persistLocation(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
.end method

.method public abstract persistLocationForSync(Lcom/marianhello/bgloc/data/BackgroundLocation;I)J
.end method

.method public abstract updateLocationForSync(J)V
.end method
