.class final Lcom/google/android/gms/internal/measurement/zzeb;
.super Lcom/google/android/gms/internal/measurement/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzjr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjq;-><init>(Lcom/google/android/gms/internal/measurement/zzjr;)V

    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkg;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkg;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkg;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzki;)Ljava/lang/Boolean;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzash:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzash:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzash:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzask:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzask:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzasi:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzash:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzasj:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzasj:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzasi:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzasi:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzask:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_4

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/zzki;->zzask:[Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v8, v1

    :goto_4
    if-ne v5, v4, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    move-object v9, v0

    :goto_5
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_6
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/measurement/zzkg;D)Ljava/lang/Boolean;
    .locals 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzarz:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzarz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzarz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasd:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasb:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzarz:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzarz:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasc:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasd:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasc:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasd:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    move-object v3, v1

    goto :goto_1

    :catch_0
    :cond_5
    :goto_0
    return-object v1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasb:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzkg;->zzasb:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v4, p1

    :goto_1
    if-ne v0, v2, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v3, :cond_14

    :cond_9
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v0, v7, :cond_12

    const/4 v8, 0x2

    if-eq v0, v8, :cond_10

    const/4 v9, 0x3

    if-eq v0, v9, :cond_c

    if-eq v0, v2, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v5, :cond_b

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v7, :cond_b

    const/4 v6, 0x1

    :cond_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_e

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v7, :cond_d

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v8}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_d

    const/4 v6, 0x1

    :cond_d
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_f

    const/4 v6, 0x1

    :cond_f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v7, :cond_11

    const/4 v6, 0x1

    :cond_11
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v5, :cond_13

    const/4 v6, 0x1

    :cond_13
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_14
    :goto_2
    return-object v1
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/measurement/zzkn;[Lcom/google/android/gms/internal/measurement/zzks;)[Lcom/google/android/gms/internal/measurement/zzkm;
    .locals 49
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/measurement/zzei;->zzbf(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v17, v0

    const/4 v8, 0x0

    :goto_1
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzkr;->zzauk:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    if-ge v8, v0, :cond_3

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzkr;->zzauk:[J

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/measurement/zzka;->zza([JI)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    move-object/from16 v18, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v19, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v20, v10

    const-string v10, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v0, v10, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/zzkr;->zzaul:[J

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/measurement/zzka;->zza([JI)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_1

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasy:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasx:Lcom/google/android/gms/internal/measurement/zzkr;

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkr;->zzaul:[J

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Ljava/util/BitSet;)[J

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzauk:[J

    move-object/from16 v0, v17

    move-object/from16 v2, v18

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const-string v17, "null"

    const-string v10, "Filter definition"

    const-string v5, "Skipping failed audience ID"

    if-eqz v14, :cond_3f

    new-instance v3, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v2, v14

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v21

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_3
    if-ge v13, v2, :cond_3f

    aget-object v8, v14, v13

    iget-object v9, v8, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    iget-object v6, v8, Lcom/google/android/gms/internal/measurement/zzkn;->zzata:[Lcom/google/android/gms/internal/measurement/zzko;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgg()Lcom/google/android/gms/internal/measurement/zzef;

    move-result-object v4

    move/from16 v28, v2

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzew;->zzahv:Lcom/google/android/gms/internal/measurement/zzex;

    invoke-virtual {v4, v15, v2}, Lcom/google/android/gms/internal/measurement/zzef;->zzd(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzex;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    const-string v2, "_eid"

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zzb(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_5

    const/16 v29, 0x1

    goto :goto_4

    :cond_5
    const/16 v29, 0x0

    :goto_4
    if-eqz v29, :cond_6

    move-object/from16 v30, v3

    const-string v3, "_ep"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v30, v3

    :cond_7
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    const-string v3, "_en"

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/measurement/zzka;->zzb(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Extra parameter without an event name. eventId"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v31, v0

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v35, v30

    const/16 v16, 0x0

    const/16 v30, 0x1

    goto/16 :goto_11

    :cond_8
    if-eqz v0, :cond_a

    if-eqz v18, :cond_a

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    cmp-long v3, v31, v33

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object v3, v0

    goto :goto_8

    :cond_a
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v15, v4}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v31, v0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_b

    goto/16 :goto_10

    :cond_b
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkn;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zzb(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/Long;

    goto :goto_6

    :goto_8
    const-wide/16 v31, 0x1

    sub-long v23, v23, v31

    cmp-long v0, v23, v21

    if-gtz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v4, "Clearing complex main event info. appId"

    invoke-virtual {v0, v4, v15}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "delete from main_event_params where app_id=?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v26, v3

    move-object/from16 v32, v5

    const/4 v5, 0x1

    :try_start_1
    new-array v3, v5, [Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v16, 0x0

    :try_start_2
    aput-object v15, v3, v16

    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v26, v3

    move-object/from16 v32, v5

    const/4 v5, 0x1

    :goto_9
    const/16 v16, 0x0

    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_b
    move-object/from16 v27, v10

    move-object/from16 v2, v26

    move-object/from16 v35, v30

    move-object/from16 v36, v32

    const/16 v30, 0x1

    move-object v10, v6

    move-object/from16 v32, v7

    goto :goto_c

    :cond_c
    move-object/from16 v26, v3

    move-object/from16 v32, v5

    const/4 v5, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    move-object/from16 v35, v30

    move-object/from16 v3, p1

    move-object/from16 v27, v10

    move-object/from16 v36, v32

    const/16 v30, 0x1

    move-object v10, v6

    move-wide/from16 v5, v23

    move-object/from16 v32, v7

    move-object/from16 v7, v26

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzkn;)Z

    move-object/from16 v2, v26

    :goto_c
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzata:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v0, v0

    array-length v3, v10

    add-int/2addr v0, v3

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/zzko;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzkn;->zzata:[Lcom/google/android/gms/internal/measurement/zzko;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_d
    if-ge v5, v4, :cond_e

    aget-object v7, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    move-object/from16 v26, v2

    iget-object v2, v7, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzko;

    move-result-object v2

    if-nez v2, :cond_d

    add-int/lit8 v2, v6, 0x1

    aput-object v7, v0, v6

    move v6, v2

    :cond_d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto :goto_d

    :cond_e
    move-object/from16 v26, v2

    if-lez v6, :cond_11

    array-length v2, v10

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_f

    aget-object v4, v10, v3

    add-int/lit8 v5, v6, 0x1

    aput-object v4, v0, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    goto :goto_e

    :cond_f
    array-length v2, v0

    if-ne v6, v2, :cond_10

    goto :goto_f

    :cond_10
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzko;

    :goto_f
    move-object v6, v0

    move-object v0, v9

    move-object v9, v6

    goto/16 :goto_15

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_12
    move-object/from16 v31, v0

    :goto_10
    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v35, v30

    const/16 v16, 0x0

    const/16 v30, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v0, v2, v9, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    move-object v8, v1

    move-object v9, v11

    move-object/from16 v48, v12

    move/from16 v16, v13

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v46, v27

    move-object/from16 v0, v31

    goto/16 :goto_2c

    :cond_13
    move-object/from16 v31, v0

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v35, v30

    const/16 v16, 0x0

    const/16 v30, 0x1

    move-object v10, v6

    if-eqz v29, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzgb()Lcom/google/android/gms/internal/measurement/zzka;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "_epc"

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/measurement/zzka;->zzb(Lcom/google/android/gms/internal/measurement/zzkn;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    goto :goto_12

    :cond_14
    move-object v0, v2

    :goto_12
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v0, v23, v21

    if-gtz v0, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v2, "Complex event with zero extra param count. eventName"

    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_13

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    move-object/from16 v3, p1

    move-object v0, v4

    move-wide/from16 v5, v23

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzkn;)Z

    :goto_13
    move-object/from16 v18, v0

    move-object/from16 v26, v8

    :goto_14
    move-object v0, v9

    move-object v9, v10

    goto :goto_15

    :cond_16
    move-object/from16 v31, v0

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    const/16 v16, 0x0

    const/16 v30, 0x1

    move-object v10, v6

    :cond_17
    move-object v0, v9

    move-object v9, v10

    move-object/from16 v26, v31

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/measurement/zzei;->zzf(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v29, Lcom/google/android/gms/internal/measurement/zzeq;

    iget-object v4, v8, Lcom/google/android/gms/internal/measurement/zzkn;->name:Ljava/lang/String;

    const-wide/16 v5, 0x1

    const-wide/16 v33, 0x1

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/zzkn;->zzatb:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    const-wide/16 v39, 0x0

    const/16 v31, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v2, v29

    move-object/from16 v3, p1

    const/4 v10, 0x2

    move-wide/from16 v7, v33

    move-object/from16 v45, v9

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v46, v27

    move-wide/from16 v9, v37

    move-object/from16 v47, v11

    move-object/from16 v48, v12

    move-wide/from16 v11, v39

    move/from16 v16, v13

    move-object/from16 v13, v31

    move-object/from16 v14, v41

    move-object v1, v15

    move-object/from16 v15, v42

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/measurement/zzeq;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_16

    :cond_18
    move-object/from16 v45, v9

    move-object/from16 v47, v11

    move-object/from16 v48, v12

    move/from16 v16, v13

    move-object v1, v15

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    move-object/from16 v46, v27

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzeq;->zzie()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v29

    move-object/from16 v2, v29

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzei;->zza(Lcom/google/android/gms/internal/measurement/zzeq;)V

    iget-wide v2, v2, Lcom/google/android/gms/internal/measurement/zzeq;->zzafr:J

    move-object/from16 v4, v35

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/google/android/gms/internal/measurement/zzei;->zzk(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_19

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_19
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v9, v47

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v10, v36

    invoke-virtual {v8, v10, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v47, v9

    goto :goto_17

    :cond_1b
    move-object/from16 v10, v36

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v11, v48

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v43

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v44

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/BitSet;

    if-nez v8, :cond_1c

    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v8}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iput-object v12, v8, Lcom/google/android/gms/internal/measurement/zzkm;->zzasy:Ljava/lang/Boolean;

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v13, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v15, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v1, v19

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzke;

    move-object/from16 v35, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    move-object/from16 v19, v5

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v20, v6

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    move-object/from16 v25, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v8

    move-object/from16 v44, v15

    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarq:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "Evaluating filter. audience, filter, event"

    invoke-virtual {v4, v15, v5, v6, v8}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzke;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v46

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    :cond_1d
    move-object/from16 v20, v6

    move-object/from16 v25, v8

    move-object/from16 v44, v15

    move-object/from16 v6, v46

    :goto_19
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    if-eqz v4, :cond_3b

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x100

    if-le v4, v5, :cond_1e

    goto/16 :goto_2a

    :cond_1e
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v12, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    const-string v15, "Event filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v4, v15, v8, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p1

    move-object/from16 v46, v6

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v25

    move-object/from16 v4, v35

    move-object/from16 v15, v44

    goto/16 :goto_18

    :cond_1f
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzart:Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzart:Lcom/google/android/gms/internal/measurement/zzkg;

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(JLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_20

    move-wide/from16 v33, v2

    :goto_1a
    move-object/from16 v46, v6

    :goto_1b
    move-object/from16 v36, v10

    move-object/from16 v48, v11

    move-object/from16 v43, v13

    :goto_1c
    const/4 v2, 0x0

    goto/16 :goto_28

    :cond_20
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_22

    move-wide/from16 v33, v2

    move-object/from16 v46, v6

    move-object/from16 v36, v10

    move-object/from16 v48, v11

    move-object/from16 v43, v13

    :goto_1d
    move-object/from16 v2, v32

    goto/16 :goto_28

    :cond_21
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    :cond_22
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarr:[Lcom/google/android/gms/internal/measurement/zzkf;

    move-wide/from16 v33, v2

    array-length v2, v5

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_24

    move/from16 v27, v2

    aget-object v2, v5, v3

    move-object/from16 v29, v5

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkf;->zzary:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "null or empty param name in filter. event"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_23
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkf;->zzary:Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v27

    move-object/from16 v5, v29

    goto :goto_1e

    :cond_24
    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object/from16 v3, v45

    array-length v5, v3

    move-object/from16 v46, v6

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v5, :cond_29

    move/from16 v27, v5

    aget-object v5, v3, v6

    move-object/from16 v45, v3

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzate:Ljava/lang/Long;

    if-eqz v3, :cond_25

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzate:Ljava/lang/Long;

    :goto_20
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_25
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzarc:Ljava/lang/Double;

    if-eqz v3, :cond_26

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzarc:Ljava/lang/Double;

    goto :goto_20

    :cond_26
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzajf:Ljava/lang/String;

    if-eqz v3, :cond_27

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzko;->zzajf:Ljava/lang/String;

    goto :goto_20

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzko;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unknown value for param. event, param"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_28
    :goto_21
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v27

    move-object/from16 v3, v45

    goto :goto_1f

    :cond_29
    move-object/from16 v45, v3

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarr:[Lcom/google/android/gms/internal/measurement/zzkf;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_38

    aget-object v6, v3, v5

    move-object/from16 v27, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move/from16 v29, v4

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarx:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzary:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-eqz v31, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Event has empty param name. event"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_2a
    move-object/from16 v43, v13

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v31, v2

    instance-of v2, v13, Ljava/lang/Long;

    if-eqz v2, :cond_2d

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No number filter for long param. event, param"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v36, v10

    move-object/from16 v48, v11

    goto/16 :goto_1c

    :cond_2b
    check-cast v13, Ljava/lang/Long;

    move-object/from16 v36, v10

    move-object/from16 v48, v11

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v10, v11, v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(JLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2c

    :goto_23
    goto/16 :goto_1c

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_33

    :goto_24
    goto/16 :goto_1d

    :cond_2d
    move-object/from16 v36, v10

    move-object/from16 v48, v11

    instance-of v2, v13, Ljava/lang/Double;

    if-eqz v2, :cond_30

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No number filter for double param. event, param"

    :goto_25
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_2e
    check-cast v13, Ljava/lang/Double;

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v10, v11, v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(DLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_23

    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_33

    :goto_26
    goto :goto_24

    :cond_30
    instance-of v2, v13, Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarv:Lcom/google/android/gms/internal/measurement/zzki;

    if-eqz v2, :cond_31

    check-cast v13, Ljava/lang/String;

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarv:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v8, v13, v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzki;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_27

    :cond_31
    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-eqz v2, :cond_35

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, v6, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v13, v2}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v2

    :goto_27
    if-nez v2, :cond_32

    goto :goto_23

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_33

    goto :goto_26

    :cond_33
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v27

    move/from16 v4, v29

    move-object/from16 v2, v31

    move-object/from16 v10, v36

    move-object/from16 v13, v43

    move-object/from16 v11, v48

    goto/16 :goto_22

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid param value for number filter. event, param"

    goto :goto_25

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No filter for String param. event, param"

    goto/16 :goto_25

    :cond_36
    if-nez v13, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Missing param for filter. event, param"

    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unknown param type. event, param"

    goto/16 :goto_25

    :cond_38
    move-object/from16 v36, v10

    move-object/from16 v48, v11

    move-object/from16 v43, v13

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v3

    if-nez v2, :cond_39

    move-object/from16 v4, v17

    goto :goto_29

    :cond_39
    move-object v4, v2

    :goto_29
    const-string v5, "Event filter result"

    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v2, :cond_3a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3a
    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v14, v3}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_2b

    :cond_3b
    :goto_2a
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    move-wide/from16 v33, v2

    move-object/from16 v46, v6

    move-object/from16 v36, v10

    move-object/from16 v48, v11

    move-object/from16 v43, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzke;->zzarp:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Invalid event filter ID. appId, id"

    invoke-virtual {v2, v4, v3, v1}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3c
    :goto_2b
    move-object v1, v15

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v8, v25

    move-wide/from16 v2, v33

    move-object/from16 v4, v35

    move-object/from16 v10, v36

    move-object/from16 v13, v43

    move-object/from16 v15, v44

    move-object/from16 v11, v48

    goto/16 :goto_18

    :cond_3d
    move-object/from16 v8, p0

    move-object/from16 v47, v9

    move-object/from16 v36, v10

    move-object/from16 v48, v11

    move-object/from16 v43, v13

    move-object/from16 v44, v15

    goto/16 :goto_17

    :cond_3e
    move-object/from16 v8, p0

    move-object v15, v1

    move-object/from16 v35, v4

    move-object/from16 v9, v47

    move-object/from16 v0, v26

    :goto_2c
    add-int/lit8 v13, v16, 0x1

    move-object/from16 v14, p2

    move-object v1, v8

    move-object v11, v9

    move/from16 v2, v28

    move-object/from16 v7, v32

    move-object/from16 v3, v35

    move-object/from16 v5, v36

    move-object/from16 v19, v43

    move-object/from16 v20, v44

    move-object/from16 v10, v46

    move-object/from16 v12, v48

    goto/16 :goto_3

    :cond_3f
    move-object v8, v1

    move-object/from16 v36, v5

    move-object/from16 v46, v10

    move-object v9, v11

    move-object/from16 v48, v12

    move-object/from16 v43, v19

    move-object/from16 v44, v20

    const/16 v30, 0x1

    move-object/from16 v1, p3

    if-eqz v1, :cond_56

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v2, :cond_56

    aget-object v4, v1, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v5, v15, v6}, Lcom/google/android/gms/internal/measurement/zzei;->zzl(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_40

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_40
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v11, v36

    invoke-virtual {v10, v11, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_42
    move-object/from16 v11, v36

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v48

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v43

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    move-object/from16 p2, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, v44

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    if-nez v10, :cond_43

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v12, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/measurement/zzkm;->zzasy:Ljava/lang/Boolean;

    new-instance v13, Ljava/util/BitSet;

    invoke-direct {v13}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_54

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v2

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzkh;

    move-object/from16 v16, v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    move-object/from16 v19, v6

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzfg;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v20, v10

    iget-object v10, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    move-object/from16 v36, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v11

    iget-object v15, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzasf:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "Evaluating filter. audience, filter, property"

    invoke-virtual {v5, v15, v6, v10, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/measurement/zzfe;->zza(Lcom/google/android/gms/internal/measurement/zzkh;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v10, v46

    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_30

    :cond_44
    move-object/from16 v20, v10

    move-object/from16 v36, v11

    move-object/from16 v10, v46

    :goto_30
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    if-eqz v5, :cond_53

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x100

    if-le v5, v6, :cond_45

    goto/16 :goto_39

    :cond_45
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    const-string v15, "Property filter already evaluated true. audience ID, filter ID"

    invoke-virtual {v5, v15, v11, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move-object/from16 v46, v10

    move-object/from16 v5, v16

    move/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v10, v20

    :goto_31
    move-object/from16 v11, v36

    goto/16 :goto_2f

    :cond_46
    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzasg:Lcom/google/android/gms/internal/measurement/zzkf;

    if-nez v5, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v11

    iget-object v15, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "Missing property filter. property"

    :goto_32
    invoke-virtual {v5, v15, v11}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v21, v7

    :goto_33
    const/4 v5, 0x0

    goto/16 :goto_36

    :cond_47
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v15, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarx:Ljava/lang/Boolean;

    invoke-virtual {v11, v15}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    iget-object v15, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzate:Ljava/lang/Long;

    if-eqz v15, :cond_49

    iget-object v15, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v15, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v11

    iget-object v15, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v15, "No number filter for long property. property"

    goto :goto_32

    :cond_48
    iget-object v15, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzate:Ljava/lang/Long;

    move/from16 v21, v7

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(JLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v5

    :goto_34
    invoke-static {v5, v11}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_36

    :cond_49
    move/from16 v21, v7

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzarc:Ljava/lang/Double;

    if-eqz v6, :cond_4b

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v6, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "No number filter for double property. property"

    goto/16 :goto_35

    :cond_4a
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzarc:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(DLcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_34

    :cond_4b
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzajf:Ljava/lang/String;

    if-eqz v6, :cond_4f

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarv:Lcom/google/android/gms/internal/measurement/zzki;

    if-nez v6, :cond_4e

    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    if-nez v6, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "No string or number filter defined. property"

    goto :goto_35

    :cond_4c
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzajf:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/measurement/zzka;->zzck(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzajf:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarw:Lcom/google/android/gms/internal/measurement/zzkg;

    invoke-direct {v8, v6, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzkg;)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_34

    :cond_4d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzajf:Ljava/lang/String;

    const-string v11, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual {v5, v11, v6, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_33

    :cond_4e
    iget-object v6, v4, Lcom/google/android/gms/internal/measurement/zzks;->zzajf:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/zzkf;->zzarv:Lcom/google/android/gms/internal/measurement/zzki;

    invoke-direct {v8, v6, v5}, Lcom/google/android/gms/internal/measurement/zzeb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzki;)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_34

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzga()Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v6

    iget-object v7, v4, Lcom/google/android/gms/internal/measurement/zzks;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzfe;->zzbl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "User property has no value, property"

    :goto_35
    invoke-virtual {v5, v7, v6}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_33

    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfg;->zzit()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v6

    if-nez v5, :cond_50

    move-object/from16 v7, v17

    goto :goto_37

    :cond_50
    move-object v7, v5

    :goto_37
    const-string v11, "Property filter result"

    invoke-virtual {v6, v11, v7}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v5, :cond_52

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_38
    move-object/from16 v15, p1

    move-object/from16 v46, v10

    move-object/from16 v5, v16

    move/from16 v2, v18

    move-object/from16 v6, v19

    move-object/from16 v10, v20

    move/from16 v7, v21

    goto/16 :goto_31

    :cond_52
    iget-object v6, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_38

    :cond_53
    :goto_39
    move/from16 v21, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzip()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzkh;->zzarp:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Invalid property filter ID. appId, id"

    invoke-virtual {v0, v6, v5, v2}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v44, v1

    move-object/from16 v46, v10

    move-object/from16 v48, v12

    move-object/from16 v43, v14

    move-object/from16 v5, v16

    move/from16 v2, v18

    move-object/from16 v6, v19

    goto :goto_3a

    :cond_54
    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move-object/from16 v44, v1

    move-object/from16 v36, v11

    move-object/from16 v48, v12

    move-object/from16 v43, v14

    :goto_3a
    move-object/from16 v1, p3

    goto/16 :goto_2e

    :cond_55
    move-object/from16 p2, v0

    move/from16 v18, v2

    move-object/from16 v14, v43

    move-object/from16 v1, v44

    move-object/from16 v10, v46

    move-object/from16 v12, v48

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, p1

    move-object/from16 v1, p3

    goto/16 :goto_2d

    :cond_56
    move-object/from16 v14, v43

    move-object/from16 v1, v44

    move-object/from16 v12, v48

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzkm;

    if-nez v5, :cond_57

    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkm;

    invoke-direct {v5}, Lcom/google/android/gms/internal/measurement/zzkm;-><init>()V

    :cond_57
    add-int/lit8 v6, v0, 0x1

    aput-object v5, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzkm;->zzarl:Ljava/lang/Integer;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>()V

    iput-object v0, v5, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzaul:[J

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/BitSet;

    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/zzka;->zza(Ljava/util/BitSet;)[J

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzauk:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/zzjp;->zzix()Lcom/google/android/gms/internal/measurement/zzei;

    move-result-object v7

    iget-object v0, v5, Lcom/google/android/gms/internal/measurement/zzkm;->zzasw:Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjq;->zzch()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhg;->zzab()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzace;->zzvm()I

    move-result v5

    new-array v5, v5, [B

    array-length v10, v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    const/4 v11, 0x0

    :try_start_4
    invoke-static {v5, v11, v10}, Lcom/google/android/gms/internal/measurement/zzabw;->zzb([BII)Lcom/google/android/gms/internal/measurement/zzabw;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/zzace;->zza(Lcom/google/android/gms/internal/measurement/zzabw;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzabw;->zzve()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    move-object/from16 v13, p1

    invoke-virtual {v0, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v10, "audience_id"

    invoke-virtual {v0, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "current_results"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_5
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzei;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "audience_filter_values"
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v10, 0x5

    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v4, v5, v15, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    const-wide/16 v16, -0x1

    cmp-long v0, v4, v16

    if-nez v0, :cond_58

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/measurement/zzfi;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3f

    :catch_3
    move-exception v0

    goto :goto_3c

    :catch_4
    move-exception v0

    const/4 v15, 0x0

    :goto_3c
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Error storing filter results. appId"

    goto :goto_3e

    :catch_5
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_3d

    :catch_6
    move-exception v0

    move-object/from16 v13, p1

    const/4 v11, 0x0

    :goto_3d
    const/4 v15, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzhg;->zzge()Lcom/google/android/gms/internal/measurement/zzfg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfg;->zzim()Lcom/google/android/gms/internal/measurement/zzfi;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzfg;->zzbm(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Configuration loss. Failed to serialize filter results. appId"

    :goto_3e
    invoke-virtual {v4, v7, v5, v0}, Lcom/google/android/gms/internal/measurement/zzfi;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    :goto_3f
    move v0, v6

    goto/16 :goto_3b

    :cond_59
    move-object/from16 v13, p1

    goto/16 :goto_3b

    :cond_5a
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzkm;

    return-object v0
.end method

.method protected final zzhf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
