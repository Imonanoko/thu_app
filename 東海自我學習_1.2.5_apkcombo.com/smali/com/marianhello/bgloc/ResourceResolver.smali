.class public Lcom/marianhello/bgloc/ResourceResolver;
.super Ljava/lang/Object;
.source "ResourceResolver.java"


# static fields
.field private static final ACCOUNT_NAME_RESOURCE:Ljava/lang/String; = "mauron85_bgloc_account_name"

.field private static final ACCOUNT_TYPE_RESOURCE:Ljava/lang/String; = "mauron85_bgloc_account_type"

.field private static final AUTHORITY_TYPE_RESOURCE:Ljava/lang/String; = "mauron85_bgloc_content_authority"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "mauron85_bgloc_"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/marianhello/bgloc/ResourceResolver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/marianhello/bgloc/ResourceResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/marianhello/bgloc/ResourceResolver;
    .locals 1

    .line 53
    new-instance v0, Lcom/marianhello/bgloc/ResourceResolver;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/ResourceResolver;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "mauron85_bgloc_account_name"

    .line 41
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/ResourceResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    const-string v0, "mauron85_bgloc_account_type"

    .line 45
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/ResourceResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppResource(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/marianhello/bgloc/ResourceResolver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    const-string v0, "mauron85_bgloc_content_authority"

    .line 49
    invoke-virtual {p0, v0}, Lcom/marianhello/bgloc/ResourceResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "drawable"

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/marianhello/bgloc/ResourceResolver;->getAppResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/marianhello/bgloc/ResourceResolver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0, p1, v1}, Lcom/marianhello/bgloc/ResourceResolver;->getAppResource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
