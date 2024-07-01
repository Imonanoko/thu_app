.class Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;
.super Ljava/lang/Object;
.source "AbstractLocationTemplate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/data/AbstractLocationTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocationMapper"
.end annotation


# instance fields
.field private location:Lcom/marianhello/bgloc/data/BackgroundLocation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static map(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;
    .locals 1

    .line 64
    new-instance v0, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;

    invoke-direct {v0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;-><init>()V

    .line 65
    iput-object p0, v0, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-object v0
.end method

.method private mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    .line 29
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 30
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->withMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 32
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->withList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public withList(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-direct {p0, v1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public withMap(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 53
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 57
    invoke-direct {p0, v1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->mapValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method
