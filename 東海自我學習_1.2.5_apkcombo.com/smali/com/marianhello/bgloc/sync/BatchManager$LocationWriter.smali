.class Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;
.super Ljava/lang/Object;
.source "BatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/sync/BatchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationWriter"
.end annotation


# instance fields
.field private template:Lcom/marianhello/bgloc/data/LocationTemplate;

.field private writer:Landroid/util/JsonWriter;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Lcom/marianhello/bgloc/data/LocationTemplate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    .line 219
    new-instance v0, Landroid/util/JsonWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    .line 220
    iput-object p2, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method

.method public write(Lcom/marianhello/bgloc/data/BackgroundLocation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    new-instance v0, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;

    iget-object v1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->writer:Landroid/util/JsonWriter;

    invoke-direct {v0, v1, p1}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;-><init>(Landroid/util/JsonWriter;Lcom/marianhello/bgloc/data/BackgroundLocation;)V

    .line 237
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/BatchManager$LocationWriter;->template:Lcom/marianhello/bgloc/data/LocationTemplate;

    instance-of v1, p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    if-eqz v1, :cond_0

    .line 238
    check-cast p1, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;

    .line 239
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/HashMapLocationTemplate;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeMap(Ljava/util/Map;)V

    goto :goto_0

    .line 240
    :cond_0
    instance-of v1, p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    if-eqz v1, :cond_1

    .line 241
    check-cast p1, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;

    .line 242
    invoke-virtual {p1}, Lcom/marianhello/bgloc/data/ArrayListLocationTemplate;->toList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/marianhello/bgloc/sync/BatchManager$LocationTemplateWriter;->writeList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method
