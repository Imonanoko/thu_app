.class public abstract Lcom/marianhello/bgloc/data/DAOFactory;
.super Ljava/lang/Object;
.source "DAOFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConfigurationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/ConfigurationDAO;
    .locals 1

    .line 15
    new-instance v0, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/sqlite/SQLiteConfigurationDAO;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createLocationDAO(Landroid/content/Context;)Lcom/marianhello/bgloc/data/LocationDAO;
    .locals 1

    .line 11
    new-instance v0, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/provider/ContentProviderLocationDAO;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
