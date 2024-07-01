.class final synthetic Lcom/google/firebase/iid/zzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzak;


# instance fields
.field private final zzaq:Lcom/google/firebase/iid/FirebaseInstanceId;

.field private final zzar:Ljava/lang/String;

.field private final zzas:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzk;->zzaq:Lcom/google/firebase/iid/FirebaseInstanceId;

    iput-object p2, p0, Lcom/google/firebase/iid/zzk;->zzar:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/iid/zzk;->zzas:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/iid/zzk;->zzaq:Lcom/google/firebase/iid/FirebaseInstanceId;

    iget-object v1, p0, Lcom/google/firebase/iid/zzk;->zzar:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/iid/zzk;->zzas:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
