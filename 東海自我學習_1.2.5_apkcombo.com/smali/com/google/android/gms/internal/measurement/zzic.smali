.class final Lcom/google/android/gms/internal/measurement/zzic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic zzanh:Ljava/lang/String;

.field private final synthetic zzanj:Ljava/lang/String;

.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

.field private final synthetic zzany:J

.field private final synthetic zzaoe:Landroid/os/Bundle;

.field private final synthetic zzaof:Z

.field private final synthetic zzaog:Z

.field private final synthetic zzaoh:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzic;->val$name:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzany:J

    iput-object p6, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaoe:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaof:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaog:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaoh:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzic;->val$name:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzany:J

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaoe:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaof:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaog:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzaoh:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/measurement/zzic;->zzanj:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
