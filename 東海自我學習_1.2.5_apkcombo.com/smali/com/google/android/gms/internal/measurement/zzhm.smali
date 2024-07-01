.class final Lcom/google/android/gms/internal/measurement/zzhm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic zzanh:Ljava/lang/String;

.field private final synthetic zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

.field private final synthetic zzanx:Ljava/lang/Object;

.field private final synthetic zzany:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzhm;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanx:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzany:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanw:Lcom/google/android/gms/internal/measurement/zzhk;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanh:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzhm;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzanx:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/zzhm;->zzany:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzhk;->zza(Lcom/google/android/gms/internal/measurement/zzhk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
