.class public Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/BaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseApiaryOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DerivedClassType:",
        "Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions<",
        "TDerivedClassType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzvt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzvu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzvv:Ljava/lang/String;

.field private final zzvw:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions<",
            "TDerivedClassType;>.Collector;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvu:Ljava/util/HashMap;

    new-instance v0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;-><init>(Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvw:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;

    return-void
.end method

.method private static zzcy()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/util/DeviceProperties;->isUserBuild()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addField(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDerivedClassType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final appendParametersToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzcy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prettyPrint"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->getTrace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fields"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public appendParametersToUrl(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzcy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prettyPrint"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->getTrace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fields"

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/server/BaseApi;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final buildFrom(Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions<",
            "*>;)TDerivedClassType;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method protected final getCollector()Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions<",
            "TDerivedClassType;>.Collector;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvw:Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions$Collector;

    return-object v0
.end method

.method public final getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvt:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvu:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getTrace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    return-object v0
.end method

.method public final setEtag(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDerivedClassType;"
        }
    .end annotation

    const-string v0, "ETag"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;

    move-result-object p1

    return-object p1
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TDerivedClassType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvu:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final setTraceByLdap(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDerivedClassType;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "email:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    return-object p0
.end method

.method public final setTraceByToken(Ljava/lang/String;)Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TDerivedClassType;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "token:"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/server/BaseApi$BaseApiaryOptions;->zzvv:Ljava/lang/String;

    return-object p0
.end method
