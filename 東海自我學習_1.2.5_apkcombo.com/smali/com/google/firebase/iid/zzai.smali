.class final synthetic Lcom/google/firebase/iid/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/iid/zzak;


# instance fields
.field private final zzcb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzai;->zzcb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzai;->zzcb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0}, Lcom/google/firebase/iid/zzah;->zzb(Lcom/google/android/gms/tasks/TaskCompletionSource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
