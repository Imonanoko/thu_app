.class Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParam;
.super Ljava/lang/Object;
.source "RestrictiveDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictiveParam"
.end annotation


# instance fields
.field deprecatedParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field eventName:Ljava/lang/String;

.field restrictiveParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParam;->eventName:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParam;->restrictiveParams:Ljava/util/Map;

    .line 200
    iput-object p3, p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParam;->deprecatedParams:Ljava/util/List;

    return-void
.end method
