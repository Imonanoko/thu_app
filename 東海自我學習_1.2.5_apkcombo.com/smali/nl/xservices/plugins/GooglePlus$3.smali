.class Lnl/xservices/plugins/GooglePlus$3;
.super Landroid/os/AsyncTask;
.source "GooglePlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/GooglePlus;->handleSignInResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/GooglePlus;

.field final synthetic val$signInResult:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/GooglePlus;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lnl/xservices/plugins/GooglePlus$3;->this$0:Lnl/xservices/plugins/GooglePlus;

    iput-object p2, p0, Lnl/xservices/plugins/GooglePlus$3;->val$signInResult:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnl/xservices/plugins/GooglePlus$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const-string p1, "expires_in"

    const-string v0, "expires"

    const-string v1, "accessToken"

    .line 342
    iget-object v2, p0, Lnl/xservices/plugins/GooglePlus$3;->val$signInResult:Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    .line 343
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 345
    :try_start_0
    iget-object v4, p0, Lnl/xservices/plugins/GooglePlus$3;->this$0:Lnl/xservices/plugins/GooglePlus;

    iget-object v5, p0, Lnl/xservices/plugins/GooglePlus$3;->this$0:Lnl/xservices/plugins/GooglePlus;

    iget-object v5, v5, Lnl/xservices/plugins/GooglePlus;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 346
    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    const/4 v7, 0x1

    .line 345
    invoke-static {v4, v5, v6, v7}, Lnl/xservices/plugins/GooglePlus;->access$100(Lnl/xservices/plugins/GooglePlus;Landroid/app/Activity;Landroid/accounts/Account;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 348
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "email"

    .line 351
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "idToken"

    .line 352
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "serverAuthCode"

    .line 353
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "userId"

    .line 354
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "displayName"

    .line 355
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "familyName"

    .line 356
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "givenName"

    .line 357
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "imageUrl"

    .line 358
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    iget-object p1, p0, Lnl/xservices/plugins/GooglePlus$3;->this$0:Lnl/xservices/plugins/GooglePlus;

    invoke-static {p1}, Lnl/xservices/plugins/GooglePlus;->access$000(Lnl/xservices/plugins/GooglePlus;)Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 361
    iget-object v0, p0, Lnl/xservices/plugins/GooglePlus$3;->this$0:Lnl/xservices/plugins/GooglePlus;

    invoke-static {v0}, Lnl/xservices/plugins/GooglePlus;->access$000(Lnl/xservices/plugins/GooglePlus;)Lorg/apache/cordova/CallbackContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trouble obtaining result, error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
