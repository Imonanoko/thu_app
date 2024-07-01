.class Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;
.super Ljava/lang/Object;
.source "BatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/sync/BatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationTemplateWriter"
.end annotation


# instance fields
.field private location:Lcom/marianhello/bgloc/data/BackgroundLocation;

.field private writer:Landroid/util/JsonWriter;


# direct methods
.method public constructor <init>(Landroid/util/JsonWriter;Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    .line 155
    iput-object p2, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    return-void
.end method

.method private writeValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto/16 :goto_0

    .line 161
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 162
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 163
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 164
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeList(Ljava/util/List;)V

    goto :goto_0

    .line 165
    :cond_2
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 167
    :cond_3
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 169
    :cond_4
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 171
    :cond_5
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 173
    :cond_6
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    goto :goto_0

    .line 175
    :cond_7
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_8

    .line 176
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 178
    :cond_8
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    return-void
.end method


# virtual methods
.method public writeList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 208
    :cond_1
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeMap(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 184
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 185
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 190
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 191
    iget-object v2, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->location:Lcom/marianhello/bgloc/data/BackgroundLocation;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/marianhello/bgloc/data/BackgroundLocation;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v3, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 194
    :cond_1
    invoke-direct {p0, v0}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method
