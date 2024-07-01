.class public interface abstract Lcom/marianhello/bgloc/data/ConfigurationDAO;
.super Ljava/lang/Object;
.source "ConfigurationDAO.java"


# virtual methods
.method public abstract persistConfiguration(Lcom/marianhello/bgloc/Config;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract retrieveConfiguration()Lcom/marianhello/bgloc/Config;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
