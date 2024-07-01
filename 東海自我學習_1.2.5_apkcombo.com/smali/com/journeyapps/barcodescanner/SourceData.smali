.class public Lcom/journeyapps/barcodescanner/SourceData;
.super Ljava/lang/Object;
.source "SourceData.java"


# instance fields
.field private cropRect:Landroid/graphics/Rect;

.field private data:[B

.field private dataHeight:I

.field private dataWidth:I

.field private imageFormat:I

.field private rotation:I


# direct methods
.method public constructor <init>([BIIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    .line 45
    iput p2, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    .line 46
    iput p3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    .line 47
    iput p5, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    .line 48
    iput p4, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    return-void
.end method

.method private getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;
    .locals 9

    .line 128
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/SourceData;->isRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v0

    .line 134
    :cond_0
    new-instance v6, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    iget v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    iget v3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v4, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 135
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x5a

    .line 136
    invoke-virtual {v6, p1, v1, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 137
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 139
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 140
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 141
    array-length v1, p1

    invoke-static {p1, p2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 144
    iget p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    if-eqz p1, :cond_1

    .line 145
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 146
    iget p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    int-to-float p1, p1

    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static rotate180([BII)[B
    .locals 3

    mul-int p1, p1, p2

    .line 202
    new-array p2, p1, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 206
    aget-byte v2, p0, v1

    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static rotateCCW([BII)[B
    .locals 5

    mul-int v0, p1, p2

    .line 222
    new-array v1, v0, [B

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, p2, -0x1

    :goto_1
    if-ltz v3, :cond_0

    mul-int v4, v3, p1

    add-int/2addr v4, v2

    .line 226
    aget-byte v4, p0, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static rotateCW([BII)[B
    .locals 5

    mul-int v0, p1, p2

    .line 181
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/lit8 v3, p2, -0x1

    :goto_1
    if-ltz v3, :cond_0

    mul-int v4, v3, p1

    add-int/2addr v4, v1

    .line 185
    aget-byte v4, p0, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static rotateCameraPreview(I[BII)[B
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    return-object p1

    .line 162
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCCW([BII)[B

    move-result-object p0

    return-object p0

    .line 160
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotate180([BII)[B

    move-result-object p0

    return-object p0

    .line 158
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCW([BII)[B

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method


# virtual methods
.method public createSource()Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 13

    .line 97
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    iget v2, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v3, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    invoke-static {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/SourceData;->rotateCameraPreview(I[BII)[B

    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/SourceData;->isRotated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    iget v7, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v6, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    iget v7, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->data:[B

    return-object v0
.end method

.method public getDataHeight()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->dataWidth:I

    return v0
.end method

.method public getImageFormat()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->imageFormat:I

    return v0
.end method

.method public isRotated()Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/journeyapps/barcodescanner/SourceData;->rotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/SourceData;->cropRect:Landroid/graphics/Rect;

    return-void
.end method
