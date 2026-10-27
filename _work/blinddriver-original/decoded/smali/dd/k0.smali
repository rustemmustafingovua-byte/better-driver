.class public final Ldd/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/e0;


# instance fields
.field public final A:Ldd/h0;

.field public B:Ldd/f0;

.field public C:[F

.field public final D:Ldd/i0;

.field public E:J

.field public final F:Ldd/j0;

.field public final G:Ldd/s;

.field public H:Ljava/lang/Long;

.field public final a:Ldd/q0;

.field public final b:Ldd/t0;

.field public final c:Li9/a;

.field public final d:Li9/a;

.field public final e:Ldd/o0;

.field public final f:Landroid/location/LocationManager;

.field public final g:Landroid/hardware/SensorManager;

.field public final h:Landroid/os/Handler;

.field public final i:Landroid/content/SharedPreferences;

.field public final j:Ldd/m;

.field public final k:Lx9/l0;

.field public final l:Lx9/l0;

.field public m:Z

.field public final n:[F

.field public o:[F

.field public p:[F

.field public q:J

.field public volatile r:I

.field public s:Ljava/lang/String;

.field public final t:Landroid/content/SharedPreferences;

.field public u:J

.field public final v:Ldd/b0;

.field public final w:Ldd/b0;

.field public final x:Ldd/b0;

.field public volatile y:Z

.field public final z:Ldd/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/e0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/k0;->Companion:Ldd/e0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ldd/q0;Lp/a1;Lod/x4;)V
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v3, Ldd/t0;

    new-instance v4, Ldd/r0;

    const/high16 v46, 0x43160000    # 150.0f

    const-wide/16 v47, 0xbb8

    const-wide/high16 v5, -0x3fb7000000000000L    # -50.0

    const-wide v7, 0x40a3880000000000L    # 2500.0

    const-wide v9, 0x4062c00000000000L    # 150.0

    const/high16 v11, 0x42c80000    # 100.0f

    const-wide/16 v12, 0x7530

    const-wide/16 v14, 0x7d0

    const/16 v16, 0x14

    const/16 v17, 0x5

    const/high16 v18, 0x41a00000    # 20.0f

    const/16 v19, 0xf

    const/high16 v20, 0x40a00000    # 5.0f

    const/high16 v21, 0x3fc00000    # 1.5f

    const/high16 v22, 0x43250000    # 165.0f

    const/high16 v23, 0x42f00000    # 120.0f

    const/high16 v24, 0x40b00000    # 5.5f

    const/high16 v25, -0x3ee00000    # -10.0f

    const/high16 v26, -0x3e800000    # -16.0f

    const/high16 v27, 0x40400000    # 3.0f

    const-wide/16 v28, 0x5

    const-wide/16 v30, 0xf

    const-wide v32, 0x407f400000000000L    # 500.0

    const/high16 v34, 0x42c80000    # 100.0f

    const/high16 v35, 0x41000000    # 8.0f

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    const/16 v38, 0x8

    const/16 v39, 0x6

    const/high16 v40, 0x41c80000    # 25.0f

    const/high16 v41, 0x40400000    # 3.0f

    const-wide v42, 0x4062c00000000000L    # 150.0

    const-wide/16 v44, 0x2710

    invoke-direct/range {v4 .. v48}, Ldd/r0;-><init>(DDDFJJIIFIFFFFFFFFJJDFFDIIFFDJFJ)V

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Ldd/t0;->a:Ldd/r0;

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Ldd/t0;->c:J

    iput-wide v4, v3, Ldd/t0;->d:J

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v0, Ldd/k0;->a:Ldd/q0;

    iput-object v3, v0, Ldd/k0;->b:Ldd/t0;

    move-object/from16 v2, p3

    iput-object v2, v0, Ldd/k0;->c:Li9/a;

    move-object/from16 v2, p4

    iput-object v2, v0, Ldd/k0;->d:Li9/a;

    new-instance v2, Ldd/o0;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ldd/o0;-><init>(I)V

    iput-object v2, v0, Ldd/k0;->e:Ldd/o0;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.location.LocationManager"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, v0, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, v0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Ldd/k0;->h:Landroid/os/Handler;

    const-string v2, "agc"

    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v0, Ldd/k0;->i:Landroid/content/SharedPreferences;

    new-instance v4, Lb0/l1;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    const-string v5, "baseline"

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    new-instance v6, Ldd/d0;

    const/4 v2, 0x0

    invoke-direct {v6, v0, v2}, Ldd/d0;-><init>(Ldd/k0;I)V

    new-instance v7, Ldd/d0;

    const/4 v2, 0x1

    invoke-direct {v7, v0, v2}, Ldd/d0;-><init>(Ldd/k0;I)V

    new-instance v8, Ldd/d0;

    const/4 v2, 0x2

    invoke-direct {v8, v0, v2}, Ldd/d0;-><init>(Ldd/k0;I)V

    new-instance v9, Lb0/x;

    const/4 v2, 0x6

    invoke-direct {v9, v2, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    new-instance v2, Ldd/m;

    invoke-direct/range {v2 .. v9}, Ldd/m;-><init>(Ldd/t0;Lb0/l1;Ljava/lang/Float;Ldd/d0;Ldd/d0;Ldd/d0;Lb0/x;)V

    iput-object v2, v0, Ldd/k0;->j:Ldd/m;

    sget-object v2, Lu8/r;->l:Lu8/r;

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v0, Ldd/k0;->k:Lx9/l0;

    iput-object v2, v0, Ldd/k0;->l:Lx9/l0;

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Ldd/k0;->n:[F

    const-string v2, "not_run"

    iput-object v2, v0, Ldd/k0;->s:Ljava/lang/String;

    const-string v2, "last_ua"

    invoke-virtual {v1, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Ldd/k0;->t:Landroid/content/SharedPreferences;

    new-instance v1, Ldd/b0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ldd/b0;-><init>(Ldd/k0;I)V

    iput-object v1, v0, Ldd/k0;->v:Ldd/b0;

    new-instance v1, Ldd/b0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ldd/b0;-><init>(Ldd/k0;I)V

    iput-object v1, v0, Ldd/k0;->w:Ldd/b0;

    new-instance v1, Ldd/b0;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ldd/b0;-><init>(Ldd/k0;I)V

    iput-object v1, v0, Ldd/k0;->x:Ldd/b0;

    new-instance v1, Ldd/g0;

    invoke-direct {v1, v0}, Ldd/g0;-><init>(Ldd/k0;)V

    iput-object v1, v0, Ldd/k0;->z:Ldd/g0;

    new-instance v1, Ldd/h0;

    invoke-direct {v1, v0}, Ldd/h0;-><init>(Ldd/k0;)V

    iput-object v1, v0, Ldd/k0;->A:Ldd/h0;

    sget-object v1, Ldd/f0;->o:Ldd/f0;

    iput-object v1, v0, Ldd/k0;->B:Ldd/f0;

    new-instance v1, Ldd/i0;

    invoke-direct {v1, v0}, Ldd/i0;-><init>(Ldd/k0;)V

    iput-object v1, v0, Ldd/k0;->D:Ldd/i0;

    new-instance v1, Ldd/j0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ldd/j0;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Ldd/k0;->F:Ldd/j0;

    new-instance v1, Ldd/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldd/k0;->G:Ldd/s;

    return-void
.end method

.method public static final a(Ldd/k0;Ljava/lang/Float;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v4, v0, Ldd/k0;->o:[F

    iget-object v1, v0, Ldd/k0;->C:[F

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    aget v2, v4, v9

    aget v3, v1, v9

    mul-float/2addr v2, v3

    aget v3, v4, v8

    aget v5, v1, v8

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    aget v2, v4, v7

    aget v1, v1, v7

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object v10, v0, Ldd/k0;->j:Ldd/m;

    new-instance v1, Ldd/m0;

    iget-object v3, v0, Ldd/k0;->p:[F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Ldd/m0;-><init>(Ljava/lang/Float;Ljava/lang/Float;[F[FJ)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v10, Ldd/m;->m:Ldd/y;

    iget-object v2, v2, Ldd/y;->a:Lu8/k;

    new-instance v3, Ldd/x;

    float-to-double v11, v1

    invoke-direct {v3, v11, v12, v5, v6}, Ldd/x;-><init>(DJ)V

    invoke-virtual {v2, v3}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v2}, Lu8/k;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/x;

    iget-wide v3, v1, Ldd/x;->a:J

    sub-long v3, v5, v3

    const-wide/16 v11, 0x2ee0

    cmp-long v1, v3, v11

    if-lez v1, :cond_1

    invoke-virtual {v2}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v1, v10, Ldd/m;->g:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->a:Ldd/l0;

    if-eqz v1, :cond_2

    iget-wide v1, v1, Ldd/l0;->c:J

    sub-long v1, v5, v1

    goto :goto_3

    :cond_2
    const-wide v1, 0x7fffffffffffffffL

    :goto_3
    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, v10, Ldd/m;->m:Ldd/y;

    iget-object v2, v0, Ldd/m0;->d:[F

    if-nez v2, :cond_4

    :cond_3
    :goto_4
    move v8, v9

    goto :goto_5

    :cond_4
    iget-object v3, v0, Ldd/m0;->c:[F

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    aget v4, v2, v9

    mul-float/2addr v4, v4

    aget v11, v2, v8

    mul-float/2addr v11, v11

    add-float/2addr v11, v4

    aget v2, v2, v7

    mul-float/2addr v2, v2

    add-float/2addr v2, v11

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    aget v2, v3, v9

    mul-float/2addr v2, v2

    aget v4, v3, v8

    mul-float/2addr v4, v4

    add-float/2addr v4, v2

    aget v2, v3, v7

    mul-float/2addr v2, v2

    add-float/2addr v2, v4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v13, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v4, v11, v13

    if-gez v4, :cond_3

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    cmpg-double v2, v2, v11

    if-gez v2, :cond_3

    :goto_5
    invoke-virtual {v1, v8, v5, v6}, Ldd/y;->a(ZJ)V

    :cond_6
    iget-object v1, v10, Ldd/m;->m:Ldd/y;

    iget-wide v1, v1, Ldd/y;->d:D

    iget-object v3, v0, Ldd/m0;->b:Ljava/lang/Float;

    if-eqz v3, :cond_8

    const-wide/16 v8, 0x0

    cmpg-double v4, v1, v8

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    sub-double/2addr v3, v1

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v12, v0, Ldd/m0;->a:Ljava/lang/Float;

    iget-object v14, v0, Ldd/m0;->c:[F

    iget-object v15, v0, Ldd/m0;->d:[F

    iget-wide v3, v0, Ldd/m0;->e:J

    new-instance v11, Ldd/m0;

    move-wide/from16 v16, v3

    invoke-direct/range {v11 .. v17}, Ldd/m0;-><init>(Ljava/lang/Float;Ljava/lang/Float;[F[FJ)V

    move-object/from16 v19, v11

    goto :goto_7

    :cond_8
    :goto_6
    move-object/from16 v19, v0

    :goto_7
    iget-object v3, v10, Ldd/m;->g:Lx9/l0;

    :goto_8
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ldd/n;

    const/16 v25, 0x0

    const/16 v26, 0x1fbf

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v12 .. v26}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v8

    move-object/from16 v11, v19

    invoke-virtual {v3, v4, v8}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v3, v10, Ldd/m;->j:Lad/b0;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v11}, Lad/b0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v3, v10, Ldd/m;->k:Lad/u;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v11}, Lad/u;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-wide v3, v10, Ldd/m;->o:J

    sub-long v3, v5, v3

    const-wide/16 v8, 0x64

    cmp-long v3, v3, v8

    if-ltz v3, :cond_b

    iput-wide v5, v10, Ldd/m;->o:J

    iget-object v3, v10, Ldd/m;->b:Lb0/l1;

    iget-object v3, v3, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v3, Ldd/k0;

    iget-object v3, v3, Ldd/k0;->a:Ldd/q0;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v0}, Ldd/w0;->h(JLdd/m0;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ldd/q0;->e(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_9

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_9
    iget-wide v3, v10, Ldd/m;->w:D

    sub-double v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpl-double v0, v3, v8

    if-ltz v0, :cond_c

    iput-wide v1, v10, Ldd/m;->w:D

    iget-object v0, v10, Ldd/m;->b:Lb0/l1;

    invoke-static {v1, v2, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gyro_bias dps="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v6, v1}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    move-object/from16 v19, v11

    goto/16 :goto_8
.end method

.method public static g(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .locals 7

    const-string v0, "sm"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {v1}, Ldd/k0;->h(Landroid/hardware/Sensor;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    const-string v0, "getSensorList(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/hardware/Sensor;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v4}, Ldd/k0;->h(Landroid/hardware/Sensor;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v2

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v3

    const v4, 0x7fffffff

    if-lez v3, :cond_6

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v4

    :cond_7
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v6

    if-lez v6, :cond_8

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    goto :goto_2

    :cond_8
    move v5, v4

    :goto_2
    if-le v0, v5, :cond_9

    move-object v2, v3

    move v0, v5

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_3
    check-cast v2, Landroid/hardware/Sensor;

    if-nez v2, :cond_a

    :goto_4
    return-object v1

    :cond_a
    return-object v2
.end method

.method public static final h(Landroid/hardware/Sensor;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "virtual"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getVendor(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method

.method public static final p(JLdd/l0;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_1

    iget-wide v0, p2, Ldd/l0;->c:J

    sub-long/2addr p0, v0

    const/16 p2, 0x3e8

    int-to-long v0, p2

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, "none"

    return-object p0
.end method


# virtual methods
.method public final b()Lx9/l0;
    .locals 0

    iget-object p0, p0, Ldd/k0;->l:Lx9/l0;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    const-string v0, "gps"

    iget-object v1, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "force_xtra_injection"

    invoke-virtual {v1, v0, v3, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v3}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Lt8/l;

    if-eqz v4, :cond_0

    move-object v3, v2

    :cond_0
    check-cast v3, Ljava/lang/Boolean;

    :try_start_1
    const-string v4, "force_time_injection"

    invoke-virtual {v1, v0, v4, v2}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, v0

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xtra="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldd/k0;->s:Ljava/lang/String;

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "agps_inject reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " xtra="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " time="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {p0, v0, v1, p1}, Ldd/q0;->a(JLjava/lang/String;)V

    return-void
.end method

.method public final d()Lua/nav/routing/GeoPoint;
    .locals 6

    iget-object p0, p0, Ldd/k0;->t:Landroid/content/SharedPreferences;

    const-string v0, "lat"

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "lon"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lua/nav/routing/GeoPoint;

    float-to-double v2, v0

    float-to-double v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Landroid/location/Location;Ldd/o;)V
    .locals 64

    new-instance v0, Ldd/l0;

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    const v1, 0xf4240

    int-to-long v6, v1

    div-long/2addr v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v17, v0

    const/16 v0, 0x1f

    if-lt v6, v0, :cond_6

    invoke-static/range {p1 .. p1}, Lb5/c;->y(Landroid/location/Location;)Z

    move-result v0

    :goto_6
    move-wide/from16 v59, v10

    move-object v11, v7

    move-wide/from16 v6, v59

    move/from16 v16, v0

    move-object v10, v1

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-wide/from16 v59, v12

    move-object v12, v8

    move-object v13, v9

    move-wide/from16 v8, v59

    goto :goto_7

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v0

    goto :goto_6

    :goto_7
    invoke-direct/range {v0 .. v16}, Ldd/l0;-><init>(Ldd/o;JJDDLjava/lang/Double;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Z)V

    move-object/from16 v17, v13

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    move-wide/from16 v60, v4

    move-object/from16 v4, v59

    move-object v5, v11

    move-wide/from16 v62, v6

    move-object v6, v10

    move-wide/from16 v10, v62

    move-object v7, v14

    move-wide/from16 v14, v60

    move/from16 v59, v16

    move-object/from16 v16, v12

    move-wide v12, v8

    move/from16 v8, v59

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Ldd/m;->g:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldd/n;

    move-wide/from16 v21, v2

    sget-object v2, Ldd/o;->l:Ldd/o;

    const-string v3, "mock"

    move-object/from16 p1, v5

    if-ne v1, v2, :cond_7

    iget-boolean v5, v0, Ldd/m;->i:Z

    if-eqz v5, :cond_8

    :cond_7
    if-eqz v8, :cond_8

    iget-object v0, v0, Ldd/m;->b:Lb0/l1;

    new-instance v1, Ldd/y0;

    sget-object v2, Ldd/u0;->n:Ldd/u0;

    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldd/y0;-><init>(Ldd/u0;Ljava/util/List;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lb0/l1;->m(Ldd/l0;Ldd/p;Ldd/y0;)V

    return-void

    :cond_8
    const-string v5, "outside_ua"

    if-eq v1, v2, :cond_9

    invoke-static {v10, v11, v12, v13}, Ldd/w0;->a(DD)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v0, v0, Ldd/m;->b:Lb0/l1;

    new-instance v1, Ldd/y0;

    sget-object v2, Ldd/u0;->n:Ldd/u0;

    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ldd/y0;-><init>(Ldd/u0;Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2, v1}, Lb0/l1;->m(Ldd/l0;Ldd/p;Ldd/y0;)V

    return-void

    :cond_9
    sget-object v2, Ldd/o;->m:Ldd/o;

    if-ne v1, v2, :cond_b

    iget-object v1, v0, Ldd/m;->d:Ldd/d0;

    invoke-virtual {v1, v4}, Ldd/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ldd/m;->b:Lb0/l1;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v2}, Lb0/l1;->m(Ldd/l0;Ldd/p;Ldd/y0;)V

    iget-object v15, v0, Ldd/m;->g:Lx9/l0;

    :goto_8
    invoke-virtual {v15}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    move-object v0, v1

    check-cast v0, Ldd/n;

    const/4 v13, 0x0

    const/16 v14, 0x1ff7

    move-object v5, v1

    const/4 v1, 0x0

    move-object/from16 v18, v2

    const/4 v2, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v24, v16

    move-object/from16 v23, v17

    invoke-static/range {v0 .. v14}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-virtual {v15, v5, v0}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, v23

    iget-object v0, v0, Ldd/m;->f:Lb0/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lb0/x;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    move-object/from16 v0, v23

    const/4 v2, 0x0

    goto :goto_8

    :cond_b
    sget-object v2, Ldd/o;->n:Ldd/o;

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Ldd/m;->b:Lb0/l1;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v2}, Lb0/l1;->m(Ldd/l0;Ldd/p;Ldd/y0;)V

    iget-object v15, v0, Ldd/m;->g:Lx9/l0;

    :cond_c
    invoke-virtual {v15}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, v1

    check-cast v0, Ldd/n;

    const/4 v13, 0x0

    const/16 v14, 0x1fef

    move-object v2, v1

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    move-object/from16 v17, v4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v26, v5

    move-object/from16 v5, v17

    invoke-static/range {v0 .. v14}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v0

    move-object v4, v5

    move-object/from16 v1, v26

    invoke-virtual {v15, v1, v0}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_d
    iget-object v1, v0, Ldd/m;->l:Lp/a1;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    iget-object v2, v0, Ldd/m;->a:Ldd/t0;

    move-object/from16 p0, v1

    iget-object v1, v9, Ldd/n;->c:Ldd/l0;

    move-object/from16 v23, v0

    iget-object v0, v9, Ldd/n;->f:Ldd/p;

    move-object/from16 v18, v6

    if-nez p0, :cond_f

    iget-object v6, v9, Ldd/n;->g:Ldd/m0;

    iget-object v6, v6, Ldd/m0;->a:Ljava/lang/Float;

    move-object/from16 v24, v6

    goto :goto_a

    :cond_f
    move-object/from16 v24, p0

    :goto_a
    iget-boolean v6, v9, Ldd/n;->i:Z

    move-wide/from16 v26, v14

    iget-object v14, v9, Ldd/n;->d:Ldd/l0;

    if-eqz p0, :cond_10

    const/16 v28, 0x1

    goto :goto_b

    :cond_10
    const/16 v28, 0x0

    :goto_b
    sget v15, Lb6/g;->l:I

    const-wide/16 v29, 0x9c4

    const-wide v31, 0x400ccccccccccccdL    # 3.6

    if-ltz v15, :cond_11

    sget-wide v33, Lb6/g;->m:J

    sub-long v33, v26, v33

    cmp-long v33, v33, v29

    if-lez v33, :cond_12

    :cond_11
    move/from16 v34, v6

    move-object/from16 v33, v7

    goto :goto_c

    :cond_12
    move/from16 v34, v6

    move-object/from16 v33, v7

    int-to-double v6, v15

    div-double v6, v6, v31

    sget-wide v35, Lb6/g;->n:D

    mul-double v6, v6, v35

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v15, v6

    goto :goto_d

    :goto_c
    const/4 v15, 0x0

    :goto_d
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v15

    iget-object v15, v2, Ldd/t0;->a:Ldd/r0;

    move-object/from16 v36, v0

    iget-object v0, v2, Ldd/t0;->b:Ldd/l0;

    iput-object v4, v2, Ldd/t0;->b:Ldd/l0;

    if-eqz v8, :cond_13

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v10, v11, v12, v13}, Ldd/w0;->a(DD)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v5, v4

    if-eqz v18, :cond_18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    if-eqz v33, :cond_15

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    const/high16 v18, 0x42480000    # 50.0f

    cmpl-float v33, v8, v18

    if-lez v33, :cond_16

    move/from16 v8, v18

    :cond_16
    move-wide/from16 v37, v10

    move-object v11, v9

    iget-wide v9, v15, Ldd/r0;->a:D

    move-wide/from16 v39, v9

    float-to-double v8, v8

    sub-double v39, v39, v8

    cmpg-double v10, v3, v39

    if-ltz v10, :cond_17

    move-wide/from16 v39, v8

    iget-wide v8, v15, Ldd/r0;->b:D

    add-double v8, v8, v39

    cmpl-double v8, v3, v8

    if-lez v8, :cond_19

    :cond_17
    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "alt="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_18
    move-wide/from16 v37, v10

    move-object v11, v9

    :cond_19
    :goto_f
    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    float-to-double v3, v3

    mul-double v3, v3, v31

    iget-wide v8, v15, Ldd/r0;->c:D

    cmpl-double v8, v3, v8

    if-lez v8, :cond_1a

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "speed="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v17, :cond_1b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget v4, v15, Ldd/r0;->d:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1b

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "acc="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v1, :cond_1c

    iget-object v3, v1, Ldd/l0;->i:Ljava/lang/Float;

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :goto_10
    const/high16 v18, 0x41700000    # 15.0f

    if-eqz v17, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v18

    if-lez v4, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v3, v8

    cmpl-float v3, v4, v3

    if-lez v3, :cond_1d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "acc_jump="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    const-string v8, "s"

    const-wide v39, 0x408f400000000000L    # 1000.0

    if-eqz v1, :cond_21

    iget-wide v9, v1, Ldd/l0;->c:J

    cmp-long v33, v26, v9

    if-lez v33, :cond_21

    sub-long v9, v26, v9

    long-to-double v9, v9

    div-double v9, v9, v39

    sget-object v33, Ldd/t0;->Companion:Ldd/s0;

    move-object/from16 v41, v6

    move-object/from16 v42, v7

    iget-wide v6, v1, Ldd/l0;->d:D

    move-wide/from16 v43, v9

    move-object v10, v8

    iget-wide v8, v1, Ldd/l0;->e:D

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v5

    move-object/from16 v4, v41

    move-object/from16 v5, v42

    const-wide/high16 v45, 0x4034000000000000L    # 20.0

    move-object/from16 v41, v14

    move-object v14, v10

    move-wide/from16 v59, v37

    move-object/from16 v37, v2

    move-object/from16 v38, v11

    move-wide/from16 v10, v59

    move-wide/from16 v2, v43

    invoke-static/range {v6 .. v13}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    iget-wide v8, v15, Ldd/r0;->c:D

    div-double v8, v8, v31

    mul-double/2addr v8, v2

    if-eqz v17, :cond_1e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v42

    move-wide/from16 v59, v8

    move/from16 v8, v42

    move-wide/from16 v42, v59

    goto :goto_11

    :cond_1e
    move-wide/from16 v42, v8

    const/4 v8, 0x0

    :goto_11
    float-to-double v8, v8

    add-double v8, v42, v8

    iget-object v1, v1, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_12
    move-wide/from16 v42, v8

    goto :goto_13

    :cond_1f
    const/4 v1, 0x0

    goto :goto_12

    :goto_13
    float-to-double v8, v1

    add-double v8, v42, v8

    add-double v8, v8, v45

    cmpl-double v1, v6, v8

    if-lez v1, :cond_20

    double-to-int v1, v6

    double-to-int v8, v2

    const-string v9, "jump="

    move-wide/from16 v43, v2

    const-string v2, "m/"

    invoke-static {v9, v1, v2, v8, v14}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_20
    move-wide/from16 v43, v2

    :goto_14
    if-eqz p1, :cond_22

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v1, v43

    if-gtz v3, :cond_22

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    cmpg-double v3, v43, v8

    if-gtz v3, :cond_22

    div-double v6, v6, v43

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    sub-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-wide/from16 v42, v1

    iget-wide v1, v15, Ldd/r0;->x:D

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-wide/from16 v47, v8

    float-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    mul-double v8, v8, v42

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    cmpl-double v1, v47, v1

    if-lez v1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    mul-double v1, v1, v31

    double-to-int v1, v1

    mul-double v6, v6, v31

    double-to-int v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "speed_mismatch="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_21
    move-wide/from16 v45, v37

    move-object/from16 v38, v11

    move-wide/from16 v10, v45

    move-object/from16 v37, v2

    move-object/from16 v33, v5

    move-object v4, v6

    move-object v5, v7

    move-object/from16 v41, v14

    const-wide/high16 v45, 0x4034000000000000L    # 20.0

    move-object v14, v8

    :cond_22
    :goto_15
    if-eqz v0, :cond_24

    iget-wide v1, v0, Ldd/l0;->c:J

    cmp-long v1, v26, v1

    if-lez v1, :cond_23

    iget-wide v1, v0, Ldd/l0;->b:J

    cmp-long v1, v21, v1

    if-gtz v1, :cond_24

    :cond_23
    const-string v1, "dup_time"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    const/16 v3, 0x3e8

    if-eqz v0, :cond_28

    iget-wide v8, v0, Ldd/l0;->d:D

    cmpg-double v8, v10, v8

    if-nez v8, :cond_28

    iget-wide v8, v0, Ldd/l0;->e:D

    cmpg-double v8, v12, v8

    if-nez v8, :cond_28

    if-eqz p1, :cond_28

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, v15, Ldd/r0;->r:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_28

    move-object/from16 v8, v37

    const-wide/16 v42, 0x0

    iget-wide v1, v8, Ldd/t0;->c:J

    cmp-long v1, v1, v42

    if-gez v1, :cond_25

    iget-wide v0, v0, Ldd/l0;->c:J

    iput-wide v0, v8, Ldd/t0;->c:J

    :cond_25
    iget-wide v0, v8, Ldd/t0;->c:J

    sub-long v0, v26, v0

    int-to-long v6, v3

    div-long/2addr v0, v6

    iget-wide v6, v15, Ldd/r0;->t:J

    cmp-long v2, v0, v6

    const-string v6, "frozen="

    if-ltz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    :cond_26
    :goto_16
    const-wide/16 v0, -0x1

    goto :goto_17

    :cond_27
    move-object v2, v4

    iget-wide v3, v15, Ldd/r0;->s:J

    cmp-long v3, v0, v3

    if-ltz v3, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_28
    move-object v2, v4

    move-object/from16 v8, v37

    const-wide/16 v42, 0x0

    const-wide/16 v0, -0x1

    iput-wide v0, v8, Ldd/t0;->c:J

    :goto_17
    move-object/from16 v3, v41

    if-eqz v41, :cond_29

    iget-object v6, v3, Ldd/l0;->i:Ljava/lang/Float;

    move-object v4, v6

    goto :goto_18

    :cond_29
    const/4 v4, 0x0

    :goto_18
    const/high16 v41, 0x41200000    # 10.0f

    const-wide/high16 v47, 0x4008000000000000L    # 3.0

    const-wide/16 v49, 0x1388

    if-eqz v3, :cond_2a

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v15, Ldd/r0;->v:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2a

    iget-wide v6, v3, Ldd/l0;->c:J

    sub-long v6, v26, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v6, v6, v49

    if-gtz v6, :cond_2a

    if-eqz p1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v7, v15, Ldd/r0;->w:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2a

    goto :goto_1a

    :cond_2a
    move-object/from16 v44, v2

    move-object v0, v8

    :cond_2b
    :goto_19
    move-object/from16 v1, v36

    goto :goto_1c

    :cond_2c
    :goto_1a
    sget-object v6, Ldd/t0;->Companion:Ldd/s0;

    move-object v9, v6

    iget-wide v6, v3, Ldd/l0;->d:D

    move-object/from16 v44, v8

    move-object/from16 v51, v9

    iget-wide v8, v3, Ldd/l0;->e:D

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v59, v44

    move-object/from16 v44, v2

    move-wide v1, v0

    move-object/from16 v0, v59

    invoke-static/range {v6 .. v13}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    iget-wide v8, v15, Ldd/r0;->u:D

    if-eqz v17, :cond_2d

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v51

    goto :goto_1b

    :cond_2d
    move/from16 v51, v41

    :goto_1b
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float v4, v4, v51

    float-to-double v1, v4

    mul-double v1, v1, v47

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    cmpl-double v1, v6, v1

    if-lez v1, :cond_2b

    double-to-int v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "net_diff="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :goto_1c
    iget-object v2, v1, Ldd/p;->g:Ljava/lang/Float;

    if-nez v2, :cond_2e

    iget-object v2, v1, Ldd/p;->f:Ljava/lang/Float;

    :cond_2e
    iget-wide v6, v1, Ldd/p;->m:J

    cmp-long v4, v6, v42

    if-lez v4, :cond_2f

    sub-long v6, v26, v6

    cmp-long v4, v6, v49

    if-gez v4, :cond_2f

    const/4 v4, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v4, 0x0

    :goto_1d
    const v36, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x2

    const-string v7, "jam_strong"

    if-eqz v4, :cond_3d

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, v15, Ldd/r0;->q:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3d

    iget-object v2, v0, Ldd/t0;->a:Ldd/r0;

    iget v8, v1, Ldd/p;->k:I

    if-lt v8, v6, :cond_30

    iget v8, v2, Ldd/r0;->z:I

    goto :goto_1e

    :cond_30
    iget v8, v2, Ldd/r0;->y:I

    :goto_1e
    iget v9, v1, Ldd/p;->b:I

    if-lt v9, v8, :cond_33

    iget-object v8, v1, Ldd/p;->c:Ljava/lang/Float;

    if-eqz v8, :cond_31

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_1f

    :cond_31
    const/4 v8, 0x0

    :goto_1f
    iget v9, v2, Ldd/r0;->A:F

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_33

    iget-object v8, v1, Ldd/p;->d:Ljava/lang/Float;

    if-eqz v8, :cond_32

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    goto :goto_20

    :cond_32
    const/4 v8, 0x0

    :goto_20
    iget v9, v2, Ldd/r0;->B:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_34

    :cond_33
    move/from16 v53, v4

    move v3, v6

    move-object v4, v7

    goto/16 :goto_25

    :cond_34
    if-eqz v3, :cond_35

    iget-object v8, v3, Ldd/l0;->i:Ljava/lang/Float;

    move-object/from16 v35, v8

    goto :goto_21

    :cond_35
    const/16 v35, 0x0

    :goto_21
    if-eqz v3, :cond_38

    if-eqz v35, :cond_38

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget v9, v2, Ldd/r0;->E:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_38

    iget-wide v8, v3, Ldd/l0;->c:J

    sub-long v8, v26, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    move-object/from16 v50, v7

    iget-wide v6, v2, Ldd/r0;->D:J

    cmp-long v6, v8, v6

    if-gtz v6, :cond_37

    sget-object v6, Ldd/t0;->Companion:Ldd/s0;

    move-object v8, v6

    iget-wide v6, v3, Ldd/l0;->d:D

    move/from16 v53, v4

    iget-wide v3, v3, Ldd/l0;->e:D

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v8, v3

    move-object/from16 v4, v50

    const/4 v3, 0x2

    invoke-static/range {v6 .. v13}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    iget-wide v8, v2, Ldd/r0;->C:D

    if-eqz v17, :cond_36

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v41

    :cond_36
    move/from16 v10, v41

    float-to-double v10, v10

    add-double/2addr v8, v10

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_39

    const/4 v6, 0x1

    goto :goto_23

    :cond_37
    move/from16 v53, v4

    move-object/from16 v4, v50

    const/4 v3, 0x2

    goto :goto_22

    :cond_38
    move/from16 v53, v4

    move v3, v6

    move-object v4, v7

    :cond_39
    :goto_22
    const/4 v6, 0x0

    :goto_23
    iget-wide v7, v0, Ldd/t0;->d:J

    cmp-long v9, v7, v42

    if-ltz v9, :cond_3a

    iget-wide v9, v2, Ldd/r0;->F:J

    sub-long v7, v26, v7

    const-wide/16 v11, 0x1

    cmp-long v2, v11, v7

    if-gtz v2, :cond_3a

    cmp-long v2, v7, v9

    if-gtz v2, :cond_3a

    const/4 v2, 0x1

    goto :goto_24

    :cond_3a
    const/4 v2, 0x0

    :goto_24
    if-nez v6, :cond_3b

    if-nez v2, :cond_3b

    :goto_25
    move-wide/from16 v6, v26

    goto :goto_26

    :cond_3b
    move-wide/from16 v6, v26

    iput-wide v6, v0, Ldd/t0;->d:J

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v50, v4

    move-object/from16 v8, v44

    goto/16 :goto_2a

    :goto_26
    const-string v2, "jam"

    move-object/from16 v8, v44

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v9, -0x1

    iput-wide v9, v0, Ldd/t0;->d:J

    :cond_3c
    move-object/from16 v50, v4

    goto/16 :goto_2a

    :cond_3d
    move/from16 v53, v4

    move v3, v6

    move-object v4, v7

    move-wide/from16 v6, v26

    move-object/from16 v8, v44

    if-nez v34, :cond_3e

    if-eqz v53, :cond_3c

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v9, v15, Ldd/r0;->p:F

    cmpg-float v2, v2, v9

    if-gez v2, :cond_3c

    :cond_3e
    if-eqz v35, :cond_40

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    cmpl-double v2, v9, v47

    if-ltz v2, :cond_40

    if-eqz p1, :cond_40

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v9, v2

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3fd0000000000000L    # 0.25

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    mul-double v11, v11, v26

    move-object/from16 v50, v4

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpg-double v2, v9, v2

    if-gtz v2, :cond_41

    if-eqz v17, :cond_3f

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_27

    :cond_3f
    move/from16 v2, v36

    :goto_27
    const/high16 v3, 0x42700000    # 60.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_41

    const/4 v2, 0x1

    goto :goto_28

    :cond_40
    move-object/from16 v50, v4

    :cond_41
    const/4 v2, 0x0

    :goto_28
    if-eqz v53, :cond_42

    iget v3, v1, Ldd/p;->b:I

    iget v4, v15, Ldd/r0;->h:I

    if-ge v3, v4, :cond_42

    const/4 v3, 0x1

    goto :goto_29

    :cond_42
    const/4 v3, 0x0

    :goto_29
    const-string v4, "jam_weak"

    if-eqz v3, :cond_43

    if-nez v2, :cond_43

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_43
    if-eqz v3, :cond_44

    const-string v4, "jam_weak_obd_ok"

    :cond_44
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2a
    if-eqz v53, :cond_4a

    iget v2, v1, Ldd/p;->b:I

    if-nez v2, :cond_45

    iget v3, v1, Ldd/p;->a:I

    if-lez v3, :cond_45

    const-string v3, "no_sats"

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_45
    iget v3, v15, Ldd/r0;->h:I

    const/4 v4, 0x1

    if-gt v4, v2, :cond_46

    if-ge v2, v3, :cond_46

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sats="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    iget v3, v15, Ldd/r0;->j:I

    if-lt v2, v3, :cond_48

    if-eqz v17, :cond_47

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v36

    :cond_47
    iget v3, v15, Ldd/r0;->k:F

    cmpg-float v3, v36, v3

    if-gtz v3, :cond_48

    if-nez v34, :cond_48

    const/4 v3, 0x1

    goto :goto_2b

    :cond_48
    const/4 v3, 0x0

    :goto_2b
    iget-object v4, v1, Ldd/p;->c:Ljava/lang/Float;

    if-eqz v4, :cond_49

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget v9, v15, Ldd/r0;->i:F

    cmpg-float v9, v4, v9

    if-gez v9, :cond_49

    if-nez v3, :cond_49

    float-to-int v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "cn0="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v1, v1, Ldd/p;->d:Ljava/lang/Float;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4a

    iget v2, v15, Ldd/r0;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4a

    const-string v1, "cn0_flat"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    if-eqz v24, :cond_4e

    if-eqz p1, :cond_4e

    if-eqz v16, :cond_4e

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, v15, Ldd/r0;->o:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4e

    sget-object v1, Ldd/t0;->Companion:Ldd/s0;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4b

    sub-float v1, v2, v1

    :cond_4b
    if-eqz v28, :cond_4c

    iget v2, v15, Ldd/r0;->n:F

    goto :goto_2c

    :cond_4c
    iget v2, v15, Ldd/r0;->m:F

    :goto_2c
    cmpl-float v2, v1, v2

    if-lez v2, :cond_4e

    float-to-int v1, v1

    if-eqz v28, :cond_4d

    const-string v2, "c"

    goto :goto_2d

    :cond_4d
    const-string v2, ""

    :goto_2d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "heading_diff="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    sub-long v2, v21, v19

    iget-object v4, v0, Ldd/t0;->e:Ljava/lang/Long;

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v2, v9

    goto :goto_2e

    :cond_4f
    move-wide v9, v2

    :goto_2e
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    iget-wide v11, v15, Ldd/r0;->e:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_54

    const/16 v9, 0x3e8

    int-to-long v10, v9

    div-long v9, v2, v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "clock_skew="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_50

    const/4 v4, 0x0

    iput-object v4, v0, Ldd/t0;->e:Ljava/lang/Long;

    goto :goto_2f

    :cond_50
    const/4 v4, 0x0

    :goto_2f
    if-nez v1, :cond_52

    iput-object v4, v0, Ldd/t0;->f:Ljava/lang/Long;

    const/4 v1, 0x0

    iput v1, v0, Ldd/t0;->g:I

    :cond_51
    const/4 v4, 0x0

    goto :goto_30

    :cond_52
    iget-object v1, v0, Ldd/t0;->f:Ljava/lang/Long;

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v2, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    iget-object v1, v0, Ldd/t0;->a:Ldd/r0;

    iget-wide v11, v1, Ldd/r0;->f:J

    cmp-long v4, v9, v11

    if-gtz v4, :cond_53

    iget v4, v0, Ldd/t0;->g:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Ldd/t0;->g:I

    iget v1, v1, Ldd/r0;->g:I

    if-lt v4, v1, :cond_51

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldd/t0;->e:Ljava/lang/Long;

    const/4 v1, 0x0

    iput v1, v0, Ldd/t0;->g:I

    const/4 v4, 0x0

    iput-object v4, v0, Ldd/t0;->f:Ljava/lang/Long;

    goto :goto_30

    :cond_53
    const/4 v4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Ldd/t0;->f:Ljava/lang/Long;

    const/4 v9, 0x1

    iput v9, v0, Ldd/t0;->g:I

    goto :goto_30

    :cond_54
    const/4 v4, 0x0

    iput-object v4, v0, Ldd/t0;->f:Ljava/lang/Long;

    const/4 v1, 0x0

    iput v1, v0, Ldd/t0;->g:I

    :goto_30
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_56

    move-object/from16 v1, v50

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Ldd/t0;->d:J

    :cond_55
    new-instance v0, Ldd/y0;

    sget-object v1, Ldd/u0;->n:Ldd/u0;

    invoke-static {v8, v5}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldd/y0;-><init>(Ldd/u0;Ljava/util/List;)V

    :goto_31
    move-object v2, v0

    move-object/from16 v0, v23

    goto :goto_32

    :cond_56
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    new-instance v0, Ldd/y0;

    sget-object v1, Ldd/u0;->m:Ldd/u0;

    invoke-direct {v0, v1, v5}, Ldd/y0;-><init>(Ldd/u0;Ljava/util/List;)V

    goto :goto_31

    :cond_57
    sget-object v0, Ldd/y0;->Companion:Ldd/x0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ldd/y0;->c:Ldd/y0;

    goto :goto_31

    :goto_32
    iget-object v1, v0, Ldd/m;->b:Lb0/l1;

    move-object/from16 v11, v38

    iget-object v3, v11, Ldd/n;->f:Ldd/p;

    move-object/from16 v5, v33

    invoke-virtual {v1, v5, v3, v2}, Lb0/l1;->m(Ldd/l0;Ldd/p;Ldd/y0;)V

    iget-object v1, v0, Ldd/m;->a:Ldd/t0;

    iget-object v1, v1, Ldd/t0;->e:Ljava/lang/Long;

    iget-object v3, v0, Ldd/m;->q:Ljava/lang/Long;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    iput-object v1, v0, Ldd/m;->q:Ljava/lang/Long;

    iget-object v3, v0, Ldd/m;->b:Lb0/l1;

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v1, 0x3e8

    int-to-long v10, v1

    div-long/2addr v8, v10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "clock_calibrated offset="

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_58
    const-string v1, "clock_calibration_lost"

    :goto_33
    invoke-virtual {v3, v6, v7, v1}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_59
    iget-object v1, v0, Ldd/m;->m:Ldd/y;

    if-eqz p1, :cond_5a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_34

    :cond_5a
    const/high16 v3, 0x42c60000    # 99.0f

    :goto_34
    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v3, v3, v8

    if-gez v3, :cond_5b

    const/4 v3, 0x1

    goto :goto_35

    :cond_5b
    const/4 v3, 0x0

    :goto_35
    invoke-virtual {v1, v3, v6, v7}, Ldd/y;->a(ZJ)V

    iget-object v1, v2, Ldd/y0;->a:Ldd/u0;

    sget-object v3, Ldd/u0;->n:Ldd/u0;

    const-wide/16 v19, 0x2710

    const-wide v21, 0x3fe999999999999aL    # 0.8

    if-eq v1, v3, :cond_6d

    iget-object v1, v0, Ldd/m;->m:Ldd/y;

    iget-object v3, v1, Ldd/y;->b:Lu8/k;

    if-eqz v16, :cond_6a

    if-eqz p1, :cond_6a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/high16 v9, 0x40b00000    # 5.5f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5c

    goto/16 :goto_3b

    :cond_5c
    new-instance v8, Ldd/v;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v9, v9

    invoke-direct {v8, v9, v10, v6, v7}, Ldd/v;-><init>(DJ)V

    invoke-virtual {v3, v8}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_36
    invoke-virtual {v3}, Lu8/k;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5d

    invoke-virtual {v3}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldd/v;

    iget-wide v9, v9, Ldd/v;->a:J

    sub-long v9, v6, v9

    const-wide/16 v11, 0x2ee0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5d

    invoke-virtual {v3}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_36

    :cond_5d
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ldd/v;

    iget-wide v10, v10, Ldd/v;->a:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    div-double v10, v10, v39

    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fe3333333333333L    # 0.6

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_5e

    goto :goto_37

    :cond_5f
    move-object v9, v4

    :goto_37
    check-cast v9, Ldd/v;

    if-nez v9, :cond_60

    move-object v6, v4

    move-object/from16 v17, v5

    goto/16 :goto_3c

    :cond_60
    iget-wide v10, v9, Ldd/v;->a:J

    iget-object v3, v1, Ldd/y;->a:Lu8/k;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_61
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ldd/x;

    iget-wide v14, v14, Ldd/x;->a:J

    cmp-long v16, v10, v14

    if-gtz v16, :cond_61

    cmp-long v14, v14, v6

    if-gtz v14, :cond_61

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_62
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v13, 0x14

    if-lt v3, v13, :cond_6a

    invoke-static {v12}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/x;

    iget-wide v13, v3, Ldd/x;->a:J

    invoke-static {v12}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/x;

    move-object/from16 v17, v5

    iget-wide v4, v3, Ldd/x;->a:J

    sub-long/2addr v13, v4

    long-to-double v3, v13

    sub-long v5, v6, v10

    long-to-double v5, v5

    mul-double v5, v5, v21

    cmpg-double v3, v3, v5

    if-gez v3, :cond_63

    goto/16 :goto_3a

    :cond_63
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    move-wide/from16 v53, v4

    const/4 v4, 0x1

    :goto_39
    if-ge v4, v3, :cond_64

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/x;

    iget-wide v5, v5, Ldd/x;->b:D

    iget-wide v10, v1, Ldd/y;->d:D

    sub-double/2addr v5, v10

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldd/x;

    iget-wide v10, v7, Ldd/x;->a:J

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldd/x;

    iget-wide v13, v7, Ldd/x;->a:J

    sub-long/2addr v10, v13

    long-to-double v10, v10

    div-double v10, v10, v39

    mul-double/2addr v10, v5

    add-double v53, v10, v53

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_64
    iget-wide v3, v8, Ldd/v;->b:D

    iget-wide v5, v9, Ldd/v;->b:D

    sub-double/2addr v3, v5

    const-wide v5, 0x4076800000000000L    # 360.0

    rem-double/2addr v3, v5

    const-wide v7, 0x4066800000000000L    # 180.0

    cmpl-double v1, v3, v7

    const/16 v9, 0x168

    if-lez v1, :cond_65

    int-to-double v10, v9

    sub-double/2addr v3, v10

    :cond_65
    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v1, v3, v10

    if-gtz v1, :cond_66

    int-to-double v12, v9

    add-double/2addr v3, v12

    :cond_66
    move-wide/from16 v51, v3

    sub-double v3, v51, v53

    rem-double/2addr v3, v5

    cmpl-double v1, v3, v7

    if-lez v1, :cond_67

    int-to-double v5, v9

    sub-double/2addr v3, v5

    :cond_67
    cmpg-double v1, v3, v10

    if-gtz v1, :cond_68

    int-to-double v5, v9

    add-double/2addr v3, v5

    :cond_68
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v55

    invoke-static/range {v51 .. v52}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v1, v3, v45

    if-ltz v1, :cond_69

    const-wide v3, 0x4046800000000000L    # 45.0

    cmpl-double v1, v55, v3

    if-lez v1, :cond_69

    new-instance v50, Ldd/w;

    invoke-direct/range {v50 .. v56}, Ldd/w;-><init>(DDD)V

    move-object/from16 v6, v50

    goto :goto_3c

    :cond_69
    :goto_3a
    const/4 v6, 0x0

    goto :goto_3c

    :cond_6a
    :goto_3b
    move-object/from16 v17, v5

    goto :goto_3a

    :goto_3c
    move-object/from16 v4, v17

    if-eqz v6, :cond_6c

    iget-wide v7, v4, Ldd/l0;->c:J

    iget-wide v9, v0, Ldd/m;->n:J

    sub-long v9, v7, v9

    cmp-long v1, v9, v19

    if-lez v1, :cond_6c

    iput-wide v7, v0, Ldd/m;->n:J

    iget-object v1, v0, Ldd/m;->b:Lb0/l1;

    iget-wide v9, v6, Ldd/w;->a:D

    const/4 v15, 0x0

    invoke-static {v9, v10, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v3

    iget-wide v9, v6, Ldd/w;->b:D

    invoke-static {v9, v10, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v5

    iget-wide v9, v6, Ldd/w;->c:D

    invoke-static {v9, v10, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v4, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v9, :cond_6b

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_3d

    :cond_6b
    const/4 v9, 0x0

    :goto_3d
    float-to-double v9, v9

    mul-double v9, v9, v31

    invoke-static {v9, v10, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Ldd/m;->m:Ldd/y;

    iget-wide v10, v10, Ldd/y;->d:D

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v10

    const-string v11, " gyro="

    const-string v13, " resid="

    const-string v14, "gyro_heading_mismatch gps="

    invoke-static {v14, v3, v11, v5, v13}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " speed_kmh="

    const-string v11, " bias="

    invoke-static {v3, v6, v5, v9, v11}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v8, v3}, Lb0/l1;->w(JLjava/lang/String;)V

    goto :goto_3f

    :cond_6c
    :goto_3e
    const/4 v12, 0x2

    const/4 v15, 0x0

    goto :goto_3f

    :cond_6d
    move-object v4, v5

    goto :goto_3e

    :goto_3f
    iget-object v1, v2, Ldd/y0;->a:Ldd/u0;

    sget-object v3, Ldd/u0;->l:Ldd/u0;

    if-ne v1, v3, :cond_6e

    iget-wide v5, v0, Ldd/m;->p:J

    cmp-long v1, v5, v42

    if-lez v1, :cond_6e

    iget-object v1, v0, Ldd/m;->b:Lb0/l1;

    iget-wide v7, v4, Ldd/l0;->c:J

    sub-long v5, v7, v5

    const/16 v9, 0x3e8

    int-to-long v10, v9

    div-long/2addr v5, v10

    const-string v3, "first_good_after_jam dt_s="

    invoke-static {v5, v6, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v8, v3}, Lb0/l1;->w(JLjava/lang/String;)V

    move-wide/from16 v5, v42

    iput-wide v5, v0, Ldd/m;->p:J

    goto :goto_40

    :cond_6e
    const/16 v9, 0x3e8

    :goto_40
    iget-object v1, v0, Ldd/m;->g:Lx9/l0;

    :goto_41
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v0

    move-object v0, v3

    check-cast v0, Ldd/n;

    iget-object v5, v2, Ldd/y0;->a:Ldd/u0;

    sget-object v6, Ldd/u0;->l:Ldd/u0;

    if-ne v5, v6, :cond_6f

    move-object v7, v4

    goto :goto_42

    :cond_6f
    iget-object v7, v0, Ldd/n;->c:Ldd/l0;

    :goto_42
    iget v8, v0, Ldd/n;->j:I

    const/16 v17, 0x1

    add-int/lit8 v10, v8, 0x1

    iget v8, v0, Ldd/n;->k:I

    sget-object v11, Ldd/u0;->n:Ldd/u0;

    if-ne v5, v11, :cond_70

    move/from16 v5, v17

    goto :goto_43

    :cond_70
    move v5, v15

    :goto_43
    add-int v11, v8, v5

    const/4 v13, 0x0

    const/16 v14, 0x19f8

    move-object v5, v4

    const/4 v4, 0x0

    move-object/from16 v33, v5

    const/4 v5, 0x0

    move-object v8, v6

    const/4 v6, 0x0

    move-object/from16 v24, v3

    move-object v3, v7

    const/4 v7, 0x0

    move-object/from16 v25, v8

    const/4 v8, 0x0

    move/from16 v37, v9

    const/4 v9, 0x0

    move/from16 v49, v12

    const/4 v12, 0x0

    move-object v15, v1

    move-object/from16 v57, v24

    move-object/from16 v58, v25

    move-object/from16 v1, v33

    const/16 v25, 0x0

    invoke-static/range {v0 .. v14}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v0

    move-object v4, v1

    move-object/from16 v1, v57

    invoke-virtual {v15, v1, v0}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    move-object/from16 v0, v23

    iget-object v1, v0, Ldd/m;->f:Lb0/x;

    invoke-virtual {v1, v4, v2}, Lb0/x;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Ldd/y0;->a:Ldd/u0;

    move-object/from16 v8, v58

    if-ne v1, v8, :cond_73

    iget-object v1, v0, Ldd/m;->e:Ldd/d0;

    invoke-virtual {v1, v4}, Ldd/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Ldd/m;->d:Ldd/d0;

    invoke-virtual {v1, v4}, Ldd/d0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v4, Ldd/l0;->g:Ljava/lang/Float;

    iget-wide v2, v4, Ldd/l0;->c:J

    if-eqz v1, :cond_73

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v5, v1

    sget v1, Lb6/g;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ltz v1, :cond_71

    sget-wide v8, Lb6/g;->m:J

    sub-long/2addr v2, v8

    cmp-long v1, v2, v29

    if-gtz v1, :cond_71

    goto :goto_44

    :cond_71
    move-object/from16 v7, v25

    :goto_44
    if-eqz v7, :cond_73

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x28

    if-lt v1, v2, :cond_73

    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    cmpg-double v2, v5, v2

    if-gez v2, :cond_72

    goto :goto_45

    :cond_72
    int-to-double v1, v1

    div-double v1, v1, v31

    div-double/2addr v5, v1

    cmpg-double v1, v21, v5

    if-gtz v1, :cond_73

    const-wide v1, 0x3ff3333333333333L    # 1.2

    cmpg-double v1, v5, v1

    if-gtz v1, :cond_73

    sget-wide v1, Lb6/g;->n:D

    const-wide v7, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v1, v7

    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v5, v7

    add-double v7, v5, v1

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    const-wide v11, 0x3ff199999999999aL    # 1.1

    invoke-static/range {v7 .. v12}, Lg6/c1;->d(DDD)D

    move-result-wide v1

    sput-wide v1, Lb6/g;->n:D

    iget-wide v1, v4, Ldd/l0;->c:J

    iget-wide v5, v0, Ldd/m;->u:J

    sub-long v5, v1, v5

    const-wide/32 v7, 0xea60

    cmp-long v3, v5, v7

    if-lez v3, :cond_73

    iput-wide v1, v0, Ldd/m;->u:J

    iget-object v3, v0, Ldd/m;->b:Lb0/l1;

    sget-wide v5, Lb6/g;->n:D

    const/16 v9, 0x3e8

    int-to-double v7, v9

    mul-double/2addr v5, v7

    double-to-int v5, v5

    int-to-double v5, v5

    div-double v5, v5, v39

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "obd_scale="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v2, v5}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_73
    :goto_45
    iget-object v1, v4, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-wide v2, v4, Ldd/l0;->c:J

    sget v5, Lb6/g;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ltz v5, :cond_74

    sget-wide v7, Lb6/g;->m:J

    sub-long/2addr v2, v7

    cmp-long v2, v2, v29

    if-gtz v2, :cond_74

    goto :goto_46

    :cond_74
    move-object/from16 v6, v25

    :goto_46
    if-eqz v6, :cond_75

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    cmpl-float v3, v1, v18

    if-ltz v3, :cond_75

    const/4 v3, 0x2

    if-gt v2, v3, :cond_75

    iget-wide v5, v4, Ldd/l0;->c:J

    iget-wide v7, v0, Ldd/m;->v:J

    sub-long v7, v5, v7

    cmp-long v3, v7, v19

    if-lez v3, :cond_75

    iput-wide v5, v0, Ldd/m;->v:J

    iget-object v3, v0, Ldd/m;->b:Lb0/l1;

    float-to-double v7, v1

    mul-double v7, v7, v31

    double-to-int v1, v7

    const-string v7, "obd_gps_conflict gps_kmh="

    const-string v8, " obd_kmh="

    invoke-static {v7, v1, v8, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5, v6, v1}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_75
    iget-wide v1, v4, Ldd/l0;->c:J

    invoke-virtual {v0, v1, v2}, Ldd/m;->a(J)V

    return-void

    :cond_76
    move-object v1, v15

    move-object/from16 v0, v23

    const/16 v9, 0x3e8

    const/4 v12, 0x2

    const/4 v15, 0x0

    goto/16 :goto_41
.end method

.method public final f(IJ)V
    .locals 4

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput p1, Lb6/g;->l:I

    sput-wide p2, Lb6/g;->m:J

    iget-wide v0, p0, Ldd/m;->t:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iput-wide p2, p0, Ldd/m;->t:J

    iget-object p0, p0, Ldd/m;->b:Lb0/l1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "obd kmh="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1}, Lb0/l1;->w(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)Ljava/io/File;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Ldd/k0;->j:Ldd/m;

    iget-object v2, v1, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd/n;

    iget-boolean v2, v2, Ldd/n;->l:Z

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, v0, Ldd/k0;->a:Ldd/q0;

    iget-object v3, v2, Ldd/q0;->d:Ljava/io/File;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v6, "log_rotate reason="

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Ldd/q0;->a(JLjava/lang/String;)V

    invoke-virtual {v2}, Ldd/q0;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Ldd/k0;->o()V

    iget-object v0, v1, Ldd/m;->g:Lx9/l0;

    :cond_1
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ldd/n;

    const-string v5, "it"

    invoke-static {v4, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xfff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v4 .. v18}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3
.end method

.method public final j(Lua/nav/routing/Route;)Ljava/lang/String;
    .locals 5

    const-string v0, "route"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ldd/k0;->a:Ldd/q0;

    const-string v0, "route_"

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Ldd/q0;->a:Ljava/io/File;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    invoke-virtual {v0}, Lua/nav/routing/Route$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0, v0, p1}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    :goto_0
    instance-of p0, v1, Lt8/l;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    move-object v1, p1

    :cond_0
    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final k()V
    .locals 10

    iget-boolean v0, p0, Ldd/k0;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ldd/k0;->m:Z

    const-string v0, "start"

    invoke-virtual {p0, v0}, Ldd/k0;->c(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, p0, Ldd/k0;->v:Ldd/b0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_0
    :try_start_1
    iget-object v2, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v3, "network"

    iget-object v7, p0, Ldd/k0;->w:Ldd/b0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    :try_start_2
    iget-object v3, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    const-string v4, "fused"

    iget-object v8, p0, Ldd/k0;->x:Ldd/b0;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    sget-object v0, Lt8/z;->a:Lt8/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_2
    instance-of v0, v0, Lt8/l;

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Ldd/k0;->y:Z

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const-string v3, "gnss measurements: "

    const-string v4, "gnss status: "

    const-string v5, "LocationEngine"

    if-lt v0, v2, :cond_3

    :try_start_3
    iget-object v0, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    iget-object v2, p0, Ldd/k0;->h:Landroid/os/Handler;

    new-instance v6, Ldd/c0;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v2}, Ldd/c0;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Ldd/k0;->z:Ldd/g0;

    invoke-static {v0, v6, v2}, Lc5/j;->y(Landroid/location/LocationManager;Ldd/c0;Landroid/location/GnssStatus$Callback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_4
    iget-object v0, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    iget-object v2, p0, Ldd/k0;->h:Landroid/os/Handler;

    new-instance v4, Ldd/c0;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v2}, Ldd/c0;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Ldd/k0;->A:Ldd/h0;

    invoke-static {v0, v4, v2}, Lc5/j;->x(Landroid/location/LocationManager;Ldd/c0;Landroid/location/GnssMeasurementsEvent$Callback;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3
    :try_start_5
    iget-object v0, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    iget-object v2, p0, Ldd/k0;->z:Ldd/g0;

    iget-object v6, p0, Ldd/k0;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2, v6}, Landroid/location/LocationManager;->registerGnssStatusCallback(Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_6
    iget-object v0, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    iget-object v2, p0, Ldd/k0;->A:Ldd/h0;

    iget-object v4, p0, Ldd/k0;->h:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4}, Landroid/location/LocationManager;->registerGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;Landroid/os/Handler;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_7
    iget-object v0, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    const/16 v3, 0x9

    const/16 v4, 0xf

    const/4 v5, 0x4

    if-eqz v0, :cond_6

    sget-object v0, Ldd/f0;->l:Ldd/f0;

    goto :goto_8

    :cond_6
    iget-object v0, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v0, Ldd/f0;->m:Ldd/f0;

    goto :goto_8

    :cond_7
    iget-object v0, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_8

    sget-object v0, Ldd/f0;->n:Ldd/f0;

    goto :goto_8

    :cond_8
    sget-object v0, Ldd/f0;->o:Ldd/f0;

    :goto_8
    iput-object v0, p0, Ldd/k0;->B:Ldd/f0;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    :cond_9
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_9

    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_d
    :goto_a
    if-ge v3, v2, :cond_f

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-static {v4}, Ldd/k0;->g(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v4

    goto :goto_b

    :cond_e
    iget-object v6, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v6, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    :goto_b
    if-eqz v4, :cond_d

    iget-object v6, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    iget-object v7, p0, Ldd/k0;->D:Ldd/i0;

    invoke-virtual {v6, v7, v4, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_a

    :cond_f
    iget-object v0, p0, Ldd/k0;->h:Landroid/os/Handler;

    iget-object p0, p0, Ldd/k0;->F:Ldd/j0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ldd/k0;->e:Ldd/o0;

    iget-object v2, v1, Ldd/o0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Ldd/o0;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Ldd/o0;->c:Ljava/lang/Object;

    check-cast v3, Lx9/l0;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const/4 v2, 0x1

    iput-boolean v2, v1, Ldd/o0;->a:Z

    iget-object v1, v0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {v1}, Ldd/q0;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ldd/k0;->o()V

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->g:Lx9/l0;

    :cond_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ldd/n;

    const-string v4, "it"

    invoke-static {v3, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x7ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static/range {v3 .. v17}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, Ldd/k0;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldd/k0;->m:Z

    iget-object v0, p0, Ldd/k0;->v:Ldd/b0;

    iget-object v1, p0, Ldd/k0;->f:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ldd/k0;->w:Ldd/b0;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ldd/k0;->x:Ldd/b0;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Ldd/k0;->z:Ldd/g0;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssStatusCallback(Landroid/location/GnssStatus$Callback;)V

    iget-object v0, p0, Ldd/k0;->A:Ldd/h0;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->unregisterGnssMeasurementsCallback(Landroid/location/GnssMeasurementsEvent$Callback;)V

    iget-object v0, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldd/k0;->D:Ldd/i0;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Ldd/k0;->h:Landroid/os/Handler;

    iget-object p0, p0, Ldd/k0;->F:Ldd/j0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ldd/k0;->a:Ldd/q0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Ldd/q0;->a(JLjava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Ldd/k0;->a:Ldd/q0;

    iget-object v3, p0, Ldd/k0;->b:Ldd/t0;

    iget-object v3, v3, Ldd/t0;->a:Ldd/r0;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Ldd/q0;->a(JLjava/lang/String;)V

    iget-object v2, p0, Ldd/k0;->d:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {v3, v0, v1, v2}, Ldd/q0;->a(JLjava/lang/String;)V

    :cond_1
    iget-object v2, p0, Ldd/k0;->j:Ldd/m;

    iget-object v2, v2, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd/n;

    iget-object v3, p0, Ldd/k0;->a:Ldd/q0;

    iget-object v5, p0, Ldd/k0;->B:Ldd/f0;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toLowerCase(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Ldd/k0;->B:Ldd/f0;

    sget-object v7, Ldd/f0;->l:Ldd/f0;

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v6, v7, :cond_2

    move v6, v9

    goto :goto_1

    :cond_2
    move v6, v8

    :goto_1
    iget-object v7, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    iget-object v10, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v10

    if-eqz v10, :cond_4

    move v8, v9

    :cond_4
    iget-object v10, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-static {v10}, Ldd/k0;->g(Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_5
    move-object v10, v4

    :goto_3
    iget-object v12, p0, Ldd/k0;->g:Landroid/hardware/SensorManager;

    invoke-virtual {v12, v11}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_6
    move-object v11, v4

    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "sensors mode="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " heading="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " linear_accel="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " gyro="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " gyro_sensor="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " gyro_default="

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v1, v5}, Ldd/q0;->a(JLjava/lang/String;)V

    iget-object v3, p0, Ldd/k0;->a:Ldd/q0;

    iget-boolean v5, v2, Ldd/n;->i:Z

    iget-object v6, v2, Ldd/n;->h:Ldd/t;

    iget-object v7, v2, Ldd/n;->c:Ldd/l0;

    invoke-static {v0, v1, v7}, Ldd/k0;->p(JLdd/l0;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Ldd/n;->d:Ldd/l0;

    invoke-static {v0, v1, v8}, Ldd/k0;->p(JLdd/l0;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v2, Ldd/n;->e:Ldd/l0;

    invoke-static {v0, v1, v10}, Ldd/k0;->p(JLdd/l0;)Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Ldd/k0;->y:Z

    iget-object p0, p0, Ldd/k0;->s:Ljava/lang/String;

    iget-object v2, v2, Ldd/n;->f:Ldd/p;

    iget-object v2, v2, Ldd/p;->f:Ljava/lang/Float;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "%.1f"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "rec_state jammed="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " gps_state="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " good_age_s="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " net_age_s="

    const-string v6, " fused_age_s="

    invoke-static {v2, v7, v5, v8, v6}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fused_provider="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " agps_start="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " agc="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, v1, p0}, Ldd/q0;->a(JLjava/lang/String;)V

    return-void
.end method
