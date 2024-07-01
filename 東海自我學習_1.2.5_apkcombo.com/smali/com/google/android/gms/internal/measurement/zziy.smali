.class final Lcom/google/android/gms/internal/measurement/zziy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Landroid/content/ComponentName;

.field private final synthetic zzapn:Lcom/google/android/gms/internal/measurement/zziw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zziw;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziy;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zziy;->val$name:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziy;->zzapn:Lcom/google/android/gms/internal/measurement/zziw;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zziw;->zzape:Lcom/google/android/gms/internal/measurement/zzii;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziy;->val$name:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzii;->zza(Lcom/google/android/gms/internal/measurement/zzii;Landroid/content/ComponentName;)V

    return-void
.end method
