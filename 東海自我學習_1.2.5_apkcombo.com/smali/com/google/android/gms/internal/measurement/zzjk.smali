.class final Lcom/google/android/gms/internal/measurement/zzjk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzadj:J

.field private final synthetic zzapx:Lcom/google/android/gms/internal/measurement/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjh;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzapx:Lcom/google/android/gms/internal/measurement/zzjh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzadj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzapx:Lcom/google/android/gms/internal/measurement/zzjh;

    iget-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzjk;->zzadj:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjh;->zza(Lcom/google/android/gms/internal/measurement/zzjh;J)V

    return-void
.end method
