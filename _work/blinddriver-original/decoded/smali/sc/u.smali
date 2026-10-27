.class public final Lsc/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# static fields
.field public static final m:Lsc/u;

.field public static final n:Lsc/u;

.field public static final o:Lsc/u;

.field public static final p:Lsc/u;

.field public static final q:Lsc/u;

.field public static final r:Lsc/u;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lsc/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->m:Lsc/u;

    new-instance v0, Lsc/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->n:Lsc/u;

    new-instance v0, Lsc/u;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->o:Lsc/u;

    new-instance v0, Lsc/u;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->p:Lsc/u;

    new-instance v0, Lsc/u;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->q:Lsc/u;

    new-instance v0, Lsc/u;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsc/u;-><init>(I)V

    sput-object v0, Lsc/u;->r:Lsc/u;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsc/u;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 62

    move-object/from16 v0, p0

    iget v0, v0, Lsc/u;->l:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lt8/j;

    iget-object v4, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v4, Ldd/l0;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    sget-object v0, Lsc/i0;->l:Lwc/d;

    if-eqz v0, :cond_c

    if-eqz v4, :cond_0

    iget-object v5, v4, Ldd/l0;->h:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_1

    iget-object v6, v4, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget-wide v7, v4, Ldd/l0;->e:D

    iget-wide v9, v4, Ldd/l0;->d:D

    if-eqz v5, :cond_2

    const/high16 v11, 0x40000000    # 2.0f

    cmpg-float v11, v6, v11

    if-gez v11, :cond_3

    :cond_2
    move-object/from16 v16, v3

    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_3
    iget-object v11, v0, Lwc/d;->a:Lg5/m;

    invoke-static {v9, v10}, Lsc/c;->c(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    const-wide v14, 0x40fb2d8000000000L    # 111320.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4089000000000000L    # 800.0

    div-double v12, v14, v12

    iget-object v11, v11, Lg5/m;->n:Ljava/lang/Object;

    check-cast v11, Lx9/l0;

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    move-wide/from16 p0, v14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v1, v15

    check-cast v1, Lua/nav/cameras/SpeedCamera;

    move-object/from16 v16, v3

    iget-wide v2, v1, Lua/nav/cameras/SpeedCamera;->b:D

    sub-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v17, 0x3f7da4c0de53a683L    # 0.007237199203908087

    cmpg-double v2, v2, v17

    if-gtz v2, :cond_4

    iget-wide v1, v1, Lua/nav/cameras/SpeedCamera;->c:D

    sub-double/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v12

    if-gtz v1, :cond_4

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v3, v16

    goto :goto_2

    :cond_5
    move-object/from16 v16, v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v2, v1, :cond_b

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v2, v2, 0x1

    check-cast v11, Lua/nav/cameras/SpeedCamera;

    sget-object v12, Ldd/t0;->Companion:Ldd/s0;

    move v13, v1

    move/from16 p2, v2

    iget-wide v1, v4, Ldd/l0;->d:D

    move-wide/from16 v17, v1

    iget-wide v1, v4, Ldd/l0;->e:D

    move-wide/from16 v19, v1

    iget-wide v1, v11, Lua/nav/cameras/SpeedCamera;->b:D

    move-wide/from16 v21, v1

    iget-wide v1, v11, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v23, v1

    invoke-static/range {v17 .. v24}, Ldd/s0;->a(DDDD)D

    move-result-wide v19

    cmpl-double v1, v19, p0

    if-gtz v1, :cond_9

    sget-object v1, Lad/x1;->Companion:Lad/u1;

    new-instance v2, Lua/nav/routing/GeoPoint;

    invoke-direct {v2, v9, v10, v7, v8}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    new-instance v12, Lua/nav/routing/GeoPoint;

    move-object v15, v4

    move-object/from16 v23, v5

    iget-wide v4, v11, Lua/nav/cameras/SpeedCamera;->b:D

    move/from16 v24, v6

    move-wide/from16 v25, v7

    iget-wide v6, v11, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-direct {v12, v4, v5, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v12}, Lad/u1;->a(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    cmpl-double v4, v19, v4

    if-lez v4, :cond_6

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Lwc/d;->a(DD)D

    move-result-wide v1

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    cmpl-double v1, v1, v4

    if-gtz v1, :cond_a

    :cond_6
    iget-object v1, v11, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Lwc/d;->a(DD)D

    move-result-wide v1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v1, v1, v4

    if-gtz v1, :cond_a

    :cond_7
    if-eqz v3, :cond_8

    iget-wide v1, v3, Lwc/b;->b:D

    cmpg-double v1, v19, v1

    if-gez v1, :cond_a

    :cond_8
    new-instance v17, Lwc/b;

    const v1, 0x40666666    # 3.6f

    mul-float v21, v24, v1

    iget-object v1, v0, Lwc/d;->c:Lp/a1;

    invoke-virtual {v1}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    iget-wide v1, v1, Lua/nav/Tuning;->P:D

    double-to-float v1, v1

    move/from16 v22, v1

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v22}, Lwc/b;-><init>(Lua/nav/cameras/SpeedCamera;DFF)V

    move/from16 v2, p2

    move v1, v13

    move-object v4, v15

    move-object/from16 v3, v17

    :goto_4
    move-object/from16 v5, v23

    move/from16 v6, v24

    move-wide/from16 v7, v25

    goto/16 :goto_3

    :cond_9
    move-object v15, v4

    move-object/from16 v23, v5

    move/from16 v24, v6

    move-wide/from16 v25, v7

    :cond_a
    move/from16 v2, p2

    move v1, v13

    move-object v4, v15

    goto :goto_4

    :cond_b
    invoke-virtual {v0, v3}, Lwc/d;->c(Lwc/b;)V

    goto :goto_6

    :goto_5
    invoke-virtual {v0, v1}, Lwc/d;->c(Lwc/b;)V

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    const-string v0, "cameras"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object/from16 v16, v3

    :goto_6
    return-object v16

    :pswitch_0
    move-object/from16 v16, v3

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    invoke-virtual {v0}, Luc/f;->g()V

    :cond_e
    return-object v16

    :pswitch_1
    move-object/from16 v16, v3

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v0

    invoke-virtual {v0}, Lua/nav/stats/a;->c()V

    :cond_f
    return-object v16

    :pswitch_2
    move-object/from16 v16, v3

    move-object/from16 v0, p1

    check-cast v0, Luc/c;

    iget-object v0, v0, Luc/c;->a:Luc/a;

    sget-object v1, Luc/a;->n:Luc/a;

    if-eq v0, v1, :cond_10

    goto :goto_7

    :cond_10
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    iget-object v0, v0, Lkd/j;->j:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v0

    iget-object v1, v0, Lkd/j;->h:Landroid/content/SharedPreferences;

    const-string v2, "enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iget-object v0, v0, Lkd/j;->i:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string v3, "share_off reason=plan"

    invoke-virtual {v0, v1, v2, v3}, Ldd/q0;->a(JLjava/lang/String;)V

    :cond_11
    :goto_7
    return-object v16

    :pswitch_3
    move-object/from16 v16, v3

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v22

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    iget-object v0, v0, Ldd/k0;->b:Ldd/t0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v1

    iget-object v1, v1, Ldd/k0;->b:Ldd/t0;

    iget-object v1, v1, Ldd/t0;->a:Ldd/r0;

    iget-wide v2, v1, Ldd/r0;->a:D

    iget-wide v4, v1, Ldd/r0;->b:D

    iget v6, v1, Ldd/r0;->d:F

    iget-wide v7, v1, Ldd/r0;->e:J

    iget-wide v9, v1, Ldd/r0;->f:J

    iget v11, v1, Ldd/r0;->g:I

    iget v12, v1, Ldd/r0;->h:I

    iget v13, v1, Ldd/r0;->i:F

    iget v14, v1, Ldd/r0;->j:I

    iget v15, v1, Ldd/r0;->k:F

    move-wide/from16 v18, v2

    iget v2, v1, Ldd/r0;->l:F

    iget v3, v1, Ldd/r0;->m:F

    move/from16 v34, v2

    iget v2, v1, Ldd/r0;->n:F

    move/from16 v36, v2

    iget v2, v1, Ldd/r0;->o:F

    move/from16 v37, v2

    iget v2, v1, Ldd/r0;->p:F

    move/from16 v38, v2

    iget v2, v1, Ldd/r0;->q:F

    move/from16 v39, v2

    iget v2, v1, Ldd/r0;->r:F

    move/from16 v40, v2

    move/from16 v35, v3

    iget-wide v2, v1, Ldd/r0;->s:J

    move-wide/from16 v41, v2

    iget-wide v2, v1, Ldd/r0;->t:J

    move-wide/from16 v43, v2

    iget-wide v2, v1, Ldd/r0;->u:D

    move-wide/from16 v45, v2

    iget v2, v1, Ldd/r0;->v:F

    iget v3, v1, Ldd/r0;->w:F

    move/from16 v47, v2

    move/from16 v48, v3

    iget-wide v2, v1, Ldd/r0;->x:D

    move-wide/from16 v49, v2

    iget v2, v1, Ldd/r0;->y:I

    iget v3, v1, Ldd/r0;->z:I

    move/from16 v51, v2

    iget v2, v1, Ldd/r0;->A:F

    move/from16 v53, v2

    iget v2, v1, Ldd/r0;->B:F

    move/from16 v54, v2

    move/from16 v52, v3

    iget-wide v2, v1, Ldd/r0;->C:D

    move-wide/from16 v55, v2

    iget-wide v2, v1, Ldd/r0;->D:J

    move-wide/from16 v57, v2

    iget v2, v1, Ldd/r0;->E:F

    move/from16 v59, v2

    iget-wide v1, v1, Ldd/r0;->F:J

    new-instance v17, Ldd/r0;

    move-wide/from16 v60, v1

    move-wide/from16 v20, v4

    move/from16 v24, v6

    move-wide/from16 v25, v7

    move-wide/from16 v27, v9

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v17 .. v61}, Ldd/r0;-><init>(DDDFJJIIFIFFFFFFFFJJDFFDIIFFDJFJ)V

    move-object/from16 v1, v17

    iput-object v1, v0, Ldd/t0;->a:Ldd/r0;

    return-object v16

    :pswitch_4
    move-object/from16 v16, v3

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->t()Lad/f2;

    move-result-object v0

    invoke-virtual {v0}, Lad/f2;->f()V

    :cond_12
    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
