.class final Lcom/google/android/gms/internal/measurement/zzjb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzapn:Lcom/google/android/gms/internal/measurement/zziw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziw;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Lcom/google/android/gms/internal/measurement/zzii;Lcom/google/android/gms/internal/measurement/zzey;)Lcom/google/android/gms/internal/measurement/zzey;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziw;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzii;->zzb(Lcom/google/android/gms/internal/measurement/zzii;)V

    return-void
.end method
