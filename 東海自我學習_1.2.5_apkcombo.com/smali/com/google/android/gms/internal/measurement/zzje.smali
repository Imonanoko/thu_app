.class final synthetic Lcom/google/android/gms/internal/measurement/zzje;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzabs:Landroid/app/job/JobParameters;

.field private final zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

.field private final zzaps:Lcom/google/android/gms/internal/measurement/zzfg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjc;Lcom/google/android/gms/internal/measurement/zzfg;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzaps:Lcom/google/android/gms/internal/measurement/zzfg;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzabs:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzapp:Lcom/google/android/gms/internal/measurement/zzjc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzaps:Lcom/google/android/gms/internal/measurement/zzfg;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzje;->zzabs:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjc;->zza(Lcom/google/android/gms/internal/measurement/zzfg;Landroid/app/job/JobParameters;)V

    return-void
.end method
