.class public Lcom/marianhello/bgloc/sync/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# instance fields
.field private mAuthenticator:Lcom/marianhello/bgloc/sync/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/marianhello/bgloc/sync/AuthenticatorService;->mAuthenticator:Lcom/marianhello/bgloc/sync/Authenticator;

    invoke-virtual {p1}, Lcom/marianhello/bgloc/sync/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 17
    new-instance v0, Lcom/marianhello/bgloc/sync/Authenticator;

    invoke-direct {v0, p0}, Lcom/marianhello/bgloc/sync/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/marianhello/bgloc/sync/AuthenticatorService;->mAuthenticator:Lcom/marianhello/bgloc/sync/Authenticator;

    return-void
.end method
