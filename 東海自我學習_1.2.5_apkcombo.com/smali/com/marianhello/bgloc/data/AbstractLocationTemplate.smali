.class public abstract Lcom/marianhello/bgloc/data/AbstractLocationTemplate;
.super Ljava/lang/Object;
.source "AbstractLocationTemplate.java"

# interfaces
.implements Lcom/marianhello/bgloc/data/LocationTemplate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/marianhello/bgloc/data/AbstractLocationTemplate$LocationMapper;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY:Ljava/lang/String; = "template"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clone()Lcom/marianhello/bgloc/data/LocationTemplate;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/marianhello/bgloc/data/AbstractLocationTemplate;->clone()Lcom/marianhello/bgloc/data/LocationTemplate;

    move-result-object v0

    return-object v0
.end method
