.class final synthetic Lcom/google/android/gms/internal/measurement/zzjd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabp:I

.field private final zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

.field private final zzapq:Lcom/google/android/gms/internal/measurement/zzfg;

.field private final zzapr:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjc;ILcom/google/android/gms/internal/measurement/zzfg;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzabp:I

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapq:Lcom/google/android/gms/internal/measurement/zzfg;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapr:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzabp:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapq:Lcom/google/android/gms/internal/measurement/zzfg;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzjd;->zzapr:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(ILcom/google/android/gms/internal/measurement/zzfg;Landroid/content/Intent;)V

    return-void
.end method
