.class public Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;
.super Ljava/lang/Exception;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/bgloc/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionDeniedException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/marianhello/bgloc/LocationManager;


# direct methods
.method public constructor <init>(Lcom/marianhello/bgloc/LocationManager;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/marianhello/bgloc/LocationManager$PermissionDeniedException;->this$0:Lcom/marianhello/bgloc/LocationManager;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
