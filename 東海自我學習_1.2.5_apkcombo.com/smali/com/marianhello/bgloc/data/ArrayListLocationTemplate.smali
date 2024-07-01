.class public Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;
.super Lcom/marianhello/bgloc/data/AbstractLocationTemplate;
.source "ArrayListLocationTemplate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4d2L


# instance fields
.field private mList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;-><init>()V

    if-eqz p1, :cond_1

    .line 21
    iget-object v0, p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    .line 26
    iget-object p1, p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 27
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public clone()Lcom/marianhello/bgloc/data/LocationTemplate;
    .locals 1

    .line 86
    new-instance v0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;-><init>(Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->clone()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    if-nez v1, :cond_2

    return v0

    .line 59
    :cond_2
    check-cast p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    iget-object p1, p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

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

    .line 42
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 38
    invoke-static {p1}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->map(Lcom/marianhello/bgloc/data/BackgroundLocation;)Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;

    move-result-object p1

    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;->withList(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->mList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 68
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 69
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
