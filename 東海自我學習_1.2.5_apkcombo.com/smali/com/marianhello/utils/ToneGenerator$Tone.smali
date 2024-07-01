.class public Lcom/marianhello/utils/ToneGenerator$Tone;
.super Ljava/lang/Object;
.source "ToneGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/marianhello/utils/ToneGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tone"
.end annotation


# static fields
.field public static final BEEP:I = 0x18

.field public static final BEEP_BEEP_BEEP:I = 0x29

.field public static final CHIRP_CHIRP_CHIRP:I = 0x5d

.field public static final DIALTONE:I = 0x17

.field public static final DOODLY_DOO:I = 0x56

.field public static final LONG_BEEP:I = 0x61


# instance fields
.field final synthetic this$0:Lcom/marianhello/utils/ToneGenerator;


# direct methods
.method public constructor <init>(Lcom/marianhello/utils/ToneGenerator;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/marianhello/utils/ToneGenerator$Tone;->this$0:Lcom/marianhello/utils/ToneGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
