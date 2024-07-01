.class final Lcom/google/android/gms/internal/measurement/zzgz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzanf:Lcom/google/android/gms/internal/measurement/zzgn;

.field private final synthetic zzanj:Ljava/lang/String;

.field private final synthetic zzank:Lcom/google/android/gms/internal/measurement/zzeu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgn;Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzanf:Lcom/google/android/gms/internal/measurement/zzgn;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzank:Lcom/google/android/gms/internal/measurement/zzeu;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzanj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzanf:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzgn;)Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzkx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzanf:Lcom/google/android/gms/internal/measurement/zzgn;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzgn;->zza(Lcom/google/android/gms/internal/measurement/zzgn;)Lcom/google/android/gms/internal/measurement/zzjr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzank:Lcom/google/android/gms/internal/measurement/zzeu;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzgz;->zzanj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzjr;->zzc(Lcom/google/android/gms/internal/measurement/zzeu;Ljava/lang/String;)V

    return-void
.end method
