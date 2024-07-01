.class public Lorg/apache/cordova/camera/CordovaUri;
.super Ljava/lang/Object;
.source "CordovaUri.java"


# instance fields
.field private androidUri:Landroid/net/Uri;

.field private fileName:Ljava/lang/String;

.field private fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iput-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->androidUri:Landroid/net/Uri;

    .line 52
    iget-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->androidUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lorg/apache/cordova/camera/CordovaUri;->getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->fileName:Ljava/lang/String;

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/cordova/camera/CordovaUri;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->fileUri:Landroid/net/Uri;

    goto :goto_0

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->fileUri:Landroid/net/Uri;

    .line 58
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/cordova/camera/FileHelper;->stripFileProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/camera/CordovaUri;->fileName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private getFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "external_files"

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 100
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


# virtual methods
.method public getCorrectUri()Landroid/net/Uri;
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lorg/apache/cordova/camera/CordovaUri;->androidUri:Landroid/net/Uri;

    return-object v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/camera/CordovaUri;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/cordova/camera/CordovaUri;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/cordova/camera/CordovaUri;->fileUri:Landroid/net/Uri;

    return-object v0
.end method
