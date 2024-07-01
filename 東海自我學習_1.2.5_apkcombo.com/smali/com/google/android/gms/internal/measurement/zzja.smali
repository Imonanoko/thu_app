.class final Lcom/google/android/gms/internal/measurement/zzja;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzapn:Lcom/google/android/gms/internal/measurement/zziw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziw;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzja;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zziw;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Lcom/google/android/gms/internal/measurement/zzii;Landroid/content/ComponentName;)V

    return-void
.end method
