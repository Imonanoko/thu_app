.class final Lcom/google/firebase/iid/zzam;
.super Landroid/os/Handler;


# instance fields
.field private final synthetic zzck:Lcom/google/firebase/iid/zzal;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzal;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/iid/zzam;->zzck:Lcom/google/firebase/iid/zzal;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/zzam;->zzck:Lcom/google/firebase/iid/zzal;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/zzal;->zza(Lcom/google/firebase/iid/zzal;Landroid/os/Message;)V

    return-void
.end method
