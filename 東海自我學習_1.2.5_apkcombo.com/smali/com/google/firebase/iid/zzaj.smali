.class final synthetic Lcom/google/firebase/iid/zzaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzak;


# instance fields
.field private final zzbb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final zzcc:Lcom/google/firebase/iid/zzah;

.field private final zzcd:Lcom/google/firebase/iid/zzak;

.field private final zzce:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzah;Lcom/google/firebase/iid/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzaj;->zzcc:Lcom/google/firebase/iid/zzah;

    iput-object p2, p0, Lcom/google/firebase/iid/zzaj;->zzcd:Lcom/google/firebase/iid/zzak;

    iput-object p3, p0, Lcom/google/firebase/iid/zzaj;->zzbb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/firebase/iid/zzaj;->zzce:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final zzp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/iid/zzaj;->zzcc:Lcom/google/firebase/iid/zzah;

    iget-object v1, p0, Lcom/google/firebase/iid/zzaj;->zzcd:Lcom/google/firebase/iid/zzak;

    iget-object v2, p0, Lcom/google/firebase/iid/zzaj;->zzbb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v3, p0, Lcom/google/firebase/iid/zzaj;->zzce:Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/iid/zzah;->zza(Lcom/google/firebase/iid/zzak;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
