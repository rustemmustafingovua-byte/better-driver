.class public final Ldd/h0;
.super Landroid/location/GnssMeasurementsEvent$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldd/k0;


# direct methods
.method public constructor <init>(Ldd/k0;)V
    .locals 0

    iput-object p1, p0, Ldd/h0;->a:Ldd/k0;

    invoke-direct {p0}, Landroid/location/GnssMeasurementsEvent$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 41

    move-object/from16 v0, p0

    const-string v1, "event"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/16 v4, 0xa

    if-lt v1, v3, :cond_0

    invoke-static {v2}, Lb/b;->r(Landroid/location/GnssMeasurementsEvent;)Ljava/util/Collection;

    move-result-object v1

    const-string v3, "getGnssAutomaticGainControls(...)"

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lb/b;->e(Ljava/lang/Object;)Landroid/location/GnssAutomaticGainControl;

    move-result-object v5

    invoke-static {v5}, Lb/b;->a(Landroid/location/GnssAutomaticGainControl;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v3, Lu8/r;->l:Lu8/r;

    :cond_1
    invoke-virtual {v2}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v1

    const-string v5, "getMeasurements(...)"

    invoke-static {v1, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/location/GnssMeasurement;

    invoke-virtual {v8}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_2
    if-ge v9, v7, :cond_4

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Landroid/location/GnssMeasurement;

    invoke-virtual {v10}, Landroid/location/GnssMeasurement;->getAutomaticGainControlLevelDb()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    move-object v15, v6

    goto :goto_4

    :cond_6
    invoke-static {v3}, Lu8/m;->X(Ljava/lang/Iterable;)D

    move-result-wide v9

    double-to-float v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v15, v1

    :goto_4
    iget-object v1, v0, Ldd/h0;->a:Ldd/k0;

    invoke-virtual {v2}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v8

    goto :goto_6

    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v8

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/GnssMeasurement;

    invoke-virtual {v7}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v7}, Landroid/location/GnssMeasurement;->getCarrierFrequencyHz()F

    move-result v7

    const v9, 0x4eb2d05e    # 1.5E9f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_8

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lg5/f;->O()V

    throw v6

    :cond_a
    :goto_6
    iput v5, v1, Ldd/k0;->r:I

    iget-object v1, v0, Ldd/h0;->a:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    invoke-virtual {v2}, Landroid/location/GnssMeasurementsEvent;->getMeasurements()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, v1, Ldd/m;->b:Lb0/l1;

    iget-object v7, v1, Ldd/m;->s:Ldd/b;

    iget-object v9, v1, Ldd/m;->g:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldd/n;

    iget-boolean v10, v10, Ldd/n;->i:Z

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldd/n;

    iget-object v11, v11, Ldd/n;->f:Ldd/p;

    const/4 v12, 0x1

    if-eqz v15, :cond_11

    iget v13, v11, Ldd/p;->b:I

    iget-object v14, v11, Ldd/p;->c:Ljava/lang/Float;

    iget-object v11, v11, Ldd/p;->d:Ljava/lang/Float;

    iget-object v6, v7, Ldd/b;->a:Lu8/k;

    if-lt v13, v4, :cond_11

    const/4 v4, 0x0

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v13

    goto :goto_7

    :cond_b
    move v13, v4

    :goto_7
    const/high16 v14, 0x41e00000    # 28.0f

    cmpg-float v13, v13, v14

    if-ltz v13, :cond_11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :cond_c
    const/high16 v11, 0x40400000    # 3.0f

    cmpg-float v4, v4, v11

    if-gez v4, :cond_d

    goto :goto_9

    :cond_d
    invoke-virtual {v6, v15}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_8
    iget v4, v6, Lu8/k;->n:I

    const/16 v11, 0x12c

    if-le v4, v11, :cond_e

    invoke-virtual {v6}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_8

    :cond_e
    const/16 v11, 0x1e

    if-ge v4, v11, :cond_f

    goto :goto_9

    :cond_f
    invoke-static {v6}, Lu8/m;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iget v6, v6, Lu8/k;->n:I

    div-int/lit8 v6, v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/high16 v6, -0x3d600000    # -80.0f

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v4, v6, v11}, Lg6/c1;->e(FFF)F

    move-result v4

    iget-object v6, v7, Ldd/b;->b:Ljava/lang/Float;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iput-object v11, v7, Ldd/b;->b:Ljava/lang/Float;

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_11

    :cond_10
    iget-object v4, v7, Ldd/b;->b:Ljava/lang/Float;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v6, v1, Ldd/m;->c:Ldd/d0;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v6, v11}, Ldd/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    float-to-double v13, v4

    invoke-static {v13, v14, v12}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "agc_baseline db="

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v3, v4}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_11
    :goto_9
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v6, v7, Ldd/b;->b:Ljava/lang/Float;

    const/high16 v7, -0x40000000    # -2.0f

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_a

    :cond_12
    move v6, v7

    :goto_a
    sub-float/2addr v6, v7

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_b

    :cond_13
    const/16 v16, 0x0

    :goto_b
    iget-object v4, v1, Ldd/m;->r:Ldd/a0;

    if-nez v16, :cond_14

    iget-boolean v4, v4, Ldd/a0;->c:Z

    :goto_c
    move/from16 v34, v4

    goto :goto_e

    :cond_14
    iget-boolean v6, v4, Ldd/a0;->c:Z

    const-wide/16 v13, -0x1

    if-nez v6, :cond_15

    iput-wide v13, v4, Ldd/a0;->d:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v4, Ldd/a0;->a:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_18

    iput-boolean v12, v4, Ldd/a0;->c:Z

    goto :goto_d

    :cond_15
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v4, Ldd/a0;->b:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_16

    iput-wide v13, v4, Ldd/a0;->d:J

    goto :goto_d

    :cond_16
    iget-wide v6, v4, Ldd/a0;->d:J

    const-wide/16 v18, 0x0

    cmp-long v6, v6, v18

    if-gez v6, :cond_17

    iput-wide v2, v4, Ldd/a0;->d:J

    :cond_17
    iget-wide v6, v4, Ldd/a0;->d:J

    sub-long v6, v2, v6

    const-wide/16 v18, 0x3a98

    cmp-long v6, v6, v18

    if-ltz v6, :cond_18

    iput-boolean v8, v4, Ldd/a0;->c:Z

    iput-wide v13, v4, Ldd/a0;->d:J

    :cond_18
    :goto_d
    iget-boolean v4, v4, Ldd/a0;->c:Z

    goto :goto_c

    :goto_e
    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ldd/n;

    move-object v7, v9

    iget-object v9, v6, Ldd/n;->f:Ldd/p;

    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v22, 0x0

    const/16 v24, 0x1e1f

    move v8, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v13, v12

    const/4 v12, 0x0

    move v14, v13

    const/4 v13, 0x0

    move/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v25, v21

    const/16 v21, 0x0

    move/from16 v40, v25

    move-object/from16 v25, v6

    move/from16 v6, v40

    invoke-static/range {v9 .. v24}, Ldd/p;->a(Ldd/p;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Boolean;Ljava/lang/String;IIJI)Ldd/p;

    move-result-object v31

    const/16 v38, 0x0

    const/16 v39, 0x1edf

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-static/range {v25 .. v39}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v9

    move/from16 v10, v34

    invoke-virtual {v7, v4, v9}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eq v10, v8, :cond_1a

    if-eqz v15, :cond_19

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v11, v4

    invoke-static {v11, v12, v6}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    goto :goto_f

    :cond_19
    const/4 v6, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "jammed="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " agc="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v3, v4}, Lb0/l1;->w(JLjava/lang/String;)V

    if-eqz v8, :cond_1a

    if-nez v10, :cond_1a

    iput-wide v2, v1, Ldd/m;->p:J

    iget-object v0, v0, Ldd/h0;->a:Ldd/k0;

    const-string v1, "jam_end"

    invoke-virtual {v0, v1}, Ldd/k0;->c(Ljava/lang/String;)V

    :cond_1a
    return-void

    :cond_1b
    move v12, v6

    move-object v9, v7

    move/from16 v34, v10

    move v10, v8

    goto/16 :goto_e
.end method

.method public final onStatusChanged(I)V
    .locals 21

    const/4 v0, 0x1

    move/from16 v1, p1

    if-ne v1, v0, :cond_0

    :goto_0
    move-object/from16 v1, p0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, v1, Ldd/h0;->a:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->g:Lx9/l0;

    :cond_1
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ldd/n;

    const-string v4, "it"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v3, Ldd/n;->f:Ldd/p;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-wide/16 v18, 0x0

    const/16 v20, 0x1eff

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v5 .. v20}, Ldd/p;->a(Ldd/p;IILjava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Boolean;Ljava/lang/String;IIJI)Ldd/p;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v17, 0x1fdf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v3 .. v17}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void
.end method
