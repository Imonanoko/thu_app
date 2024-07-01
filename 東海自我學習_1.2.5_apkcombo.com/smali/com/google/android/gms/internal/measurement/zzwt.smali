.class final synthetic Lcom/google/android/gms/internal/measurement/zzwt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzxb;


# instance fields
.field private final zzbnn:Lcom/google/android/gms/internal/measurement/zzws;

.field private final zzbno:Lcom/google/android/gms/internal/measurement/zzwp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzws;Lcom/google/android/gms/internal/measurement/zzwp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzwt;->zzbnn:Lcom/google/android/gms/internal/measurement/zzws;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzwt;->zzbno:Lcom/google/android/gms/internal/measurement/zzwp;

    return-void
.end method


# virtual methods
.method public final zzsc()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzwt;->zzbnn:Lcom/google/android/gms/internal/measurement/zzws;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzwt;->zzbno:Lcom/google/android/gms/internal/measurement/zzwp;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzwp;->zzrt()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzws;->zzbnh:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
