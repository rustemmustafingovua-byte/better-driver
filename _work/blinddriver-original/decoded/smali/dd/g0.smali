.class public final Ldd/g0;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldd/k0;


# direct methods
.method public constructor <init>(Ldd/k0;)V
    .locals 0

    iput-object p1, p0, Ldd/g0;->a:Ldd/k0;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "status"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v4

    const/4 v6, 0x0

    move v8, v6

    move v9, v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v7, v4, :cond_5

    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v14

    cmpl-float v15, v14, v6

    if-lez v15, :cond_0

    add-float/2addr v9, v14

    add-int/lit8 v11, v11, 0x1

    :cond_0
    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->hasCarrierFrequencyHz(I)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->getCarrierFrequencyHz(I)F

    move-result v14

    const v16, 0x4eb2d05e    # 1.5E9f

    cmpg-float v14, v14, v16

    if-gez v14, :cond_1

    move v14, v13

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_2

    if-lez v15, :cond_2

    add-int/lit8 v12, v12, 0x1

    :cond_2
    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v15

    add-float/2addr v8, v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    add-int/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v14, :cond_4

    add-int/lit8 v19, v19, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    if-lez v10, :cond_6

    int-to-float v6, v10

    div-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_3

    :cond_6
    move-object v6, v4

    :goto_3
    if-le v10, v13, :cond_8

    if-eqz v6, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v14, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_7

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v8, v8, 0x1

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v16

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v17

    sub-float v17, v16, v17

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v16, v16, v18

    mul-float v13, v16, v17

    move-object/from16 v16, v6

    float-to-double v5, v13

    add-double/2addr v14, v5

    move-object/from16 v6, v16

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v16, v6

    int-to-double v5, v10

    div-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_5

    :cond_8
    move-object/from16 v16, v6

    move-object v2, v4

    :goto_5
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    const-string v5, "<get-entries>(...)"

    invoke-static {v3, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Lbd/d;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lbd/d;-><init>(I)V

    invoke-static {v3, v5}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v25

    const-string v26, " "

    new-instance v3, Lad/b2;

    const/16 v5, 0x17

    invoke-direct {v3, v5}, Lad/b2;-><init>(I)V

    const/16 v30, 0x1e

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v3

    invoke-static/range {v25 .. v30}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Ldd/g0;->a:Ldd/k0;

    iget-object v5, v5, Ldd/k0;->j:Ldd/m;

    iget-object v5, v5, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/n;

    iget-object v8, v5, Ldd/n;->f:Ldd/p;

    invoke-virtual {v1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-lez v11, :cond_9

    int-to-float v5, v11

    div-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v13, v5

    goto :goto_6

    :cond_9
    move-object v13, v4

    :goto_6
    iget-object v5, v0, Ldd/g0;->a:Ldd/k0;

    iget v5, v5, Ldd/k0;->r:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    const/16 v17, 0x0

    const/16 v23, 0x1e0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, v16

    const/16 v16, 0x0

    move v9, v1

    move-object v12, v2

    move-object/from16 v18, v3

    const/4 v1, 0x1

    invoke-static/range {v8 .. v23}, Ldd/p;->a(Ldd/p;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Boolean;Ljava/lang/String;IIJI)Ldd/p;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v3, v0, Ldd/g0;->a:Ldd/k0;

    iget-wide v7, v3, Ldd/k0;->q:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-ltz v7, :cond_a

    move v13, v1

    goto :goto_7

    :cond_a
    const/4 v13, 0x0

    :goto_7
    if-eqz v13, :cond_b

    iput-wide v5, v3, Ldd/k0;->q:J

    :cond_b
    iget-object v3, v3, Ldd/k0;->j:Ldd/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v3, Ldd/m;->g:Lx9/l0;

    :goto_8
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ldd/n;

    iget-object v10, v9, Ldd/n;->f:Ldd/p;

    iget-object v11, v10, Ldd/p;->f:Ljava/lang/Float;

    iget-object v12, v10, Ldd/p;->g:Ljava/lang/Float;

    iget v14, v10, Ldd/p;->h:I

    iget-object v10, v10, Ldd/p;->i:Ljava/lang/Boolean;

    if-nez v10, :cond_c

    iget-object v10, v2, Ldd/p;->i:Ljava/lang/Boolean;

    :cond_c
    move-object/from16 v34, v10

    const-wide/16 v38, 0x0

    const/16 v40, 0x1e1f

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v25, v2

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move/from16 v33, v14

    invoke-static/range {v25 .. v40}, Ldd/p;->a(Ldd/p;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Boolean;Ljava/lang/String;IIJI)Ldd/p;

    move-result-object v31

    const/16 v38, 0x0

    const/16 v39, 0x1fdf

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v25, v9

    invoke-static/range {v25 .. v39}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    if-eqz v13, :cond_d

    iget-object v2, v3, Ldd/m;->b:Lb0/l1;

    iget-object v3, v3, Ldd/m;->g:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/n;

    iget-object v3, v3, Ldd/n;->f:Ldd/p;

    iget-object v2, v2, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v2, Ldd/k0;

    iget-object v2, v2, Ldd/k0;->a:Ldd/q0;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8, v3}, Ldd/w0;->d(JLdd/p;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/q0;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    :goto_9
    iget-object v2, v0, Ldd/g0;->a:Ldd/k0;

    iget-object v0, v2, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-object v0, v0, Ldd/n;->f:Ldd/p;

    iget-object v3, v2, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v7, "%.1f"

    iget-object v8, v2, Ldd/k0;->a:Ldd/q0;

    iget-object v9, v2, Ldd/k0;->j:Ldd/m;

    iget-object v9, v9, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldd/n;

    iget-object v10, v2, Ldd/k0;->G:Ldd/s;

    iget v11, v0, Ldd/p;->a:I

    iget-object v12, v0, Ldd/p;->e:Ljava/lang/Float;

    iget v13, v0, Ldd/p;->b:I

    iget-boolean v14, v9, Ldd/n;->i:Z

    iget-object v15, v0, Ldd/p;->g:Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v13, :cond_15

    if-nez v14, :cond_15

    const/16 v14, 0xc

    if-lt v11, v14, :cond_15

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move/from16 v24, v11

    goto :goto_a

    :cond_e
    const/16 v24, 0x0

    :goto_a
    const/high16 v11, 0x41c80000    # 25.0f

    cmpl-float v11, v24, v11

    if-ltz v11, :cond_15

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const/high16 v14, -0x3f400000    # -6.0f

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_15

    :cond_f
    iget-object v11, v10, Ldd/s;->a:Ljava/lang/Long;

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto :goto_b

    :cond_10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Ldd/s;->a:Ljava/lang/Long;

    move-wide/from16 v16, v5

    :goto_b
    sub-long v16, v5, v16

    iget-boolean v11, v10, Ldd/s;->b:Z

    if-nez v11, :cond_12

    const-wide/32 v18, 0x2bf20

    cmp-long v11, v16, v18

    if-gez v11, :cond_11

    sget-object v11, Ldd/q;->l:Ldd/q;

    goto :goto_c

    :cond_11
    iput-boolean v1, v10, Ldd/s;->b:Z

    sget-object v11, Ldd/q;->m:Ldd/q;

    goto :goto_c

    :cond_12
    iget-object v11, v10, Ldd/s;->c:Ljava/lang/Long;

    if-nez v11, :cond_13

    const-wide/32 v18, 0x57e40

    cmp-long v11, v16, v18

    if-gez v11, :cond_14

    sget-object v11, Ldd/q;->l:Ldd/q;

    goto :goto_c

    :cond_13
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v5, v16

    const-wide/32 v18, 0x927c0

    cmp-long v11, v16, v18

    if-gez v11, :cond_14

    sget-object v11, Ldd/q;->l:Ldd/q;

    goto :goto_c

    :cond_14
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Ldd/s;->c:Ljava/lang/Long;

    sget-object v11, Ldd/q;->n:Ldd/q;

    goto :goto_c

    :cond_15
    iput-object v4, v10, Ldd/s;->a:Ljava/lang/Long;

    const/4 v11, 0x0

    iput-boolean v11, v10, Ldd/s;->b:Z

    iput-object v4, v10, Ldd/s;->c:Ljava/lang/Long;

    sget-object v11, Ldd/q;->l:Ldd/q;

    :goto_c
    iget-object v14, v2, Ldd/k0;->H:Ljava/lang/Long;

    const/16 v1, 0x3e8

    if-eqz v14, :cond_16

    if-lez v13, :cond_16

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    sub-long v16, v5, v16

    move-wide/from16 v20, v5

    int-to-long v4, v1

    div-long v4, v16, v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "gnss_stuck_recovered after_s="

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " used="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v5, v20

    invoke-virtual {v8, v5, v6, v4}, Ldd/q0;->a(JLjava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, v2, Ldd/k0;->H:Ljava/lang/Long;

    goto :goto_d

    :cond_16
    if-eqz v14, :cond_17

    iget-boolean v9, v9, Ldd/n;->i:Z

    if-eqz v9, :cond_17

    iput-object v4, v2, Ldd/k0;->H:Ljava/lang/Long;

    :cond_17
    :goto_d
    sget-object v4, Ldd/q;->l:Ldd/q;

    if-ne v11, v4, :cond_18

    return-void

    :cond_18
    iget-object v4, v2, Ldd/k0;->H:Ljava/lang/Long;

    if-nez v4, :cond_1a

    iget-object v4, v10, Ldd/s;->a:Ljava/lang/Long;

    if-nez v4, :cond_19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_19
    iput-object v4, v2, Ldd/k0;->H:Ljava/lang/Long;

    :cond_1a
    iget-object v4, v10, Ldd/s;->a:Ljava/lang/Long;

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_e

    :cond_1b
    move-wide v9, v5

    :goto_e
    sub-long v9, v5, v9

    int-to-long v13, v1

    div-long/2addr v9, v13

    iget v0, v0, Ldd/p;->a:I

    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_1c
    const/4 v4, 0x1

    const/4 v1, 0x0

    :goto_f
    if-eqz v15, :cond_1d

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_1d
    const/4 v4, 0x0

    :goto_10
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "vis="

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cn0_all="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " agc_norm="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " stuck_s="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Ldd/q;->n:Ldd/q;

    if-ne v11, v0, :cond_1f

    :try_start_2
    const-string v0, "gps"

    const-string v4, "delete_aiding_data"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v9, 0x0

    :try_start_3
    invoke-virtual {v3, v0, v4, v9}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_12

    :catchall_1
    move-exception v0

    goto :goto_11

    :catchall_2
    move-exception v0

    const/4 v9, 0x0

    :goto_11
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_12
    instance-of v4, v0, Lt8/l;

    if-eqz v4, :cond_1e

    move-object v4, v9

    goto :goto_13

    :cond_1e
    move-object v4, v0

    :goto_13
    check-cast v4, Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "gnss_stuck action=reset delete_aiding="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v6, v0}, Ldd/q0;->a(JLjava/lang/String;)V

    goto :goto_14

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "gnss_stuck action=restart "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v6, v0}, Ldd/q0;->a(JLjava/lang/String;)V

    :goto_14
    :try_start_4
    iget-object v0, v2, Ldd/k0;->v:Ldd/b0;

    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_15

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_15
    iget-object v0, v2, Ldd/k0;->h:Landroid/os/Handler;

    new-instance v1, Landroidx/lifecycle/f0;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_20
    move-object v9, v4

    goto/16 :goto_8
.end method
