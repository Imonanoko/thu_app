.class public Lcom/marianhello/bgloc/data/HashMapLocationTemplate;
.super Lcom/marianhello/bgloc/data/AbstractLocationTemplate;
.source "HashMapLocationTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d2L


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/HashMapLocationTemplate;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;-><init>()V

    if-eqz p1, :cond_1

    .line 23
    iget-object p1, p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    if-nez p1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p1}, Lcom/marianhello/utils/CloneHelper;->deepCopy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clone()Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1

    .line 80
    new-instance v0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;-><init>(Lcom/marianhello/bgloc/data/HashMapLocationTemplate;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->clone()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 60
    :cond_1
    instance-of v1, p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    if-nez v1, :cond_2

    return v0

    .line 61
    :cond_2
    check-cast p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    iget-object p1, p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public locationToJson(Lcom/marianhello/bgloc/data/BackgroundLocation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-static {p1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->map(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->withMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public toMap()Ljava/util/Map;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 70
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
