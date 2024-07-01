.class Lcom/google/android/gms/internal/measurement/zzjp;
.super Lcom/google/android/gms/internal/measurement/zzhg;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzec;


# instance fields
.field protected final zzajp:Lcom/google/android/gms/internal/measurement/zzjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjr;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzla()Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzhg;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    return-void
.end method


# virtual methods
.method public zziw()Lcom/google/android/gms/internal/measurement/zzeb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zziw()Lcom/google/android/gms/internal/measurement/zzeb;

    move-result-object v0

    return-object v0
.end method

.method public zzix()Lcom/google/android/gms/internal/measurement/zzei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjp;->zzajp:Lcom/google/android/gms/internal/measurement/zzjr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjr;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    return-object v0
.end method
