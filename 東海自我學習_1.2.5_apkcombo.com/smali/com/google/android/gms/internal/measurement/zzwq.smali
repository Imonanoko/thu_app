.class final Lcom/google/android/gms/internal/measurement/zzwq;
.super Landroid/database/ContentObserver;


# instance fields
.field private final synthetic zzbnb:Lcom/google/android/gms/internal/measurement/zzwp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzwp;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->zzbnb:Lcom/google/android/gms/internal/measurement/zzwp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->zzbnb:Lcom/google/android/gms/internal/measurement/zzwp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzwp;->zzru()V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwq;->zzbnb:Lcom/google/android/gms/internal/measurement/zzwp;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzwp;->zza(Lcom/google/android/gms/internal/measurement/zzwp;)V

    return-void
.end method
