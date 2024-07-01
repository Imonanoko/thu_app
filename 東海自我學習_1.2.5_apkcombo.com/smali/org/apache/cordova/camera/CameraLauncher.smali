.class public Lorg/apache/cordova/camera/CameraLauncher;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CameraLauncher.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final ALLMEDIA:I = 0x2

.field private static final CAMERA:I = 0x1

.field private static final CROPPED_URI_KEY:Ljava/lang/String; = "croppedUri"

.field private static final CROP_CAMERA:I = 0x64

.field private static final DATA_URL:I = 0x0

.field private static final FILE_URI:I = 0x1

.field private static final GET_All:Ljava/lang/String; = "Get All"

.field private static final GET_PICTURE:Ljava/lang/String; = "Get Picture"

.field private static final GET_VIDEO:Ljava/lang/String; = "Get Video"

.field private static final IMAGE_URI_KEY:Ljava/lang/String; = "imageUri"

.field private static final JPEG:I = 0x0

.field private static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final JPEG_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final JPEG_TYPE:Ljava/lang/String; = "jpg"

.field private static final LOG_TAG:Ljava/lang/String; = "CameraLauncher"

.field private static final NATIVE_URI:I = 0x2

.field public static final PERMISSION_DENIED_ERROR:I = 0x14

.field private static final PHOTOLIBRARY:I = 0x0

.field private static final PICTURE:I = 0x0

.field private static final PNG:I = 0x1

.field private static final PNG_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PNG_MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final PNG_TYPE:Ljava/lang/String; = "png"

.field private static final SAVEDPHOTOALBUM:I = 0x2

.field public static final SAVE_TO_ALBUM_SEC:I = 0x1

.field private static final TAKE_PICTURE_ACTION:Ljava/lang/String; = "takePicture"

.field public static final TAKE_PIC_SEC:I = 0x0

.field private static final TIME_FORMAT:Ljava/lang/String; = "yyyyMMdd_HHmmss"

.field private static final VIDEO:I = 0x1

.field protected static final permissions:[Ljava/lang/String;


# instance fields
.field private allowEdit:Z

.field private applicationId:Ljava/lang/String;

.field public callbackContext:Lorg/apache/cordova/CallbackContext;

.field private conn:Landroid/media/MediaScannerConnection;

.field private correctOrientation:Z

.field private croppedUri:Landroid/net/Uri;

.field private destType:I

.field private encodingType:I

.field private exifData:Lorg/apache/cordova/camera/ExifHelper;

.field private imageUri:Lorg/apache/cordova/camera/CordovaUri;

.field private mQuality:I

.field private mediaType:I

.field private numPics:I

.field private orientationCorrected:Z

.field private saveToPhotoAlbum:Z

.field private scanMe:Landroid/net/Uri;

.field private srcType:I

.field private targetHeight:I

.field private targetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 122
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/camera/CameraLauncher;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/camera/CameraLauncher;ILandroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromGallery(ILandroid/content/Intent;)V

    return-void
.end method

.method public static calculateSampleSize(IIII)I
    .locals 3

    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1167
    div-int/2addr p0, p2

    return p0

    .line 1169
    :cond_0
    div-int/2addr p1, p3

    return p1
.end method

.method private checkForDuplicateImage(I)V
    .locals 5

    .line 1218
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    .line 1219
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 1220
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1222
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_0

    const/4 v4, 0x2

    .line 1227
    :cond_0
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    sub-int/2addr v2, p1

    if-ne v2, v4, :cond_2

    .line 1228
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    const-string p1, "_id"

    .line 1229
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v4, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 1233
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1234
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1194
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1198
    :cond_0
    new-instance p4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    .line 1200
    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    .line 1202
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1203
    invoke-direct {p0, p3}, Lorg/apache/cordova/camera/CameraLauncher;->scanForGallery(Landroid/net/Uri;)V

    .line 1206
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private createCaptureFile(I)Ljava/io/File;
    .locals 1

    const-string v0, ""

    .line 333
    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private createCaptureFile(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    .line 344
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ".Pic"

    :cond_0
    if-nez p1, :cond_1

    .line 349
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 356
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 353
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Encoding Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private exifToDegrees(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5a

    return p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb4

    return p1

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const/16 p1, 0x10e

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 1396
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "external_files"

    .line 1397
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 1398
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMimetypeForFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "image/png"

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "image/jpeg"

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getPicturesPath()Ljava/lang/String;
    .locals 3

    .line 606
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    goto :goto_0

    :cond_0
    const-string v0, ".png"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 610
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 938
    iget v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const-string v3, "Exception while closing file input stream."

    const-string v4, "CameraLauncher"

    const/4 v5, 0x0

    if-gtz v2, :cond_2

    iget v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v2, :cond_2

    iget-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v2, :cond_2

    .line 942
    :try_start_0
    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v2}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    .line 952
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 954
    :catch_0
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v5

    .line 947
    :goto_1
    :try_start_3
    iget-object v6, v1, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v2, v5

    .line 945
    :goto_2
    iget-object v6, v1, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :goto_3
    return-object v5

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v2, :cond_1

    .line 952
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    .line 954
    :catch_5
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_1
    :goto_5
    throw v0

    .line 973
    :cond_2
    :try_start_5
    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v2}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 976
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd_HHmmss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 977
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMG_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v7, :cond_3

    const-string v7, ".jpg"

    goto :goto_6

    :cond_3
    const-string v7, ".png"

    :goto_6
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 978
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 980
    invoke-direct {v1, v2, v7}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    .line 982
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v0, v2}, Lorg/apache/cordova/camera/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "image/jpeg"

    .line 983
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 985
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    const-string v9, ""

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 987
    new-instance v2, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v2}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    iput-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    .line 988
    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {v2, v0}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 989
    iget-object v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {v2}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 991
    iget-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v2, :cond_4

    .line 992
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v0, "Orientation"

    .line 993
    invoke-virtual {v2, v0, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/apache/cordova/camera/CameraLauncher;->exifToDegrees(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    :cond_4
    :goto_7
    const/4 v0, 0x0

    goto :goto_8

    :catch_6
    move-exception v0

    .line 997
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read Exif data: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_7

    :cond_5
    move-object v7, v5

    move-object v8, v7

    goto :goto_7

    .line 1012
    :goto_8
    :try_start_8
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    .line 1013
    iput-boolean v9, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1016
    :try_start_9
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v10, v11}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1017
    :try_start_a
    invoke-static {v10, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v10, :cond_6

    .line 1021
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    .line 1023
    :catch_7
    :try_start_c
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_6
    :goto_9
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v11, :cond_14

    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v11, :cond_7

    goto/16 :goto_11

    .line 1035
    :cond_7
    iget v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz v11, :cond_8

    iget v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v11, :cond_8

    .line 1036
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 1037
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v11, v1, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    :cond_8
    const/16 v11, 0x5a

    if-eq v0, v11, :cond_a

    const/16 v11, 0x10e

    if-ne v0, v11, :cond_9

    goto :goto_a

    .line 1048
    :cond_9
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1049
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v13, 0x0

    goto :goto_b

    .line 1044
    :cond_a
    :goto_a
    iget v11, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1045
    iget v12, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v13, 0x1

    .line 1053
    :goto_b
    invoke-virtual {v1, v11, v12}, Lorg/apache/cordova/camera/CameraLauncher;->calculateAspectRatio(II)[I

    move-result-object v14

    .line 1057
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1058
    aget v15, v14, v6

    aget v6, v14, v9

    invoke-static {v11, v12, v15, v6}, Lorg/apache/cordova/camera/CameraLauncher;->calculateSampleSize(IIII)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1061
    :try_start_d
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v6, v7}, Lorg/apache/cordova/camera/FileHelper;->getInputStreamFromUriString(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/io/InputStream;

    move-result-object v10

    .line 1062
    invoke-static {v10, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v10, :cond_b

    .line 1066
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_c

    .line 1068
    :catch_8
    :try_start_f
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_b
    :goto_c
    if-nez v2, :cond_d

    if-eqz v8, :cond_c

    .line 1099
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_c
    return-object v5

    :cond_d
    if-nez v13, :cond_e

    const/4 v3, 0x0

    .line 1076
    :try_start_10
    aget v4, v14, v3

    goto :goto_d

    :cond_e
    aget v4, v14, v9

    :goto_d
    if-nez v13, :cond_f

    .line 1077
    aget v3, v14, v9

    goto :goto_e

    :cond_f
    const/4 v3, 0x0

    aget v5, v14, v3

    move v3, v5

    .line 1079
    :goto_e
    invoke-static {v2, v4, v3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, v2, :cond_10

    .line 1081
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1084
    :cond_10
    iget-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    .line 1085
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, v0

    .line 1086
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1088
    :try_start_11
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    const/16 v22, 0x1

    move-object/from16 v16, v3

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v22}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1089
    iput-boolean v9, v1, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_9
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_f

    :catch_9
    const/4 v2, 0x0

    .line 1091
    :try_start_12
    iput-boolean v2, v1, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :cond_11
    :goto_f
    if-eqz v8, :cond_12

    .line 1099
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_12
    return-object v3

    :catchall_2
    move-exception v0

    if-eqz v10, :cond_13

    .line 1066
    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_10

    .line 1068
    :catch_a
    :try_start_14
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_13
    :goto_10
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :cond_14
    :goto_11
    if-eqz v8, :cond_15

    .line 1099
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_15
    return-object v5

    :catchall_3
    move-exception v0

    move-object v5, v10

    goto :goto_12

    :catchall_4
    move-exception v0

    :goto_12
    if-eqz v5, :cond_16

    .line 1021
    :try_start_15
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_13

    .line 1023
    :catch_b
    :try_start_16
    invoke-static {v4, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    :cond_16
    :goto_13
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v0

    if-eqz v8, :cond_17

    .line 1099
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1101
    :cond_17
    throw v0

    :catch_c
    move-exception v0

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while getting input stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method private getTempDirectoryPath()Ljava/lang/String;
    .locals 2

    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 235
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUriFromMediaStore()Landroid/net/Uri;
    .locals 4

    .line 912
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    .line 913
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "CameraLauncher"

    const-string v2, "Can\'t write to external media storage."

    .line 918
    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :try_start_1
    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_1
    const-string v0, "Can\'t write to internal media storage."

    .line 922
    invoke-static {v1, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private outputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v0}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v0, 0x2f

    .line 640
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 641
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modified."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v0, :cond_1

    const-string v0, "jpg"

    goto :goto_0

    :cond_1
    const-string v0, "png"

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 643
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getTempDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 647
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 648
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v1, :cond_2

    .line 649
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_2

    .line 650
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 652
    :goto_2
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 653
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 655
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    if-eqz p1, :cond_4

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v0, :cond_4

    .line 657
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-eqz v0, :cond_3

    .line 658
    invoke-virtual {p1}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V

    .line 660
    :cond_3
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;

    invoke-virtual {p1}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V

    const/4 p1, 0x0

    .line 662
    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->exifData:Lorg/apache/cordova/camera/ExifHelper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 664
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_3
    return-object p2
.end method

.method private performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V
    .locals 5

    .line 422
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 424
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v1, "true"

    .line 426
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez p1, :cond_0

    const-string p1, "outputX"

    .line 431
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    :cond_0
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez p1, :cond_1

    const-string p1, "outputY"

    .line 434
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    :cond_1
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v1, 0x1

    if-lez p1, :cond_2

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez p1, :cond_2

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ne p1, v2, :cond_2

    const-string p1, "aspectX"

    .line 437
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 438
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    :cond_2
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 443
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "output"

    .line 444
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 449
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz p1, :cond_3

    .line 450
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    add-int/lit8 v1, p2, 0x64

    invoke-interface {p1, p0, v0, v1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "CameraLauncher"

    const-string v0, "Crop operation not supported on this device"

    .line 454
    invoke-static {p1, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :try_start_1
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 460
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const-string p2, "Unable to write to file"

    .line 461
    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private processResultFromCamera(ILandroid/content/Intent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    new-instance v0, Lorg/apache/cordova/camera/ExifHelper;

    invoke-direct {v0}, Lorg/apache/cordova/camera/ExifHelper;-><init>()V

    .line 478
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {v1}, Lorg/apache/cordova/camera/CordovaUri;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 483
    :goto_0
    iget v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 486
    :try_start_0
    invoke-virtual {v0, v1}, Lorg/apache/cordova/camera/ExifHelper;->createInFile(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->readExifData()V

    .line 488
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->getOrientation()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 491
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 v2, 0x0

    .line 501
    :goto_1
    iget-boolean v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 502
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->getPicturesPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 504
    iget-boolean v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v6, :cond_2

    .line 505
    invoke-direct {p0, v6, v4}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_2

    .line 507
    :cond_2
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {v6}, Lorg/apache/cordova/camera/CordovaUri;->getFileUri()Landroid/net/Uri;

    move-result-object v6

    .line 508
    invoke-direct {p0, v6, v4}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 511
    :goto_2
    invoke-direct {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->refreshGallery(Landroid/net/Uri;)V

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    const-string v6, "Unable to create bitmap!"

    const-string v7, "I either have a null image path or bitmap"

    const-string v8, "CameraLauncher"

    const/4 v9, 0x1

    if-nez p1, :cond_6

    .line 516
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_4

    .line 520
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    :cond_4
    move-object v5, p1

    if-nez v5, :cond_5

    .line 525
    invoke-static {v8, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0, v6}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 531
    :cond_5
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v5, p1}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;I)V

    .line 533
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-nez p1, :cond_10

    .line 534
    invoke-direct {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->checkForDuplicateImage(I)V

    goto/16 :goto_7

    :cond_6
    if-eq p1, v9, :cond_8

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    goto :goto_4

    .line 598
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 541
    :cond_8
    :goto_4
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const-string p2, ""

    const/4 v3, -0x1

    if-ne p1, v3, :cond_b

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne p1, v3, :cond_b

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/16 v3, 0x64

    if-ne p1, v3, :cond_b

    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez p1, :cond_b

    .line 546
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    if-eqz p1, :cond_9

    .line 547
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 549
    :cond_9
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 551
    iget-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz p2, :cond_a

    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz p2, :cond_a

    .line 552
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 553
    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_5

    .line 555
    :cond_a
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {p2}, Lorg/apache/cordova/camera/CordovaUri;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    .line 556
    invoke-direct {p0, p2, p1}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 559
    :goto_5
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_7

    .line 562
    :cond_b
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 563
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_c

    .line 567
    invoke-static {v8, v7}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0, v6}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 574
    :cond_c
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 575
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez v1, :cond_d

    .line 576
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_6

    .line 577
    :cond_d
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 579
    :goto_6
    iget v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {v5, v1, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 580
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 583
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-nez p2, :cond_f

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eq v2, v9, :cond_e

    .line 588
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->resetOrientation()V

    .line 589
    :cond_e
    invoke-virtual {v0, p2}, Lorg/apache/cordova/camera/ExifHelper;->createOutFile(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Lorg/apache/cordova/camera/ExifHelper;->writeExifData()V

    .line 594
    :cond_f
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 601
    :cond_10
    :goto_7
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {p1}, Lorg/apache/cordova/camera/CordovaUri;->getFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, v9, p1, v4, v5}, Lorg/apache/cordova/camera/CameraLauncher;->cleanup(ILandroid/net/Uri;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private processResultFromGallery(ILandroid/content/Intent;)V
    .locals 8

    .line 678
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 680
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "null data from photo library"

    .line 683
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    .line 689
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {p2, v0}, Lorg/apache/cordova/camera/FileHelper;->getRealPath(Landroid/net/Uri;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v0

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File location is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraLauncher"

    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    iget-object v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-static {v1, v3}, Lorg/apache/cordova/camera/FileHelper;->getMimeType(Ljava/lang/String;Lorg/apache/cordova/CordovaInterface;)Ljava/lang/String;

    move-result-object v3

    .line 697
    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_e

    const-string v4, "image/jpeg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "image/png"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 704
    :cond_2
    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-ne v4, v7, :cond_4

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne v4, v7, :cond_4

    if-eq p1, v5, :cond_3

    if-ne p1, v6, :cond_4

    :cond_3
    iget-boolean v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    iget v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 706
    invoke-direct {p0, v4}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForFormat(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 708
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 712
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getScaledAndRotatedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 714
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-nez v4, :cond_5

    const-string p1, "I either have a null image path or bitmap"

    .line 717
    invoke-static {v2, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Unable to create bitmap!"

    .line 718
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez p1, :cond_6

    .line 724
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, v4, p1}, Lorg/apache/cordova/camera/CameraLauncher;->processPicture(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_6
    if-eq p1, v5, :cond_7

    if-ne p1, v6, :cond_c

    .line 730
    :cond_7
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez p1, :cond_8

    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-gtz p1, :cond_a

    :cond_8
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->orientationCorrected:Z

    if-nez p1, :cond_a

    :cond_9
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 732
    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->getMimetypeForFormat(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 735
    :cond_a
    :try_start_1
    invoke-direct {p0, v4, p2}, Lorg/apache/cordova/camera/CameraLauncher;->outputModifiedBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 738
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 741
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "Error retrieving image."

    .line 742
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_2

    .line 745
    :cond_b
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :cond_c
    :goto_2
    if-eqz v4, :cond_d

    .line 749
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 752
    :cond_d
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .line 698
    :cond_e
    :goto_3
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    .line 1179
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private refreshGallery(Landroid/net/Uri;)V
    .locals 2

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 618
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private scanForGallery(Landroid/net/Uri;)V
    .locals 1

    .line 1289
    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    .line 1290
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    if-eqz p1, :cond_0

    .line 1291
    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1293
    :cond_0
    new-instance p1, Landroid/media/MediaScannerConnection;

    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    .line 1294
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->connect()V

    return-void
.end method

.method private whichContentStore()Landroid/net/Uri;
    .locals 2

    .line 1245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 1248
    :cond_0
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private writeUncompressedImage(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 901
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V

    return-void
.end method

.method private writeUncompressedImage(Ljava/io/InputStream;Landroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Exception while closing file input stream."

    const-string v1, "Exception while closing output stream."

    const-string v2, "CameraLauncher"

    const/4 v3, 0x0

    .line 866
    :try_start_0
    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    const/16 p2, 0x1000

    .line 867
    new-array p2, p2, [B

    .line 869
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    .line 870
    invoke-virtual {v3, p2, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 876
    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 878
    :catch_0
    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 883
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 885
    :catch_1
    invoke-static {v2, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception p2

    if-eqz v3, :cond_3

    .line 876
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 878
    :catch_2
    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 883
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 885
    :catch_3
    invoke-static {v2, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_4
    :goto_4
    throw p2

    return-void
.end method


# virtual methods
.method public calculateAspectRatio(II)[I
    .locals 8

    .line 1113
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 1114
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-gtz v0, :cond_0

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    if-lez v0, :cond_1

    if-gtz v1, :cond_1

    int-to-double v1, v0

    int-to-double v3, p1

    .line 1123
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    int-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p1

    double-to-int p2, v1

    :goto_0
    move p1, v0

    goto :goto_2

    :cond_1
    if-gtz v0, :cond_2

    if-lez v1, :cond_2

    int-to-double v2, v1

    int-to-double v4, p2

    .line 1127
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, p1

    double-to-int p1, v2

    goto :goto_1

    :cond_2
    int-to-double v2, v0

    int-to-double v4, v1

    .line 1136
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    int-to-double v4, p1

    int-to-double v6, p2

    .line 1137
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    cmpl-double v6, v4, v2

    if-lez v6, :cond_3

    mul-int p2, p2, v0

    .line 1140
    div-int/2addr p2, p1

    goto :goto_0

    :cond_3
    cmpg-double v6, v4, v2

    if-gez v6, :cond_4

    mul-int p1, p1, v1

    .line 1142
    div-int/2addr p1, p2

    goto :goto_1

    :cond_4
    move p1, v0

    :goto_1
    move p2, v1

    :goto_2
    const/4 v0, 0x2

    .line 1146
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0
.end method

.method public callTakePicture(II)V
    .locals 10

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 254
    invoke-static {p0, v0}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 255
    invoke-static {p0, v2}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v5, "android.permission.CAMERA"

    .line 256
    invoke-static {p0, v5}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 265
    :try_start_0
    iget-object v6, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 266
    iget-object v7, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 268
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 269
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    :cond_2
    move v3, v6

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 282
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->takePicture(II)V

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    .line 284
    invoke-static {p0, v4, v5}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    if-nez v1, :cond_6

    if-eqz v3, :cond_6

    .line 286
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v4, p1}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    goto :goto_3

    .line 289
    :cond_6
    sget-object p1, Lorg/apache/cordova/camera/CameraLauncher;->permissions:[Ljava/lang/String;

    invoke-static {p0, v4, p1}, Lorg/apache/cordova/PermissionHelper;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 143
    iput-object p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 146
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "APPLICATION_ID"

    invoke-static {v1, v2}, Lorg/apache/cordova/BuildHelper;->getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->preferences:Lorg/apache/cordova/CordovaPreferences;

    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    const-string v3, "applicationId"

    invoke-virtual {v1, v3, v2}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    const-string v1, "takePicture"

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 151
    iput p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    .line 152
    iput p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    .line 153
    iput-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 154
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 155
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 156
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 157
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/16 v2, 0x32

    .line 158
    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    .line 161
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    const/4 v2, 0x2

    .line 162
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    .line 163
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/4 v3, 0x3

    .line 164
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v3, 0x4

    .line 165
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const/4 v3, 0x5

    .line 166
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const/4 v3, 0x6

    .line 167
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const/4 v3, 0x7

    .line 168
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    const/16 v3, 0x8

    .line 169
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    const/16 v3, 0x9

    .line 170
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    .line 174
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const/4 v3, -0x1

    if-ge p2, p1, :cond_0

    .line 175
    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    .line 177
    :cond_0
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ge p2, p1, :cond_1

    .line 178
    iput v3, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    .line 183
    :cond_1
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-ne p2, v3, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-ne p2, v3, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const/16 v3, 0x64

    if-ne p2, v3, :cond_2

    iget-boolean p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    if-ne p2, p1, :cond_2

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-ne p2, p1, :cond_2

    .line 185
    iput v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 189
    :cond_2
    :try_start_0
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-ne p2, p1, :cond_3

    .line 190
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p2, v0}, Lorg/apache/cordova/camera/CameraLauncher;->callTakePicture(II)V

    goto :goto_0

    .line 192
    :cond_3
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    if-ne p2, v2, :cond_6

    .line 194
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/cordova/PermissionHelper;->hasPermission(Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 195
    invoke-static {p0, p1, v0}, Lorg/apache/cordova/PermissionHelper;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_5
    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/cordova/camera/CameraLauncher;->getImage(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_6
    :goto_0
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 210
    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 211
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return p1

    :catch_0
    const-string p2, "Illegal Argument Exception"

    .line 203
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 204
    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 205
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return p1

    :cond_7
    return v1
.end method

.method public failPicture(Ljava/lang/String;)V
    .locals 1

    .line 1285
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method public getImage(III)V
    .locals 5

    .line 370
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 373
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const-string v1, "android.intent.category.OPENABLE"

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const-string v0, "image/*"

    .line 374
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    iget-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.PICK"

    .line 376
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "crop"

    const-string v1, "true"

    .line 377
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v0, :cond_0

    const-string v1, "outputX"

    .line 379
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    :cond_0
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v0, :cond_1

    const-string v1, "outputY"

    .line 382
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    :cond_1
    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    if-lez v0, :cond_2

    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    if-lez v1, :cond_2

    if-ne v1, v0, :cond_2

    const-string v0, "aspectX"

    .line 385
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    .line 386
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    .line 390
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    const-string v1, "output"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    const-string v0, "video/*"

    .line 396
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Get Video"

    goto :goto_1

    :cond_5
    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    const-string v0, "*/*"

    .line 403
    invoke-virtual {p3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Get All"

    goto :goto_1

    :cond_6
    :goto_0
    const-string v0, "Get Picture"

    .line 408
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v1, :cond_7

    .line 409
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p3

    add-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, p2

    add-int/2addr p1, v3

    invoke-interface {v1, p0, p3, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    :cond_7
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 768
    div-int/lit8 v0, p1, 0x10

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 769
    rem-int/lit8 v2, p1, 0x10

    sub-int/2addr v2, v1

    const-string v3, "Did not complete!"

    const/16 v4, 0x64

    const-string v5, "No Image Selected"

    const/4 v6, -0x1

    if-lt p1, v4, :cond_2

    if-ne p2, v6, :cond_0

    sub-int/2addr p1, v4

    .line 779
    :try_start_0
    invoke-direct {p0, p1, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 781
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "CameraLauncher"

    const-string p2, "Unable to write to file"

    .line 782
    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 787
    invoke-virtual {p0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 792
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_6

    if-ne p2, v6, :cond_4

    .line 800
    :try_start_1
    iget-boolean p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    if-eqz p1, :cond_3

    .line 801
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".provider"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    .line 803
    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object v0

    .line 801
    invoke-static {p1, p2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 804
    invoke-direct {p0, p1, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->performCrop(Landroid/net/Uri;ILandroid/content/Intent;)V

    goto :goto_0

    .line 806
    :cond_3
    invoke-direct {p0, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->processResultFromCamera(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 809
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "Error capturing image."

    .line 810
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 816
    invoke-virtual {p0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    .line 821
    :cond_5
    invoke-virtual {p0, v3}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    const/4 p1, 0x2

    if-ne v0, p1, :cond_a

    :cond_7
    if-ne p2, v6, :cond_8

    if-eqz p3, :cond_8

    .line 829
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lorg/apache/cordova/camera/CameraLauncher$1;

    invoke-direct {p2, p0, v2, p3}, Lorg/apache/cordova/camera/CameraLauncher$1;-><init>(Lorg/apache/cordova/camera/CameraLauncher;ILandroid/content/Intent;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_8
    if-nez p2, :cond_9

    .line 835
    invoke-virtual {p0, v5}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p1, "Selection did not complete!"

    .line 837
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .line 1299
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->scanMe:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CameraLauncher"

    const-string v1, "Can\'t scan file in MediaScanner after taking picture"

    .line 1301
    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1313
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1315
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance p2, Lorg/apache/cordova/PluginResult;

    sget-object p3, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const/16 v0, 0x14

    invoke-direct {p2, p3, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    goto :goto_1

    .line 1324
    :cond_2
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget p3, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/cordova/camera/CameraLauncher;->getImage(III)V

    goto :goto_1

    .line 1321
    :cond_3
    iget p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    iget p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/camera/CameraLauncher;->takePicture(II)V

    :goto_1
    return-void
.end method

.method public onRestoreStateForActivityResult(Landroid/os/Bundle;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "destType"

    .line 1360
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    const-string v0, "srcType"

    .line 1361
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    const-string v0, "mQuality"

    .line 1362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const-string v0, "targetWidth"

    .line 1363
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const-string v0, "targetHeight"

    .line 1364
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const-string v0, "encodingType"

    .line 1365
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const-string v0, "mediaType"

    .line 1366
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const-string v0, "numPics"

    .line 1367
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    const-string v0, "allowEdit"

    .line 1368
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    const-string v0, "correctOrientation"

    .line 1369
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    const-string v0, "saveToPhotoAlbum"

    .line 1370
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    const-string v0, "croppedUri"

    .line 1372
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    :cond_0
    const-string v0, "imageUri"

    .line 1376
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1378
    new-instance v1, Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/cordova/camera/CordovaUri;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    .line 1381
    :cond_1
    iput-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 1335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1336
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->destType:I

    const-string v2, "destType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->srcType:I

    const-string v2, "srcType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1338
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    const-string v2, "mQuality"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1339
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetWidth:I

    const-string v2, "targetWidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1340
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->targetHeight:I

    const-string v2, "targetHeight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->encodingType:I

    const-string v2, "encodingType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1342
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mediaType:I

    const-string v2, "mediaType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1343
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    const-string v2, "numPics"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1344
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->allowEdit:Z

    const-string v2, "allowEdit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1345
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->correctOrientation:Z

    const-string v2, "correctOrientation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1346
    iget-boolean v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->saveToPhotoAlbum:Z

    const-string v2, "saveToPhotoAlbum"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1348
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->croppedUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 1349
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "croppedUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    if-eqz v1, :cond_1

    .line 1353
    invoke-virtual {v1}, Lorg/apache/cordova/camera/CordovaUri;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageUri"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1307
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {p1}, Landroid/media/MediaScannerConnection;->disconnect()V

    return-void
.end method

.method public processPicture(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1258
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p2, :cond_0

    .line 1260
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    .line 1261
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1264
    :goto_0
    :try_start_0
    iget v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->mQuality:I

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const/4 p2, 0x2

    .line 1266
    invoke-static {p1, p2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    .line 1267
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 1268
    iget-object p1, p0, Lorg/apache/cordova/camera/CameraLauncher;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "Error compressing image."

    .line 1274
    invoke-virtual {p0, p1}, Lorg/apache/cordova/camera/CameraLauncher;->failPicture(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public takePicture(II)V
    .locals 5

    .line 296
    invoke-direct {p0}, Lorg/apache/cordova/camera/CameraLauncher;->whichContentStore()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/camera/CameraLauncher;->queryImgDB(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/camera/CameraLauncher;->numPics:I

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-direct {p0, p2}, Lorg/apache/cordova/camera/CameraLauncher;->createCaptureFile(I)Ljava/io/File;

    move-result-object p2

    .line 303
    new-instance v1, Lorg/apache/cordova/camera/CordovaUri;

    iget-object v2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/cordova/camera/CameraLauncher;->applicationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/apache/cordova/camera/CordovaUri;-><init>(Landroid/net/Uri;)V

    iput-object v1, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    .line 306
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->imageUri:Lorg/apache/cordova/camera/CordovaUri;

    invoke-virtual {p2}, Lorg/apache/cordova/camera/CordovaUri;->getCorrectUri()Landroid/net/Uri;

    move-result-object p2

    const-string v1, "output"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 308
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz p2, :cond_1

    .line 312
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 313
    invoke-virtual {v0, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 315
    iget-object p2, p0, Lorg/apache/cordova/camera/CameraLauncher;->cordova:Lorg/apache/cordova/CordovaInterface;

    add-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "CameraLauncher"

    const-string p2, "Error: You don\'t have a default camera.  Your device may not be CTS complaint."

    .line 319
    invoke-static {p1, p2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
