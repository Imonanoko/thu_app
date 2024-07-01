.class public Lnl/xservices/plugins/GooglePlus;
.super Lorg/apache/cordova/CordovaPlugin;
.source "GooglePlus.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final ACTION_DISCONNECT:Ljava/lang/String; = "disconnect"

.field public static final ACTION_GET_SIGNING_CERTIFICATE_FINGERPRINT:Ljava/lang/String; = "getSigningCertificateFingerprint"

.field public static final ACTION_IS_AVAILABLE:Ljava/lang/String; = "isAvailable"

.field public static final ACTION_LOGIN:Ljava/lang/String; = "login"

.field public static final ACTION_LOGOUT:Ljava/lang/String; = "logout"

.field public static final ACTION_TRY_SILENT_LOGIN:Ljava/lang/String; = "trySilentLogin"

.field public static final ARGUMENT_HOSTED_DOMAIN:Ljava/lang/String; = "hostedDomain"

.field public static final ARGUMENT_OFFLINE_KEY:Ljava/lang/String; = "offline"

.field public static final ARGUMENT_SCOPES:Ljava/lang/String; = "scopes"

.field public static final ARGUMENT_WEB_CLIENT_ID:Ljava/lang/String; = "webClientId"

.field private static final FIELD_ACCESS_TOKEN:Ljava/lang/String; = "accessToken"

.field private static final FIELD_TOKEN_EXPIRES:Ljava/lang/String; = "expires"

.field private static final FIELD_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"

.field public static final KAssumeStaleTokenSec:I = 0x3c

.field public static final RC_GOOGLEPLUS:I = 0x610

.field public static final TAG:Ljava/lang/String; = "GooglePlugin"

.field private static final VERIFY_TOKEN_URL:Ljava/lang/String; = "https://www.googleapis.com/oauth2/v1/tokeninfo?access_token="


# instance fields
.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private savedCallbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnl/xservices/plugins/GooglePlus;)Lorg/apache/cordova/CallbackContext;
    .locals 0

    .line 45
    iget-object p0, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    return-object p0
.end method

.method static synthetic access$100(Lnl/xservices/plugins/GooglePlus;Landroid/app/Activity;Landroid/accounts/Account;Z)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lnl/xservices/plugins/GooglePlus;->getAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Z)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized buildGoogleApiClient(Lorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-string v1, "GooglePlugin"

    const-string v2, "Building Google options"

    .line 136
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 142
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestProfile()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    const-string v2, "scopes"

    .line 147
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 152
    new-instance v7, Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v7, v6}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-array v6, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "webClientId"

    .line 157
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 161
    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    const-string v4, "offline"

    .line 164
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 165
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    :cond_3
    const-string v2, "hostedDomain"

    .line 170
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    invoke-virtual {v1, p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->setHostedDomain(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    :cond_4
    const-string p1, "GooglePlugin"

    const-string v0, "Building GoogleApiClient"

    .line 178
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    .line 182
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-string p1, "GooglePlugin"

    const-string v0, "GoogleApiClient built"

    .line 186
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 243
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Please use login or trySilentLogin before disconnecting"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->revokeAccess(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lnl/xservices/plugins/GooglePlus$2;

    invoke-direct {v1, p0}, Lnl/xservices/plugins/GooglePlus$2;-><init>(Lnl/xservices/plugins/GooglePlus;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 449
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 456
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Z)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v2, "oauth2:profile email"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v4, p1

    .line 403
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 404
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    .line 405
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    :try_start_0
    invoke-direct {p0, v0}, Lnl/xservices/plugins/GooglePlus;->verifyToken(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    if-eqz p3, :cond_0

    const-string p3, "com.google"

    .line 410
    invoke-virtual {v7, p3, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 411
    invoke-direct {p0, p1, p2, p3}, Lnl/xservices/plugins/GooglePlus;->getAuthToken(Landroid/app/Activity;Landroid/accounts/Account;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 413
    :cond_0
    throw v1
.end method

.method private getSigningCertificateFingerprint()V
    .locals 8

    .line 370
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    .line 374
    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 375
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    .line 376
    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v2, ""

    const-string v3, "SHA1"

    .line 380
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 381
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 382
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    array-length v3, v0

    move-object v4, v2

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x10

    .line 383
    invoke-static {v6, v7}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    .line 384
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 387
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 397
    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 322
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v0, "GoogleApiClient was never initialized"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 327
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v0, "SignInResult is null"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "GooglePlugin"

    const-string v1, "Handling SignIn Result"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Wasn\'t signed in"

    .line 334
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0

    .line 339
    :cond_2
    new-instance v0, Lnl/xservices/plugins/GooglePlus$3;

    invoke-direct {v0, p0, p1}, Lnl/xservices/plugins/GooglePlus$3;-><init>(Lnl/xservices/plugins/GooglePlus;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 365
    invoke-virtual {v0, p1}, Lnl/xservices/plugins/GooglePlus$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method private signIn()V
    .locals 3

    .line 196
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x610

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private signOut()V
    .locals 2

    .line 215
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Please use login or trySilentLogin before logging out"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lnl/xservices/plugins/GooglePlus$1;

    invoke-direct {v1, p0}, Lnl/xservices/plugins/GooglePlus$1;-><init>(Lnl/xservices/plugins/GooglePlus;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    :cond_1
    return-void
.end method

.method private trySilentLogin()V
    .locals 2

    .line 204
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    iget-object v1, p0, Lnl/xservices/plugins/GooglePlus;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->silentSignIn(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/OptionalPendingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/OptionalPendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {p0, v0}, Lnl/xservices/plugins/GooglePlus;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    :cond_0
    return-void
.end method

.method private verifyToken(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www.googleapis.com/oauth2/v1/tokeninfo?access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    .line 421
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 422
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 423
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 422
    invoke-static {v1}, Lnl/xservices/plugins/GooglePlus;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", verification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthenticatedBackend"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "expires_in"

    .line 439
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_0

    const-string v2, "accessToken"

    .line 443
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    int-to-long v2, v0

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    const-string p1, "expires"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v1

    .line 441
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Auth token soon expiring."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    iput-object p3, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string p3, "isAvailable"

    .line 82
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 84
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    const-string p2, "true"

    invoke-virtual {p1, p2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "login"

    .line 86
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const-string v1, "GooglePlugin"

    if-eqz p3, :cond_1

    .line 88
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lnl/xservices/plugins/GooglePlus;->buildGoogleApiClient(Lorg/json/JSONObject;)V

    const-string p1, "Trying to Log in!"

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 93
    invoke-direct {p0}, Lnl/xservices/plugins/GooglePlus;->signIn()V

    goto :goto_0

    :cond_1
    const-string p3, "trySilentLogin"

    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 97
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lnl/xservices/plugins/GooglePlus;->buildGoogleApiClient(Lorg/json/JSONObject;)V

    const-string p1, "Trying to do silent login!"

    .line 99
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lnl/xservices/plugins/GooglePlus;->trySilentLogin()V

    goto :goto_0

    :cond_2
    const-string p2, "logout"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p1, "Trying to logout!"

    .line 103
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-direct {p0}, Lnl/xservices/plugins/GooglePlus;->signOut()V

    goto :goto_0

    :cond_3
    const-string p2, "disconnect"

    .line 106
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "Trying to disconnect the user"

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0}, Lnl/xservices/plugins/GooglePlus;->disconnect()V

    goto :goto_0

    :cond_4
    const-string p2, "getSigningCertificateFingerprint"

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 111
    invoke-direct {p0}, Lnl/xservices/plugins/GooglePlus;->getSigningCertificateFingerprint()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    const-string p1, "This action doesn\'t exist"

    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 289
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    const-string p2, "GooglePlugin"

    const-string v0, "In onActivityResult"

    .line 291
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x610

    if-ne p1, v0, :cond_0

    const-string p1, "One of our activities finished up"

    .line 294
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object p1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {p1, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object p1

    invoke-direct {p0, p1}, Lnl/xservices/plugins/GooglePlus;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    goto :goto_0

    :cond_0
    const-string p1, "This wasn\'t one of our activities"

    .line 299
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    const-string v0, "GooglePlugin"

    const-string v1, "Unresolvable failure in connecting to Google APIs"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus;->savedCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(I)V

    return-void
.end method
