.class public Lcom/marianhello/bgloc/data/LocationTemplateFactory;
.super Ljava/lang/Object;
.source "LocationTemplateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromArrayList(Ljava/util/ArrayList;)Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1

    .line 47
    new-instance v0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static fromHashMap(Ljava/util/HashMap;)Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1

    .line 43
    new-instance v0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/Object;)Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 22
    check-cast p0, Lorg/json/JSONObject;

    .line 24
    new-instance v0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    invoke-static {p0}, Lcom/marianhello/utils/Convert;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;-><init>(Ljava/util/HashMap;)V

    return-object v0

    .line 25
    :cond_0
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 26
    check-cast p0, Lorg/json/JSONArray;

    .line 28
    new-instance v0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    invoke-static {p0}, Lcom/marianhello/utils/Convert;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/marianhello/bgloc/data/LocationTemplateFactory;->fromJSON(Ljava/lang/Object;)Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static getDefault()Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 3

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "provider"

    const-string v2, "@provider"

    .line 52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "locationProvider"

    const-string v2, "@locationProvider"

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "time"

    const-string v2, "@time"

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "latitude"

    const-string v2, "@latitude"

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "longitude"

    const-string v2, "@longitude"

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "accuracy"

    const-string v2, "@accuracy"

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "speed"

    const-string v2, "@speed"

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "altitude"

    const-string v2, "@altitude"

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bearing"

    const-string v2, "@bearing"

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "radius"

    const-string v2, "@radius"

    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    invoke-direct {v1, v0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;-><init>(Ljava/util/HashMap;)V

    return-object v1
.end method
