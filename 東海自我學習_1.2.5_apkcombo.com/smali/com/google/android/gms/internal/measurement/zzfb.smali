.class public final Lcom/google/android/gms/internal/measurement/zzfb;
.super Lcom/google/android/gms/internal/measurement/zzhh;


# instance fields
.field private zzadm:Ljava/lang/String;

.field private zzadt:Ljava/lang/String;

.field private zzadx:J

.field private zzaen:I

.field private zzaie:I

.field private zzaif:J

.field private zztg:Ljava/lang/String;

.field private zzth:Ljava/lang/String;

.field private zzti:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzgl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzhh;-><init>(Lcom/google/android/gms/internal/measurement/zzgl;)V

    return-void
.end method

.method private final zzgj()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzef;->zzay(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzacw:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final getGmpAppId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadm:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic zzab()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzab()V

    return-void
.end method

.method final zzah()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzti:Ljava/lang/String;

    return-object v0
.end method

.method final zzbi(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzdz;
    .locals 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    new-instance v24, Lcom/google/android/gms/internal/measurement/zzdz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzah()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzfb;->getGmpAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzth:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzij()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget-object v7, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadt:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    iget-wide v8, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaif:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzacw:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzjr;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/measurement/zzka;->zzd(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaif:J

    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaif:J

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzacw:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgl;->isEnabled()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/zzfr;->zzakn:Z

    const/4 v8, 0x1

    xor-int/lit8 v14, v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzgj()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    const-wide/16 v16, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/zzfb;->zzacw:Lcom/google/android/gms/internal/measurement/zzgl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzgl;->zzjt()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzfb;->zzik()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v1

    const-string v9, "google_analytics_adid_collection_enabled"

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/measurement/zzef;->zzas(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v1

    const-string v12, "google_analytics_ssaid_collection_enabled"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/measurement/zzef;->zzas(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfr;->zzje()Z

    move-result v23

    const-wide/16 v8, 0x30a3

    move-object/from16 v1, v24

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/internal/measurement/zzdz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZZ)V

    return-object v24
.end method

.method public final bridge synthetic zzbt()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzbt()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfr()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfr()V

    return-void
.end method

.method public final bridge synthetic zzfs()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfs()V

    return-void
.end method

.method public final bridge synthetic zzft()Lcom/google/android/gms/internal/measurement/zzdu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzft()Lcom/google/android/gms/internal/measurement/zzdu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfu()Lcom/google/android/gms/internal/measurement/zzhk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfu()Lcom/google/android/gms/internal/measurement/zzhk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfv()Lcom/google/android/gms/internal/measurement/zzfb;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfv()Lcom/google/android/gms/internal/measurement/zzfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfw()Lcom/google/android/gms/internal/measurement/zzeo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfw()Lcom/google/android/gms/internal/measurement/zzeo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfx()Lcom/google/android/gms/internal/measurement/zzii;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfx()Lcom/google/android/gms/internal/measurement/zzii;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfy()Lcom/google/android/gms/internal/measurement/zzif;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfy()Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzfz()Lcom/google/android/gms/internal/measurement/zzfc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzfz()Lcom/google/android/gms/internal/measurement/zzfc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzga()Lcom/google/android/gms/internal/measurement/zzfe;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgb()Lcom/google/android/gms/internal/measurement/zzka;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgc()Lcom/google/android/gms/internal/measurement/zzjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgc()Lcom/google/android/gms/internal/measurement/zzjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgd()Lcom/google/android/gms/internal/measurement/zzgg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgd()Lcom/google/android/gms/internal/measurement/zzgg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzge()Lcom/google/android/gms/internal/measurement/zzfg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgf()Lcom/google/android/gms/internal/measurement/zzfr;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgf()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzgg()Lcom/google/android/gms/internal/measurement/zzef;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v0

    return-object v0
.end method

.method protected final zzhf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzih()V
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "Unknown"

    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, "unknown"

    const/high16 v6, -0x80000000

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v1, v8, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v2

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v5, :cond_2

    const-string v5, "manual_install"

    goto :goto_1

    :cond_2
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v5, v3

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    :try_start_2
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_3

    :catch_2
    move-object v1, v2

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v7

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving package info. appId, appName"

    invoke-virtual {v7, v9, v8, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzti:Ljava/lang/String;

    iput-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadt:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzth:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaie:I

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zztg:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaif:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/common/api/internal/GoogleServices;->initialize(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_7

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v8, "GoogleService failed to initialize (no status)"

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v5

    const-string v10, "GoogleService failed to initialize, status"

    invoke-virtual {v8, v10, v9, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_6
    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v5

    const-string v7, "firebase_analytics_collection_enabled"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzef;->zzas(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzef;->zzhg()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_deactivated=1"

    :goto_7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Collection disabled with firebase_analytics_collection_enabled=0"

    goto :goto_7

    :cond_9
    if-nez v5, :cond_a

    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->isMeasurementExplicitlyDisabled()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzir()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v6, "Collection disabled with google_app_measurement_enable=0"

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    const-string v7, "Collection enabled"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v6, 0x0

    :goto_9
    iput-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadm:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadx:J

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->getGoogleAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v1, v3

    :cond_c
    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadm:Ljava/lang/String;

    if-eqz v6, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v1

    const-string v2, "App package, google app id"

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzti:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzadm:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/InstantApps;->isInstantApp(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaen:I

    return-void

    :cond_e
    iput v4, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaen:I

    return-void
.end method

.method final zzii()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzka;->zzlc()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const-string v0, "%032x"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzij()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaie:I

    return v0
.end method

.method final zzik()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhh;->zzch()V

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfb;->zzaen:I

    return v0
.end method
