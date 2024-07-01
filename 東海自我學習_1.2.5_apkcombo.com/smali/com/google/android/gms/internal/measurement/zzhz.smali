.class final Lcom/google/android/gms/internal/measurement/zzhz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

.field private final synthetic zzaoc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhz;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/zzhz;->zzaoc:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhz;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzhz;->zzaoc:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzhk;Z)V

    return-void
.end method
