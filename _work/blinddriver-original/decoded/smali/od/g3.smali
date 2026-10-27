.class public abstract Lod/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/maplibre/android/geometry/LatLng;

.field public static final b:F

.field public static final c:F

.field public static final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/maplibre/android/geometry/LatLng;

    const-wide v1, 0x4049399ce075f6fdL    # 50.4501

    const-wide v3, 0x403e85fd8adab9f5L    # 30.5234

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    sput-object v0, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    const/16 v0, 0x34

    int-to-float v0, v0

    sput v0, Lod/g3;->b:F

    const/16 v0, 0x3c

    int-to-float v0, v0

    sput v0, Lod/g3;->c:F

    sput v0, Lod/g3;->d:F

    return-void
.end method

.method public static final A(Lr0/u0;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final B(Lr0/u0;)I
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final C(Lr0/u0;)Lod/e7;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lod/e7;

    return-object p0
.end method

.method public static final D(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final E(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final F(Lr0/u0;)Ldd/n;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    return-object p0
.end method

.method public static final G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public static final H(Lr0/u0;)Ljava/util/List;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final I(Lr0/u0;)Lsc/q0;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsc/q0;

    return-object p0
.end method

.method public static final J(Lr0/r2;)Lad/a0;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/a0;

    return-object p0
.end method

.method public static final K(Lr0/u0;)Lqd/q;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqd/q;

    return-object p0
.end method

.method public static final L(Lr0/u0;)Lad/s;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/s;

    return-object p0
.end method

.method public static final M(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final N(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;D)V
    .locals 8

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lod/g;->a:Ljava/util/List;

    const/4 p0, 0x0

    aget-wide v0, p1, p0

    add-double v2, v0, p6

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    const-wide/high16 v6, 0x4033000000000000L    # 19.0

    invoke-static/range {v2 .. v7}, Lg6/c1;->d(DDD)D

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {p4, p3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {p4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p5

    aput-wide p5, p1, p0

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "zoomAuto"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    double-to-float p1, p1

    const-string p2, "zoomManual"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    invoke-interface {p5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz p0, :cond_1

    invoke-static {p6, p7}, Lorg/maplibre/android/camera/CameraUpdateFactory;->zoomBy(D)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/16 p2, 0xfa

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    :cond_1
    return-void
.end method

.method public static final O(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;Lr0/q;I)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    const v2, -0x6dfad58f

    invoke-virtual {v0, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p5, v2

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v2, v5

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v2, v5

    and-int/lit16 v5, v2, 0x493

    const/16 v6, 0x492

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    move v5, v7

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    and-int/2addr v2, v7

    invoke-virtual {v0, v2, v5}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-ne v2, v5, :cond_4

    invoke-static {v4}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lr0/u0;

    new-instance v5, Lg0/k;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3, v2}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v6, 0x282a3b29

    invoke-static {v6, v5, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    new-instance v6, Lod/n0;

    const/4 v7, 0x1

    move-object/from16 v8, p3

    invoke-direct {v6, v8, v7}, Lod/n0;-><init>(Li9/a;I)V

    const v7, 0x7af92ce7

    invoke-static {v7, v6, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    new-instance v6, Lnd/e;

    const/4 v9, 0x7

    invoke-direct {v6, v1, v9}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v9, -0x3237e15b    # -4.1968144E8f

    invoke-static {v9, v6, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    new-instance v9, Lo0/k;

    const/4 v10, 0x4

    invoke-direct {v9, v2, v10}, Lo0/k;-><init>(Lr0/u0;I)V

    const v2, -0x8d0687c

    invoke-static {v2, v9, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v22, 0x1b0c36

    const/16 v23, 0x3f94

    move-object v8, v6

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v4, p3

    move-object/from16 v21, v0

    invoke-static/range {v4 .. v23}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    goto :goto_4

    :cond_5
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_6

    new-instance v0, Li0/d;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Li0/d;-><init>(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final P(ZLi9/a;Lr0/q;I)V
    .locals 18

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v15, p3

    const v2, -0x61594091

    invoke-virtual {v12, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v12, v0}, Lr0/q;->h(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v15

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v2, v3

    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    and-int/2addr v2, v6

    invoke-virtual {v12, v2, v3}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide v2, 0xff455a64L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    sget-object v4, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/q3;

    iget-object v4, v4, Lo0/q3;->c:La0/d;

    sget-object v6, Lf1/o;->a:Lf1/o;

    sget v7, Lod/g3;->c:F

    invoke-static {v6, v7}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v6, v5, v7, v1, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v5

    new-instance v6, Lnd/o;

    const/4 v7, 0x7

    invoke-direct {v6, v7, v0}, Lnd/o;-><init>(IZ)V

    const v7, -0x33c8b98c    # -4.8044496E7f

    invoke-static {v7, v6, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const v13, 0xc00180

    const/16 v14, 0x78

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v16, v2

    move-object v3, v4

    move-object v2, v5

    move-wide/from16 v4, v16

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_3

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lod/j;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v15, v4}, Lod/j;-><init>(ZLi9/a;II)V

    iput-object v3, v2, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final Q(ZLi9/a;ZLr0/q;II)V
    .locals 17

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p3

    move/from16 v0, p4

    const-string v3, "onClick"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, -0x4bd8de8f

    invoke-virtual {v13, v3}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v3, v0, 0x6

    const/4 v4, 0x4

    if-nez v3, :cond_1

    invoke-virtual {v13, v1}, Lr0/q;->h(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    and-int/lit8 v5, v0, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v13, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :cond_3
    and-int/lit8 v5, p5, 0x4

    if-eqz v5, :cond_5

    or-int/lit16 v3, v3, 0x180

    :cond_4
    move/from16 v6, p2

    goto :goto_4

    :cond_5
    and-int/lit16 v6, v0, 0x180

    if-nez v6, :cond_4

    move/from16 v6, p2

    invoke-virtual {v13, v6}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x100

    goto :goto_3

    :cond_6
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v3, v7

    :goto_4
    and-int/lit16 v7, v3, 0x93

    const/16 v8, 0x92

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v7, v8, :cond_7

    move v7, v10

    goto :goto_5

    :cond_7
    move v7, v9

    :goto_5
    and-int/lit8 v8, v3, 0x1

    invoke-virtual {v13, v8, v7}, Lr0/q;->T(IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v5, :cond_8

    move v5, v9

    goto :goto_6

    :cond_8
    move v5, v6

    :goto_6
    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-ne v6, v7, :cond_9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v6

    invoke-virtual {v13, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Lr0/u0;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    and-int/lit8 v3, v3, 0xe

    if-ne v3, v4, :cond_a

    goto :goto_7

    :cond_a
    move v10, v9

    :goto_7
    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v10, :cond_b

    if-ne v3, v7, :cond_c

    :cond_b
    new-instance v3, Lm0/q1;

    invoke-direct {v3, v1, v6, v4}, Lm0/q1;-><init>(ZLr0/u0;Ly8/c;)V

    invoke-virtual {v13, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v3, Li9/e;

    invoke-static {v3, v8, v13}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_d
    const/high16 v3, 0x3e800000    # 0.25f

    :goto_8
    if-eqz v1, :cond_e

    const-wide v6, 0xffc62828L

    :goto_9
    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v6

    goto :goto_a

    :cond_e
    const-wide v6, 0xff455a64L

    goto :goto_9

    :goto_a
    sget-object v8, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v13, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/q3;

    iget-object v8, v8, Lo0/q3;->c:La0/d;

    sget-object v10, Lf1/o;->a:Lf1/o;

    const/16 v11, 0xf

    invoke-static {v10, v9, v4, v2, v11}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v4

    new-instance v9, Lod/b1;

    invoke-direct {v9, v3, v5, v1}, Lod/b1;-><init>(FZZ)V

    const v3, -0x1e48578a

    invoke-static {v3, v9, v13}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v12

    const/high16 v14, 0xc00000

    const/16 v15, 0x78

    move-object v3, v4

    move v9, v5

    move-wide v5, v6

    move-object v4, v8

    const-wide/16 v7, 0x0

    move v10, v9

    const/4 v9, 0x0

    move v11, v10

    const/4 v10, 0x0

    move/from16 v16, v11

    const/4 v11, 0x0

    invoke-static/range {v3 .. v15}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move/from16 v3, v16

    goto :goto_b

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lr0/q;->W()V

    move v3, v6

    :goto_b
    invoke-virtual/range {p3 .. p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v0, Lod/c1;

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lod/c1;-><init>(ZLi9/a;ZII)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final R(Lsc/d;Ljava/lang/String;Li9/c;Li9/a;Li9/a;Lr0/q;I)V
    .locals 25

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    const v1, -0x1ba68f95

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p6, v1

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v1, v6

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v1, v6

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v1, v6

    and-int/lit16 v6, v1, 0x2493

    const/16 v7, 0x2492

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    move v6, v8

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    :goto_4
    and-int/2addr v1, v8

    invoke-virtual {v0, v1, v6}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v6, Lod/m;->t:Lz0/d;

    new-instance v1, Lod/n0;

    const/4 v7, 0x0

    invoke-direct {v1, v5, v7}, Lod/n0;-><init>(Li9/a;I)V

    const v7, 0x199a0161

    invoke-static {v7, v1, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v8

    new-instance v1, Lg0/k;

    const/16 v7, 0x8

    move-object/from16 v9, p0

    invoke-direct {v1, v7, v9, v2}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const v7, -0x609cc061

    invoke-static {v7, v1, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    new-instance v7, Lb0/k0;

    const/4 v10, 0x5

    invoke-direct {v7, v5, v3, v4, v10}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v10, -0x1db82142

    invoke-static {v10, v7, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v10

    const v23, 0x1b0c36

    const/16 v24, 0x3f94

    const/4 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v0

    move-object v9, v1

    invoke-static/range {v5 .. v24}, Lo0/z2;->a(Li9/a;Lz0/d;Lf1/r;Li9/e;Li9/e;Li9/e;Lm1/h0;JJJJFLf3/u;Lr0/q;II)V

    goto :goto_5

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    :goto_5
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v0, Lg0/p;

    move-object/from16 v1, p0

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lg0/p;-><init>(Lsc/d;Ljava/lang/String;Li9/c;Li9/a;Li9/a;I)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final S(Ljava/util/List;Li9/c;Li9/c;Li9/c;Li9/c;Li9/a;Lr0/q;I)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v10, p6

    const v0, 0x249f9024

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    move-object/from16 v13, p1

    invoke-virtual {v10, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v6, p3

    invoke-virtual {v10, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x800

    goto :goto_2

    :cond_2
    const/16 v3, 0x400

    :goto_2
    or-int/2addr v0, v3

    move-object/from16 v14, p4

    invoke-virtual {v10, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x4000

    goto :goto_3

    :cond_3
    const/16 v3, 0x2000

    :goto_3
    or-int/2addr v0, v3

    const v3, 0x12493

    and-int/2addr v3, v0

    const v4, 0x12492

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eq v3, v4, :cond_4

    move v3, v7

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v10, v4, v3}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/c;

    const/16 v4, 0x40

    int-to-float v8, v4

    invoke-interface {v3, v8}, Lb3/c;->V(F)F

    move-result v15

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v3, v4, :cond_5

    new-instance v3, Ld1/v;

    invoke-direct {v3}, Ld1/v;-><init>()V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v12, v3

    check-cast v12, Ld1/v;

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_6

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v3

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lr0/u0;

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v9}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v9

    invoke-virtual {v10, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v21, v9

    check-cast v21, Lr0/u0;

    and-int/lit8 v0, v0, 0xe

    if-eq v0, v2, :cond_8

    goto :goto_5

    :cond_8
    move v5, v7

    :goto_5
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_9

    if-ne v0, v4, :cond_a

    :cond_9
    new-instance v0, Lb0/x1;

    const/4 v5, 0x5

    const/4 v4, 0x0

    move-object v2, v1

    move-object v1, v12

    invoke-direct/range {v0 .. v5}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object v1, v2

    invoke-virtual {v10, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v0, Li9/e;

    invoke-static {v0, v1, v10}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v0, 0x6

    int-to-float v0, v0

    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v2, v2, Lo0/q3;->d:La0/d;

    new-instance v11, Lod/y0;

    move-object/from16 v16, p2

    move-object/from16 v18, p5

    move-object/from16 v20, v3

    move-object/from16 v17, v6

    move/from16 v19, v8

    invoke-direct/range {v11 .. v21}, Lod/y0;-><init>(Ld1/v;Li9/c;Li9/c;FLi9/c;Li9/c;Li9/a;FLr0/u0;Lr0/u0;)V

    const v3, 0x52aadd7f

    invoke-static {v3, v11, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc06000

    const/16 v12, 0x6d

    move v6, v0

    const/4 v0, 0x0

    move-object v1, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_6

    :cond_b
    invoke-virtual/range {p6 .. p6}, Lr0/q;->W()V

    :goto_6
    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v8

    if-eqz v8, :cond_c

    new-instance v0, Lod/z0;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lod/z0;-><init>(Ljava/util/List;Li9/c;Li9/c;Li9/c;Li9/c;Li9/a;I)V

    iput-object v0, v8, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final T(Ljava/util/List;Li9/c;Li9/c;Li9/a;Lr0/q;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p4

    const v0, 0x3f6607c4

    invoke-virtual {v14, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v14, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v14, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v14, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    and-int/2addr v0, v6

    invoke-virtual {v14, v0, v4}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    int-to-float v10, v0

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v5, v0, Lo0/q3;->d:La0/d;

    new-instance v0, Lod/v0;

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lod/v0;-><init>(Ljava/util/List;Li9/c;Li9/c;Li9/a;)V

    const v6, 0x7459e4c9

    invoke-static {v6, v0, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v13

    const v15, 0xc06000

    const/16 v16, 0x6d

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v4 .. v16}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v0, Lod/v0;

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lod/v0;-><init>(Ljava/util/List;Li9/c;Li9/c;Li9/a;I)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final U(Lsc/q0;Lua/nav/c;ZLi9/a;Li9/f;Li9/c;ZLi9/a;Lr0/q;I)V
    .locals 121

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p6

    move-object/from16 v8, p8

    const v0, 0x5ed2ad13

    invoke-virtual {v8, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    const/16 v10, 0x20

    if-eqz v4, :cond_1

    move v4, v10

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move/from16 v11, p2

    invoke-virtual {v8, v11}, Lr0/q;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v12, p3

    invoke-virtual {v8, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v5, p4

    invoke-virtual {v8, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4000

    goto :goto_4

    :cond_4
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v0, v4

    invoke-virtual {v8, v7}, Lr0/q;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    const/high16 v4, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v4, 0x80000

    :goto_5
    or-int v30, v0, v4

    const v0, 0x492493

    and-int v0, v30, v0

    const v4, 0x492492

    if-eq v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    and-int/lit8 v4, v30, 0x1

    invoke-virtual {v8, v4, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lf2/l1;->p:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lf2/k2;

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-ne v6, v15, :cond_7

    new-instance v6, Lk1/u;

    invoke-direct {v6}, Lk1/u;-><init>()V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Lk1/u;

    iget-object v9, v2, Lua/nav/c;->D:Lx9/l0;

    invoke-static {v9, v8}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v9

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    and-int/lit8 v11, v30, 0x70

    if-eq v11, v10, :cond_9

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    goto :goto_7

    :cond_8
    const/16 v19, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v19, 0x1

    :goto_8
    or-int v17, v17, v19

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v17, :cond_a

    if-ne v3, v15, :cond_b

    :cond_a
    new-instance v3, Landroidx/lifecycle/i0;

    const/16 v10, 0x1b

    const/4 v14, 0x0

    invoke-direct {v3, v2, v9, v14, v10}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v8, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v3, Li9/e;

    invoke-static {v3, v13, v8}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Lu/h;->c:Lu/c;

    sget-object v9, Lf1/c;->x:Lf1/h;

    const/4 v10, 0x0

    invoke-static {v3, v9, v8, v10}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v3

    iget-wide v9, v8, Lr0/q;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    sget-object v13, Lf1/o;->a:Lf1/o;

    invoke-static {v13, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v14

    sget-object v21, Le2/h;->b:Le2/g;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v21, v9

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    move-object/from16 v22, v0

    iget-boolean v0, v8, Lr0/q;->S:Z

    if-eqz v0, :cond_c

    invoke-virtual {v8, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_9

    :cond_c
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_9
    sget-object v0, Le2/g;->f:Le2/e;

    invoke-static {v0, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v10, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v21, v9

    sget-object v9, Le2/g;->g:Le2/e;

    invoke-static {v8, v10, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v10, Le2/g;->h:Le2/d;

    invoke-static {v8, v10}, Lr0/r;->A(Lr0/q;Li9/c;)V

    move-object/from16 v23, v9

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v14, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v14, v1, Lsc/q0;->h:Ljava/lang/String;

    move-object/from16 v24, v9

    iget-object v9, v1, Lsc/q0;->f:Lsc/d;

    move-object/from16 v25, v0

    if-eqz v7, :cond_d

    const v0, -0xc08b641

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v31, v0

    check-cast v31, Lp2/m0;

    const/16 v0, 0xe

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v34

    const/16 v42, 0x0

    const v43, 0xfffffd

    const-wide/16 v32, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    invoke-static/range {v31 .. v43}, Lp2/m0;->a(Lp2/m0;JJLt2/k;Lt2/p;JJLa3/i;I)Lp2/m0;

    move-result-object v0

    move-object/from16 v26, v9

    const/4 v9, 0x0

    :goto_a
    invoke-virtual {v8, v9}, Lr0/q;->q(Z)V

    move-object/from16 v20, v0

    goto :goto_b

    :cond_d
    move-object/from16 v26, v9

    const/4 v9, 0x0

    const v0, -0xc08b0f0

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/m0;

    goto :goto_a

    :goto_b
    new-instance v0, Lb0/q1;

    move-object/from16 v27, v3

    const/16 v3, 0x77

    invoke-direct {v0, v9, v3}, Lb0/q1;-><init>(II)V

    invoke-virtual {v8, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    const/16 v9, 0x20

    if-eq v11, v9, :cond_f

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v9, 0x1

    :goto_d
    or-int/2addr v3, v9

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_10

    if-ne v9, v15, :cond_11

    :cond_10
    new-instance v9, Lb0/r0;

    const/16 v3, 0x16

    invoke-direct {v9, v3, v4, v2}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    check-cast v9, Li9/c;

    new-instance v3, Lb0/p1;

    move-object/from16 v29, v0

    const/16 v0, 0x2f

    invoke-direct {v3, v9, v0}, Lb0/p1;-><init>(Li9/c;I)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v13, v9}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v6}, Lk1/d;->j(Lf1/r;Lk1/u;)Lf1/r;

    move-result-object v0

    const/16 v6, 0x20

    if-eq v11, v6, :cond_13

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_e

    :cond_12
    const/4 v6, 0x0

    goto :goto_f

    :cond_13
    :goto_e
    const/4 v6, 0x1

    :goto_f
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_14

    if-ne v9, v15, :cond_15

    :cond_14
    new-instance v9, Lod/m0;

    const/4 v6, 0x2

    invoke-direct {v9, v2, v6}, Lod/m0;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    check-cast v9, Li9/c;

    invoke-static {v0, v9}, Lk1/d;->s(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v9

    sget-object v0, Lo0/d2;->a:Lo0/d2;

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v0

    move-object/from16 v19, v3

    move-object v6, v4

    iget-wide v3, v0, Lo0/u0;->p:J

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v0

    move-wide/from16 v43, v3

    iget-wide v3, v0, Lo0/u0;->p:J

    sget-wide v33, Lm1/p;->g:J

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    invoke-static {v0, v8}, Lo0/d2;->c(Lo0/u0;Lr0/q;)Lo0/x4;

    move-result-object v32

    const/16 v53, 0x0

    move-wide/from16 v35, v33

    move-wide/from16 v37, v33

    move-wide/from16 v39, v33

    move-wide/from16 v45, v33

    move-wide/from16 v47, v33

    move-wide/from16 v49, v33

    move-wide/from16 v51, v33

    move-wide/from16 v54, v33

    move-wide/from16 v56, v33

    move-wide/from16 v58, v33

    move-wide/from16 v60, v33

    move-wide/from16 v62, v33

    move-wide/from16 v64, v33

    move-wide/from16 v66, v33

    move-wide/from16 v68, v33

    move-wide/from16 v70, v33

    move-wide/from16 v72, v33

    move-wide/from16 v74, v33

    move-wide/from16 v76, v33

    move-wide/from16 v78, v33

    move-wide/from16 v80, v33

    move-wide/from16 v82, v33

    move-wide/from16 v84, v33

    move-wide/from16 v86, v33

    move-wide/from16 v88, v33

    move-wide/from16 v90, v33

    move-wide/from16 v92, v33

    move-wide/from16 v94, v33

    move-wide/from16 v96, v33

    move-wide/from16 v98, v33

    move-wide/from16 v100, v33

    move-wide/from16 v102, v33

    move-wide/from16 v104, v33

    move-wide/from16 v106, v33

    move-wide/from16 v108, v33

    move-wide/from16 v110, v33

    move-wide/from16 v112, v33

    move-wide/from16 v114, v33

    move-wide/from16 v116, v33

    move-wide/from16 v41, v3

    invoke-virtual/range {v32 .. v117}, Lo0/x4;->a(JJJJJJJJJJLm0/a2;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)Lo0/x4;

    move-result-object v32

    const/16 v0, 0x20

    if-eq v11, v0, :cond_17

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_10

    :cond_16
    const/4 v3, 0x0

    goto :goto_11

    :cond_17
    :goto_10
    const/4 v3, 0x1

    :goto_11
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x3

    if-nez v3, :cond_18

    if-ne v4, v15, :cond_19

    :cond_18
    new-instance v4, Lod/m0;

    invoke-direct {v4, v2, v0}, Lod/m0;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v33, v4

    check-cast v33, Li9/c;

    new-instance v3, Lb0/n0;

    invoke-direct {v3, v1, v7, v0}, Lb0/n0;-><init>(Ljava/lang/Object;ZI)V

    const v0, -0x75f7f6be

    invoke-static {v0, v3, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v34

    new-instance v0, Lod/z0;

    move-object v4, v6

    move-object/from16 v3, v22

    move-object/from16 v118, v25

    move-object/from16 v119, v27

    const/16 v17, 0x20

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lod/z0;-><init>(Lsc/q0;Lua/nav/c;Landroid/content/Context;Lf2/k2;Li9/f;Li9/c;)V

    move-object/from16 v35, v2

    move-object v2, v0

    move-object/from16 v0, v35

    move-object/from16 v35, v4

    const v3, 0x5718cc80

    invoke-static {v3, v2, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v28, 0xc30000

    move-object/from16 v12, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v29

    const v29, 0x3c7d58

    move v4, v11

    const/4 v11, 0x0

    move-object v5, v13

    const/4 v13, 0x0

    const/16 v22, 0x4

    const/16 v16, 0x0

    move/from16 v25, v17

    const/16 v17, 0x0

    const/16 v27, 0x1

    const/16 v18, 0x0

    move-object/from16 v36, v21

    const/16 v21, 0x1

    move/from16 v37, v22

    const/16 v22, 0x0

    move-object/from16 v38, v23

    const/16 v23, 0x0

    move-object/from16 v39, v24

    const/16 v24, 0x0

    move/from16 v40, v27

    const/high16 v27, 0x30c00000

    move-object/from16 v31, v5

    move-object/from16 v120, v15

    move-object/from16 v1, v26

    move-object/from16 v25, v32

    move-object/from16 v3, v36

    move/from16 v6, v37

    move-object/from16 v5, v38

    move-object/from16 v7, v39

    move-object v15, v2

    move-object/from16 v26, v8

    move-object v2, v10

    move-object v8, v14

    move-object/from16 v14, v34

    move-object v10, v9

    move-object/from16 v9, v33

    invoke-static/range {v8 .. v29}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    move-object/from16 v8, v26

    sget-object v9, Lf1/c;->v:Lf1/i;

    int-to-float v10, v6

    const/16 v25, 0x0

    const/16 v26, 0xd

    const/16 v22, 0x0

    const/16 v24, 0x0

    move/from16 v23, v10

    move-object/from16 v21, v31

    invoke-static/range {v21 .. v26}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v10

    sget-object v11, Lu/h;->a:Lu/n;

    const/16 v12, 0x30

    invoke-static {v11, v9, v8, v12}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v9

    iget-wide v11, v8, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v10, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v13, v8, Lr0/q;->S:Z

    if-eqz v13, :cond_1a

    invoke-virtual {v8, v3}, Lr0/q;->l(Li9/a;)V

    :goto_12
    move-object/from16 v3, v118

    goto :goto_13

    :cond_1a
    invoke-virtual {v8}, Lr0/q;->o0()V

    goto :goto_12

    :goto_13
    invoke-static {v3, v9, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v3, v119

    invoke-static {v3, v12, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v8, v5, v8, v2}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v7, v10, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Lsc/d;->l:Lsc/d;

    if-ne v1, v2, :cond_1b

    const/4 v13, 0x1

    :goto_14
    const/16 v2, 0x20

    goto :goto_15

    :cond_1b
    const/4 v13, 0x0

    goto :goto_14

    :goto_15
    if-eq v4, v2, :cond_1d

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_16

    :cond_1c
    const/4 v3, 0x0

    goto :goto_17

    :cond_1d
    :goto_16
    const/4 v3, 0x1

    :goto_17
    and-int/lit8 v5, v30, 0xe

    move-object/from16 v7, p0

    if-eq v5, v6, :cond_1f

    invoke-virtual {v8, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    goto :goto_18

    :cond_1e
    const/4 v9, 0x0

    goto :goto_19

    :cond_1f
    :goto_18
    const/4 v9, 0x1

    :goto_19
    or-int/2addr v3, v9

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_21

    move-object/from16 v3, v120

    if-ne v9, v3, :cond_20

    goto :goto_1a

    :cond_20
    move-object/from16 v10, p5

    const/4 v11, 0x0

    goto :goto_1b

    :cond_21
    move-object/from16 v3, v120

    :goto_1a
    new-instance v9, Lod/i1;

    move-object/from16 v10, p5

    const/4 v11, 0x0

    invoke-direct {v9, v0, v7, v10, v11}, Lod/i1;-><init>(Lua/nav/c;Lsc/q0;Li9/c;I)V

    invoke-virtual {v8, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_1b
    check-cast v9, Li9/a;

    sget-object v10, Lod/m;->l:Lz0/d;

    const/16 v25, 0x0

    const/16 v26, 0xb

    const/16 v22, 0x0

    move/from16 v24, v23

    const/16 v23, 0x0

    invoke-static/range {v21 .. v26}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v12

    move/from16 v23, v24

    sget v14, Lo0/j1;->a:F

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v14

    iget-wide v14, v14, Lo0/u0;->p:J

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v11

    iget-wide v6, v11, Lo0/u0;->q:J

    invoke-static {v14, v15, v6, v7, v8}, Lo0/j1;->a(JJLr0/q;)Lo0/n3;

    move-result-object v14

    const/16 v18, 0xd80

    const/16 v19, 0xef0

    move-object v11, v12

    const/4 v12, 0x0

    move v8, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p5

    move-object/from16 v17, p8

    const/4 v7, 0x0

    invoke-static/range {v8 .. v19}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object/from16 v8, v17

    sget-object v9, Lsc/d;->m:Lsc/d;

    if-ne v1, v9, :cond_22

    const/4 v13, 0x1

    goto :goto_1c

    :cond_22
    move v13, v7

    :goto_1c
    if-eq v4, v2, :cond_24

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    goto :goto_1e

    :cond_23
    move v9, v7

    :goto_1d
    const/4 v10, 0x4

    goto :goto_1f

    :cond_24
    :goto_1e
    const/4 v9, 0x1

    goto :goto_1d

    :goto_1f
    if-eq v5, v10, :cond_26

    move-object/from16 v5, p0

    invoke-virtual {v8, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_20

    :cond_25
    move v10, v7

    goto :goto_21

    :cond_26
    move-object/from16 v5, p0

    :goto_20
    const/4 v10, 0x1

    :goto_21
    or-int/2addr v9, v10

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_27

    if-ne v10, v3, :cond_28

    :cond_27
    new-instance v10, Lod/i1;

    const/4 v9, 0x1

    invoke-direct {v10, v0, v5, v6, v9}, Lod/i1;-><init>(Lua/nav/c;Lsc/q0;Li9/c;I)V

    invoke-virtual {v8, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    move-object v9, v10

    check-cast v9, Li9/a;

    sget-object v10, Lod/m;->m:Lz0/d;

    const/16 v25, 0x0

    const/16 v26, 0xb

    const/16 v22, 0x0

    move/from16 v24, v23

    const/16 v23, 0x0

    invoke-static/range {v21 .. v26}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v11

    move/from16 v23, v24

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v12

    iget-wide v14, v12, Lo0/u0;->p:J

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v12

    move-object/from16 v120, v3

    iget-wide v2, v12, Lo0/u0;->q:J

    invoke-static {v14, v15, v2, v3, v8}, Lo0/j1;->a(JJLr0/q;)Lo0/n3;

    move-result-object v14

    const/16 v18, 0xd80

    const/16 v19, 0xef0

    const/4 v12, 0x0

    move v8, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, p8

    invoke-static/range {v8 .. v19}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object/from16 v8, v17

    sget-object v2, Lsc/d;->n:Lsc/d;

    if-ne v1, v2, :cond_29

    const/4 v13, 0x1

    :goto_22
    const/16 v9, 0x20

    goto :goto_23

    :cond_29
    move v13, v7

    goto :goto_22

    :goto_23
    if-eq v4, v9, :cond_2b

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_24

    :cond_2a
    move v1, v7

    goto :goto_25

    :cond_2b
    :goto_24
    const/4 v1, 0x1

    :goto_25
    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2c

    move-object/from16 v3, v120

    if-ne v2, v3, :cond_2d

    :cond_2c
    new-instance v2, Lod/d1;

    const/4 v9, 0x1

    invoke-direct {v2, v0, v9}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v8, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2d
    move-object v9, v2

    check-cast v9, Li9/a;

    sget-object v10, Lod/m;->n:Lz0/d;

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v1

    iget-wide v1, v1, Lo0/u0;->p:J

    invoke-static {v8}, Lo0/z2;->j(Lr0/q;)Lo0/u0;

    move-result-object v3

    iget-wide v3, v3, Lo0/u0;->q:J

    invoke-static {v1, v2, v3, v4, v8}, Lo0/j1;->a(JJLr0/q;)Lo0/n3;

    move-result-object v14

    const/16 v18, 0x180

    const/16 v19, 0xef8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v17, p8

    invoke-static/range {v8 .. v19}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    move-object/from16 v8, v17

    const/high16 v1, 0x3f800000    # 1.0f

    float-to-double v2, v1

    const-wide/16 v9, 0x0

    cmpl-double v2, v2, v9

    if-lez v2, :cond_2e

    goto :goto_26

    :cond_2e
    const-string v2, "invalid weight; must be greater than zero"

    invoke-static {v2}, Lv/a;->a(Ljava/lang/String;)V

    :goto_26
    new-instance v2, Lu/j0;

    const/4 v9, 0x1

    invoke-direct {v2, v1, v9}, Lu/j0;-><init>(FZ)V

    invoke-static {v2, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v10, 0x6

    shr-int/lit8 v1, v30, 0x6

    and-int/lit8 v4, v1, 0x7e

    const/4 v5, 0x4

    const/4 v2, 0x0

    move-object/from16 v6, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object v3, v8

    move/from16 v40, v9

    move-object/from16 v9, v21

    move/from16 v8, v23

    invoke-static/range {v0 .. v5}, Lod/g3;->Q(ZLi9/a;ZLr0/q;II)V

    int-to-float v0, v10

    invoke-static {v9, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v3}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/16 v1, 0xa

    int-to-float v1, v1

    new-instance v14, Lu/s0;

    invoke-direct {v14, v1, v8, v1, v8}, Lu/s0;-><init>(FFFF)V

    invoke-static {v3}, Lod/g3;->n0(Lr0/q;)Lo0/p;

    move-result-object v12

    const/16 v1, 0x24

    int-to-float v1, v1

    invoke-static {v9, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    sget-object v15, Lod/m;->o:Lz0/d;

    const v17, 0x30c00036

    const/16 v18, 0x16c

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v3

    move-object/from16 v8, p7

    move-object v9, v1

    move/from16 v1, v40

    invoke-static/range {v8 .. v18}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object/from16 v8, v16

    invoke-virtual {v8, v1}, Lr0/q;->q(Z)V

    iget-object v2, v6, Lsc/q0;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    const v2, -0x74c51440    # -3.5999656E-32f

    invoke-virtual {v8, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v8, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v9, v2, Lo0/q3;->c:La0/d;

    const/16 v25, 0x0

    const/16 v26, 0xd

    const/16 v22, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v26}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v10

    move v14, v0

    new-instance v0, Li0/d;

    const/4 v5, 0x2

    move-object v2, v6

    move v6, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    move-object/from16 v3, v35

    invoke-direct/range {v0 .. v5}, Li0/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v1, 0x9a215bf

    invoke-static {v1, v0, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v17

    const v19, 0xc06006

    const/16 v20, 0x6c

    move-object v8, v10

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, p8

    invoke-static/range {v8 .. v20}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object/from16 v8, v18

    invoke-virtual {v8, v7}, Lr0/q;->q(Z)V

    goto :goto_27

    :cond_2f
    move v6, v1

    const v0, -0x74b0da67

    invoke-virtual {v8, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v7}, Lr0/q;->q(Z)V

    :goto_27
    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    goto :goto_28

    :cond_30
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_28
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v10

    if-eqz v10, :cond_31

    new-instance v0, Lod/h1;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lod/h1;-><init>(Lsc/q0;Lua/nav/c;ZLi9/a;Li9/f;Li9/c;ZLi9/a;I)V

    iput-object v0, v10, Lr0/n1;->d:Li9/e;

    :cond_31
    return-void
.end method

.method public static final V(Li9/a;Li9/a;ZLi9/f;Lr0/q;II)V
    .locals 19

    move/from16 v3, p2

    move-object/from16 v12, p4

    const v0, 0x3af9208a

    invoke-virtual {v12, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v12, v3}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/16 v0, 0x80

    :goto_0
    or-int v0, p5, v0

    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0xc00

    move-object/from16 v2, p3

    goto :goto_2

    :cond_1
    move-object/from16 v2, p3

    invoke-virtual {v12, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x800

    goto :goto_1

    :cond_2
    const/16 v4, 0x400

    :goto_1
    or-int/2addr v0, v4

    :goto_2
    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v6

    :goto_3
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v12, v5, v4}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    sget-object v2, Lf1/o;->a:Lf1/o;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v7, Lf1/c;->v:Lf1/i;

    sget-object v8, Lu/h;->a:Lu/n;

    const/16 v9, 0x30

    invoke-static {v8, v7, v12, v9}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v7

    iget-wide v10, v12, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v12}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v5, v12}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v11, Le2/h;->b:Le2/g;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Le2/g;->b:Le2/f;

    invoke-virtual {v12}, Lr0/q;->e0()V

    iget-boolean v13, v12, Lr0/q;->S:Z

    if-eqz v13, :cond_5

    invoke-virtual {v12, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v12}, Lr0/q;->o0()V

    :goto_5
    sget-object v11, Le2/g;->f:Le2/e;

    invoke-static {v11, v7, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v7, Le2/g;->e:Le2/e;

    invoke-static {v7, v10, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Le2/g;->g:Le2/e;

    invoke-static {v12, v7, v8}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v7, Le2/g;->h:Le2/d;

    invoke-static {v12, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v7, Le2/g;->d:Le2/e;

    invoke-static {v7, v5, v12}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/4 v5, 0x4

    const/4 v7, 0x6

    if-eqz v3, :cond_6

    const/4 v8, 0x2

    int-to-float v8, v8

    int-to-float v10, v5

    new-instance v11, Lu/s0;

    invoke-direct {v11, v8, v10, v8, v10}, Lu/s0;-><init>(FFFF)V

    :goto_6
    move-object v10, v11

    goto :goto_7

    :cond_6
    int-to-float v8, v7

    const/16 v10, 0xa

    int-to-float v10, v10

    new-instance v11, Lu/s0;

    invoke-direct {v11, v8, v10, v8, v10}, Lu/s0;-><init>(FFFF)V

    goto :goto_6

    :goto_7
    if-eqz v3, :cond_7

    int-to-float v5, v5

    goto :goto_8

    :cond_7
    int-to-float v5, v7

    :goto_8
    invoke-static {v12}, Lod/g3;->n0(Lr0/q;)Lo0/p;

    move-result-object v8

    sget-object v11, Lu/z0;->a:Lu/z0;

    if-eqz v1, :cond_8

    const v13, -0x67cfa2f1

    invoke-virtual {v12, v13}, Lr0/q;->b0(I)V

    shr-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v11, v12, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v5}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    :goto_9
    invoke-virtual {v12, v6}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_8
    const v0, -0x67cf180c

    invoke-virtual {v12, v0}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_a
    invoke-virtual {v11, v2, v4}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v0

    const/16 v6, 0x28

    if-eqz v3, :cond_9

    int-to-float v7, v6

    goto :goto_b

    :cond_9
    int-to-float v7, v9

    :goto_b
    invoke-static {v0, v7}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    new-instance v7, Lnd/s;

    const/4 v13, 0x1

    invoke-direct {v7, v13, v3}, Lnd/s;-><init>(IZ)V

    const v13, 0x1ec4d2e0

    invoke-static {v13, v7, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const v13, 0x30000006

    const/16 v14, 0x16c

    move/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v17, v11

    move-object v11, v7

    const/4 v7, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 p3, v5

    move-object v5, v0

    move/from16 v0, p3

    move-object/from16 p3, v1

    move v15, v4

    move-object/from16 v1, v17

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v14}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-static {v2, v0}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v12}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v1, v2, v15}, Lu/z0;->a(Lf1/r;F)Lf1/r;

    move-result-object v0

    if-eqz v3, :cond_a

    const/16 v1, 0x28

    :goto_c
    int-to-float v1, v1

    goto :goto_d

    :cond_a
    const/16 v1, 0x30

    goto :goto_c

    :goto_d
    invoke-static {v0, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v5

    new-instance v0, Lnd/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, Lnd/s;-><init>(IZ)V

    const v1, 0x2aa9fd7

    invoke-static {v1, v0, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const v13, 0x30000006

    const/16 v14, 0x16c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lr0/q;->q(Z)V

    move-object/from16 v4, p3

    goto :goto_e

    :cond_b
    invoke-virtual {v12}, Lr0/q;->W()V

    move-object v4, v2

    :goto_e
    invoke-virtual {v12}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v0, Lod/e;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lod/e;-><init>(Li9/a;Li9/a;ZLi9/f;II)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_c
    return-void
.end method

.method public static final W(Lad/u2;Li9/a;Lr0/q;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v15, p3

    const v2, -0xc126420

    invoke-virtual {v12, v2}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v12, v2}, Lr0/q;->e(I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v15

    invoke-virtual {v12, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v2, v4

    and-int/lit8 v4, v2, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    move v4, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    and-int/2addr v2, v7

    invoke-virtual {v12, v2, v4}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-ne v2, v3, :cond_3

    const-wide v2, 0xff616161L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    :goto_3
    move-wide v4, v2

    goto :goto_4

    :cond_3
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    const-wide v2, 0xffef6c00L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    goto :goto_3

    :cond_5
    const-wide v2, 0xff2e7d32L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    goto :goto_3

    :goto_4
    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v3, v2, Lo0/q3;->c:La0/d;

    sget-object v2, Lf1/o;->a:Lf1/o;

    sget v7, Lod/g3;->b:F

    invoke-static {v2, v7}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    const/4 v7, 0x0

    const/16 v8, 0xf

    invoke-static {v2, v6, v7, v1, v8}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v2

    new-instance v6, Lb0/x;

    const/16 v7, 0x12

    invoke-direct {v6, v7, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    const v7, 0x4ffc6d65

    invoke-static {v7, v6, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/high16 v13, 0xc00000

    const/16 v14, 0x78

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lg0/k;

    const/16 v4, 0x9

    invoke-direct {v3, v15, v4, v0, v1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final X(ZLi9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 14

    move-object/from16 v4, p5

    const v0, 0x2e4fa10

    invoke-virtual {v4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v4, p0}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v4, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    move-object/from16 v7, p2

    invoke-virtual {v4, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v8, p3

    invoke-virtual {v4, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_3

    :cond_3
    const/16 v1, 0x400

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x4000

    goto :goto_4

    :cond_4
    const/16 v1, 0x2000

    :goto_4
    or-int v10, v0, v1

    and-int/lit16 v0, v10, 0x2493

    const/16 v1, 0x2492

    const/4 v11, 0x1

    if-eq v0, v1, :cond_5

    move v0, v11

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    and-int/lit8 v1, v10, 0x1

    invoke-virtual {v4, v1, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lf1/c;->z:Lf1/h;

    const/4 v1, 0x6

    int-to-float v1, v1

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v1

    const/16 v12, 0x36

    invoke-static {v1, v0, v4, v12}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v5, v4, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v13, v4, Lr0/q;->S:Z

    if-eqz v13, :cond_6

    invoke-virtual {v4, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_6
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {v4, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v4, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shl-int/lit8 v13, v10, 0x3

    and-int/lit16 v0, v13, 0x380

    or-int/lit8 v5, v0, 0x36

    const/16 v6, 0x8

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lod/g3;->Y(Ljava/lang/String;ZLi9/a;ZLr0/q;II)V

    and-int/lit16 v0, v10, 0x380

    or-int/lit8 v5, v0, 0x36

    const-string v0, "\u2212"

    move-object/from16 v4, p5

    move-object v2, v7

    invoke-static/range {v0 .. v6}, Lod/g3;->Y(Ljava/lang/String;ZLi9/a;ZLr0/q;II)V

    and-int/lit8 v0, v13, 0x70

    or-int/lit16 v0, v0, 0xc06

    shr-int/lit8 v1, v10, 0x3

    and-int/lit16 v1, v1, 0x380

    or-int v5, v0, v1

    const/4 v6, 0x0

    const-string v0, "Auto"

    const/4 v3, 0x1

    move v1, p0

    move-object v2, v8

    invoke-static/range {v0 .. v6}, Lod/g3;->Y(Ljava/lang/String;ZLi9/a;ZLr0/q;II)V

    invoke-virtual {v4, v11}, Lr0/q;->q(Z)V

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {v4}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lod/y;

    move v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p6

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Lod/y;-><init>(ZLi9/a;Li9/a;Li9/a;Lf1/r;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method

.method public static final Y(Ljava/lang/String;ZLi9/a;ZLr0/q;II)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p4

    move/from16 v0, p5

    const v4, -0x3bec5e90

    invoke-virtual {v14, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v0, 0x6

    if-nez v4, :cond_1

    invoke-virtual {v14, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v0

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/lit8 v7, v0, 0x30

    if-nez v7, :cond_3

    invoke-virtual {v14, v2}, Lr0/q;->h(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_2

    :cond_2
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :cond_3
    and-int/lit16 v7, v0, 0x180

    if-nez v7, :cond_5

    invoke-virtual {v14, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x100

    goto :goto_3

    :cond_4
    const/16 v7, 0x80

    :goto_3
    or-int/2addr v4, v7

    :cond_5
    and-int/lit8 v7, p6, 0x8

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0xc00

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v0, 0xc00

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-virtual {v14, v8}, Lr0/q;->h(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v4, v9

    :goto_5
    and-int/lit16 v9, v4, 0x493

    const/16 v10, 0x492

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_9

    move v9, v11

    goto :goto_6

    :cond_9
    move v9, v12

    :goto_6
    and-int/2addr v4, v11

    invoke-virtual {v14, v4, v9}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v7, :cond_a

    move v4, v12

    goto :goto_7

    :cond_a
    move v4, v8

    :goto_7
    if-eqz v4, :cond_b

    const/16 v7, 0x12

    int-to-float v7, v7

    invoke-static {v7}, La0/e;->a(F)La0/d;

    move-result-object v7

    goto :goto_8

    :cond_b
    sget-object v7, La0/e;->a:La0/d;

    :goto_8
    if-eqz v2, :cond_c

    const v8, 0xdb12497

    invoke-virtual {v14, v8}, Lr0/q;->b0(I)V

    sget-object v8, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/u0;

    iget-wide v8, v8, Lo0/u0;->a:J

    :goto_9
    invoke-virtual {v14, v12}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_c
    const v8, 0xdb12977

    invoke-virtual {v14, v8}, Lr0/q;->b0(I)V

    sget-object v8, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo0/u0;

    iget-wide v8, v8, Lo0/u0;->p:J

    goto :goto_9

    :goto_a
    int-to-float v10, v11

    if-eqz v2, :cond_d

    const v11, 0xdb133d7

    invoke-virtual {v14, v11}, Lr0/q;->b0(I)V

    sget-object v11, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/u0;

    iget-wide v5, v11, Lo0/u0;->a:J

    :goto_b
    invoke-virtual {v14, v12}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_d
    const v5, 0xdb138b7

    invoke-virtual {v14, v5}, Lr0/q;->b0(I)V

    sget-object v5, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->A:J

    goto :goto_b

    :goto_c
    invoke-static {v10, v5, v6}, Lp/o;->a(FJ)Lp/x;

    move-result-object v5

    if-eqz v2, :cond_e

    const v6, 0xdb14199

    invoke-virtual {v14, v6}, Lr0/q;->b0(I)V

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v10, v6, Lo0/u0;->b:J

    :goto_d
    invoke-virtual {v14, v12}, Lr0/q;->q(Z)V

    const/4 v15, 0x4

    goto :goto_e

    :cond_e
    const v6, 0xdb146b9

    invoke-virtual {v14, v6}, Lr0/q;->b0(I)V

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v10, v6, Lo0/u0;->q:J

    goto :goto_d

    :goto_e
    int-to-float v6, v15

    const/16 v15, 0x2c

    int-to-float v15, v15

    sget-object v13, Lf1/o;->a:Lf1/o;

    invoke-static {v13, v15}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v13

    const/4 v12, 0x0

    const/4 v0, 0x2

    invoke-static {v13, v15, v12, v0}, Lu/b1;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    invoke-static {v0, v7}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v0

    const/4 v12, 0x0

    const/16 v13, 0xf

    const/4 v15, 0x0

    invoke-static {v0, v15, v12, v3, v13}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    new-instance v12, Lnd/v;

    const/4 v13, 0x1

    invoke-direct {v12, v1, v13, v4}, Lnd/v;-><init>(Ljava/lang/String;IZ)V

    const v13, -0x8b84a75

    invoke-static {v13, v12, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v13

    const/high16 v15, 0xc30000

    const/16 v16, 0x10

    move-object v12, v5

    move-object v5, v7

    move-wide/from16 v17, v10

    move v11, v6

    move-wide v6, v8

    move-wide/from16 v8, v17

    const/4 v10, 0x0

    move/from16 v17, v4

    move-object v4, v0

    move/from16 v0, v17

    invoke-static/range {v4 .. v16}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move v4, v0

    goto :goto_f

    :cond_f
    invoke-virtual/range {p4 .. p4}, Lr0/q;->W()V

    move v4, v8

    :goto_f
    invoke-virtual/range {p4 .. p4}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_10

    new-instance v0, Lnd/b0;

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lnd/b0;-><init>(Ljava/lang/String;ZLi9/a;ZII)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_10
    return-void
.end method

.method public static final Z(Lua/nav/c;Landroid/content/Context;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, Lua/nav/c;->c:Ldd/k0;

    iget-object v1, v0, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-boolean v1, v1, Ldd/n;->l:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Ldd/k0;->e:Ldd/o0;

    iput-boolean v2, v1, Ldd/o0;->a:Z

    iget-object v1, v0, Ldd/k0;->a:Ldd/q0;

    invoke-virtual {v1}, Ldd/q0;->d()V

    iget-object v1, v0, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->g:Lx9/l0;

    :cond_0
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ldd/n;

    const-string v5, "it"

    invoke-static {v4, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v18, 0x17ff

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

    invoke-virtual {v1, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ldd/k0;->l()V

    :goto_0
    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-boolean v0, v0, Ldd/n;->l:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcd/d;->b1:Lcd/c;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object/from16 v1, p1

    goto :goto_2

    :cond_2
    sget-object v0, Lcd/d;->c1:Lcd/c;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final a(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;Lr0/q;I)V
    .locals 39

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v0, p9

    const v1, 0xa7ddef3

    invoke-virtual {v0, v1}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    :goto_0
    or-int v1, p10, v1

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x800

    goto :goto_1

    :cond_1
    const/16 v2, 0x400

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4000

    goto :goto_2

    :cond_2
    const/16 v2, 0x2000

    :goto_2
    or-int/2addr v1, v2

    invoke-virtual {v0, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x20000

    goto :goto_3

    :cond_3
    const/high16 v2, 0x10000

    :goto_3
    or-int/2addr v1, v2

    invoke-virtual {v0, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x100000

    goto :goto_4

    :cond_4
    const/high16 v2, 0x80000

    :goto_4
    or-int/2addr v1, v2

    invoke-virtual {v0, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x800000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x400000

    :goto_5
    or-int/2addr v1, v2

    const v2, 0x492493

    and-int/2addr v2, v1

    const v11, 0x492492

    const/4 v12, 0x1

    if-eq v2, v11, :cond_6

    move v2, v12

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    and-int/lit8 v11, v1, 0x1

    invoke-virtual {v0, v11, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v2, v11, :cond_7

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lr0/u0;

    sget-object v14, Lf1/c;->v:Lf1/i;

    const/4 v15, 0x2

    int-to-float v10, v15

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/4 v15, 0x0

    invoke-static {v3, v15, v10, v12}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v10

    sget-object v15, Lu/h;->a:Lu/n;

    const/16 v13, 0x30

    invoke-static {v15, v14, v0, v13}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v12

    move-object/from16 v21, v14

    iget-wide v13, v0, Lr0/q;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v13

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v14

    invoke-static {v10, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v10

    sget-object v23, Le2/h;->b:Le2/g;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v34, v1

    sget-object v1, Le2/g;->b:Le2/f;

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v4, v0, Lr0/q;->S:Z

    if-eqz v4, :cond_8

    invoke-virtual {v0, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_7
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, v12, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v12, Le2/g;->e:Le2/e;

    invoke-static {v12, v14, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    sget-object v14, Le2/g;->g:Le2/e;

    invoke-static {v0, v13, v14}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v13, Le2/g;->h:Le2/d;

    invoke-static {v0, v13}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v10, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v10, -0x48a2db91

    invoke-virtual {v0, v10}, Lr0/q;->b0(I)V

    const/high16 v10, 0x3f800000    # 1.0f

    float-to-double v6, v10

    const-wide/16 v35, 0x0

    cmpl-double v6, v6, v35

    const-string v7, "invalid weight; must be greater than zero"

    if-lez v6, :cond_9

    goto :goto_8

    :cond_9
    invoke-static {v7}, Lv/a;->a(Ljava/lang/String;)V

    :goto_8
    new-instance v6, Lu/j0;

    const v37, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v23, v10, v37

    if-lez v23, :cond_a

    move/from16 v10, v37

    :cond_a
    move-object/from16 v38, v7

    const/4 v7, 0x1

    invoke-direct {v6, v10, v7}, Lu/j0;-><init>(FZ)V

    if-eqz p3, :cond_d

    const v10, 0x2268fbfe

    invoke-virtual {v0, v10}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v11, :cond_b

    new-instance v10, Lb0/u;

    const/16 v7, 0xd

    invoke-direct {v10, v2, v7}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v0, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Li9/a;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v11, :cond_c

    new-instance v7, Ln/k1;

    move-object/from16 v24, v11

    const/16 v11, 0x14

    invoke-direct {v7, v11}, Ln/k1;-><init>(I)V

    invoke-virtual {v0, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_9

    :cond_c
    move-object/from16 v24, v11

    :goto_9
    check-cast v7, Li9/a;

    invoke-static {v6, v10, v7}, Lp/o;->m(Lf1/r;Li9/a;Li9/a;)Lf1/r;

    move-result-object v6

    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_d
    move-object/from16 v24, v11

    const/4 v7, 0x0

    const v10, 0x22690442

    invoke-virtual {v0, v10}, Lr0/q;->b0(I)V

    goto :goto_a

    :goto_b
    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    sget-object v10, Lf1/c;->l:Lf1/j;

    invoke-static {v10, v7}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v10

    iget-wide v7, v0, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v6, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v11, v0, Lr0/q;->S:Z

    if-eqz v11, :cond_e

    invoke-virtual {v0, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_c

    :cond_e
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_c
    invoke-static {v4, v10, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7, v0, v14, v0, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v5, v6, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v3, v6}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v7

    move-object/from16 v8, v21

    const/16 v10, 0x30

    invoke-static {v15, v8, v0, v10}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v8

    iget-wide v10, v0, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v7, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v15, v0, Lr0/q;->S:Z

    if-eqz v15, :cond_f

    invoke-virtual {v0, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_d

    :cond_f
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_d
    invoke-static {v4, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v11, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10, v0, v14, v0, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v5, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const/16 v7, 0x14

    int-to-float v7, v7

    invoke-static {v3, v7}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v7

    sget-object v8, La0/e;->a:La0/d;

    invoke-static {v7, v8}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v7

    sget-object v8, Lm1/v;->b:Lm1/e0;

    move-wide/from16 v10, p1

    invoke-static {v7, v10, v11, v8}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v7

    sget-object v8, Lf1/c;->p:Lf1/j;

    const/4 v15, 0x0

    invoke-static {v8, v15}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v8

    move-object/from16 v19, v7

    iget-wide v6, v0, Lr0/q;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v0}, Lr0/q;->m()Lr0/j1;

    move-result-object v7

    move-object/from16 v15, v19

    invoke-static {v15, v0}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v15

    invoke-virtual {v0}, Lr0/q;->e0()V

    iget-boolean v10, v0, Lr0/q;->S:Z

    if-eqz v10, :cond_10

    invoke-virtual {v0, v1}, Lr0/q;->l(Li9/a;)V

    goto :goto_e

    :cond_10
    invoke-virtual {v0}, Lr0/q;->o0()V

    :goto_e
    invoke-static {v4, v8, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12, v7, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v0, v14, v0, v13}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v5, v15, v0}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-wide v12, Lm1/p;->c:J

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/h5;

    iget-object v4, v4, Lo0/h5;->n:Lp2/m0;

    const/16 v31, 0x0

    const v32, 0xfffa

    const/4 v11, 0x0

    const-wide/16 v14, 0x0

    const/high16 v5, 0x20000

    const/16 v16, 0x0

    const/4 v6, 0x2

    const/16 v17, 0x0

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    const/4 v8, 0x1

    const/16 v20, 0x0

    const/4 v10, 0x0

    const-wide/16 v21, 0x0

    const/high16 v25, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v27, v25

    const/16 v25, 0x0

    move-object/from16 v28, v26

    const/16 v26, 0x0

    move/from16 v29, v27

    const/16 v27, 0x0

    const/16 v30, 0x186

    move-object/from16 v5, v28

    move-object/from16 v28, v4

    move v4, v6

    move/from16 v6, v29

    move-object/from16 v29, v0

    move v0, v7

    move v7, v8

    move v8, v10

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v32}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v29

    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    const/16 v11, 0x8

    int-to-float v11, v11

    invoke-static {v3, v11}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v11

    invoke-static {v11, v10}, Lu/b;->e(Lf1/r;Lr0/q;)V

    if-nez p3, :cond_11

    sget-object v11, Lcd/d;->X0:Lcd/c;

    new-array v12, v8, [Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_f

    :cond_11
    invoke-static/range {p4 .. p4}, Lzc/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v11, "\u2026"

    :cond_12
    :goto_f
    invoke-virtual {v10, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_13

    if-ne v13, v5, :cond_14

    :cond_13
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v12}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v13

    invoke-virtual {v10, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    check-cast v13, Lr0/u0;

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_15

    const-string v12, "   |   "

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_15
    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo0/h5;

    iget-object v12, v12, Lo0/h5;->k:Lp2/m0;

    float-to-double v14, v6

    cmpl-double v14, v14, v35

    if-lez v14, :cond_16

    goto :goto_10

    :cond_16
    invoke-static/range {v38 .. v38}, Lv/a;->a(Ljava/lang/String;)V

    :goto_10
    new-instance v14, Lu/j0;

    cmpl-float v15, v6, v37

    if-lez v15, :cond_17

    move/from16 v6, v37

    :cond_17
    invoke-direct {v14, v6, v7}, Lu/j0;-><init>(FZ)V

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_18

    int-to-float v6, v8

    new-instance v15, Lp/q;

    invoke-direct {v15, v6}, Lp/q;-><init>(F)V

    invoke-static {v14, v15}, Lp/o;->g(Lf1/r;Lp/q;)Lf1/r;

    move-result-object v14

    :cond_18
    invoke-virtual {v10, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_19

    if-ne v15, v5, :cond_1a

    :cond_19
    new-instance v15, Lb0/y;

    const/16 v6, 0xc

    invoke-direct {v15, v13, v6}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v10, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v27, v15

    check-cast v27, Li9/c;

    const/16 v31, 0xc30

    const/16 v32, 0x57fc

    move-object/from16 v28, v12

    const-wide/16 v12, 0x0

    move-object v10, v11

    move-object v11, v14

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v30, 0x0

    move-object/from16 v29, p9

    invoke-static/range {v10 .. v32}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v29

    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_1b

    new-instance v11, Lb0/u;

    const/16 v12, 0xe

    invoke-direct {v11, v2, v12}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v11, Li9/a;

    new-instance v12, Lod/o1;

    const/4 v13, 0x0

    move-object/from16 v14, p7

    invoke-direct {v12, v14, v9, v2, v13}, Lod/o1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;I)V

    const v2, 0x4c911444    # 7.606326E7f

    invoke-static {v2, v12, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v22

    const/16 v24, 0x30

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v10

    move v10, v6

    invoke-static/range {v10 .. v24}, Lo0/o;->a(ZLi9/a;Lf1/r;JLp/a2;Lf3/a0;Lm1/h0;JFFLz0/d;Lr0/q;I)V

    move-object/from16 v10, v23

    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    sget-object v2, Lcd/d;->W0:Lcd/c;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v6, 0xe000

    and-int v6, v34, v6

    const/16 v11, 0x4000

    if-ne v6, v11, :cond_1c

    move v12, v7

    goto :goto_11

    :cond_1c
    move v12, v8

    :goto_11
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v12, :cond_1e

    if-ne v6, v5, :cond_1d

    goto :goto_12

    :cond_1d
    move-object/from16 v12, p5

    goto :goto_13

    :cond_1e
    :goto_12
    new-instance v6, Lkd/p;

    const/4 v11, 0x5

    move-object/from16 v12, p5

    invoke-direct {v6, v12, v11}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_13
    check-cast v6, Li9/a;

    const/4 v11, 0x0

    const/16 v13, 0xf

    invoke-static {v3, v8, v11, v6, v13}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v6

    const/4 v14, 0x6

    int-to-float v14, v14

    invoke-static {v6, v14, v0, v4}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v6

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lo0/h5;

    iget-object v15, v15, Lo0/h5;->m:Lp2/m0;

    sget-object v11, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/u0;

    move/from16 v18, v14

    iget-wide v13, v11, Lo0/u0;->a:J

    const/16 v31, 0x0

    const v32, 0xfff8

    move-wide v12, v13

    move-object/from16 v28, v15

    const-wide/16 v14, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v19, 0xf

    const/16 v17, 0x0

    move/from16 v20, v18

    move/from16 v21, v19

    const-wide/16 v18, 0x0

    move/from16 v22, v20

    const/16 v20, 0x0

    move/from16 v24, v21

    move/from16 v23, v22

    const-wide/16 v21, 0x0

    move/from16 v25, v23

    const/16 v23, 0x0

    move/from16 v26, v24

    const/16 v24, 0x0

    move/from16 v27, v25

    const/16 v25, 0x0

    move/from16 v29, v26

    const/16 v26, 0x0

    move/from16 v30, v27

    const/16 v27, 0x0

    move/from16 v33, v30

    const/16 v30, 0x0

    move-object v7, v11

    move-object v11, v6

    move/from16 v6, v29

    move-object/from16 v29, v10

    move-object v10, v2

    move/from16 v2, v33

    invoke-static/range {v10 .. v32}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v29

    if-eqz p3, :cond_22

    const v11, -0x48a19b3e

    invoke-virtual {v10, v11}, Lr0/q;->b0(I)V

    const/high16 v11, 0x70000

    and-int v11, v34, v11

    const/high16 v12, 0x20000

    if-ne v11, v12, :cond_1f

    const/4 v12, 0x1

    goto :goto_14

    :cond_1f
    move v12, v8

    :goto_14
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v12, :cond_21

    if-ne v11, v5, :cond_20

    goto :goto_15

    :cond_20
    move-object/from16 v12, p6

    goto :goto_16

    :cond_21
    :goto_15
    new-instance v11, Lkd/p;

    const/4 v5, 0x6

    move-object/from16 v12, p6

    invoke-direct {v11, v12, v5}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_16
    check-cast v11, Li9/a;

    invoke-static {v3, v8, v7, v11, v6}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v3

    invoke-static {v3, v2, v0, v4}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v11

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->m:Lp2/m0;

    const/16 v31, 0x0

    const v32, 0xfffc

    const-string v10, "\u2715"

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x6

    move-object/from16 v29, p9

    move-object/from16 v28, v0

    invoke-static/range {v10 .. v32}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v29

    :goto_17
    invoke-virtual {v10, v8}, Lr0/q;->q(Z)V

    const/4 v7, 0x1

    goto :goto_18

    :cond_22
    const v0, 0x346fe333

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    goto :goto_17

    :goto_18
    invoke-virtual {v10, v7}, Lr0/q;->q(Z)V

    goto :goto_19

    :cond_23
    move-object v10, v0

    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_19
    invoke-virtual {v10}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_24

    new-instance v0, Lod/p1;

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lod/p1;-><init>(Ljava/lang/String;JLua/nav/routing/GeoPoint;Ljava/lang/String;Li9/a;Li9/a;Li9/c;Li9/a;I)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_24
    return-void
.end method

.method public static final a0(ILjava/util/List;)Lorg/maplibre/geojson/FeatureCollection;
    .locals 17

    move/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lg5/f;->z(Ljava/util/Collection;)Lo9/d;

    move-result-object v1

    new-instance v2, Lod/f3;

    invoke-direct {v2, v0}, Lod/f3;-><init>(I)V

    invoke-static {v1, v2}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/Route;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v0, :cond_0

    move v8, v7

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_1
    iget-object v9, v5, Lua/nav/routing/Route;->i:Ljava/util/List;

    iget-object v5, v5, Lua/nav/routing/Route;->e:Ljava/util/List;

    const-string v10, "idx"

    const-string v11, "sel"

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v7

    if-ne v12, v13, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    :goto_2
    if-ge v6, v8, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/GeoPoint;

    add-int/lit8 v12, v6, 0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lua/nav/routing/GeoPoint;

    iget-wide v14, v7, Lua/nav/routing/GeoPoint;->b:D

    move-object/from16 v16, v1

    iget-wide v0, v7, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v14, v15, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v0

    iget-wide v14, v13, Lua/nav/routing/GeoPoint;->b:D

    move v1, v3

    iget-wide v3, v13, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v14, v15, v3, v4}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v3

    filled-new-array {v0, v3}, [Lorg/maplibre/geojson/Point;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v11, v3}, Lorg/maplibre/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "congestion"

    invoke-virtual {v0, v4, v3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p0

    move-object/from16 v4, p1

    move v3, v1

    move v6, v12

    move-object/from16 v1, v16

    goto :goto_2

    :cond_1
    move/from16 v0, p0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v16, v1

    move v1, v3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-wide v5, v4, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v12, v4, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v5, v6, v12, v13}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lorg/maplibre/geojson/Feature;->addBooleanProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p0

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_4
    invoke-static {v2}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    const-string v1, "fromFeatures(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lsc/q0;Lua/nav/c;Lua/nav/routing/Favorites;IIDLi9/a;Li9/a;Li9/a;Landroid/content/Context;Lr0/q;I)V
    .locals 23

    move-object/from16 v10, p11

    const v0, -0x6909c9e1

    invoke-virtual {v10, v0}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v12, p0

    invoke-virtual {v10, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p12, v0

    move-object/from16 v3, p1

    invoke-virtual {v10, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    goto :goto_1

    :cond_1
    const/16 v2, 0x10

    :goto_1
    or-int/2addr v0, v2

    move-object/from16 v4, p2

    invoke-virtual {v10, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_2

    :cond_2
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    move/from16 v5, p3

    invoke-virtual {v10, v5}, Lr0/q;->e(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_3

    :cond_3
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    move/from16 v6, p4

    invoke-virtual {v10, v6}, Lr0/q;->e(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x4000

    goto :goto_4

    :cond_4
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    move-wide/from16 v7, p5

    invoke-virtual {v10, v7, v8}, Lr0/q;->c(D)Z

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v2, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    move-object/from16 v14, p10

    invoke-virtual {v10, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x20000000

    goto :goto_6

    :cond_6
    const/high16 v2, 0x10000000

    :goto_6
    or-int/2addr v0, v2

    const v2, 0x12492493

    and-int/2addr v2, v0

    const v9, 0x12492492

    const/4 v11, 0x1

    if-eq v2, v9, :cond_7

    move v2, v11

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    and-int/2addr v0, v11

    invoke-virtual {v10, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    int-to-float v0, v1

    sget-object v1, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/q3;

    iget-object v1, v1, Lo0/q3;->c:La0/d;

    new-instance v11, Lod/l1;

    move-object/from16 v19, p7

    move-object/from16 v21, p8

    move-object/from16 v22, p9

    move-object v13, v3

    move-object v15, v4

    move/from16 v18, v5

    move/from16 v20, v6

    move-wide/from16 v16, v7

    invoke-direct/range {v11 .. v22}, Lod/l1;-><init>(Lsc/q0;Lua/nav/c;Landroid/content/Context;Lua/nav/routing/Favorites;DILi9/a;ILi9/a;Li9/a;)V

    const v2, -0x67aa1d86

    invoke-static {v2, v11, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc06000

    const/16 v12, 0x6d

    move v6, v0

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_8

    :cond_8
    invoke-virtual/range {p11 .. p11}, Lr0/q;->W()V

    :goto_8
    invoke-virtual/range {p11 .. p11}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lod/l1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lod/l1;-><init>(Lsc/q0;Lua/nav/c;Lua/nav/routing/Favorites;IIDLi9/a;Li9/a;Li9/a;Landroid/content/Context;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_9
    return-void
.end method

.method public static final b0(Lorg/maplibre/android/maps/Style;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "#232B38"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->backgroundColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v3, "backgroundColor(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v3, "background"

    invoke-static {v0, v3, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#1B3F63"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v3, "fillColor(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v4, "water"

    invoke-static {v0, v4, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#2A5F8F"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v4, "lineColor(...)"

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "waterway"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "landcover_ice_shelf"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "landcover_glacier"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#28313F"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "landuse_residential"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#2A4436"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "landcover_wood"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "landuse_park"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#36415A"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "building"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#465266"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "aeroway-taxiway"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "aeroway-runway-casing"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#2E3847"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const-string v5, "aeroway-area"

    invoke-static {v0, v5, v2}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v2, "#66748C"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "aeroway-runway"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "road_area_pier"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "road_pier"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v3, "#5D6A82"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "highway_path"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v3, "#7C8AA3"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "highway_minor"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v3, "#141A23"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "highway_major_casing"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v5, "#B4BED0"

    invoke-static {v5}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "highway_major_inner"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "highway_major_subtle"

    invoke-static {v0, v6, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "highway_motorway_casing"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v3

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    const-wide v6, 0x4017333333333333L    # 5.8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/16 v7, 0xe8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xb2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x5e

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "#E8B25E"

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    filled-new-array {v6, v7}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "highway_motorway_inner"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v5, "highway_motorway_subtle"

    invoke-static {v0, v5, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v3, "railway_minor"

    const-string v5, "railway"

    const-string v6, "railway_transit"

    filled-new-array {v6, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static {v6, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_0

    :cond_0
    const-string v2, "railway_minor_dashline"

    const-string v3, "railway_dashline"

    const-string v5, "railway_transit_dashline"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_1

    :cond_1
    const-string v1, "boundary_country_z0-4"

    const-string v2, "boundary_country_z5-"

    const-string v3, "boundary_state"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#556077"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_2

    :cond_2
    const-string v1, "#8DB9E8"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v2, "textColor(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "#10151D"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v6, "textHaloColor(...)"

    invoke-static {v5, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1, v5}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v5, "water_name"

    invoke-static {v0, v5, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v1, "#D5DCE8"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    invoke-static {v7, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5, v7}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v7, "highway_name_other"

    invoke-static {v0, v7, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v5, "#F0F3F8"

    invoke-static {v5}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v5, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    invoke-static {v7, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5, v7}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v7, "highway_name_motorway"

    invoke-static {v0, v7, v5}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v16, "place_country_minor"

    const-string v17, "place_country_major"

    const-string v8, "place_other"

    const-string v9, "place_suburb"

    const-string v10, "place_village"

    const-string v11, "place_town"

    const-string v12, "place_city"

    const-string v13, "place_city_large"

    const-string v14, "place_state"

    const-string v15, "place_country_other"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-static {v8, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v9

    invoke-static {v9, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v8, v9}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-static {v0, v7, v8}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    goto :goto_3

    :cond_3
    const-string v1, "#000000"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v5, "route-outline"

    invoke-static {v0, v5, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v1, "#0B0F16"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v5, "route-casing"

    invoke-static {v0, v5, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v1, "#9AA6BA"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v5, "route-alt"

    invoke-static {v0, v5, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    sget-object v1, Lod/m;->c2:[I

    const-string v5, "congestion"

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    const/4 v7, 0x0

    aget v8, v1, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget v10, v1, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aget v12, v1, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v8, v10, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    aget v10, v1, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aget v12, v1, v9

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget v13, v1, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v10

    const-string v12, "low"

    invoke-static {v12, v10}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v10

    aget v12, v1, v7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aget v13, v1, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12, v13, v1}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const-string v12, "unknown"

    invoke-static {v12, v1}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v1

    sget-object v12, Lod/m;->d2:[I

    aget v13, v12, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aget v14, v12, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aget v12, v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v13, v14, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v12

    const-string v13, "moderate"

    invoke-static {v13, v12}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v12

    sget-object v13, Lod/m;->e2:[I

    aget v14, v13, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aget v15, v13, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aget v13, v13, v11

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    const-string v14, "heavy"

    invoke-static {v14, v13}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v13

    sget-object v14, Lod/m;->f2:[I

    aget v7, v14, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v9, v14, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget v11, v14, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7, v9, v11}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v9, "severe"

    invoke-static {v9, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    filled-new-array {v10, v1, v12, v13, v7}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v1

    invoke-static {v5, v8, v1}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v5, "route-sel"

    invoke-static {v0, v5, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v1, "#D0D7E3"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v2, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1, v2}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v2, "housenumber-layer"

    invoke-static {v0, v2, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    const-string v1, "#5B677F"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v2, "building-outline-layer"

    invoke-static {v0, v2, v1}, Lod/g3;->c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V

    return-void
.end method

.method public static final c(Ljava/lang/String;Li9/a;Li9/a;Lr0/q;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v14, p3

    const v0, 0x6f2c437b    # 5.3313E28f

    invoke-virtual {v14, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v14, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v14, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x100

    goto :goto_1

    :cond_1
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v14, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x800

    goto :goto_2

    :cond_2
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_3

    move v4, v7

    goto :goto_3

    :cond_3
    move v4, v6

    :goto_3
    and-int/2addr v0, v7

    invoke-virtual {v14, v0, v4}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x5529632b

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v4, v0, Lo0/u0;->c:J

    invoke-virtual {v14, v6}, Lr0/q;->q(Z)V

    sget-object v0, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v14, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/q3;

    iget-object v0, v0, Lo0/q3;->b:La0/d;

    sget-object v6, Lf1/o;->a:Lf1/o;

    invoke-static {v6, v3, v2}, Lp/o;->m(Lf1/r;Li9/a;Li9/a;)Lf1/r;

    move-result-object v6

    new-instance v7, Lnd/e;

    const/4 v8, 0x6

    invoke-direct {v7, v1, v8}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v8, -0x5a54432a

    invoke-static {v8, v7, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v13

    const/high16 v15, 0xc00000

    const/16 v16, 0x78

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v17, v4

    move-object v4, v6

    move-wide/from16 v6, v17

    move-object v5, v0

    invoke-static/range {v4 .. v16}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lr0/q;->W()V

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lr0/q;->u()Lr0/n1;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v0, Lb0/k0;

    const/4 v5, 0x6

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lt8/e;II)V

    iput-object v0, v6, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final varargs c0(Lorg/maplibre/android/maps/Style;Ljava/lang/String;[Lorg/maplibre/android/style/layers/PropertyValue;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/maplibre/android/style/layers/PropertyValue;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public static final d(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;Lr0/q;II)V
    .locals 21

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v15, p7

    const v0, 0x3a6396c7

    invoke-virtual {v15, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v15, v2}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v15, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x100

    goto :goto_1

    :cond_1
    const/16 v1, 0x80

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    goto :goto_2

    :cond_2
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    and-int/lit8 v1, p9, 0x10

    move-wide/from16 v5, p4

    if-nez v1, :cond_3

    invoke-virtual {v15, v5, v6}, Lr0/q;->f(J)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4000

    goto :goto_3

    :cond_3
    const/16 v1, 0x2000

    :goto_3
    or-int/2addr v0, v1

    and-int/lit8 v1, p9, 0x20

    if-eqz v1, :cond_4

    const/high16 v7, 0x30000

    or-int/2addr v0, v7

    move-object/from16 v7, p6

    goto :goto_5

    :cond_4
    move-object/from16 v7, p6

    invoke-virtual {v15, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v8, 0x10000

    :goto_4
    or-int/2addr v0, v8

    :goto_5
    const v8, 0x12493

    and-int/2addr v8, v0

    const v9, 0x12492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v8, v9, :cond_6

    move v8, v11

    goto :goto_6

    :cond_6
    move v8, v10

    :goto_6
    and-int/2addr v0, v11

    invoke-virtual {v15, v0, v8}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v15}, Lr0/q;->Y()V

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v15}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v15}, Lr0/q;->W()V

    :cond_8
    move-wide v0, v5

    move-object v5, v7

    goto :goto_8

    :cond_9
    :goto_7
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_a

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v5, v0, Lo0/u0;->c:J

    :cond_a
    if-eqz v1, :cond_8

    const/4 v0, 0x0

    move-wide/from16 v19, v5

    move-object v5, v0

    move-wide/from16 v0, v19

    :goto_8
    invoke-virtual {v15}, Lr0/q;->r()V

    if-eqz v5, :cond_b

    iget-wide v6, v5, Lm1/p;->a:J

    :goto_9
    move-wide v7, v6

    goto :goto_a

    :cond_b
    if-eqz v2, :cond_c

    const v6, 0x2fd91eef

    invoke-virtual {v15, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v15, v10}, Lr0/q;->q(Z)V

    move-wide v7, v0

    goto :goto_a

    :cond_c
    const v6, 0x2fd923f5

    invoke-virtual {v15, v6}, Lr0/q;->b0(I)V

    sget-object v6, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v15, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/u0;

    iget-wide v6, v6, Lo0/u0;->r:J

    invoke-virtual {v15, v10}, Lr0/q;->q(Z)V

    goto :goto_9

    :goto_a
    sget-object v6, La0/e;->a:La0/d;

    const/16 v9, 0x26

    int-to-float v9, v9

    sget-object v10, Lf1/o;->a:Lf1/o;

    invoke-static {v10, v9}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v9

    invoke-static {v9, v4, v3}, Lp/o;->m(Lf1/r;Li9/a;Li9/a;)Lf1/r;

    move-result-object v9

    new-instance v10, Lnd/e;

    const/4 v11, 0x5

    move-object/from16 v12, p0

    invoke-direct {v10, v12, v11}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v11, -0x179896b4

    invoke-static {v11, v10, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/high16 v16, 0xc00000

    const/16 v17, 0x78

    move-object v11, v5

    move-object v5, v9

    const-wide/16 v9, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v18, v13

    const/4 v13, 0x0

    invoke-static/range {v5 .. v17}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-wide v5, v0

    move-object/from16 v7, v18

    goto :goto_b

    :cond_d
    invoke-virtual/range {p7 .. p7}, Lr0/q;->W()V

    :goto_b
    invoke-virtual/range {p7 .. p7}, Lr0/q;->u()Lr0/n1;

    move-result-object v10

    if-eqz v10, :cond_e

    new-instance v0, Lod/k1;

    move-object/from16 v1, p0

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lod/k1;-><init>(Ljava/lang/String;ZLi9/a;Li9/a;JLm1/p;II)V

    iput-object v0, v10, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final d0(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6

    const/16 v0, 0x30

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    int-to-float p0, p0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p0, v3

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, p0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v4, p0

    const v5, 0x3f733333    # 0.95f

    mul-float/2addr v5, p0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const v4, 0x3f3851ec    # 0.72f

    mul-float/2addr v4, p0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v3, p0

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v5, 0x3df5c28f    # 0.12f

    mul-float/2addr p0, v5

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public static final e(Lua/nav/c;Lr0/q;I)V
    .locals 153

    move-object/from16 v4, p1

    sget-object v7, Lf1/c;->t:Lf1/j;

    sget-object v8, Lr0/m;->a:Lr0/e;

    sget-object v9, Lf1/c;->r:Lf1/j;

    sget-object v10, Lf1/c;->x:Lf1/h;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x223e8ac0

    invoke-virtual {v4, v0}, Lr0/q;->c0(I)Lr0/q;

    const/4 v12, 0x6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    or-int/lit8 v0, p2, 0x2

    and-int/lit8 v2, v0, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eq v2, v14, :cond_0

    move v2, v15

    goto :goto_0

    :cond_0
    move v2, v11

    :goto_0
    and-int/2addr v0, v15

    invoke-virtual {v4, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_10b

    invoke-virtual {v4}, Lr0/q;->Y()V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lr0/q;->W()V

    move-object/from16 v2, p0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-static {v4}, Le4/a;->a(Lr0/q;)Landroidx/lifecycle/g1;

    move-result-object v0

    if-eqz v0, :cond_10a

    instance-of v2, v0, Landroidx/lifecycle/k;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/k;

    invoke-interface {v2}, Landroidx/lifecycle/k;->getDefaultViewModelCreationExtras()Ld4/b;

    move-result-object v2

    goto :goto_2

    :cond_3
    sget-object v2, Ld4/a;->b:Ld4/a;

    :goto_2
    const-class v3, Lua/nav/c;

    invoke-static {v3}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v3

    invoke-static {v3, v0, v2, v4}, Lr5/u0;->v(Lj9/f;Landroidx/lifecycle/g1;Ld4/b;Lr0/q;)Landroidx/lifecycle/z0;

    move-result-object v0

    check-cast v0, Lua/nav/c;

    move-object v2, v0

    :goto_3
    invoke-virtual {v4}, Lr0/q;->r()V

    invoke-static {}, Lf2/o0;->d()Lr0/s2;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    invoke-static {}, Lb4/h;->a()Lr0/m1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/lifecycle/v;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    new-instance v0, Lorg/maplibre/android/maps/MapView;

    invoke-direct {v0, v3}, Lorg/maplibre/android/maps/MapView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    move-object v12, v0

    check-cast v12, Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v23, v0

    check-cast v23, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    move-object/from16 v24, v0

    check-cast v24, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    const/4 v6, 0x0

    if-ne v0, v8, :cond_7

    invoke-static {v6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object/from16 p0, v6

    move-object v6, v0

    check-cast v6, Lr0/u0;

    sget-object v0, Lf2/l1;->p:Lr0/s2;

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lf2/k2;

    sget-object v0, Lf2/l1;->i:Lr0/s2;

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lk1/l;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v17, v0

    check-cast v17, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v18, v0

    check-cast v18, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_a

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v19, v0

    check-cast v19, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_b

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v26, v0

    check-cast v26, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v48, v0

    check-cast v48, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object/from16 v49, v7

    move-object v7, v0

    check-cast v7, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v50, v0

    check-cast v50, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object/from16 v35, v0

    check-cast v35, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v37, v0

    check-cast v37, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_11

    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    move-object/from16 v51, v7

    move-object v7, v0

    check-cast v7, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_12

    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v52, v9

    move-object v9, v0

    check-cast v9, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_13

    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    move-object v11, v0

    check-cast v11, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    move-object/from16 v31, v0

    check-cast v31, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_15

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v33, v0

    check-cast v33, Lr0/u0;

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v0

    invoke-virtual {v0}, Ldd/i;->e()Lx9/l0;

    move-result-object v0

    move-object/from16 v25, v1

    invoke-static {v0, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v1

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_16

    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object/from16 v27, v0

    check-cast v27, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_17

    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v34, v0

    check-cast v34, Lr0/u0;

    move-object/from16 v54, v10

    const/4 v10, 0x0

    new-array v0, v10, [Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v55, v13

    const/16 v13, 0x12

    if-ne v10, v8, :cond_18

    new-instance v10, Ln/k1;

    invoke-direct {v10, v13}, Ln/k1;-><init>(I)V

    invoke-virtual {v4, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    check-cast v10, Li9/a;

    invoke-static {v0, v10, v4}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_19

    const-string v0, "map"

    const/4 v13, 0x0

    invoke-virtual {v3, v0, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_19
    move-object v13, v0

    check-cast v13, Landroid/content/SharedPreferences;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1a

    const-string v0, "top_collapsed"

    move-object/from16 v56, v15

    const/4 v15, 0x0

    invoke-interface {v13, v0, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1a
    move-object/from16 v56, v15

    :goto_4
    move-object v15, v0

    check-cast v15, Lr0/u0;

    invoke-virtual {v4, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v16, v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_1c

    if-ne v0, v8, :cond_1b

    goto :goto_5

    :cond_1b
    move-object/from16 v57, v14

    goto :goto_6

    :cond_1c
    :goto_5
    new-instance v0, Lb0/r0;

    move-object/from16 v57, v14

    const/16 v14, 0x15

    invoke-direct {v0, v14, v13, v15}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_6
    move-object v14, v0

    check-cast v14, Li9/c;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1e

    :try_start_0
    const-string v0, "theme"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v58, v15

    :try_start_1
    const-string v15, "AUTO"

    invoke-interface {v13, v0, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lod/h3;->valueOf(Ljava/lang/String;)Lod/h3;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v58, v15

    :goto_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_8
    sget-object v15, Lod/h3;->l:Lod/h3;

    invoke-static {v0}, Lt8/m;->b(Ljava/io/Serializable;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move-object v0, v15

    :cond_1d
    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_9

    :cond_1e
    move-object/from16 v58, v15

    :goto_9
    move-object/from16 v59, v0

    check-cast v59, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_1f

    const-string v0, "show3d"

    const/4 v15, 0x0

    invoke-interface {v13, v0, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v42, v0

    check-cast v42, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_20

    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_20
    move-object v15, v0

    check-cast v15, Lr0/u0;

    sget-object v0, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v60, v14

    const/16 v14, 0x30

    and-int/2addr v0, v14

    const/16 v14, 0x20

    if-ne v0, v14, :cond_21

    const/4 v0, 0x1

    goto :goto_a

    :cond_21
    const/4 v0, 0x0

    :goto_a
    invoke-interface/range {v59 .. v59}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lod/h3;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    move-object/from16 v61, v7

    if-eqz v14, :cond_24

    const/4 v7, 0x1

    if-eq v14, v7, :cond_23

    const/4 v7, 0x2

    if-ne v14, v7, :cond_22

    const/4 v0, 0x1

    goto :goto_b

    :cond_22
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Landroidx/fragment/app/i0;-><init>()V

    throw v0

    :cond_23
    const/4 v0, 0x0

    :cond_24
    :goto_b
    invoke-interface/range {v59 .. v59}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lod/h3;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_27

    const/4 v14, 0x1

    if-eq v7, v14, :cond_26

    const/4 v14, 0x2

    if-ne v7, v14, :cond_25

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_25
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Landroidx/fragment/app/i0;-><init>()V

    throw v0

    :cond_26
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_27
    move-object/from16 v7, p0

    :goto_c
    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    move/from16 v16, v14

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v16, :cond_29

    if-ne v14, v8, :cond_28

    goto :goto_d

    :cond_28
    move-object/from16 v62, v11

    goto :goto_e

    :cond_29
    :goto_d
    new-instance v14, Lad/t;

    move-object/from16 v62, v11

    const/16 v11, 0x1c

    invoke-direct {v14, v11, v7}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_e
    check-cast v14, Li9/a;

    invoke-static {v14, v4}, Lr0/r;->j(Li9/a;Lr0/q;)V

    if-eqz v0, :cond_2a

    const-string v7, "https://tiles.openfreemap.org/styles/dark"

    goto :goto_f

    :cond_2a
    const-string v7, "https://tiles.openfreemap.org/styles/liberty"

    :goto_f
    invoke-virtual {v4, v0}, Lr0/q;->h(Z)Z

    move-result v11

    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_2c

    if-ne v14, v8, :cond_2b

    goto :goto_10

    :cond_2b
    move-object/from16 v29, v17

    move-object/from16 v11, v18

    move-object/from16 v28, v19

    goto :goto_11

    :cond_2c
    :goto_10
    new-instance v16, Lo0/m;

    move-object/from16 v20, v3

    move-object/from16 v22, v17

    move-object/from16 v21, v18

    move/from16 v17, v0

    move-object/from16 v18, v7

    invoke-direct/range {v16 .. v22}, Lo0/m;-><init>(ZLjava/lang/String;Lr0/u0;Landroid/content/Context;Lr0/u0;Lr0/u0;)V

    move-object/from16 v14, v16

    move-object/from16 v28, v19

    move-object/from16 v11, v21

    move-object/from16 v29, v22

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_11
    check-cast v14, Li9/e;

    invoke-virtual {v4, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v30, v11

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v16, :cond_2e

    if-ne v11, v8, :cond_2d

    goto :goto_12

    :cond_2d
    move-object/from16 v63, v9

    move-object/from16 v39, v10

    goto :goto_13

    :cond_2e
    :goto_12
    iget-object v11, v2, Lua/nav/c;->c:Ldd/k0;

    iget-object v11, v11, Ldd/k0;->j:Ldd/m;

    iget-object v11, v11, Ldd/m;->h:Lx9/l0;

    move-object/from16 v63, v9

    new-instance v9, Lod/s2;

    move-object/from16 v39, v10

    const/4 v10, 0x0

    invoke-direct {v9, v11, v10}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {v9}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object v11

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_13
    check-cast v11, Lx9/g;

    iget-object v9, v2, Lua/nav/c;->c:Ldd/k0;

    iget-object v9, v9, Ldd/k0;->j:Ldd/m;

    iget-object v9, v9, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v64, v9

    check-cast v64, Ldd/n;

    new-instance v71, Ldd/m0;

    invoke-direct/range {v71 .. v71}, Ldd/m0;-><init>()V

    const/16 v77, 0x0

    const/16 v78, 0x1fbf

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    invoke-static/range {v64 .. v78}, Ldd/n;->a(Ldd/n;Ldd/l0;Ldd/y0;Ldd/l0;Ldd/l0;Ldd/l0;Ldd/p;Ldd/m0;Ldd/t;ZIIZLjava/lang/String;I)Ldd/n;

    move-result-object v9

    invoke-static {v11, v9, v4}, Lc6/o;->H(Lx9/g;Ldd/n;Lr0/q;)Lr0/u0;

    move-result-object v9

    iget-object v10, v2, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v10}, Ldd/k0;->b()Lx9/l0;

    move-result-object v10

    invoke-static {v10, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v10

    invoke-virtual {v2}, Lua/nav/c;->y()Lx9/l0;

    move-result-object v11

    invoke-static {v11, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v11

    move-object/from16 v36, v1

    invoke-virtual {v2}, Lua/nav/c;->u()Lad/j0;

    move-result-object v1

    iget-object v1, v1, Lad/j0;->k:Lx9/l0;

    invoke-static {v1, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v1

    sget-object v16, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v16

    move/from16 v38, v0

    invoke-virtual/range {v16 .. v16}, Lua/nav/a;->g()Lx9/l0;

    move-result-object v0

    invoke-static {v0, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lua/nav/Tuning;

    invoke-virtual/range {v16 .. v16}, Lua/nav/Tuning;->d()D

    move-result-wide v16

    move-object/from16 v32, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    sget-object v16, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v16

    move-object/from16 v64, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    move-object/from16 v40, v11

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v16, :cond_30

    if-ne v11, v8, :cond_2f

    goto :goto_14

    :cond_2f
    move-object/from16 v43, v7

    move-object/from16 v41, v14

    goto :goto_15

    :cond_30
    :goto_14
    new-instance v11, Lod/b2;

    move-object/from16 v43, v7

    move-object/from16 v41, v14

    const/4 v14, 0x1

    move-object/from16 v7, p0

    invoke-direct {v11, v14, v6, v0, v7}, Lod/b2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_15
    check-cast v11, Li9/e;

    invoke-static {v10, v15, v11, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v7

    invoke-virtual {v7}, Lua/nav/update/a;->g()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v65

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v7

    invoke-virtual {v7}, Lua/nav/update/a;->d()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v66

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v7

    invoke-virtual {v7}, Lua/nav/update/a;->f()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v67

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v7

    invoke-virtual {v7}, Lua/nav/update/a;->e()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v68

    invoke-static/range {v65 .. v65}, Lod/g3;->K(Lr0/u0;)Lqd/q;

    move-result-object v7

    iget-object v7, v7, Lqd/q;->a:Lqd/o;

    sget-object v10, Lqd/o;->n:Lqd/o;

    if-ne v7, v10, :cond_31

    invoke-static {v1}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    invoke-virtual {v7}, Lad/a0;->b()Z

    move-result v7

    if-nez v7, :cond_31

    const/16 v69, 0x1

    goto :goto_16

    :cond_31
    const/16 v69, 0x0

    :goto_16
    invoke-virtual {v2}, Lua/nav/c;->t()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v7

    invoke-static {v1}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v10

    invoke-virtual {v10}, Lad/a0;->b()Z

    move-result v10

    if-nez v10, :cond_32

    invoke-static {v7}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v10

    iget-object v10, v10, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-eqz v10, :cond_32

    const/4 v10, 0x1

    goto :goto_17

    :cond_32
    const/4 v10, 0x0

    :goto_17
    if-eqz v10, :cond_33

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v11

    invoke-virtual {v11}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_33

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v11

    invoke-virtual {v11}, Lsc/q0;->e()Lsc/d;

    move-result-object v11

    if-nez v11, :cond_33

    const/4 v11, 0x1

    goto :goto_18

    :cond_33
    const/4 v11, 0x0

    :goto_18
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_34

    const-string v14, "zoomAuto"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v14}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_34
    check-cast v14, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_35

    const-string v15, "zoomManual"

    move-object/from16 v19, v6

    const/high16 v6, 0x41840000    # 16.5f

    invoke-interface {v13, v15, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v6

    move-object/from16 v70, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v15

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_19

    :cond_35
    move-object/from16 v19, v6

    move-object/from16 v70, v7

    :goto_19
    check-cast v15, Lr0/u0;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_36

    const/4 v7, 0x1

    new-array v6, v7, [D

    const-wide v16, 0x4030800000000000L    # 16.5

    const/16 v53, 0x0

    aput-wide v16, v6, v53

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_36
    check-cast v6, [D

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v8, :cond_37

    invoke-static/range {v25 .. v25}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v7

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_37
    check-cast v7, Lr0/u0;

    move-object/from16 v71, v7

    invoke-virtual {v2}, Lua/nav/c;->z()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v72

    invoke-virtual {v2}, Lua/nav/c;->x()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v73

    invoke-virtual {v2}, Lua/nav/c;->D()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v74

    invoke-virtual {v2}, Lua/nav/c;->q()Lx9/l0;

    move-result-object v7

    invoke-static {v7, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v7

    move/from16 v75, v10

    invoke-virtual {v2}, Lua/nav/c;->p()Lx9/l0;

    move-result-object v10

    invoke-static {v10, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v76

    invoke-virtual {v2}, Lua/nav/c;->r()Lx9/l0;

    move-result-object v10

    invoke-static {v10, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v10

    move-object/from16 v77, v13

    invoke-virtual {v2}, Lua/nav/c;->v()Lx9/l0;

    move-result-object v13

    invoke-static {v13, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v78

    invoke-virtual {v2}, Lua/nav/c;->B()Lx9/l0;

    move-result-object v13

    invoke-static {v13, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v79

    invoke-virtual {v2}, Lua/nav/c;->A()Lx9/l0;

    move-result-object v13

    invoke-static {v13, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v13

    move-object/from16 v80, v14

    invoke-virtual {v2}, Lua/nav/c;->n()Lx9/l0;

    move-result-object v14

    invoke-static {v14, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v81

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_38

    invoke-static/range {v25 .. v25}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_38
    check-cast v14, Lr0/u0;

    move-object/from16 v82, v14

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_39

    invoke-static/range {v25 .. v25}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_39
    check-cast v14, Lr0/u0;

    move-object/from16 v83, v14

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_3a

    invoke-static/range {v25 .. v25}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3a
    check-cast v14, Lr0/u0;

    move-object/from16 v84, v14

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v8, :cond_3b

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3b
    check-cast v14, Lr0/u0;

    move-object/from16 v85, v14

    sget-object v14, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v4, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v86, v15

    move-object/from16 v15, v16

    check-cast v15, Lb3/c;

    move-object/from16 v87, v14

    invoke-static {}, Lf2/o0;->c()Lr0/a0;

    move-result-object v14

    invoke-virtual {v4, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v88, v15

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3c

    const/4 v14, 0x1

    goto :goto_1a

    :cond_3c
    const/4 v14, 0x0

    :goto_1a
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_3d

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v15

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_3d
    const/16 v25, 0x0

    :goto_1b
    check-cast v15, Lr0/u0;

    move-object/from16 p0, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v8, :cond_3e

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v15}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v15

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3e
    check-cast v15, Lr0/u0;

    move-object/from16 v89, v15

    invoke-virtual {v2}, Lua/nav/c;->s()Lx9/l0;

    move-result-object v15

    invoke-static {v15, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v15

    move-object/from16 v90, v6

    invoke-virtual {v2}, Lua/nav/c;->m()Lx9/l0;

    move-result-object v6

    invoke-static {v6, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v6

    move/from16 v91, v11

    invoke-virtual {v2}, Lua/nav/c;->C()Lx9/l0;

    move-result-object v11

    invoke-static {v11, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v92

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v8, :cond_3f

    invoke-static {v4}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v11

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3f
    check-cast v11, Lu9/t;

    move/from16 v93, v14

    invoke-virtual {v2}, Lua/nav/c;->w()Lx9/l0;

    move-result-object v14

    invoke-static {v14, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v14

    move-object/from16 v94, v13

    invoke-static {v14}, Lod/g3;->n(Lr0/u0;)Lt8/j;

    move-result-object v13

    move-object/from16 v95, v6

    invoke-static/range {v19 .. v19}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v6

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    move-object/from16 v17, v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v16, :cond_41

    if-ne v2, v8, :cond_40

    goto :goto_1c

    :cond_40
    move-object v14, v11

    move-object/from16 v11, v17

    move-object/from16 v96, v31

    move-object/from16 v31, v19

    goto :goto_1d

    :cond_41
    :goto_1c
    new-instance v16, Lod/g2;

    const/16 v22, 0x0

    move-object/from16 v20, v11

    move-object/from16 v18, v14

    move-object/from16 v21, v31

    invoke-direct/range {v16 .. v22}, Lod/g2;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lu9/t;Lr0/u0;Ly8/c;)V

    move-object/from16 v2, v16

    move-object/from16 v11, v17

    move-object/from16 v31, v19

    move-object/from16 v14, v20

    move-object/from16 v96, v21

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_1d
    check-cast v2, Li9/e;

    invoke-static {v13, v6, v2, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_43

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v2}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_42

    const/4 v2, 0x1

    goto :goto_1e

    :cond_42
    const/4 v2, 0x0

    :goto_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v2

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_43
    check-cast v2, Lr0/u0;

    new-instance v6, Lg/b;

    const/4 v13, 0x0

    invoke-direct {v6, v13}, Lg/b;-><init>(I)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v97, v14

    const/16 v14, 0xe

    if-ne v13, v8, :cond_44

    new-instance v13, Lb0/y;

    invoke-direct {v13, v2, v14}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_44
    check-cast v13, Li9/c;

    const/16 v14, 0x30

    invoke-static {v6, v13, v4, v14}, Lr5/h1;->C(Lg/a;Li9/c;Lr0/q;I)Lc/i;

    move-result-object v13

    invoke-virtual {v4, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v6, :cond_45

    if-ne v14, v8, :cond_46

    :cond_45
    new-instance v14, Lad/t;

    const/16 v6, 0x1d

    invoke-direct {v14, v6, v13}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_46
    check-cast v14, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_49

    invoke-static {v2}, Lod/g3;->o(Lr0/u0;)Z

    move-result v6

    move-object/from16 v19, v2

    const-string v2, "ctx"

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onboarding"

    if-nez v6, :cond_47

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v98, v13

    const/4 v13, 0x0

    invoke-virtual {v6, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object/from16 v99, v15

    const-string v15, "rationale_shown"

    invoke-interface {v6, v15, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_1f

    :cond_47
    move-object/from16 v98, v13

    move-object/from16 v99, v15

    const/4 v13, 0x0

    :goto_1f
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v6, "tour_offered"

    invoke-interface {v2, v6, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v15, 0x1

    if-lt v2, v15, :cond_48

    const/4 v2, 0x0

    goto :goto_20

    :cond_48
    const/4 v2, 0x1

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v6

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_21

    :cond_49
    move-object/from16 v19, v2

    move-object/from16 v98, v13

    move-object/from16 v99, v15

    :goto_21
    move-object v13, v6

    check-cast v13, Lr0/u0;

    sget-object v2, Lt8/z;->a:Lt8/z;

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_4b

    if-ne v15, v8, :cond_4a

    goto :goto_22

    :cond_4a
    move-object/from16 v100, v14

    move-object/from16 v14, v19

    move-object/from16 v6, v25

    goto :goto_23

    :cond_4b
    :goto_22
    new-instance v16, Lb0/x1;

    const/16 v21, 0x4

    move-object/from16 v17, v3

    move-object/from16 v18, v14

    move-object/from16 v20, v25

    invoke-direct/range {v16 .. v21}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v15, v16

    move-object/from16 v100, v18

    move-object/from16 v14, v19

    move-object/from16 v6, v20

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_23
    check-cast v15, Li9/e;

    invoke-static {v15, v2, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->o(Lr0/u0;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v101, v13

    const/16 v13, 0x9

    if-nez v16, :cond_4d

    if-ne v6, v8, :cond_4c

    goto :goto_24

    :cond_4c
    move-object/from16 v102, v2

    goto :goto_25

    :cond_4d
    :goto_24
    new-instance v6, Lad/t0;

    move-object/from16 v102, v2

    const/4 v2, 0x0

    invoke-direct {v6, v11, v14, v2, v13}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_25
    check-cast v6, Li9/e;

    invoke-static {v6, v15, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    const/16 v15, 0x1a

    if-nez v2, :cond_4f

    if-ne v6, v8, :cond_4e

    goto :goto_26

    :cond_4e
    const/4 v2, 0x0

    goto :goto_27

    :cond_4f
    :goto_26
    new-instance v6, Landroidx/lifecycle/i0;

    const/4 v2, 0x0

    invoke-direct {v6, v11, v3, v2, v15}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_27
    check-cast v6, Li9/e;

    invoke-static {v6, v11, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-virtual {v4, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v6, :cond_51

    if-ne v2, v8, :cond_50

    goto :goto_28

    :cond_50
    move-object/from16 v24, v1

    move-object v1, v9

    move-object/from16 v103, v26

    move-object/from16 v9, v35

    move-object/from16 v6, v37

    goto :goto_29

    :cond_51
    :goto_28
    new-instance v16, Lod/h7;

    move-object/from16 v17, v3

    move-object/from16 v21, v23

    move-object/from16 v22, v24

    move-object/from16 v18, v26

    move-object/from16 v19, v35

    move-object/from16 v20, v37

    move-object/from16 v23, v1

    move-object/from16 v24, v9

    invoke-direct/range {v16 .. v24}, Lod/h7;-><init>(Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object/from16 v2, v16

    move-object/from16 v103, v18

    move-object/from16 v9, v19

    move-object/from16 v6, v20

    move-object/from16 v1, v24

    move-object/from16 v24, v23

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_29
    check-cast v2, Li9/a;

    const/4 v13, 0x0

    invoke-static {v13, v2, v4, v13}, Lwa/h;->a(ZLi9/a;Lr0/q;I)V

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v2, v13

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    const/16 v15, 0x17

    if-nez v2, :cond_52

    if-ne v13, v8, :cond_53

    :cond_52
    new-instance v13, Lb0/r0;

    invoke-direct {v13, v15, v5, v12}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_53
    check-cast v13, Li9/c;

    invoke-static {v5, v13, v4}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-static/range {v31 .. v31}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v2

    move-object/from16 v5, v43

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v15, v41

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move-object/from16 v18, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v13, :cond_55

    if-ne v5, v8, :cond_54

    goto :goto_2a

    :cond_54
    move-object/from16 v13, v18

    move-object/from16 v17, v29

    move-object/from16 v19, v31

    goto :goto_2b

    :cond_55
    :goto_2a
    new-instance v16, Lb0/z0;

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v17, v18

    move-object/from16 v20, v29

    move-object/from16 v19, v31

    move-object/from16 v18, v15

    invoke-direct/range {v16 .. v22}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v5, v16

    move-object/from16 v13, v17

    move-object/from16 v17, v20

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2b
    check-cast v5, Li9/e;

    invoke-static {v13, v2, v5, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v19 .. v19}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v2

    invoke-interface/range {v28 .. v28}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v13

    move/from16 v16, v13

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v16, :cond_57

    if-ne v13, v8, :cond_56

    goto :goto_2c

    :cond_56
    move-object/from16 v152, v15

    move-object v15, v13

    move-object/from16 v13, v152

    goto :goto_2d

    :cond_57
    :goto_2c
    new-instance v16, Landroidx/lifecycle/j0;

    const/16 v21, 0xb

    move-object/from16 v18, v19

    const/16 v20, 0x0

    move-object/from16 v19, v17

    move-object/from16 v17, v15

    invoke-direct/range {v16 .. v21}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v15, v16

    move-object/from16 v13, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v18

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2d
    check-cast v15, Li9/e;

    invoke-static {v2, v5, v15, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-interface/range {v30 .. v30}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v5

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    move-object/from16 v41, v13

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v15, :cond_59

    if-ne v13, v8, :cond_58

    goto :goto_2e

    :cond_58
    move-object/from16 v15, v41

    goto :goto_2f

    :cond_59
    :goto_2e
    new-instance v16, Lf2/z2;

    const/16 v21, 0x0

    const/16 v22, 0x4

    move-object/from16 v20, v17

    move-object/from16 v18, v30

    move-object/from16 v17, v41

    invoke-direct/range {v16 .. v22}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v13, v16

    move-object/from16 v15, v17

    move-object/from16 v17, v20

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2f
    check-cast v13, Li9/e;

    invoke-static {v2, v5, v13, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v42 .. v42}, Lod/g3;->E(Lr0/u0;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    invoke-virtual {v5}, Lsc/q0;->e()Lsc/d;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v104, v14

    move-object/from16 v14, v40

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v16, :cond_5b

    if-ne v14, v8, :cond_5a

    goto :goto_30

    :cond_5a
    move-object/from16 v105, v15

    move-object/from16 v15, v19

    goto :goto_31

    :cond_5b
    :goto_30
    new-instance v16, Lod/y1;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v19

    move-object/from16 v20, v40

    move-object/from16 v19, v42

    invoke-direct/range {v16 .. v22}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v105, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v18

    invoke-virtual {v4, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_31
    check-cast v14, Li9/e;

    invoke-static {v2, v5, v13, v14, v4}, Lr0/r;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v2

    invoke-virtual {v2}, Lsc/q0;->e()Lsc/d;

    move-result-object v2

    move-object/from16 v14, v40

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_5d

    if-ne v13, v8, :cond_5c

    goto :goto_32

    :cond_5c
    move-object/from16 v37, v1

    move-object/from16 v5, v64

    goto :goto_33

    :cond_5d
    :goto_32
    new-instance v13, Lod/z1;

    move-object/from16 v37, v1

    move-object/from16 v5, v64

    const/4 v1, 0x0

    invoke-direct {v13, v14, v5, v15, v1}, Lod/z1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_33
    check-cast v13, Li9/e;

    invoke-static {v13, v2, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v7}, Lod/g3;->j(Lr0/u0;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v64, v5

    move-object/from16 v5, v16

    check-cast v5, Luc/c;

    move-object/from16 v19, v15

    const-string v15, "cameras_signals"

    invoke-virtual {v5, v15}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v1, v2, v13, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_5f

    if-ne v5, v8, :cond_5e

    goto :goto_34

    :cond_5e
    move-object v2, v10

    move-object/from16 v7, v27

    goto :goto_35

    :cond_5f
    :goto_34
    new-instance v16, Lod/a2;

    const/16 v23, 0x0

    move-object/from16 v21, v3

    move-object/from16 v20, v7

    move-object/from16 v18, v17

    move-object/from16 v17, v19

    move-object/from16 v22, v27

    move-object/from16 v19, v10

    invoke-direct/range {v16 .. v23}, Lod/a2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Landroid/content/Context;Lr0/u0;Ly8/c;)V

    move-object/from16 v5, v16

    move-object/from16 v2, v19

    move-object/from16 v7, v22

    move-object/from16 v19, v17

    move-object/from16 v17, v18

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_35
    check-cast v5, Li9/e;

    invoke-static {v1, v5, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v32 .. v32}, Lod/g3;->H(Lr0/u0;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/Tuning;

    invoke-virtual {v10}, Lua/nav/Tuning;->e()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v13, v32

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    or-int v16, v16, v18

    move-object/from16 v20, v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_61

    if-ne v0, v8, :cond_60

    goto :goto_36

    :cond_60
    move-object/from16 v45, v20

    const/16 v13, 0x13

    goto :goto_37

    :cond_61
    :goto_36
    new-instance v16, Lf2/z2;

    const/16 v21, 0x0

    const/16 v22, 0x5

    move-object/from16 v18, v19

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v22}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v0, v16

    move-object/from16 v19, v18

    move-object/from16 v45, v20

    const/16 v13, 0x13

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_37
    check-cast v0, Li9/e;

    invoke-static {v1, v5, v10, v0, v4}, Lr0/r;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget-object v0, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v1

    iget-object v1, v1, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    iget-object v5, v5, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    invoke-virtual {v10}, Lsc/q0;->b()Lsc/d;

    move-result-object v109

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    invoke-virtual {v10}, Lsc/q0;->e()Lsc/d;

    move-result-object v110

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    invoke-virtual {v10}, Lsc/q0;->f()Ljava/lang/String;

    move-result-object v111

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    invoke-virtual {v10}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v112

    invoke-interface/range {v103 .. v103}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v113, v10

    check-cast v113, Ljava/lang/Boolean;

    invoke-virtual/range {v113 .. v113}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v48 .. v48}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v114, v10

    check-cast v114, Ljava/lang/Boolean;

    invoke-virtual/range {v114 .. v114}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v106, v0

    move-object/from16 v107, v1

    move-object/from16 v108, v5

    filled-new-array/range {v106 .. v114}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_62

    new-instance v1, Lod/b2;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v10, v9, v6, v5}, Lod/b2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_38

    :cond_62
    const/4 v5, 0x0

    :goto_38
    check-cast v1, Li9/e;

    invoke-static {v0, v1, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v99 .. v99}, Lod/g3;->m(Lr0/u0;)Lua/nav/routing/Favorites;

    move-result-object v0

    invoke-interface/range {v95 .. v95}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static/range {v24 .. v24}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->b()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v0, v1, v10, v5}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v99

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v10, v95

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    move-object/from16 v13, v24

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_64

    if-ne v1, v8, :cond_63

    goto :goto_39

    :cond_63
    move-object/from16 v106, v10

    goto :goto_3a

    :cond_64
    :goto_39
    new-instance v25, Lod/c2;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v29, v10

    move-object/from16 v30, v13

    move-object/from16 v26, v17

    move-object/from16 v27, v19

    move-object/from16 v28, v99

    invoke-direct/range {v25 .. v32}, Lod/c2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v1, v25

    move-object/from16 v106, v29

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_3a
    check-cast v1, Li9/e;

    invoke-static {v0, v1, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget-object v0, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v1

    iget-object v1, v1, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    iget-object v5, v5, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    invoke-virtual {v10}, Lsc/q0;->e()Lsc/d;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v10

    invoke-virtual {v10}, Lad/a0;->b()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    filled-new-array/range {v20 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_65

    if-ne v5, v8, :cond_66

    :cond_65
    new-instance v16, Lod/y1;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v20, v13

    move-object/from16 v18, v19

    move-object/from16 v19, v14

    invoke-direct/range {v16 .. v22}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v5, v16

    move-object/from16 v19, v18

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_66
    check-cast v5, Li9/e;

    invoke-static {v0, v5, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v20

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget v0, v0, Lsc/q0;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->g()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v94 .. v94}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    iget-object v0, v0, Lad/a0;->b:Lua/nav/routing/Route;

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    invoke-virtual {v1}, Lad/a0;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-static {}, Lcd/a;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    move-object/from16 v25, v0

    filled-new-array/range {v20 .. v27}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v5, v94

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_68

    if-ne v10, v8, :cond_67

    goto :goto_3b

    :cond_67
    move-object/from16 v94, v5

    goto :goto_3c

    :cond_68
    :goto_3b
    new-instance v25, Lod/c2;

    const/16 v31, 0x0

    const/16 v32, 0x1

    move-object/from16 v28, v5

    move-object/from16 v27, v13

    move-object/from16 v29, v14

    move-object/from16 v26, v17

    move-object/from16 v30, v19

    invoke-direct/range {v25 .. v32}, Lod/c2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v10, v25

    move-object/from16 v94, v28

    invoke-virtual {v4, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_3c
    check-cast v10, Li9/e;

    invoke-static {v0, v10, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    iget-object v0, v0, Lad/a0;->b:Lua/nav/routing/Route;

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    invoke-virtual {v1}, Lad/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    invoke-virtual {v1}, Lad/a0;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_3d

    :cond_69
    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_6a

    if-ne v5, v8, :cond_6c

    :cond_6a
    if-eqz v0, :cond_6b

    new-instance v1, Lod/c0;

    invoke-direct {v1, v0}, Lod/c0;-><init>(Lua/nav/routing/Route;)V

    goto :goto_3e

    :cond_6b
    const/4 v1, 0x0

    :goto_3e
    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v1

    :cond_6c
    check-cast v5, Lod/c0;

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_6e

    if-ne v10, v8, :cond_6d

    goto :goto_3f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_40

    :cond_6e
    :goto_3f
    new-instance v16, Landroidx/lifecycle/m0;

    const/16 v21, 0x9

    move-object/from16 v18, v17

    const/16 v20, 0x0

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v21}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v10, v16

    move-object/from16 v17, v18

    move-object/from16 v1, v20

    invoke-virtual {v4, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_40
    check-cast v10, Li9/e;

    invoke-static {v5, v0, v10, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->h()D

    move-result-wide v20

    const-wide/high16 v22, 0x402e000000000000L    # 15.0

    move-object v0, v2

    div-double v1, v20, v22

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    filled-new-array {v5, v1, v2, v10}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v2, v10

    move/from16 v10, v38

    invoke-virtual {v4, v10}, Lr0/q;->h(Z)Z

    move-result v16

    or-int v2, v2, v16

    move-object/from16 v29, v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v2, :cond_70

    if-ne v0, v8, :cond_6f

    goto :goto_41

    :cond_6f
    move/from16 v107, v10

    move-object/from16 v26, v17

    goto :goto_42

    :cond_70
    :goto_41
    new-instance v16, Lod/d2;

    const/16 v22, 0x0

    move/from16 v21, v10

    move-object/from16 v20, v13

    move-object/from16 v18, v17

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v22}, Lod/d2;-><init>(Lod/c0;Lr0/u0;Lr0/u0;Lr0/u0;ZLy8/c;)V

    move-object/from16 v0, v16

    move-object/from16 v26, v18

    move/from16 v107, v21

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_42
    check-cast v0, Li9/e;

    invoke-static {v1, v0, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/16 v47, 0x1

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v2, v93

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_72

    if-ne v5, v8, :cond_71

    goto :goto_43

    :cond_71
    move-object v1, v12

    move-object/from16 v21, v96

    goto :goto_44

    :cond_72
    :goto_43
    new-instance v16, Lod/e2;

    const/16 v23, 0x0

    move/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v21, v19

    move-object/from16 v22, v82

    move-object/from16 v20, v96

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v23}, Lod/e2;-><init>(ZLorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v5, v16

    move-object/from16 v1, v18

    move-object/from16 v19, v21

    move-object/from16 v21, v20

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_44
    check-cast v5, Li9/e;

    invoke-static {v5, v0, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_73

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_73
    check-cast v0, Lr0/u0;

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    invoke-virtual {v5}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v5

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v10

    iget v10, v10, Lsc/q0;->l:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {v26 .. v26}, Lod/g3;->k(Lr0/u0;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->b()Z

    move-result v16

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v5, v10, v12, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_75

    if-ne v10, v8, :cond_74

    goto :goto_45

    :cond_74
    move-object/from16 v17, v26

    goto :goto_46

    :cond_75
    :goto_45
    new-instance v16, Lod/f2;

    const/16 v28, 0x0

    move/from16 v18, v2

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v25, v19

    move-object/from16 v24, v21

    move-object/from16 v19, v26

    move-object/from16 v26, v83

    move-object/from16 v27, v84

    move-object/from16 v23, v85

    move-object/from16 v21, v17

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v28}, Lod/f2;-><init>(Lorg/maplibre/android/maps/MapView;ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v10, v16

    move-object/from16 v17, v19

    move-object/from16 v21, v24

    move-object/from16 v19, v25

    invoke-virtual {v4, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_46
    check-cast v10, Li9/e;

    invoke-static {v0, v10, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_76

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_76
    move-object/from16 v18, v0

    check-cast v18, Lr0/u0;

    invoke-static/range {v19 .. v19}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {v37 .. v37}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v10

    iget-object v10, v10, Ldd/n;->c:Ldd/l0;

    invoke-static/range {v37 .. v37}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v12

    iget-object v12, v12, Ldd/n;->d:Ldd/l0;

    invoke-static/range {v37 .. v37}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v16

    move-object/from16 v85, v6

    invoke-virtual/range {v16 .. v16}, Ldd/n;->b()Ldd/l0;

    move-result-object v6

    filled-new-array {v0, v5, v10, v12, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_78

    if-ne v6, v8, :cond_77

    goto :goto_47

    :cond_77
    move-object/from16 v31, v21

    goto :goto_48

    :cond_78
    :goto_47
    new-instance v16, Lod/a2;

    const/16 v23, 0x0

    move-object/from16 v22, v13

    move-object/from16 v20, v17

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v23}, Lod/a2;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v6, v16

    move-object/from16 v17, v20

    move-object/from16 v31, v21

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_48
    check-cast v6, Li9/e;

    invoke-static {v0, v6, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-virtual {v11}, Lua/nav/c;->o()Lbd/l;

    move-result-object v0

    invoke-virtual {v0}, Lbd/l;->a()Lx9/l0;

    move-result-object v0

    invoke-static {v0, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v0

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    invoke-virtual {v5}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v20

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v5

    iget v5, v5, Lsc/q0;->l:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v5

    iget-object v5, v5, Lad/a0;->b:Lua/nav/routing/Route;

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v6

    invoke-virtual {v6}, Lad/a0;->b()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v29 .. v29}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luc/c;

    invoke-virtual {v6, v15}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v22, v5

    filled-new-array/range {v20 .. v26}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v6, v10

    move-object/from16 v10, v29

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v6, v12

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v6, :cond_79

    if-ne v12, v8, :cond_7a

    :cond_79
    new-instance v16, Lf2/b3;

    const/16 v23, 0x0

    move-object/from16 v21, v10

    move-object/from16 v20, v14

    move-object/from16 v18, v17

    move-object/from16 v22, v19

    move-object/from16 v17, v11

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v23}, Lf2/b3;-><init>(Lua/nav/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v12, v16

    move-object/from16 v17, v18

    move-object/from16 v19, v22

    invoke-virtual {v4, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7a
    check-cast v12, Li9/e;

    invoke-static {v5, v12, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v34 .. v34}, Lod/g3;->C(Lr0/u0;)Lod/e7;

    move-result-object v5

    invoke-static/range {v17 .. v17}, Lod/g3;->k(Lr0/u0;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luc/c;

    invoke-virtual {v12, v15}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    filled-new-array {v5, v6, v0, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7c

    if-ne v6, v8, :cond_7b

    goto :goto_49

    :cond_7b
    move-object/from16 v26, v17

    move-object/from16 v10, v34

    goto :goto_4a

    :cond_7c
    :goto_49
    new-instance v16, Lf2/z2;

    const/16 v22, 0x0

    const/16 v23, 0x6

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    move-object/from16 v18, v19

    move-object/from16 v19, v34

    invoke-direct/range {v16 .. v23}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v6, v16

    move-object/from16 v26, v17

    move-object/from16 v10, v19

    move-object/from16 v19, v18

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_4a
    check-cast v6, Li9/e;

    invoke-static {v0, v6, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v37 .. v37}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v0

    iget-object v0, v0, Ldd/n;->c:Ldd/l0;

    invoke-static/range {v37 .. v37}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v5

    iget-object v5, v5, Ldd/n;->d:Ldd/l0;

    invoke-static/range {v31 .. v31}, Lod/g3;->z(Lr0/u0;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {v36 .. v36}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ldd/g;

    if-eqz v12, :cond_7d

    invoke-virtual {v12}, Ldd/g;->a()Ldd/c;

    move-result-object v12

    goto :goto_4b

    :cond_7d
    const/4 v12, 0x0

    :goto_4b
    filled-new-array {v0, v5, v6, v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    move/from16 v6, v91

    invoke-virtual {v4, v6}, Lr0/q;->h(Z)Z

    move-result v12

    or-int/2addr v5, v12

    move-object/from16 v12, v37

    invoke-virtual {v4, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v5, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v5, :cond_7f

    if-ne v15, v8, :cond_7e

    goto :goto_4c

    :cond_7e
    move/from16 v91, v6

    move-object v5, v12

    move-object/from16 v12, v31

    goto :goto_4d

    :cond_7f
    :goto_4c
    new-instance v16, Lod/d2;

    const/16 v22, 0x0

    move/from16 v17, v6

    move-object/from16 v20, v12

    move-object/from16 v21, v19

    move-object/from16 v18, v31

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v22}, Lod/d2;-><init>(ZLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v15, v16

    move/from16 v91, v17

    move-object/from16 v12, v18

    move-object/from16 v5, v20

    move-object/from16 v19, v21

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_4d
    check-cast v15, Li9/e;

    invoke-static {v0, v15, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v33 .. v33}, Lod/g3;->B(Lr0/u0;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v6, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v6, :cond_81

    if-ne v15, v8, :cond_80

    goto :goto_4e

    :cond_80
    move-object/from16 v93, v33

    goto :goto_4f

    :cond_81
    :goto_4e
    new-instance v16, Lod/g2;

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v19

    move-object/from16 v18, v33

    move-object/from16 v19, v13

    invoke-direct/range {v16 .. v22}, Lod/g2;-><init>(Landroid/content/Context;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v15, v16

    move-object/from16 v93, v18

    move-object/from16 v19, v21

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_4f
    check-cast v15, Li9/e;

    invoke-static {v15, v0, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface/range {v36 .. v36}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/g;

    invoke-static {v5}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v6

    iget-object v6, v6, Ldd/n;->c:Ldd/l0;

    invoke-static {v5}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v15

    iget-object v15, v15, Ldd/n;->d:Ldd/l0;

    invoke-static/range {v26 .. v26}, Lod/g3;->k(Lr0/u0;)Z

    move-result v16

    move-object/from16 v96, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v0, v6, v15, v7}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v6, v36

    invoke-virtual {v4, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v7, v15

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v7, :cond_83

    if-ne v15, v8, :cond_82

    goto :goto_50

    :cond_82
    move-object/from16 v108, v5

    move-object/from16 v5, v19

    goto :goto_51

    :cond_83
    :goto_50
    new-instance v16, Lod/y1;

    const/16 v21, 0x0

    const/16 v22, 0x2

    move-object/from16 v20, v5

    move-object/from16 v18, v19

    move-object/from16 v17, v26

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v22}, Lod/y1;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;I)V

    move-object/from16 v15, v16

    move-object/from16 v5, v18

    move-object/from16 v108, v20

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_51
    check-cast v15, Li9/e;

    invoke-static {v0, v15, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lsc/q0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    const/16 v15, 0x8

    if-nez v6, :cond_85

    if-ne v7, v8, :cond_84

    goto :goto_52

    :cond_84
    const/4 v6, 0x0

    goto :goto_53

    :cond_85
    :goto_52
    new-instance v7, Lad/t0;

    const/4 v6, 0x0

    invoke-direct {v7, v14, v3, v6, v15}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_53
    check-cast v7, Li9/e;

    invoke-static {v7, v0, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    invoke-virtual {v0}, Lsc/q0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v7, v7, v16

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v7, v7, v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v7, :cond_87

    if-ne v6, v8, :cond_86

    goto :goto_54

    :cond_86
    move-object/from16 v109, v14

    const/4 v7, 0x0

    move-object v14, v3

    goto :goto_55

    :cond_87
    :goto_54
    new-instance v16, Lb0/x1;

    const/16 v21, 0x3

    move-object/from16 v18, v3

    move-object/from16 v19, v11

    move-object/from16 v17, v14

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v21}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v6, v16

    move-object/from16 v109, v17

    move-object/from16 v14, v18

    move-object/from16 v7, v20

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_55
    check-cast v6, Li9/e;

    invoke-static {v6, v0, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_88

    if-ne v6, v8, :cond_89

    :cond_88
    new-instance v6, Lod/h2;

    invoke-direct {v6, v13, v12, v5, v7}, Lod/h2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_89
    check-cast v6, Li9/e;

    invoke-static {v6, v0, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_8a

    invoke-static {v7}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8a
    move-object v6, v0

    check-cast v6, Lr0/u0;

    invoke-static {v5}, Lod/g3;->G(Lr0/u0;)Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v3

    invoke-virtual {v3}, Lad/a0;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v16, :cond_8b

    if-ne v15, v8, :cond_8c

    :cond_8b
    new-instance v15, Lod/i2;

    invoke-direct {v15, v13, v6, v5, v7}, Lod/i2;-><init>(Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8c
    check-cast v15, Li9/e;

    invoke-static {v0, v3, v15, v4}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    iget-object v0, v0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    goto :goto_56

    :cond_8d
    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v0

    iget-object v0, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    :goto_56
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v3

    invoke-virtual {v3}, Lad/a0;->b()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v3

    invoke-virtual {v3}, Lad/a0;->d()F

    move-result v3

    :goto_57
    move-object v15, v8

    goto :goto_58

    :cond_8e
    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v3

    invoke-virtual {v3}, Lad/s;->e()Z

    move-result v3

    if-eqz v3, :cond_8f

    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v3

    invoke-virtual {v3}, Lad/s;->c()F

    move-result v3

    goto :goto_57

    :cond_8f
    invoke-interface/range {v96 .. v96}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    move-object v15, v8

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    double-to-float v3, v7

    :goto_58
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    invoke-virtual {v7}, Lad/a0;->b()Z

    move-result v7

    if-eqz v7, :cond_90

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    iget-boolean v7, v7, Lad/a0;->x:Z

    goto :goto_59

    :cond_90
    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v7

    invoke-virtual {v7}, Lad/s;->g()Z

    move-result v7

    :goto_59
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    invoke-virtual {v8}, Lad/a0;->b()Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    move-object/from16 v19, v5

    move-object/from16 v125, v6

    iget-wide v5, v8, Lad/a0;->w:D

    goto :goto_5a

    :cond_91
    move-object/from16 v19, v5

    move-object/from16 v125, v6

    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v5

    invoke-virtual {v5}, Lad/s;->h()D

    move-result-wide v5

    :goto_5a
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    invoke-virtual {v8}, Lad/a0;->b()Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    invoke-virtual {v8}, Lad/a0;->c()Lua/nav/routing/GeoPoint;

    move-result-object v8

    :goto_5b
    move-object/from16 v24, v8

    goto :goto_5c

    :cond_92
    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v8

    invoke-virtual {v8}, Lad/s;->b()Lua/nav/routing/GeoPoint;

    move-result-object v8

    goto :goto_5b

    :goto_5c
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    invoke-virtual {v8}, Lad/a0;->b()Z

    move-result v8

    if-eqz v8, :cond_93

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v8

    iget v8, v8, Lad/a0;->l:F

    move-object/from16 v126, v9

    float-to-double v8, v8

    const-wide v16, 0x400ccccccccccccdL    # 3.6

    div-double v8, v8, v16

    goto :goto_5d

    :cond_93
    move-object/from16 v126, v9

    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v8

    invoke-virtual {v8}, Lad/s;->f()D

    move-result-wide v8

    :goto_5d
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->b()Z

    move-result v16

    if-eqz v16, :cond_94

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->f()Lua/nav/routing/Step;

    move-result-object v16

    if-eqz v16, :cond_94

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->e()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v127, v10

    move-object/from16 v10, v16

    goto :goto_5e

    :cond_94
    move-object/from16 v127, v10

    const/4 v10, 0x0

    :goto_5e
    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v16

    move-object/from16 v128, v12

    invoke-virtual/range {v16 .. v16}, Lua/nav/a;->d()Lx9/l0;

    move-result-object v12

    invoke-static {v12, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v12

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v16

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v16}, Lua/nav/a;->a()Lx9/l0;

    move-result-object v15

    invoke-static {v15, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v15

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v16

    move-object/from16 v129, v14

    invoke-virtual/range {v16 .. v16}, Lua/nav/a;->b()Lx9/l0;

    move-result-object v14

    invoke-static {v14, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v14

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v16

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v16}, Lua/nav/a;->c()Lx9/l0;

    move-result-object v14

    invoke-static {v14, v4}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v14

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lad/a0;->b()Z

    move-result v16

    if-eqz v16, :cond_95

    move-object/from16 v16, v14

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v14

    iget-object v14, v14, Lad/a0;->b:Lua/nav/routing/Route;

    move-object/from16 v23, v13

    goto :goto_5f

    :cond_95
    move-object/from16 v16, v14

    invoke-static/range {v109 .. v109}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v14

    move-object/from16 v23, v13

    iget-object v13, v14, Lsc/q0;->k:Ljava/util/List;

    iget v14, v14, Lsc/q0;->l:I

    invoke-static {v14, v13}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lua/nav/routing/Route;

    :goto_5f
    invoke-static {v14, v4}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v13

    move-object/from16 v28, v1

    invoke-static {v0, v4}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v1

    move-object/from16 v111, v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    move/from16 v27, v2

    move-object/from16 v2, v17

    if-ne v0, v2, :cond_96

    new-instance v0, Lf2/s0;

    invoke-direct {v0}, Lf2/s0;-><init>()V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_96
    check-cast v0, Li9/e;

    move-object/from16 v17, v11

    move-object/from16 v11, v102

    invoke-static {v0, v11, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v14, :cond_97

    iget-object v0, v14, Lua/nav/routing/Route;->e:Ljava/util/List;

    if-eqz v0, :cond_97

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_60

    :cond_97
    const/4 v0, 0x0

    :goto_60
    if-eqz v14, :cond_98

    iget-object v11, v14, Lua/nav/routing/Route;->e:Ljava/util/List;

    if-eqz v11, :cond_98

    invoke-static {v11}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    goto :goto_61

    :cond_98
    const/4 v11, 0x0

    :goto_61
    if-eqz v14, :cond_99

    iget-object v14, v14, Lua/nav/routing/Route;->e:Ljava/util/List;

    if-eqz v14, :cond_99

    invoke-static {v14}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lua/nav/routing/GeoPoint;

    goto :goto_62

    :cond_99
    const/4 v14, 0x0

    :goto_62
    invoke-interface {v12}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-wide/from16 v37, v5

    move-object/from16 v5, v20

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v0, v11, v14, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9a

    if-ne v6, v2, :cond_9b

    :cond_9a
    new-instance v6, Lod/j2;

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, v5, v12, v13, v11}, Lod/j2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9b
    check-cast v6, Li9/e;

    invoke-static {v0, v6, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-interface {v15}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v18 .. v18}, Lod/g3;->q(Lr0/u0;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lod/g3;->r(Lr0/u0;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_9d

    if-ne v12, v2, :cond_9c

    goto :goto_63

    :cond_9c
    const/4 v14, 0x1

    goto :goto_64

    :cond_9d
    :goto_63
    new-instance v12, Lod/j2;

    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-direct {v12, v14, v15, v1, v11}, Lod/j2;-><init>(ILr0/u0;Lr0/u0;Ly8/c;)V

    invoke-virtual {v4, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_64
    check-cast v12, Li9/e;

    invoke-static {v0, v5, v6, v12, v4}, Lr0/r;->h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-nez v0, :cond_9f

    if-eqz v75, :cond_9e

    goto :goto_65

    :cond_9e
    const/4 v0, 0x0

    goto :goto_66

    :cond_9f
    :goto_65
    move v0, v14

    :goto_66
    invoke-static/range {v128 .. v128}, Lod/g3;->z(Lr0/u0;)Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    invoke-virtual {v1}, Lad/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    invoke-virtual {v1}, Lad/a0;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    :cond_a0
    if-eqz v91, :cond_a2

    :cond_a1
    move v1, v14

    goto :goto_67

    :cond_a2
    const/4 v1, 0x0

    :goto_67
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v112

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v113

    invoke-static/range {v26 .. v26}, Lod/g3;->k(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v114

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v115

    const/16 v11, 0xa

    int-to-double v5, v11

    div-double v5, v37, v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v116

    invoke-static/range {v128 .. v128}, Lod/g3;->z(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v118

    invoke-static/range {v39 .. v39}, Lod/g3;->D(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v119

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v120

    invoke-static/range {v80 .. v80}, Lod/g3;->M(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v121

    invoke-interface/range {v86 .. v86}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v122

    invoke-static/range {v42 .. v42}, Lod/g3;->E(Lr0/u0;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v123

    move-object/from16 v117, v24

    filled-new-array/range {v111 .. v123}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, v111

    move-object/from16 v12, v117

    invoke-virtual {v4, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v4, v0}, Lr0/q;->h(Z)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-virtual {v4, v3}, Lr0/q;->d(F)Z

    move-result v15

    or-int/2addr v13, v15

    move-object/from16 v15, v90

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4, v8, v9}, Lr0/q;->c(D)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4, v7}, Lr0/q;->h(Z)Z

    move-result v16

    or-int v13, v13, v16

    move-wide/from16 v11, v37

    invoke-virtual {v4, v11, v12}, Lr0/q;->c(D)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4, v1}, Lr0/q;->h(Z)Z

    move-result v16

    or-int v13, v13, v16

    move-object/from16 v14, v17

    invoke-virtual {v4, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move/from16 v25, v1

    move-object/from16 v1, v39

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move/from16 v18, v0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lr0/q;->h(Z)Z

    move-result v16

    or-int v13, v13, v16

    move-object/from16 v1, v28

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move/from16 v17, v0

    move-object/from16 v0, v88

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v13, :cond_a4

    if-ne v0, v2, :cond_a3

    goto :goto_68

    :cond_a3
    move-object v7, v1

    move-object v11, v14

    move/from16 v34, v17

    move-object/from16 v33, v23

    move/from16 v14, v25

    goto :goto_69

    :cond_a4
    :goto_68
    new-instance v16, Lod/k2;

    const/16 v43, 0x0

    move-object/from16 v32, p0

    move-object/from16 v28, v1

    move/from16 v36, v7

    move-wide/from16 v21, v8

    move-wide/from16 v37, v11

    move-object/from16 v20, v15

    move/from16 v27, v17

    move-object/from16 v30, v19

    move-object/from16 v41, v23

    move-object/from16 v31, v26

    move-object/from16 v34, v80

    move-object/from16 v40, v82

    move-object/from16 v35, v86

    move-object/from16 v29, v88

    move-object/from16 v33, v89

    move-object/from16 v24, v117

    move/from16 v19, v3

    move-object/from16 v17, v6

    move-object/from16 v23, v10

    move-object/from16 v26, v14

    invoke-direct/range {v16 .. v43}, Lod/k2;-><init>(Lua/nav/routing/GeoPoint;ZF[DDLjava/lang/Double;Lua/nav/routing/GeoPoint;ZLua/nav/c;ZLorg/maplibre/android/maps/MapView;Lb3/c;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;ZDLr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    move-object/from16 v0, v16

    move/from16 v14, v25

    move-object/from16 v11, v26

    move-object/from16 v7, v28

    move-object/from16 v19, v30

    move-object/from16 v33, v41

    move/from16 v34, v27

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_69
    check-cast v0, Li9/e;

    invoke-static {v5, v0, v4}, Lr0/r;->i([Ljava/lang/Object;Li9/e;Lr0/q;)V

    invoke-static/range {v63 .. v63}, Lod/g3;->x(Lr0/u0;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a5

    const v0, -0x931cfea

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    move-object v9, v2

    move-object/from16 v8, v63

    goto/16 :goto_6e

    :cond_a5
    const v1, -0x931cfe9

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-static/range {v109 .. v109}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v1

    const-string v3, "trip"

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    const-string v1, ""

    goto :goto_6a

    :cond_a6
    iget-object v5, v1, Lsc/q0;->b:Ljava/lang/String;

    iget-object v1, v1, Lsc/q0;->d:Ljava/lang/String;

    const-string v6, " \u2192 "

    invoke-static {v5, v6, v1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6a
    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-static {}, Lcd/d;->c()Lcd/c;

    move-result-object v3

    const/4 v13, 0x0

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6b

    :cond_a7
    const/4 v13, 0x0

    invoke-static {}, Lcd/d;->b()Lcd/c;

    move-result-object v3

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_6b
    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_a9

    if-ne v6, v2, :cond_a8

    goto :goto_6c

    :cond_a8
    move-object/from16 v8, v63

    goto :goto_6d

    :cond_a9
    :goto_6c
    new-instance v6, Lb0/o;

    move-object/from16 v8, v63

    const/16 v5, 0xe

    invoke-direct {v6, v0, v11, v8, v5}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;I)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_6d
    check-cast v6, Li9/c;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_aa

    new-instance v0, Lb0/u;

    const/16 v5, 0x14

    invoke-direct {v0, v8, v5}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_aa
    check-cast v0, Li9/a;

    const/16 v5, 0xc00

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    move-object v9, v2

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Lod/g3;->O(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;Lr0/q;I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_6e
    invoke-static/range {v62 .. v62}, Lod/g3;->y(Lr0/u0;)Lsc/d;

    move-result-object v0

    const/4 v10, 0x5

    const/16 v12, 0xd

    if-nez v0, :cond_ab

    const v0, -0x92aeabb

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    move-object/from16 v29, v62

    move-object/from16 v20, v85

    move-object/from16 v13, v129

    const/16 v95, 0x13

    goto/16 :goto_71

    :cond_ab
    const v1, -0x92aeaba

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-static/range {v109 .. v109}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v1

    sget-object v2, Lsc/d;->l:Lsc/d;

    if-ne v0, v2, :cond_ac

    iget-object v1, v1, Lsc/q0;->b:Ljava/lang/String;

    goto :goto_6f

    :cond_ac
    iget-object v1, v1, Lsc/q0;->d:Ljava/lang/String;

    :goto_6f
    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v4, v3}, Lr0/q;->e(I)Z

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v13, v129

    invoke-virtual {v4, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_ad

    if-ne v3, v9, :cond_ae

    :cond_ad
    new-instance v3, Lb0/o;

    invoke-direct {v3, v11, v0, v13, v12}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_ae
    move-object v2, v3

    check-cast v2, Li9/c;

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Lr0/q;->e(I)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_af

    if-ne v5, v9, :cond_b0

    :cond_af
    new-instance v5, Lb0/c3;

    invoke-direct {v5, v11, v0, v13, v10}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b0
    move-object v3, v5

    check-cast v3, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_b1

    new-instance v5, Lb0/u;

    move-object/from16 v6, v62

    const/16 v10, 0x13

    invoke-direct {v5, v6, v10}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_70

    :cond_b1
    move-object/from16 v6, v62

    const/16 v10, 0x13

    :goto_70
    check-cast v5, Li9/a;

    move-object/from16 v29, v6

    const/16 v6, 0x6000

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    move/from16 v95, v10

    move-object/from16 v20, v85

    invoke-static/range {v0 .. v6}, Lod/g3;->R(Lsc/d;Ljava/lang/String;Li9/c;Li9/a;Li9/a;Lr0/q;I)V

    move-object v4, v5

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_71
    invoke-static/range {v61 .. v61}, Lod/g3;->w(Lr0/u0;)Lua/nav/routing/SavedAddress;

    move-result-object v0

    const/16 v6, 0xf

    if-nez v0, :cond_b2

    const v0, -0x91fb0b1

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    move-object/from16 v10, v61

    goto :goto_74

    :cond_b2
    const v1, -0x91fb0b0

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-static {}, Lcd/d;->a()Lcd/c;

    move-result-object v1

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lua/nav/routing/SavedAddress;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b3

    invoke-virtual {v0}, Lua/nav/routing/SavedAddress;->b()Ljava/lang/String;

    move-result-object v2

    :cond_b3
    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_b5

    if-ne v5, v9, :cond_b4

    goto :goto_72

    :cond_b4
    move-object/from16 v10, v61

    goto :goto_73

    :cond_b5
    :goto_72
    new-instance v5, Lb0/o;

    move-object/from16 v10, v61

    invoke-direct {v5, v11, v0, v10, v6}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_73
    check-cast v5, Li9/c;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_b6

    new-instance v0, Lb0/u;

    const/16 v3, 0x17

    invoke-direct {v0, v10, v3}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b6
    move-object v3, v0

    check-cast v3, Li9/a;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    const/16 v5, 0xc00

    invoke-static/range {v0 .. v5}, Lod/g3;->O(Ljava/lang/String;Ljava/lang/String;Li9/c;Li9/a;Lr0/q;I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_74
    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v1, v1, Lo0/u0;->n:J

    invoke-static {v1, v2}, Lm1/v;->t(J)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b7

    const/4 v1, 0x1

    goto :goto_75

    :cond_b7
    const/4 v1, 0x0

    :goto_75
    sget-object v2, Lu/k1;->v:Ljava/util/WeakHashMap;

    sget-object v2, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {v4, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lu/n;->f(Landroid/view/View;)Lu/k1;

    move-result-object v3

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v5, v5, v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_b8

    if-ne v6, v9, :cond_b9

    :cond_b8
    new-instance v6, Lp/o0;

    invoke-direct {v6, v12, v3, v2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b9
    check-cast v6, Li9/c;

    invoke-static {v3, v6, v4}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    iget-object v2, v3, Lu/k1;->f:Lu/a;

    move-object/from16 v3, v87

    invoke-virtual {v4, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb3/c;

    invoke-virtual {v2, v3}, Lu/a;->d(Lb3/c;)I

    move-result v43

    invoke-static {}, Lf2/o0;->e()Lr0/s2;

    move-result-object v2

    invoke-virtual {v4, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v1}, Lr0/q;->h(Z)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_bb

    if-ne v5, v9, :cond_ba

    goto :goto_76

    :cond_ba
    const/4 v3, 0x2

    goto :goto_77

    :cond_bb
    :goto_76
    new-instance v5, Lb0/q0;

    const/4 v3, 0x2

    invoke-direct {v5, v2, v1, v3}, Lb0/q0;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_77
    check-cast v5, Li9/a;

    invoke-static {v5, v4}, Lr0/r;->j(Li9/a;Lr0/q;)V

    sget-object v1, Lf1/o;->a:Lf1/o;

    invoke-static {v1}, Lu/b1;->c(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-virtual {v4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/u0;

    iget-wide v5, v5, Lo0/u0;->n:J

    invoke-static {v5, v6, v2}, Lp/o;->f(JLf1/r;)Lf1/r;

    move-result-object v2

    invoke-static {v2}, Lu/b;->u(Lf1/r;)Lf1/r;

    move-result-object v2

    sget-object v5, Lf1/c;->l:Lf1/j;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v3

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v12

    invoke-static {v2, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v16, Le2/h;->b:Le2/g;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v37, v0

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v0

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v16

    if-eqz v16, :cond_bc

    invoke-virtual {v4, v0}, Lr0/q;->l(Li9/a;)V

    goto :goto_78

    :cond_bc
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_78
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v0

    invoke-static {v0, v12, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v3

    invoke-static {v4, v0, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v0

    invoke-static {v4, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v0

    invoke-static {v0, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Lu/n;->b:Lu/n;

    invoke-static {v1}, Lu/b1;->c(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-virtual {v4, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    move-object/from16 v6, v60

    invoke-virtual {v4, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v3, v12

    move-object/from16 v12, v57

    invoke-virtual {v4, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    move-object/from16 v38, v1

    move-object/from16 v1, v56

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    move-object/from16 v1, v97

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    move-object/from16 v1, v105

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    move-object/from16 v41, v1

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v3, :cond_be

    if-ne v1, v9, :cond_bd

    goto :goto_79

    :cond_bd
    move-object/from16 v60, v6

    move-object/from16 v56, v7

    move-object/from16 v32, v11

    move-object/from16 v31, v19

    move-object/from16 v85, v20

    move-object/from16 v27, v58

    move-object/from16 v96, v128

    goto :goto_7a

    :cond_be
    :goto_79
    new-instance v16, Lod/v1;

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v32, v11

    move-object/from16 v17, v12

    move-object/from16 v22, v19

    move-object/from16 v27, v20

    move-object/from16 v19, v41

    move-object/from16 v20, v56

    move-object/from16 v28, v58

    move-object/from16 v30, v64

    move-object/from16 v23, v96

    move-object/from16 v31, v97

    move-object/from16 v26, v126

    move-object/from16 v24, v127

    move-object/from16 v25, v128

    invoke-direct/range {v16 .. v32}, Lod/v1;-><init>(Lf2/k2;Li9/c;Li9/e;Lk1/l;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lua/nav/c;)V

    move-object/from16 v1, v16

    move-object/from16 v60, v18

    move-object/from16 v56, v21

    move-object/from16 v96, v25

    move-object/from16 v85, v27

    move-object/from16 v27, v28

    move-object/from16 v31, v22

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_7a
    check-cast v1, Li9/c;

    const/16 v3, 0x30

    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v4, v3}, Le3/l;->b(Li9/c;Lf1/r;Li9/c;Lr0/q;I)V

    invoke-static/range {v109 .. v109}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v1

    invoke-virtual {v1}, Lsc/q0;->e()Lsc/d;

    move-result-object v1

    if-nez v1, :cond_c0

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v2

    if-eqz v2, :cond_bf

    goto :goto_7b

    :cond_bf
    const v2, 0x37e2e75c

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    move-object/from16 v144, v0

    move-object/from16 v44, v1

    move-object/from16 v143, v5

    move-object/from16 v63, v8

    move-object/from16 v132, v9

    move-object/from16 v61, v10

    move-object/from16 v129, v13

    move/from16 v141, v14

    move-object/from16 v137, v15

    move-object/from16 v142, v37

    move-object/from16 v130, v38

    move-object/from16 v131, v49

    move-object/from16 v136, v51

    move-object/from16 v133, v52

    move-object/from16 v134, v54

    move-object/from16 v135, v55

    move-object/from16 v138, v71

    move-object/from16 v28, v77

    move-object/from16 v139, v83

    move-object/from16 v140, v88

    const/16 v75, 0x1

    goto/16 :goto_81

    :cond_c0
    :goto_7b
    const v2, 0x37dc0a88

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lf1/c;->p:Lf1/j;

    invoke-virtual {v0, v2}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v7

    const/16 v11, 0x1a

    int-to-float v11, v11

    invoke-static {v7, v11}, Lu/b1;->l(Lf1/r;F)Lf1/r;

    move-result-object v7

    invoke-static {}, La0/e;->b()La0/d;

    move-result-object v11

    invoke-static {v7, v11}, Lj1/g;->b(Lf1/r;Lm1/h0;)Lf1/r;

    move-result-object v7

    sget-object v11, Lsc/d;->l:Lsc/d;

    if-eq v1, v11, :cond_c2

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v11

    if-eqz v11, :cond_c1

    goto :goto_7d

    :cond_c1
    const-wide v11, 0xffc62828L

    :goto_7c
    invoke-static {v11, v12}, Lm1/v;->d(J)J

    move-result-wide v11

    goto :goto_7e

    :cond_c2
    :goto_7d
    const-wide v11, 0xff2e7d32L

    goto :goto_7c

    :goto_7e
    invoke-static {v11, v12, v7}, Lp/o;->f(JLf1/r;)Lf1/r;

    move-result-object v7

    const/4 v11, 0x0

    invoke-static {v2, v11}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v3

    invoke-static {v7, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v6

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v16

    if-eqz v16, :cond_c3

    invoke-virtual {v4, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_7f

    :cond_c3
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_7f
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v6

    invoke-static {v6, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v2

    invoke-static {v2, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v2

    invoke-static {v4, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v2

    invoke-static {v2, v7, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v2

    if-eqz v2, :cond_c4

    const-string v2, "+"

    goto :goto_80

    :cond_c4
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_80
    sget v3, Lm1/p;->h:I

    move-object v6, v0

    move-object v0, v2

    invoke-static {}, Lm1/v;->n()J

    move-result-wide v2

    sget-object v7, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v4, v7}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo0/h5;

    iget-object v7, v7, Lo0/h5;->h:Lp2/m0;

    const/16 v21, 0x0

    const v22, 0xfffa

    move-object/from16 v26, v1

    const/4 v1, 0x0

    move-object v12, v5

    const-wide/16 v4, 0x0

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move-object/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v63, v8

    move-object/from16 v17, v9

    const-wide/16 v8, 0x0

    move-object/from16 v61, v10

    const/4 v10, 0x0

    move/from16 v53, v11

    move-object/from16 v19, v12

    const-wide/16 v11, 0x0

    move-object/from16 v129, v13

    const/4 v13, 0x0

    move/from16 v25, v14

    const/4 v14, 0x0

    move-object/from16 v90, v15

    const/4 v15, 0x0

    move-object/from16 v23, v16

    const/16 v16, 0x0

    move-object/from16 v24, v17

    const/16 v17, 0x0

    const/16 v124, 0x0

    const/16 v20, 0x180

    move-object/from16 v143, v19

    move-object/from16 v144, v23

    move-object/from16 v132, v24

    move/from16 v141, v25

    move-object/from16 v44, v26

    move-object/from16 v142, v37

    move-object/from16 v130, v38

    move-object/from16 v131, v49

    move-object/from16 v136, v51

    move-object/from16 v133, v52

    move-object/from16 v134, v54

    move-object/from16 v135, v55

    move-object/from16 v138, v71

    move-object/from16 v28, v77

    move-object/from16 v139, v83

    move-object/from16 v140, v88

    move-object/from16 v137, v90

    const/16 v75, 0x1

    move-object/from16 v19, p1

    invoke-static/range {v0 .. v22}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v4, v19

    invoke-virtual {v4}, Lr0/q;->s()V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_81
    invoke-interface/range {v27 .. v27}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-static/range {v33 .. v33}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-nez v0, :cond_c5

    if-nez v69, :cond_c5

    move/from16 v18, v75

    goto :goto_82

    :cond_c5
    const/16 v18, 0x0

    :goto_82
    new-instance v16, Lod/w1;

    move-object/from16 v35, v27

    move-object/from16 v24, v28

    move-object/from16 v29, v31

    move-object/from16 v20, v32

    move/from16 v17, v34

    move-object/from16 v23, v39

    move-object/from16 v31, v42

    move-object/from16 v30, v59

    move-object/from16 v34, v60

    move/from16 v19, v69

    move-object/from16 v27, v74

    move-object/from16 v36, v78

    move-object/from16 v28, v96

    move-object/from16 v26, v103

    move-object/from16 v21, v104

    move-object/from16 v25, v108

    move-object/from16 v32, v109

    move-object/from16 v22, v129

    invoke-direct/range {v16 .. v36}, Lod/w1;-><init>(ZZZLua/nav/c;Lr0/u0;Landroid/content/Context;Lr0/u0;Landroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Li9/c;Lr0/u0;Lr0/u0;)V

    move-object/from16 v5, v16

    move/from16 v2, v17

    move/from16 v17, v19

    move-object/from16 v11, v20

    move-object/from16 v3, v22

    move-object/from16 v1, v24

    move-object/from16 v20, v25

    move-object/from16 v21, v28

    move-object/from16 v19, v29

    move-object/from16 v14, v32

    move-object/from16 v13, v33

    move-object/from16 v27, v35

    move-object/from16 v0, v36

    const v6, 0x23812cf2

    invoke-static {v6, v5, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    if-eqz v2, :cond_c7

    const v6, 0x38352553

    invoke-virtual {v4, v6}, Lr0/q;->b0(I)V

    move-object/from16 v12, v143

    move-object/from16 v8, v144

    invoke-virtual {v8, v12}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v6

    new-instance v7, Lf1/v;

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-direct {v7, v9}, Lf1/v;-><init>(F)V

    invoke-interface {v6, v7}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v6

    const v7, 0x3f0ccccd    # 0.55f

    invoke-static {v6, v7}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    const/16 v9, 0x8

    int-to-float v7, v9

    const/4 v15, 0x2

    int-to-float v10, v15

    invoke-static {v6, v7, v10, v7, v7}, Lu/b;->s(Lf1/r;FFFF)Lf1/r;

    move-result-object v6

    sget-object v7, Lu/h;->c:Lu/c;

    move-object/from16 v10, v134

    const/4 v15, 0x0

    invoke-static {v7, v10, v4, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v7

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->hashCode(J)I

    move-result v16

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v15

    invoke-static {v6, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v9

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v18

    if-eqz v18, :cond_c6

    invoke-virtual {v4, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_83

    :cond_c6
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_83
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v9

    invoke-static {v9, v7, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v7

    invoke-static {v7, v15, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v9

    invoke-static {v4, v7, v9}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v7

    invoke-static {v4, v7}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v7

    invoke-static {v7, v6, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object/from16 v6, v135

    invoke-virtual {v5, v4, v6}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->s()V

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_84

    :cond_c7
    move-object/from16 v10, v134

    move-object/from16 v6, v135

    move-object/from16 v12, v143

    move-object/from16 v8, v144

    const v7, 0x383817dc

    invoke-virtual {v4, v7}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_84
    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    invoke-virtual {v7}, Lad/a0;->b()Z

    move-result v7

    if-nez v7, :cond_c8

    const v7, 0x22d8da92

    invoke-virtual {v4, v7}, Lr0/q;->b0(I)V

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object v7

    const/16 v9, 0x8

    invoke-static {v7, v4, v9}, Lod/m;->c(Lua/nav/support/a;Lr0/q;I)V

    :goto_85
    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_86

    :cond_c8
    const v7, 0x38431cdc

    invoke-virtual {v4, v7}, Lr0/q;->b0(I)V

    goto :goto_85

    :goto_86
    if-eqz v2, :cond_c9

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    invoke-virtual {v7}, Lad/a0;->b()Z

    move-result v7

    if-eqz v7, :cond_c9

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v7

    if-nez v7, :cond_c9

    invoke-interface/range {v72 .. v72}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_c9

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    invoke-virtual {v7}, Lad/a0;->g()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c9

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v7

    iget-boolean v7, v7, Lad/a0;->A:Z

    if-nez v7, :cond_c9

    move/from16 v7, v75

    goto :goto_87

    :cond_c9
    const/4 v7, 0x0

    :goto_87
    new-instance v16, Lod/x1;

    move-object/from16 v18, v11

    move-object/from16 v22, v13

    move-object/from16 v30, v14

    move-object/from16 v32, v19

    move-object/from16 v26, v20

    move-object/from16 v31, v21

    move-object/from16 v34, v48

    move-object/from16 v33, v50

    move-object/from16 v41, v63

    move-object/from16 v23, v65

    move-object/from16 v29, v66

    move-object/from16 v24, v67

    move-object/from16 v25, v68

    move-object/from16 v42, v76

    move-object/from16 v36, v79

    move-object/from16 v40, v85

    move-object/from16 v38, v92

    move-object/from16 v28, v97

    move-object/from16 v35, v99

    move-object/from16 v37, v106

    move-object/from16 v39, v126

    move/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v42}, Lod/x1;-><init>(ZLua/nav/c;Landroid/content/Context;ZLz0/d;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object/from16 v15, v16

    move-object/from16 v5, v26

    move-object/from16 v21, v31

    move-object/from16 v19, v32

    move-object/from16 v9, v33

    move-object/from16 v29, v37

    move-object/from16 v20, v40

    move-object/from16 v41, v0

    const v0, 0x59592d58

    invoke-static {v0, v15, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    invoke-static/range {v73 .. v73}, Lod/g3;->i(Lr0/u0;)Z

    move-result v15

    if-nez v15, :cond_cc

    if-nez v17, :cond_cc

    invoke-interface/range {v126 .. v126}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_ca

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v15

    invoke-virtual {v15}, Lad/a0;->b()Z

    move-result v15

    if-eqz v15, :cond_cc

    :cond_ca
    invoke-interface/range {v20 .. v20}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_cb

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v15

    invoke-virtual {v15}, Lad/a0;->b()Z

    move-result v15

    if-eqz v15, :cond_cc

    :cond_cb
    invoke-interface/range {v72 .. v72}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_cc

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v15

    invoke-virtual {v15}, Lad/a0;->g()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_cc

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v15

    iget-boolean v15, v15, Lad/a0;->A:Z

    if-nez v15, :cond_cc

    invoke-static {v13}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v15

    invoke-virtual {v15}, Lad/a0;->b()Z

    move-result v15

    if-nez v15, :cond_cc

    if-nez v44, :cond_cc

    invoke-static {v14}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v15

    invoke-virtual {v15}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_cc

    move/from16 v50, v75

    goto :goto_88

    :cond_cc
    const/16 v50, 0x0

    :goto_88
    new-instance v16, Lod/o0;

    move/from16 v18, v2

    move-object/from16 v24, v3

    move-object/from16 v22, v5

    move/from16 v23, v7

    move-object/from16 v47, v14

    move-object/from16 v31, v19

    move-object/from16 v37, v20

    move-object/from16 v32, v21

    move-object/from16 v38, v29

    move/from16 v28, v43

    move-object/from16 v26, v44

    move-object/from16 v30, v56

    move-object/from16 v39, v61

    move-object/from16 v48, v63

    move-object/from16 v40, v72

    move-object/from16 v29, v73

    move-object/from16 v42, v81

    move-object/from16 v44, v82

    move-object/from16 v49, v84

    move-object/from16 v33, v93

    move-object/from16 v43, v94

    move-object/from16 v20, v97

    move-object/from16 v27, v98

    move/from16 v25, v107

    move-object/from16 v46, v125

    move-object/from16 v35, v126

    move-object/from16 v19, v11

    move-object/from16 v21, v13

    invoke-direct/range {v16 .. v49}, Lod/o0;-><init>(ZZLua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;ZLandroid/content/Context;ZLsc/d;Lc/i;ILr0/u0;Lorg/maplibre/android/maps/MapView;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object/from16 v5, v16

    move-object/from16 v20, v22

    move/from16 v3, v23

    move-object/from16 v13, v24

    move/from16 v17, v25

    move-object/from16 v19, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move-object/from16 v2, v44

    move-object/from16 v7, v47

    move-object/from16 v33, v9

    move-object/from16 v23, v21

    const v9, 0x1da9e920

    invoke-static {v9, v5, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    if-eqz v18, :cond_d4

    const v12, 0x3903abf2

    invoke-virtual {v4, v12}, Lr0/q;->b0(I)V

    invoke-static {v4}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v12

    invoke-static {v7}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lsc/q0;->g()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->isEmpty()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual {v4, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v24

    or-int v21, v21, v24

    move-object/from16 v129, v13

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v21, :cond_ce

    move-object/from16 v21, v14

    move-object/from16 v14, v132

    if-ne v13, v14, :cond_cd

    goto :goto_89

    :cond_cd
    move-object/from16 v24, v11

    move-object/from16 v93, v15

    const/4 v11, 0x0

    goto :goto_8a

    :cond_ce
    move-object/from16 v21, v14

    move-object/from16 v14, v132

    :goto_89
    new-instance v13, Landroidx/lifecycle/i0;

    move-object/from16 v93, v15

    const/16 v15, 0x19

    move-object/from16 v24, v11

    const/4 v11, 0x0

    invoke-direct {v13, v12, v7, v11, v15}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_8a
    check-cast v13, Li9/e;

    invoke-static {v13, v9, v4}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Lf1/c;->n:Lf1/j;

    invoke-virtual {v8, v9}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v9

    const v13, 0x3ee66666    # 0.45f

    invoke-static {v9, v13}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v9

    invoke-static {v9}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v9

    const/16 v13, 0x8

    int-to-float v15, v13

    const/4 v13, 0x2

    int-to-float v13, v13

    invoke-static {v9, v15, v13, v13, v13}, Lu/b;->s(Lf1/r;FFFF)Lf1/r;

    move-result-object v9

    if-eqz v3, :cond_cf

    const v13, 0x22dfd74e

    invoke-virtual {v4, v13}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    move-object/from16 v40, v7

    move-object v15, v12

    move-object/from16 v7, v130

    move-object v13, v7

    goto :goto_8b

    :cond_cf
    const v13, 0x22dfda88

    invoke-virtual {v4, v13}, Lr0/q;->b0(I)V

    move-object/from16 v13, v142

    invoke-virtual {v4, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo0/u0;

    move-object v15, v12

    invoke-virtual {v13}, Lo0/u0;->a()J

    move-result-wide v11

    const v13, 0x3f51eb85    # 0.82f

    invoke-static {v13, v11, v12}, Lm1/p;->b(FJ)J

    move-result-wide v11

    move-object/from16 v40, v7

    const/16 v13, 0x10

    int-to-float v7, v13

    invoke-static {v7}, La0/e;->a(F)La0/d;

    move-result-object v7

    move-object/from16 v13, v130

    invoke-static {v13, v11, v12, v7}, Lp/o;->e(Lf1/r;JLm1/h0;)Lf1/r;

    move-result-object v7

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_8b
    invoke-interface {v9, v7}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v7

    invoke-static {v7, v15}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v7

    invoke-virtual {v4, v3}, Lr0/q;->h(Z)Z

    move-result v9

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_d1

    if-ne v11, v14, :cond_d0

    goto :goto_8c

    :cond_d0
    move-object/from16 v9, v138

    goto :goto_8d

    :cond_d1
    :goto_8c
    new-instance v11, Lm0/b;

    move-object/from16 v9, v138

    move-object/from16 v15, v139

    invoke-direct {v11, v3, v15, v9, v2}, Lm0/b;-><init>(ZLr0/u0;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_8d
    check-cast v11, Li9/c;

    invoke-static {v7, v11}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v7

    sget-object v11, Lu/h;->c:Lu/c;

    const/4 v15, 0x0

    invoke-static {v11, v10, v4, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v11

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v15

    invoke-static {v7, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    move-object/from16 v82, v2

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v2

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v25

    if-eqz v25, :cond_d2

    invoke-virtual {v4, v2}, Lr0/q;->l(Li9/a;)V

    goto :goto_8e

    :cond_d2
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_8e
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v2

    invoke-static {v2, v11, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v2

    invoke-static {v2, v15, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v11

    invoke-static {v4, v2, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v2

    invoke-static {v4, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v2

    invoke-static {v2, v7, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v0, v4, v6}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v3, :cond_d3

    const v0, 0x4c3b37a3    # 4.90779E7f

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    const/16 v11, 0xa

    int-to-float v0, v11

    invoke-static {v13, v0}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v4}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v5, v4, v6}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_8f

    :cond_d3
    const/16 v11, 0xa

    const v0, 0x4c3cd852    # 4.9504584E7f

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_8f
    invoke-virtual {v4}, Lr0/q;->s()V

    invoke-virtual {v4}, Lr0/q;->t()V

    move/from16 v36, v3

    move-object/from16 v38, v13

    goto/16 :goto_93

    :cond_d4
    move-object/from16 v82, v2

    move-object/from16 v40, v7

    move-object/from16 v24, v11

    move-object/from16 v129, v13

    move-object/from16 v21, v14

    move-object/from16 v93, v15

    move-object/from16 v13, v130

    move-object/from16 v14, v132

    move-object/from16 v9, v138

    move-object/from16 v15, v139

    const/16 v11, 0xa

    const v2, 0x39244ecf

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v12}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v25

    const/16 v2, 0x8

    int-to-float v7, v2

    const/4 v2, 0x2

    int-to-float v2, v2

    const/16 v29, 0x0

    const/16 v30, 0x8

    move/from16 v28, v7

    move/from16 v27, v2

    move/from16 v26, v7

    invoke-static/range {v25 .. v30}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v2

    move/from16 v12, v27

    invoke-static {v2}, Lu/b1;->e(Lf1/r;)Lf1/r;

    move-result-object v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v14, :cond_d5

    new-instance v11, Lb0/y;

    move-object/from16 v38, v13

    const/16 v13, 0x9

    invoke-direct {v11, v15, v13}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_90

    :cond_d5
    move-object/from16 v38, v13

    const/16 v13, 0x9

    :goto_90
    check-cast v11, Li9/c;

    invoke-static {v2, v11}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v2

    sget-object v11, Lu/h;->c:Lu/c;

    const/4 v15, 0x0

    invoke-static {v11, v10, v4, v15}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v13

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->hashCode(J)I

    move-result v15

    move/from16 v36, v3

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v3

    invoke-static {v2, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    move/from16 v25, v15

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v15

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v26

    if-eqz v26, :cond_d6

    invoke-virtual {v4, v15}, Lr0/q;->l(Li9/a;)V

    goto :goto_91

    :cond_d6
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_91
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v15

    invoke-static {v15, v13, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v13

    invoke-static {v13, v3, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v13

    invoke-static {v4, v3, v13}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v3

    invoke-static {v4, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v3

    invoke-static {v3, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v0, v4, v6}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->s()V

    sget-object v0, Lf1/c;->s:Lf1/j;

    invoke-virtual {v8, v0}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v0

    const/16 v2, 0xc

    int-to-float v3, v2

    invoke-static {v0, v7, v3, v7, v12}, Lu/b;->s(Lf1/r;FFFF)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b1;->e(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_d7

    new-instance v2, Lb0/y;

    const/16 v3, 0xb

    invoke-direct {v2, v9, v3}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d7
    check-cast v2, Li9/c;

    invoke-static {v0, v2}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v11, v10, v4, v13}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v2

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v7

    invoke-static {v0, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v11

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v12

    if-eqz v12, :cond_d8

    invoke-virtual {v4, v11}, Lr0/q;->l(Li9/a;)V

    goto :goto_92

    :cond_d8
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_92
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v11

    invoke-static {v11, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v2

    invoke-static {v2, v7, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v2

    invoke-static {v4, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v5, v4, v6}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lr0/q;->s()V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_93
    invoke-static/range {v80 .. v80}, Lod/g3;->M(Lr0/u0;)Z

    move-result v0

    move/from16 v2, v141

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v3

    move-object/from16 v15, v137

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_da

    if-ne v5, v14, :cond_d9

    goto :goto_94

    :cond_d9
    move-object/from16 v29, v80

    move-object/from16 v30, v86

    goto :goto_95

    :cond_da
    :goto_94
    new-instance v25, Lod/j1;

    const/16 v32, 0x0

    move-object/from16 v28, v1

    move/from16 v26, v2

    move-object/from16 v27, v15

    move-object/from16 v31, v19

    move-object/from16 v29, v80

    move-object/from16 v30, v86

    invoke-direct/range {v25 .. v32}, Lod/j1;-><init>(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;I)V

    move-object/from16 v5, v25

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_95
    check-cast v5, Li9/a;

    invoke-virtual {v4, v2}, Lr0/q;->h(Z)Z

    move-result v3

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_dc

    if-ne v6, v14, :cond_db

    goto :goto_96

    :cond_db
    move-object/from16 v2, v29

    goto :goto_97

    :cond_dc
    :goto_96
    new-instance v25, Lod/j1;

    const/16 v32, 0x1

    move-object/from16 v28, v1

    move/from16 v26, v2

    move-object/from16 v27, v15

    move-object/from16 v31, v19

    invoke-direct/range {v25 .. v32}, Lod/j1;-><init>(Z[DLandroid/content/SharedPreferences;Lr0/u0;Lr0/u0;Lr0/u0;I)V

    move-object/from16 v6, v25

    move-object/from16 v2, v29

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_97
    check-cast v6, Li9/a;

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_dd

    if-ne v7, v14, :cond_de

    :cond_dd
    new-instance v7, Lb0/n;

    const/16 v13, 0x10

    invoke-direct {v7, v13, v1, v2}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_de
    move-object v3, v7

    check-cast v3, Li9/a;

    if-eqz v18, :cond_df

    move-object/from16 v7, v133

    goto :goto_98

    :cond_df
    move-object/from16 v7, v131

    :goto_98
    invoke-virtual {v8, v7}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v1

    invoke-static {v1}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v25

    if-eqz v18, :cond_e0

    const/16 v11, 0xa

    int-to-float v1, v11

    const/4 v13, 0x0

    :goto_99
    move/from16 v26, v1

    goto :goto_9a

    :cond_e0
    const/16 v11, 0xa

    const/4 v13, 0x0

    int-to-float v1, v13

    goto :goto_99

    :goto_9a
    if-eqz v18, :cond_e1

    int-to-float v1, v13

    :goto_9b
    move/from16 v28, v1

    goto :goto_9c

    :cond_e1
    int-to-float v1, v11

    goto :goto_9b

    :goto_9c
    const/16 v11, 0x16

    if-eqz v18, :cond_e2

    int-to-float v1, v11

    move-object/from16 v12, v140

    :goto_9d
    move/from16 v29, v1

    goto :goto_9e

    :cond_e2
    int-to-float v1, v11

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v12, v140

    invoke-interface {v12, v2}, Lb3/c;->M(I)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_9d

    :goto_9e
    const/16 v30, 0x2

    const/16 v27, 0x0

    invoke-static/range {v25 .. v30}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    move-object v2, v6

    const/4 v6, 0x0

    move-object v13, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, v13

    move-object/from16 v13, v82

    invoke-static/range {v0 .. v6}, Lod/g3;->X(ZLi9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    move-object v4, v5

    const/16 v15, 0x60

    const/4 v0, 0x3

    if-eqz v36, :cond_f7

    const v1, 0x3946430a

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v1

    move-object/from16 v2, v24

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x4

    if-nez v3, :cond_e3

    if-ne v5, v14, :cond_e4

    :cond_e3
    new-instance v5, Lod/m0;

    invoke-direct {v5, v2, v6}, Lod/m0;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e4
    check-cast v5, Li9/c;

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v3, :cond_e5

    if-ne v7, v14, :cond_e6

    :cond_e5
    new-instance v7, Lod/d1;

    const/16 v3, 0x9

    invoke-direct {v7, v2, v3}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e6
    check-cast v7, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_e7

    new-instance v3, Lod/a1;

    move-object/from16 v11, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v93

    invoke-direct {v3, v11, v7, v0}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_9f

    :cond_e7
    move-object/from16 v11, v21

    move-object/from16 v21, v7

    move-object/from16 v7, v93

    :goto_9f
    check-cast v3, Li9/a;

    invoke-virtual {v4, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez v24, :cond_e9

    if-ne v0, v14, :cond_e8

    goto :goto_a0

    :cond_e8
    move-object/from16 v93, v7

    const/16 v7, 0xa

    goto :goto_a1

    :cond_e9
    :goto_a0
    new-instance v0, Lod/d1;

    move-object/from16 v93, v7

    const/16 v7, 0xa

    invoke-direct {v0, v2, v7}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_a1
    check-cast v0, Li9/a;

    move-object/from16 v71, v9

    move-object/from16 v9, v133

    invoke-virtual {v8, v9}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v26

    int-to-float v6, v15

    const/16 v15, 0x10

    int-to-float v7, v15

    const/16 v31, 0x6

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v27, v6

    move/from16 v30, v7

    invoke-static/range {v26 .. v31}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v6

    const/16 v7, 0xc00

    move-object v15, v4

    move-object v4, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v15

    move-object v15, v2

    move-object/from16 v52, v9

    move-object/from16 v88, v12

    move-object/from16 v2, v21

    move-object/from16 v9, v93

    const/4 v12, 0x4

    const/16 v47, 0xa

    invoke-static/range {v0 .. v7}, Lod/e4;->k(Lad/a0;Li9/c;Li9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    move-object v4, v6

    move-object/from16 v1, v131

    invoke-virtual {v8, v1}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v0

    const/16 v2, 0x8

    int-to-float v1, v2

    invoke-static {v0, v1}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    sget-object v1, Lu/h;->c:Lu/c;

    const/16 v2, 0x30

    invoke-static {v1, v10, v4, v2}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    invoke-static {v4}, Lr0/r;->u(Lr0/q;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v4}, Lr0/q;->A()Lr0/j1;

    move-result-object v5

    invoke-static {v0, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-static {}, Le2/g;->b()Le2/f;

    move-result-object v6

    invoke-virtual {v4}, Lr0/q;->e0()V

    invoke-virtual {v4}, Lr0/q;->E()Z

    move-result v7

    if-eqz v7, :cond_ea

    invoke-virtual {v4, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_a2

    :cond_ea
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_a2
    invoke-static {}, Le2/g;->d()Le2/e;

    move-result-object v6

    invoke-static {v6, v1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {}, Le2/g;->f()Le2/e;

    move-result-object v1

    invoke-static {v1, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Le2/g;->c()Le2/e;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-static {}, Le2/g;->a()Le2/d;

    move-result-object v1

    invoke-static {v4, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    invoke-static {}, Le2/g;->e()Le2/e;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-interface/range {v45 .. v45}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    iget-wide v5, v1, Lua/nav/Tuning;->P:D

    double-to-float v1, v5

    invoke-static/range {v20 .. v20}, Lod/g3;->F(Lr0/u0;)Ldd/n;

    move-result-object v3

    iget-boolean v5, v3, Ldd/n;->l:Z

    invoke-interface/range {v125 .. v125}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lu/b1;->e(Lf1/r;)Lf1/r;

    move-result-object v6

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v14, :cond_eb

    new-instance v7, Lb0/y;

    const/16 v10, 0xd

    invoke-direct {v7, v13, v10}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_a3

    :cond_eb
    const/16 v10, 0xd

    :goto_a3
    check-cast v7, Li9/c;

    invoke-static {v6, v7}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v6

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v7, :cond_ed

    if-ne v13, v14, :cond_ec

    goto :goto_a4

    :cond_ec
    const/4 v7, 0x5

    goto :goto_a5

    :cond_ed
    :goto_a4
    new-instance v13, Lod/m0;

    const/4 v7, 0x5

    invoke-direct {v13, v15, v7}, Lod/m0;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_a5
    check-cast v13, Li9/c;

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v20, :cond_ee

    if-ne v2, v14, :cond_ef

    :cond_ee
    new-instance v2, Lod/d1;

    const/16 v7, 0xb

    invoke-direct {v2, v15, v7}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_ef
    check-cast v2, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v14, :cond_f0

    new-instance v7, Lod/a1;

    invoke-direct {v7, v11, v9, v12}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f0
    check-cast v7, Li9/a;

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v11, v129

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_f2

    if-ne v12, v14, :cond_f1

    goto :goto_a6

    :cond_f1
    const/4 v9, 0x0

    goto :goto_a7

    :cond_f2
    :goto_a6
    new-instance v12, Lod/l2;

    const/4 v9, 0x0

    invoke-direct {v12, v15, v11, v9}, Lod/l2;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v4, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_a7
    check-cast v12, Lj9/l;

    check-cast v12, Li9/a;

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v11, :cond_f4

    if-ne v9, v14, :cond_f3

    goto :goto_a8

    :cond_f3
    const/16 v11, 0xc

    goto :goto_a9

    :cond_f4
    :goto_a8
    new-instance v9, Lod/d1;

    const/16 v11, 0xc

    invoke-direct {v9, v15, v11}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_a9
    check-cast v9, Li9/a;

    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v16, :cond_f6

    if-ne v10, v14, :cond_f5

    goto :goto_aa

    :cond_f5
    move-object/from16 p0, v9

    const/4 v9, 0x6

    goto :goto_ab

    :cond_f6
    :goto_aa
    new-instance v10, Lod/m0;

    move-object/from16 p0, v9

    const/4 v9, 0x6

    invoke-direct {v10, v15, v9}, Lod/m0;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_ab
    check-cast v10, Li9/c;

    const/16 v16, 0x6

    move/from16 v107, v17

    const/16 v17, 0x0

    move/from16 v145, v9

    const/4 v9, 0x1

    move/from16 v20, v11

    move-object v11, v10

    const/4 v10, 0x1

    move-object/from16 v24, v15

    const v15, 0x36000c00

    move-object/from16 v151, v8

    move-object/from16 v147, v14

    move-object/from16 v149, v24

    move-object/from16 v148, v52

    move-object/from16 v150, v88

    move-object v14, v4

    move-object v8, v6

    move-object v6, v12

    move v4, v1

    move-object v12, v3

    move-object v3, v7

    move-object v1, v13

    move/from16 v13, v107

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v17}, Lod/e4;->j(Lad/a0;Li9/c;Li9/a;Li9/a;FZLi9/a;Li9/a;Lf1/r;ZZLi9/c;Ljava/lang/String;ZLr0/q;III)V

    move-object v4, v14

    invoke-virtual {v4}, Lr0/q;->s()V

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_ac

    :cond_f7
    move-object/from16 v151, v8

    move-object/from16 v71, v9

    move-object/from16 v150, v12

    move-object/from16 v147, v14

    move-object/from16 v149, v24

    move-object/from16 v148, v133

    const v0, 0x3959c3bc

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_ac
    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-nez v0, :cond_f8

    invoke-static/range {v70 .. v70}, Lod/g3;->L(Lr0/u0;)Lad/s;

    move-result-object v0

    invoke-virtual {v0}, Lad/s;->d()Z

    move-result v0

    if-eqz v0, :cond_f8

    const v0, 0x395d0061

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    const-wide v0, 0xe6424242L

    invoke-static {v0, v1}, Lm1/v;->d(J)J

    move-result-wide v2

    const/16 v11, 0xc

    int-to-float v0, v11

    invoke-static {v0}, La0/e;->a(F)La0/d;

    move-result-object v1

    move-object/from16 v13, v148

    move-object/from16 v14, v151

    invoke-virtual {v14, v13}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v5

    const/16 v11, 0xa

    int-to-float v6, v11

    const/16 v0, 0x5a

    int-to-float v8, v0

    const/16 v15, 0x16

    int-to-float v0, v15

    invoke-interface/range {v71 .. v71}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    move-object/from16 v12, v150

    invoke-interface {v12, v7}, Lb3/c;->M(I)F

    move-result v7

    add-float v9, v7, v0

    const/4 v10, 0x2

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v0

    new-instance v5, Lo0/k;

    move-object/from16 v6, v70

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lo0/k;-><init>(Lr0/u0;I)V

    const v6, -0x35eaec49

    invoke-static {v6, v5, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0xc00180

    const/16 v12, 0x78

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move/from16 v146, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v0 .. v12}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    move-object v4, v10

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_ad

    :cond_f8
    move-object/from16 v13, v148

    move-object/from16 v14, v151

    const/16 v15, 0x16

    const v0, 0x396676dc

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_ad
    if-eqz v18, :cond_fc

    if-eqz v50, :cond_fc

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget-object v0, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_fc

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget-object v0, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_fc

    const v0, 0x396b546e

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-static/range {v40 .. v40}, Lod/g3;->I(Lr0/u0;)Lsc/q0;

    move-result-object v0

    iget-object v1, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v1, :cond_f9

    iget-object v1, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-eqz v1, :cond_f9

    iget-boolean v0, v0, Lsc/q0;->m:Z

    if-nez v0, :cond_f9

    move/from16 v2, v75

    goto :goto_ae

    :cond_f9
    const/4 v2, 0x0

    :goto_ae
    invoke-virtual {v14, v13}, Lu/n;->e(Lf1/j;)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b;->l(Lf1/r;)Lf1/r;

    move-result-object v5

    const/16 v0, 0x60

    int-to-float v6, v0

    int-to-float v9, v15

    const/4 v10, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v1

    move-object/from16 v14, v149

    invoke-virtual {v4, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v15, v147

    if-nez v0, :cond_fa

    if-ne v3, v15, :cond_fb

    :cond_fa
    new-instance v3, Lod/d1;

    const/16 v10, 0xd

    invoke-direct {v3, v14, v10}, Lod/d1;-><init>(Lua/nav/c;I)V

    invoke-virtual {v4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_fb
    move-object v0, v3

    check-cast v0, Li9/a;

    new-instance v3, Lod/i;

    move-object/from16 v7, v40

    const/4 v5, 0x3

    invoke-direct {v3, v7, v5}, Lod/i;-><init>(Lr0/u0;I)V

    const v5, -0xec72333

    invoke-static {v5, v3, v4}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v8

    const/high16 v10, 0x30000000

    const/16 v11, 0x1f8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v0 .. v11}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v4, v9

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_af

    :cond_fc
    move-object/from16 v15, v147

    move-object/from16 v14, v149

    const v0, 0x3971513c

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_af
    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-nez v0, :cond_fd

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_fd

    move/from16 v11, v75

    goto :goto_b0

    :cond_fd
    const/4 v11, 0x0

    :goto_b0
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_fe

    new-instance v0, Lb0/u;

    move-object/from16 v1, v34

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_b1

    :cond_fe
    move-object/from16 v1, v34

    :goto_b1
    check-cast v0, Li9/a;

    const/16 v2, 0x30

    invoke-static {v11, v0, v4, v2}, Lod/m;->y(ZLi9/a;Lr0/q;I)V

    invoke-static/range {v23 .. v23}, Lod/g3;->J(Lr0/r2;)Lad/a0;

    move-result-object v0

    invoke-virtual {v0}, Lad/a0;->b()Z

    move-result v0

    if-nez v0, :cond_ff

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_ff

    move/from16 v11, v75

    :goto_b2
    const/4 v13, 0x0

    goto :goto_b3

    :cond_ff
    const/4 v11, 0x0

    goto :goto_b2

    :goto_b3
    invoke-static {v11, v4, v13}, Lod/m;->n(ZLr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_103

    const v0, 0x22e2c779

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v0

    sget-object v2, Lsc/i0;->p:Ljd/b;

    if-eqz v2, :cond_102

    move-object v3, v2

    invoke-static/range {v33 .. v33}, Lod/g3;->t(Lr0/u0;)Z

    move-result v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_100

    new-instance v5, Lod/a1;

    move-object/from16 v9, v33

    const/4 v7, 0x5

    invoke-direct {v5, v1, v9, v7}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_b4

    :cond_100
    move-object/from16 v9, v33

    :goto_b4
    check-cast v5, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_101

    new-instance v6, Lb0/c3;

    move-object/from16 v7, v136

    const/4 v8, 0x6

    invoke-direct {v6, v1, v9, v7, v8}, Lb0/c3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_b5

    :cond_101
    move-object/from16 v7, v136

    const/4 v8, 0x6

    :goto_b5
    check-cast v6, Li9/a;

    move-object v4, v6

    const/16 v6, 0x6c48

    move-object v1, v3

    move-object v3, v5

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v6}, Lod/v6;->C(Lua/nav/a;Ljd/b;ZLi9/a;Li9/a;Lr0/q;I)V

    move-object v4, v5

    invoke-virtual {v4}, Lr0/q;->t()V

    const/4 v6, 0x0

    goto :goto_b6

    :cond_102
    const-string v0, "vault"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 v6, 0x0

    throw v6

    :cond_103
    move-object/from16 v7, v136

    const/4 v6, 0x0

    const/4 v8, 0x6

    const v0, 0x3979b7dc

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_b6
    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_106

    const v0, 0x22e2e990

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v15, :cond_104

    new-instance v0, Lb0/u;

    const/16 v13, 0x10

    invoke-direct {v0, v7, v13}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_104
    check-cast v0, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_105

    new-instance v1, Lb0/u;

    const/16 v2, 0x11

    invoke-direct {v1, v7, v2}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_105
    check-cast v1, Li9/a;

    const/16 v2, 0x36

    invoke-static {v0, v1, v6, v4, v2}, Lnd/h0;->n(Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    :goto_b7
    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_b8

    :cond_106
    const v0, 0x397b5e3c

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    goto :goto_b7

    :goto_b8
    invoke-static/range {v101 .. v101}, Lod/g3;->p(Lr0/u0;)Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_109

    const v0, 0x22e2f9e1

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-static/range {v104 .. v104}, Lod/g3;->o(Lr0/u0;)Z

    move-result v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_107

    new-instance v1, Lod/a1;

    move-object/from16 v6, v101

    invoke-direct {v1, v6, v7, v8}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_b9

    :cond_107
    move-object/from16 v6, v101

    :goto_b9
    move-object v2, v1

    check-cast v2, Li9/a;

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_108

    new-instance v1, Lb0/u;

    const/16 v3, 0x12

    invoke-direct {v1, v6, v3}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_108
    move-object v3, v1

    check-cast v3, Li9/a;

    const/16 v5, 0xd80

    move-object/from16 v1, v100

    invoke-static/range {v0 .. v5}, Lnd/a;->a(ZLi9/a;Li9/a;Li9/a;Lr0/q;I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    goto :goto_ba

    :cond_109
    const v0, 0x397f785c

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->t()V

    :goto_ba
    invoke-virtual {v4}, Lr0/q;->s()V

    goto :goto_bb

    :cond_10a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ViewModelStoreOwner was provided via LocalViewModelStoreOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10b
    invoke-virtual {v4}, Lr0/q;->W()V

    move-object/from16 v14, p0

    :goto_bb
    invoke-virtual {v4}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_10c

    new-instance v1, Lb0/x;

    move/from16 v2, p2

    const/16 v13, 0x13

    invoke-direct {v1, v2, v13, v14}, Lb0/x;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lr0/n1;->f(Li9/e;)V

    :cond_10c
    return-void
.end method

.method public static synthetic e0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    const/16 v0, 0x63

    const/16 v1, 0xd6

    const/16 v2, 0x1e

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {p0, v0}, Lod/g3;->d0(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lorg/maplibre/android/maps/MapView;Lr0/u0;)Lua/nav/routing/GeoPoint;
    .locals 4

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object p1

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    const-string p1, "fromScreenLocation(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lua/nav/routing/GeoPoint;

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    return-object p1
.end method

.method public static final f0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/16 v1, 0x1a

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x63

    const/16 v5, 0xc9

    const/16 v6, 0x5c

    invoke-static {v6, v3, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    int-to-float v1, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v1, v5

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v0

    sub-float v7, v6, v7

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v6, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float v12, v0, v5

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v4, v6, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v10, v1, v3

    const v9, 0x3f0f5c29    # 0.56f

    mul-float/2addr v1, v9

    div-float v9, v10, v5

    sub-float v11, v6, v9

    div-float v5, v1, v5

    sub-float v13, v6, v5

    new-instance v5, Landroid/graphics/RectF;

    add-float v6, v11, v10

    add-float v9, v13, v1

    invoke-direct {v5, v11, v13, v6, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v5, v12, v12, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/RectF;

    const v6, 0x3e0f5c29    # 0.14f

    mul-float/2addr v6, v10

    add-float v12, v6, v11

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v6, v1

    add-float/2addr v6, v13

    const v7, 0x3f5c28f6    # 0.86f

    mul-float/2addr v7, v10

    add-float v14, v7, v11

    const v7, 0x3ed70a3d    # 0.42f

    mul-float/2addr v7, v1

    add-float/2addr v7, v13

    invoke-direct {v5, v12, v6, v14, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    invoke-virtual {v4, v5, v0, v0, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const v0, 0x3e23d70a    # 0.16f

    mul-float/2addr v0, v10

    const v5, 0x3db851ec    # 0.09f

    mul-float v15, v1, v5

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_0
    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    move/from16 v6, v16

    :goto_1
    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    int-to-float v7, v6

    const v9, 0x3e8a3d71    # 0.27f

    mul-float/2addr v7, v9

    const v9, 0x3e2e147b    # 0.17f

    add-float/2addr v7, v9

    mul-float/2addr v7, v10

    add-float/2addr v7, v11

    int-to-float v9, v5

    const v17, 0x3e051eb8    # 0.13f

    mul-float v9, v9, v17

    add-float/2addr v9, v3

    mul-float/2addr v9, v1

    add-float/2addr v9, v13

    move/from16 v17, v5

    move v5, v7

    add-float v7, v5, v0

    move/from16 v18, v6

    move v6, v9

    move-object v9, v8

    add-float v8, v6, v15

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v18, 0x1

    move-object v8, v9

    move/from16 v5, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v5

    move-object v9, v8

    add-int/lit8 v5, v17, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v8

    const v0, 0x3f51eb85    # 0.82f

    mul-float/2addr v0, v1

    add-float v6, v0, v13

    const v0, 0x3f63d70a    # 0.89f

    mul-float/2addr v1, v0

    add-float v8, v1, v13

    move v5, v12

    move v7, v14

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method public static final g(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;Lsc/d;Lua/nav/routing/GeoPoint;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    if-eqz p6, :cond_0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v2, v3, v1}, Lod/g3;->h(Lr0/u0;Lr0/u0;Lua/nav/routing/GeoPoint;)V

    return-void

    :cond_0
    iget-object v2, v0, Lua/nav/c;->q:Lx9/l0;

    :goto_0
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lsc/q0;

    const-string v20, "\u0422\u043e\u0447\u043d\u0430 \u0430\u0434\u0440\u0435\u0441\u0430 \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u0430: \u0411 \u2014 \u043d\u0430 \u043a\u0456\u043d\u0446\u0456 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443. \u0429\u043e\u0431 \u0443\u0442\u043e\u0447\u043d\u0438\u0442\u0438, \u043d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u043c\u0456\u0442\u043a\u0443 \u0411 \u0456 \u043f\u0435\u0440\u0435\u0442\u044f\u0433\u043d\u0456\u0442\u044c"

    const/16 v21, 0x7fff

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

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lod/o2;

    const/4 v3, 0x0

    move-object/from16 v4, p4

    invoke-direct {v2, v0, v1, v4, v3}, Lod/o2;-><init>(Lua/nav/c;Lua/nav/routing/GeoPoint;Lsc/d;Ly8/c;)V

    const/4 v0, 0x3

    move-object/from16 v5, p1

    invoke-static {v5, v3, v3, v2, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void

    :cond_1
    move-object/from16 v5, p1

    move-object/from16 v4, p4

    goto :goto_0
.end method

.method public static final g0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x16

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, p0

    sub-float v5, v2, v4

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v8, 0x7d

    const/16 v9, 0x32

    const/16 v10, 0x2e

    invoke-static {v10, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move v2, v8

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr p0, v2

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const p0, 0x3e19999a    # 0.15f

    mul-float/2addr p0, v0

    const v2, 0x3f1eb852    # 0.62f

    mul-float v7, v0, v2

    const v2, 0x3e947ae1    # 0.29f

    mul-float v4, v0, v2

    const v2, 0x3f35c28f    # 0.71f

    mul-float/2addr v2, v0

    invoke-virtual {v3, v4, v7, p0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v2, v7, p0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const p0, 0x3eae147b    # 0.34f

    mul-float v5, v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float v6, v0, p0

    move v11, v7

    move v7, v5

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v4, v7

    move v7, v5

    move v5, v4

    move v4, v6

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v6, v4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const p0, 0x3da3d70a    # 0.08f

    mul-float/2addr v0, p0

    sub-float v6, v4, v0

    add-float p0, v4, v0

    move v7, v5

    move v4, v6

    move v6, p0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static final h(Lr0/u0;Lr0/u0;Lua/nav/routing/GeoPoint;)V
    .locals 11

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lod/g3;->A(Lr0/u0;Z)V

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    iget-wide v0, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    const-wide/high16 v2, 0x402f000000000000L    # 15.5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_1

    move-wide v0, v2

    :cond_1
    new-instance p1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    new-instance v2, Lorg/maplibre/android/geometry/LatLng;

    iget-wide v3, p2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, p2, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {p1, v2}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v2

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v10}, Lorg/maplibre/android/camera/CameraPosition$Builder;->padding(DDDD)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    return-void
.end method

.method public static final h0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x16

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, p0

    sub-float v5, v2, v4

    new-instance v6, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v7, 0xb3

    const/4 v8, 0x0

    const/16 v10, 0xff

    invoke-static {v10, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v8, 0x32

    const/16 v10, 0x38

    const/16 v11, 0x26

    invoke-static {v11, v8, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v2, v2, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const v4, 0x3f28f5c3    # 0.66f

    mul-float v11, v0, v4

    const v4, 0x3e75c28f    # 0.24f

    mul-float/2addr v0, v4

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v12, 0x14

    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, v2, v0

    sub-float v6, v11, v0

    add-float v7, v2, v0

    add-float v13, v11, v0

    invoke-direct {v4, v5, v6, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v6, 0x43340000    # 180.0f

    const/4 v7, 0x1

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const v4, 0x3fcccccd    # 1.6f

    mul-float/2addr v0, v4

    move v5, v4

    sub-float v4, v2, v0

    add-float v6, v2, v0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-static {v12, v12, v12}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float/2addr p0, v5

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move v7, v11

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static final i(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final i0(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->a()Z

    move-result v0

    const-string v1, "cam-"

    if-eqz v0, :cond_0

    const-string v0, "-i"

    invoke-static {p0, v1, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lr0/u0;)Ljava/util/List;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final j0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x12

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    const/16 v1, 0x16

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v0, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const v0, 0x3f3851ec    # 0.72f

    mul-float/2addr v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr p0, v5

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v0, 0xd3

    const/16 v1, 0x2f

    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v4, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method public static final k(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final k0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x16

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/RectF;

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, p0

    int-to-float v0, v0

    sub-float v5, v0, v4

    invoke-direct {v2, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, p0

    new-instance p0, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v7, 0x76

    const/16 v8, 0xd2

    const/16 v9, 0x19

    invoke-static {v9, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v2, v5, v5, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v2, v5, v5, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move p0, v8

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p0, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge p0, v2, :cond_0

    int-to-float v2, p0

    const v4, 0x3e6147ae    # 0.22f

    mul-float/2addr v2, v4

    const v5, 0x3e75c28f    # 0.24f

    add-float/2addr v2, v5

    mul-float/2addr v2, v0

    mul-float v5, v0, v4

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v0

    add-float v6, v4, v2

    const v4, 0x3f47ae14    # 0.78f

    mul-float v7, v0, v4

    move v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final l(Lr0/u0;I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l0(DZ)Lorg/maplibre/android/style/expressions/Expression;
    .locals 7

    if-eqz p2, :cond_0

    const-string p2, "#A8A298"

    goto :goto_0

    :cond_0
    const-string p2, "#B4B8BF"

    :goto_0
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v0, v0, v1}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lg6/c1;->d(DDD)D

    move-result-wide p0

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v1, p0, v1

    const-string v2, "step(...)"

    if-ltz v1, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->lineProgress()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0, v0}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p0

    filled-new-array {p0}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    :goto_1
    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->lineProgress()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p1

    filled-new-array {p1}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object p0

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final m(Lr0/u0;)Lua/nav/routing/Favorites;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/Favorites;

    return-object p0
.end method

.method public static final m0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, p0

    sub-float v5, v0, v4

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v8, 0xe6

    const/16 v9, 0xff

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v0, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v8, 0x78

    const/16 v9, 0x3c

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v0, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v5, 0x11

    int-to-float v5, v5

    mul-float/2addr v5, p0

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v5, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, p0

    div-float/2addr v5, v3

    sub-float p0, v0, v5

    invoke-virtual {v2, p1, v0, p0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static final n(Lr0/u0;)Lt8/j;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt8/j;

    return-object p0
.end method

.method public static final n0(Lr0/q;)Lo0/p;
    .locals 7

    sget-object v0, Lo0/q;->a:Lu/s0;

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v1, v0, Lo0/u0;->p:J

    const-wide/16 v3, 0x0

    const/16 v6, 0xe

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Lo0/q;->d(JJLr0/q;I)Lo0/p;

    move-result-object p0

    return-object p0
.end method

.method public static final o(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final o0(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x1a

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, p0

    sub-float v4, v0, v4

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, v0, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float v7, p0, v3

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v0, v0, v4, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0xd

    int-to-float v4, v4

    mul-float/2addr v4, p0

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v4, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, p0

    div-float/2addr v4, v3

    sub-float p0, v0, v4

    const-string v3, "\u2605"

    invoke-virtual {v2, v3, v0, p0, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static final p(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final p0(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4

    iget-wide v0, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v2, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v0, v1, v2, v3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-static {p1}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object p1

    const-string v0, "kind"

    invoke-virtual {p1, v0, p2}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "icon"

    invoke-virtual {p1, p2, p3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "name"

    invoke-virtual {p1, p2, p4}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p2, "id"

    invoke-virtual {p1, p2, p5}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final q(Lr0/u0;)I
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final q0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x16

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const-string v2, "createBitmap(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v4, v0, v2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, p0

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v7, v0, v6

    invoke-virtual {v5, v7, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v7, -0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v7, 0xd3

    const/16 v8, 0x2f

    invoke-static {v7, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v8, 0x400ccccd    # 2.2f

    mul-float/2addr v8, p0

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v8, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v4, 0x14

    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float/2addr p0, v2

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const p0, 0x3eae147b    # 0.34f

    mul-float v4, v0, p0

    const p0, 0x3f28f5c3    # 0.66f

    mul-float v6, v0, p0

    move v5, v4

    move v7, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move p0, v4

    move v4, v6

    move v6, p0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-object v1
.end method

.method public static final r(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final r0(Lorg/maplibre/android/maps/Style;Landroid/content/Context;Z)V
    .locals 56

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    move/from16 v4, p2

    const-string v11, "all(...)"

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x40d00000    # 6.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v3, 0xd6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v6, 0x63

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v12, "class"

    const/16 v8, 0x14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    sget-object v14, Lt8/z;->a:Lt8/z;

    const-string v15, "r_m"

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    const/high16 v18, 0x41700000    # 15.0f

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v19, v12

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v21, v2

    new-instance v2, Lorg/maplibre/android/style/sources/GeoJsonSource;

    sget-object v22, Lu8/r;->l:Lu8/r;

    move-object/from16 v23, v14

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v14

    move-object/from16 v24, v15

    const-string v15, "cell-zone-src"

    invoke-direct {v2, v15, v14}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v2}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v2, Lorg/maplibre/android/style/layers/FillLayer;

    const-string v14, "cell-zone-fill"

    invoke-direct {v2, v14, v15}, Lorg/maplibre/android/style/layers/FillLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x19

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v25, 0x76

    move-object/from16 v26, v11

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v25, 0xd2

    move-object/from16 v27, v8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v25, 0x3e051eb8    # 0.13f

    move-object/from16 v28, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v14, v11, v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v9

    filled-new-array {v9}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/maplibre/android/style/layers/FillLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/FillLayer;

    move-result-object v2

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->geometryType()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v25, "Polygon"

    move-object/from16 v29, v13

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    invoke-static {v9, v13}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/maplibre/android/style/layers/FillLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/FillLayer;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v2, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v9, "cell-zone-line"

    invoke-direct {v2, v9, v15}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14, v11, v8}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v9

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    move-object/from16 v30, v13

    invoke-static/range {v30 .. v30}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    const v31, 0x3f4ccccd    # 0.8f

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v31}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v9, v13, v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->geometryType()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/maplibre/android/style/layers/LineLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v2, "cell-zone-center"

    invoke-direct {v0, v2, v15}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-static {v14, v11, v8}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    const/16 v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9, v9, v9}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    invoke-static {v11}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    invoke-static/range {v30 .. v30}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    filled-new-array {v2, v8, v11, v13}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->geometryType()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    const-string v8, "Point"

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v2, v8}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/maplibre/android/style/layers/CircleLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v2

    const-string v8, "routes-src"

    invoke-direct {v0, v8, v2}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v2, "route-outline"

    invoke-direct {v0, v2, v8}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "#14233D"

    invoke-static {v11}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    const/high16 v13, 0x41480000    # 12.5f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    const-string v14, "round"

    invoke-static {v14}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    move-object/from16 v25, v14

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    filled-new-array {v11, v13, v15, v14}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v11, "route-casing"

    invoke-direct {v0, v11, v8}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "#FFFFFF"

    if-eqz v4, :cond_0

    move-object v13, v11

    goto :goto_0

    :cond_0
    const-string v13, "#1A1A1A"

    :goto_0
    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    const/high16 v14, 0x41180000    # 9.5f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v14}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    move-object/from16 v31, v11

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    filled-new-array {v13, v14, v15, v11}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v11, "route-alt"

    invoke-direct {v0, v11, v8}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "#8A8A8A"

    invoke-static {v11}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    const/high16 v13, 0x40a00000    # 5.0f

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    filled-new-array {v11, v13, v14, v15}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    const-string v11, "sel"

    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    invoke-static/range {v20 .. v20}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v13

    invoke-static {v11, v13}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/maplibre/android/style/layers/LineLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v11, "route-sel"

    invoke-direct {v0, v11, v8}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "congestion"

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v7, v6, v3}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    const-string v13, "low"

    invoke-static {v7, v6, v3}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v13

    const-string v14, "unknown"

    invoke-static {v7, v6, v3}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v14, v3}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    const/16 v6, 0xc4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v6, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v7, "moderate"

    invoke-static {v7, v6}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    const/16 v7, 0xe5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v14, 0x39

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x35

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v7, v14, v15}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v14, "heavy"

    invoke-static {v14, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    const/16 v14, 0xaa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x6e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v12, v15}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v14

    const-string v15, "severe"

    invoke-static {v15, v14}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v14

    filled-new-array {v13, v3, v6, v7, v14}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    invoke-static {v8, v11, v3}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    filled-new-array {v3, v6, v7, v8}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    const-string v3, "sel"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    const/4 v11, 0x1

    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v3

    new-instance v6, Lorg/maplibre/android/style/sources/GeoJsonOptions;

    invoke-direct {v6}, Lorg/maplibre/android/style/sources/GeoJsonOptions;-><init>()V

    invoke-virtual {v6, v11}, Lorg/maplibre/android/style/sources/GeoJsonOptions;->withLineMetrics(Z)Lorg/maplibre/android/style/sources/GeoJsonOptions;

    move-result-object v6

    const-string v7, "route-done-src"

    invoke-direct {v0, v7, v3, v6}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;Lorg/maplibre/android/style/sources/GeoJsonOptions;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v3, "route-done"

    invoke-direct {v0, v3, v7}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v3, "#A8A298"

    goto :goto_1

    :cond_1
    const-string v3, "#B4B8BF"

    :goto_1
    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    filled-new-array {v3, v6, v8, v13}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    const-string v3, "i"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v3, "route-done-g"

    invoke-direct {v0, v3, v7}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4}, Lod/g3;->l0(DZ)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineGradient(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineCap(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    invoke-static/range {v25 .. v25}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineJoin(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    filled-new-array {v3, v6, v7, v8}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    const-string v3, "i"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v3, v6}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "signal-icon"

    invoke-static {v10}, Lod/g3;->u0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v3, "signals-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v3, "signals-layer"

    const-string v6, "signals-src"

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "signal-icon"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const-string v7, "center"

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    filled-new-array {v3, v6, v8, v14, v15}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v14, 0x41580000    # 13.5f

    invoke-virtual {v0, v14}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    move/from16 v3, v18

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/Layer;->setMaxZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "bump-icon"

    invoke-static {v10}, Lod/g3;->h0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v3, "bumps-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v3, "bumps-layer"

    const-string v6, "bumps-src"

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "bump-icon"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const v6, 0x3f333333    # 0.7f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    move/from16 v21, v11

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    filled-new-array {v3, v6, v8, v15, v11}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v11, 0x41600000    # 14.0f

    invoke-virtual {v0, v11}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/Layer;->setMaxZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "crossing-icon"

    invoke-static {v10}, Lod/g3;->k0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "bike-icon"

    invoke-static {v10}, Lod/g3;->g0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "rail-icon"

    invoke-static {v10}, Lod/g3;->q0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v3, "roadobj-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v3, "roadobj-layer"

    const-string v6, "roadobj-src"

    invoke-direct {v0, v3, v6}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "icon"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const v8, 0x3f333333    # 0.7f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    move/from16 v25, v14

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    filled-new-array {v6, v8, v15, v14, v11}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v0, v6}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v6, "trail-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v6, "trail-layer"

    const-string v8, "trail-src"

    invoke-direct {v0, v6, v8}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v34

    const-string v6, "op"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v35

    const-string v6, "op"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeOpacity(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v36

    const-string v6, "kind"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    const/high16 v14, 0x40200000    # 2.5f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v14

    const-string v15, "NET"

    invoke-static {v15, v14}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v14

    filled-new-array {v14}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v14

    invoke-static {v8, v11, v14}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeWidth(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v37

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v9, v9, v9}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    const/16 v14, 0xc7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v38, 0x4b

    move-object/from16 v40, v3

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v14, v3, v9}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v15, v3}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    filled-new-array {v3}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    invoke-static {v8, v11, v3}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v38

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v1, v1, v1}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const/16 v6, 0xa0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12, v6, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v8, "GOOD"

    invoke-static {v8, v6}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    const/16 v8, 0xe6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v11, 0xa0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8, v11, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    const-string v11, "SUSPECT"

    invoke-static {v11, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    const/16 v11, 0xdc

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v12, v12}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v11

    const-string v12, "BAD"

    invoke-static {v12, v11}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v11

    const/16 v12, 0xc7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v14, 0x4b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v39, 0x3e19999a    # 0.15f

    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v12, v14, v9, v4}, Lorg/maplibre/android/style/expressions/Expression;->rgba(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v15, v4}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v4

    filled-new-array {v6, v8, v11, v4}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v39

    filled-new-array/range {v34 .. v39}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "\ud83c\udfe0"

    invoke-static {v10, v0}, Lod/g3;->m0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "place-home"

    invoke-virtual {v5, v1, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v0, "\ud83d\udcbc"

    invoke-static {v10, v0}, Lod/g3;->m0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "place-work"

    invoke-virtual {v5, v1, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v0, 0xf5

    const/16 v1, 0x7c

    move/from16 v3, v20

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v10, v0}, Lod/g3;->o0(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "place-saved"

    invoke-virtual {v5, v1, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v1, "places-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v1, "places-layer"

    const-string v3, "places-src"

    invoke-direct {v0, v1, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v40 .. v40}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v45

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    const-string v4, ""

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v11, "name"

    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v6, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    filled-new-array {v6}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v46

    const-string v3, "Noto Sans Regular"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v47

    invoke-static/range {v28 .. v28}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v48

    const-string v3, "top"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v49

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const v4, 0x3fa66666    # 1.3f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v50

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOptional(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v51

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textMaxWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v52

    if-eqz p2, :cond_2

    const-string v3, "#E0E0E0"

    goto :goto_2

    :cond_2
    const-string v3, "#263238"

    :goto_2
    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v53

    if-eqz p2, :cond_3

    const-string v3, "#101418"

    goto :goto_3

    :cond_3
    move-object/from16 v3, v31

    :goto_3
    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v54

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v55

    filled-new-array/range {v41 .. v55}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v3, "points-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v3, "points-layer"

    const-string v4, "points-src"

    invoke-direct {v0, v3, v4}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-static/range {v31 .. v31}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const-string v8, "label"

    invoke-static {v8}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    move-object/from16 v9, v32

    invoke-static {v9, v9, v9}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const/16 v12, 0x2e

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v14, 0x7d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x32

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v12

    const-string v14, "A"

    invoke-static {v14, v12}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v12

    const/16 v14, 0xc6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0x28

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v32, 0x28

    move-object/from16 v34, v1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v14, v15, v1}, Lorg/maplibre/android/style/expressions/Expression;->rgb(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const-string v14, "B"

    invoke-static {v14, v1}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v1

    filled-new-array {v12, v1}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v1

    invoke-static {v8, v9, v1}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    filled-new-array {v3, v4, v6, v1}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v1

    const-string v3, "cams-src"

    invoke-direct {v0, v3, v1}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v1, "cams-layer"

    invoke-direct {v0, v1, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v40 .. v40}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    const-string v1, "off"

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconOffset(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    filled-new-array {v6}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    invoke-static {v1, v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->step(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v45

    invoke-static {v13}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v46

    filled-new-array/range {v41 .. v46}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "cam-dir"

    invoke-static {v10}, Lod/g3;->j0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v1, "cams-dir-layer"

    invoke-direct {v0, v1, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cam-dir"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    const-string v1, "bearing"

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    const-string v3, "map"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotationAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    invoke-static/range {v34 .. v34}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    invoke-static/range {v34 .. v34}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v45

    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v46

    filled-new-array/range {v41 .. v46}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/SymbolLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "nav-arrow"

    invoke-static {v10}, Lod/g3;->e0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/16 v0, 0x8c

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v10, v0}, Lod/g3;->d0(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v4, "nav-arrow-stale"

    invoke-virtual {v5, v4, v0}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v4

    const-string v6, "nav-src"

    invoke-direct {v0, v6, v4}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    :try_start_0
    new-instance v0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v4, "nav-unc-layer"

    invoke-direct {v0, v4, v6}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Lorg/maplibre/android/style/expressions/Expression;->exponential(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v4

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v12, "k10"

    invoke-static {v12}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v12

    filled-new-array {v9, v12}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v12, "k20"

    invoke-static {v12}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v12

    filled-new-array {v9, v12}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, v29

    :try_start_1
    invoke-static {v12, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v9

    filled-new-array {v8, v9}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    const-string v4, "#1E63D6"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    const v4, 0x3e0f5c29    # 0.14f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    const-string v4, "#1E63D6"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v45

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v46

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchScale(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v47

    filled-new-array/range {v41 .. v47}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-static/range {v24 .. v24}, Lorg/maplibre/android/style/expressions/Expression;->has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const-string v7, "alt"

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->not(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    filled-new-array {v4, v7}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/CircleLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, v23

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v12, v29

    :goto_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v13, "MapScreen"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "uncertainty layer: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_2
    new-instance v0, Lorg/maplibre/android/style/layers/CircleLayer;

    const-string v4, "nav-alt-layer"

    invoke-direct {v0, v4, v6}, Lorg/maplibre/android/style/layers/CircleLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v30 .. v30}, Lorg/maplibre/android/style/expressions/Expression;->exponential(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v4

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v14, "k10"

    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v14

    filled-new-array {v9, v14}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static/range {v24 .. v24}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    const-string v14, "k20"

    invoke-static {v14}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v14

    filled-new-array {v9, v14}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->product([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v12, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v9

    filled-new-array {v8, v9}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleRadius(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    const-string v4, "#808080"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    const v4, 0x3df5c28f    # 0.12f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    const-string v4, "#606060"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    invoke-static/range {v30 .. v30}, Lorg/maplibre/android/style/layers/PropertyFactory;->circleStrokeWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v45

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v46

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->circlePitchScale(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v47

    filled-new-array/range {v41 .. v47}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/CircleLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    const-string v4, "alt"

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/CircleLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/CircleLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v0, v23

    goto :goto_6

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "alt layer: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v4, "nav-layer"

    invoke-direct {v0, v4, v6}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v40 .. v40}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v34

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotate(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v35

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconRotationAlignment(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v36

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v37

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v38

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v3

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x3ee66666    # 0.45f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x3f266666    # 0.65f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v8

    const/16 v9, 0xf

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const v14, 0x3f666666    # 0.9f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v9, v14}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v9

    filled-new-array {v6, v7, v8, v9}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v39

    filled-new-array/range {v34 .. v39}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    const-string v0, "openmaptiles"

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->getSource(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v3

    if-eqz v3, :cond_6

    move/from16 v14, v21

    goto :goto_7

    :cond_6
    const/4 v14, 0x0

    :goto_7
    if-eqz v14, :cond_7

    new-instance v3, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v4, "housenumber-layer"

    invoke-direct {v3, v4, v0}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "housenumber"

    invoke-virtual {v3, v4}, Lorg/maplibre/android/style/layers/SymbolLayer;->withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v3

    const-string v4, "{housenumber}"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v34

    const-string v4, "Noto Sans Regular"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v35

    const-string v4, "#3A3A3A"

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v36

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v4

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    move-object/from16 v8, v27

    move-object/from16 v7, v28

    invoke-static {v8, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/high16 v15, 0x41b00000    # 22.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v9, v15}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v9

    filled-new-array {v7, v9}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v37

    invoke-static/range {v31 .. v31}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v38

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v39

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v40

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    filled-new-array/range {v34 .. v41}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v1

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v1}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V

    goto :goto_8

    :cond_7
    move-object/from16 v8, v27

    :goto_8
    if-eqz v14, :cond_8

    new-instance v1, Lorg/maplibre/android/style/layers/LineLayer;

    const-string v3, "building-outline-layer"

    invoke-direct {v1, v3, v0}, Lorg/maplibre/android/style/layers/LineLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "building"

    invoke-virtual {v1, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v1

    const-string v3, "#A8A296"

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lorg/maplibre/android/style/layers/PropertyFactory;->lineWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    filled-new-array {v3, v4}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/android/style/layers/LineLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/LineLayer;

    move-result-object v1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v1, v2}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    :cond_8
    if-eqz p2, :cond_9

    invoke-static {v5}, Lod/g3;->b0(Lorg/maplibre/android/maps/Style;)V

    :cond_9
    const-string v15, ": "

    if-eqz p2, :cond_a

    if-eqz v14, :cond_a

    const-string v1, "building-3d"

    invoke-virtual {v5, v1}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v1

    if-nez v1, :cond_a

    :try_start_3
    new-instance v1, Lorg/maplibre/android/style/layers/FillExtrusionLayer;

    const-string v3, "building-3d"

    invoke-direct {v1, v3, v0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "building"

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/FillExtrusionLayer;

    move-result-object v0

    const-string v1, "#4A5774"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillExtrusionColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    const-string v3, "render_height"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillExtrusionHeight(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    const-string v4, "render_min_height"

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillExtrusionBase(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    const v6, 0x3f59999a    # 0.85f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/layers/PropertyFactory;->fillExtrusionOpacity(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const-string v7, "none"

    invoke-static {v7}, Lorg/maplibre/android/style/layers/PropertyFactory;->visibility(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    filled-new-array {v1, v3, v4, v6, v7}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/FillExtrusionLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/FillExtrusionLayer;

    move-result-object v0

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v3}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0, v2}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v0, v23

    goto :goto_9

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_9
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "building-3d night: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v14, :cond_13

    :try_start_4
    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->geometryType()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    const-string v1, "Point"

    invoke-static {v1}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->geometryType()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const-string v3, "MultiPoint"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    filled-new-array {v0, v1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->any([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    const-string v0, "rank"

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    const-string v4, "atm"

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/maplibre/android/style/expressions/Expression;->neq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const-string v6, "atm"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->eq(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v16

    const-string v4, "name:nonlatin"

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->has(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const-string v6, "name:latin"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v7, "\n"

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v9, "name:nonlatin"

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    filled-new-array {v6, v7, v9}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->concat([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    const-string v7, "name_en"

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v11}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    filled-new-array {v7, v9}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v7}, Lorg/maplibre/android/style/expressions/Expression;->coalesce([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    filled-new-array {v4, v6, v7}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->switchCase([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const-string v6, "subclass"

    invoke-static {v6}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    const-string v9, "florist"

    move-object/from16 v17, v2

    const-string v2, "furniture"

    filled-new-array {v9, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "subclass"

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v2, v9}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v2

    filled-new-array {v2}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    const-string v6, "highway_name_other"

    const-string v7, "highway-name-path"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v9

    if-eqz v9, :cond_b

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object/from16 v18, v11

    goto/16 :goto_11

    :cond_c
    const/4 v7, 0x0

    :goto_a
    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_d

    goto :goto_b

    :cond_d
    move-object/from16 v17, v7

    :goto_b
    if-eqz p2, :cond_e

    const-string v6, "poi-night-r20"

    const/high16 v7, 0x41880000    # 17.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v12}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v0, v9}, Lorg/maplibre/android/style/expressions/Expression;->gte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    filled-new-array {v1, v3, v9}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    invoke-static {v9}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v9

    move-object/from16 v10, v26

    invoke-static {v9, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v27, v8

    move-object v8, v9

    const/16 v9, 0x700

    move-object/from16 v18, v11

    move-object/from16 v29, v12

    move-object v12, v1

    move-object v11, v3

    move-object v3, v4

    move-object/from16 v1, v17

    move/from16 v4, p2

    :try_start_5
    invoke-static/range {v1 .. v9}, Lod/g3;->t0(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/Float;Lorg/maplibre/android/style/expressions/Expression;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    const-string v6, "poi-night-r7"

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/maplibre/android/style/expressions/Expression;->gte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static/range {v29 .. v29}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/maplibre/android/style/expressions/Expression;->lt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    filled-new-array {v12, v11, v4, v5}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v8, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    const/16 v9, 0x700

    move-object/from16 v5, p0

    move/from16 v4, p2

    :try_start_7
    invoke-static/range {v1 .. v9}, Lod/g3;->t0(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/Float;Lorg/maplibre/android/style/expressions/Expression;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    const-string v6, "poi-night-r1"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/maplibre/android/style/expressions/Expression;->gte(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/android/style/expressions/Expression;->literal(Ljava/lang/Number;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/maplibre/android/style/expressions/Expression;->lt(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    filled-new-array {v12, v11, v4, v0}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    invoke-static {v8, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    const/16 v9, 0x700

    move-object/from16 v5, p0

    move/from16 v4, p2

    move-object/from16 v7, v27

    :try_start_9
    invoke-static/range {v1 .. v9}, Lod/g3;->t0(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/Float;Lorg/maplibre/android/style/expressions/Expression;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    const-string v6, "poi-night-transit"

    invoke-static/range {v19 .. v19}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    const-string v5, "airport"

    const-string v7, "bus"

    const-string v8, "rail"

    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Lorg/maplibre/android/style/expressions/Expression;->literal(Z)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v7

    invoke-static {v5, v7}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v5

    filled-new-array {v5}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lorg/maplibre/android/style/expressions/Expression;->match(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v8

    const-string v0, "match(...)"

    invoke-static {v8, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/16 v9, 0x600

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move/from16 v4, p2

    :try_start_b
    invoke-static/range {v1 .. v9}, Lod/g3;->t0(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/Float;Lorg/maplibre/android/style/expressions/Expression;I)V

    goto :goto_10

    :catchall_5
    move-exception v0

    goto/16 :goto_11

    :catchall_6
    move-exception v0

    move-object/from16 v5, p0

    goto/16 :goto_11

    :cond_e
    move-object v12, v1

    move-object/from16 v18, v11

    move-object/from16 v1, v17

    move-object v11, v3

    move-object v3, v4

    const-string v0, "poi_r20"

    const-string v2, "poi_r7"

    const-string v4, "poi_r1"

    filled-new-array {v0, v2, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v0

    instance-of v4, v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    if-eqz v4, :cond_f

    check-cast v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v0}, Lorg/maplibre/android/style/layers/SymbolLayer;->getFilter()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    if-eqz v4, :cond_11

    filled-new-array {v4, v11}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v4

    goto :goto_e

    :cond_11
    move-object v4, v11

    :goto_e
    invoke-virtual {v0, v4}, Lorg/maplibre/android/style/layers/SymbolLayer;->setFilter(Lorg/maplibre/android/style/expressions/Expression;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_c

    :goto_f
    :try_start_d
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_c

    :cond_12
    :goto_10
    const-string v0, "atm-icon"

    invoke-static/range {p1 .. p1}, Lod/g3;->f0(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/maplibre/android/maps/Style;->addImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string v7, "poi-atm-icon"

    const/high16 v0, 0x41940000    # 18.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    const/4 v10, 0x0

    const/high16 v8, 0x41880000    # 17.0f

    move/from16 v4, p2

    move-object v6, v5

    move-object/from16 v2, v16

    move-object v5, v1

    move-object v1, v12

    :try_start_e
    invoke-static/range {v1 .. v10}, Lod/g3;->s0(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLjava/lang/String;Lorg/maplibre/android/maps/Style;Ljava/lang/String;FLjava/lang/Float;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    const-string v7, "poi-atm-full"
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/high16 v8, 0x41940000    # 18.5f

    move-object/from16 v6, p0

    move/from16 v4, p2

    :try_start_10
    invoke-static/range {v1 .. v10}, Lod/g3;->s0(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLjava/lang/String;Lorg/maplibre/android/maps/Style;Ljava/lang/String;FLjava/lang/Float;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object v5, v6

    move-object/from16 v0, v23

    goto :goto_12

    :catchall_8
    move-exception v0

    move-object v5, v6

    :goto_11
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_12
    invoke-static {v0}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "poi: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_13
    move-object/from16 v18, v11

    :cond_14
    :goto_13
    if-eqz v14, :cond_17

    :try_start_11
    new-instance v0, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const-string v1, "route-names-src"

    invoke-static/range {v22 .. v22}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addSource(Lorg/maplibre/android/style/sources/Source;)V

    new-instance v0, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v1, "route-names"

    const-string v2, "route-names-src"

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "line"

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->symbolPlacement(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v34

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->symbolSpacing(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v35

    invoke-static/range {v18 .. v18}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v36

    const-string v1, "Noto Sans Bold"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v37

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->linear()Lorg/maplibre/android/style/expressions/Expression$Interpolator;

    move-result-object v1

    invoke-static {}, Lorg/maplibre/android/style/expressions/Expression;->zoom()Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v33, 0x41600000    # 14.0f

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v6, 0x41980000    # 19.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/maplibre/android/style/expressions/Expression;->stop(Ljava/lang/Object;Ljava/lang/Object;)Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v4

    filled-new-array {v3, v4}, [Lorg/maplibre/android/style/expressions/Expression$Stop;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/maplibre/android/style/expressions/Expression;->interpolate(Lorg/maplibre/android/style/expressions/Expression$Interpolator;Lorg/maplibre/android/style/expressions/Expression;[Lorg/maplibre/android/style/expressions/Expression$Stop;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v38

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const v2, 0x3f733333    # 0.95f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v39

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textMaxAngle(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v40

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textPadding(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v41

    if-eqz p2, :cond_15

    move-object/from16 v1, v31

    goto :goto_14

    :cond_15
    const-string v1, "#0B2A6B"

    :goto_14
    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v42

    if-eqz p2, :cond_16

    const-string v11, "#10151D"

    goto :goto_15

    :catchall_9
    move-exception v0

    goto :goto_16

    :cond_16
    move-object/from16 v11, v31

    :goto_15
    invoke-static {v11}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v43

    const v1, 0x400ccccd    # 2.2f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v44

    filled-new-array/range {v34 .. v44}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v0

    const-string v1, "withProperties(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    invoke-virtual {v5, v0}, Lorg/maplibre/android/maps/Style;->addLayer(Lorg/maplibre/android/style/layers/Layer;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object/from16 v14, v23

    goto :goto_17

    :goto_16
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v14

    :goto_17
    invoke-static {v14}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "route names: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method public static final s(Lr0/u0;Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final s0(Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLjava/lang/String;Lorg/maplibre/android/maps/Style;Ljava/lang/String;FLjava/lang/Float;Z)V
    .locals 17

    move-object/from16 v0, p5

    new-instance v1, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v2, "openmaptiles"

    move-object/from16 v3, p6

    invoke-direct {v1, v3, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "poi"

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;->withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v1

    filled-new-array/range {p0 .. p1}, [Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/expressions/Expression;->all([Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v1

    const-string v2, "atm-icon"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    const v3, 0x3f2e147b    # 0.68f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v1

    const-string v2, "withProperties(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p9, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v2, "Noto Sans Italic"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textMaxWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    const-string v2, "top"

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v9

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v10

    if-eqz p3, :cond_0

    const-string v2, "#C9D6EA"

    goto :goto_0

    :cond_0
    const-string v2, "#666666"

    :goto_0
    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    if-eqz p3, :cond_1

    const-string v2, "#10151D"

    goto :goto_1

    :cond_1
    const-string v2, "#FFFFFF"

    :goto_1
    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v12

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textAllowOverlap(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v15

    invoke-static {v4}, Lorg/maplibre/android/style/layers/PropertyFactory;->textIgnorePlacement(Ljava/lang/Boolean;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v16

    filled-new-array/range {v5 .. v16}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_2
    move/from16 v2, p7

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/maplibre/android/style/layers/Layer;->setMaxZoom(F)V

    :cond_3
    if-eqz p3, :cond_4

    const-string v2, "poi-night-r20"

    goto :goto_2

    :cond_4
    const-string v2, "poi_r20"

    :goto_2
    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/Style;->getLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/Layer;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_6

    move-object/from16 v2, p4

    :cond_6
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method public static final t(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static t0(Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;Lorg/maplibre/android/style/expressions/Expression;ZLorg/maplibre/android/maps/Style;Ljava/lang/String;Ljava/lang/Float;Lorg/maplibre/android/style/expressions/Expression;I)V
    .locals 15

    move/from16 v0, p8

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v2, Lorg/maplibre/android/style/layers/SymbolLayer;

    const-string v3, "openmaptiles"

    move-object/from16 v4, p5

    invoke-direct {v2, v4, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "poi"

    invoke-virtual {v2, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withSourceLayer(Ljava/lang/String;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v2

    move-object/from16 v3, p7

    invoke-virtual {v2, v3}, Lorg/maplibre/android/style/layers/SymbolLayer;->withFilter(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v2

    if-eqz v0, :cond_1

    const-string v3, "class"

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->get(Ljava/lang/String;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/expressions/Expression;->toString(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/expressions/Expression;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object/from16 v3, p1

    :goto_1
    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconImage(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lorg/maplibre/android/style/layers/PropertyFactory;->textField(Lorg/maplibre/android/style/expressions/Expression;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v5

    const-string v3, "Noto Sans Italic"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textFont([Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v6

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v7

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textMaxWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v8

    if-eqz v0, :cond_2

    const-string v3, "left"

    :goto_2
    invoke-static {v3}, Lorg/maplibre/android/style/layers/PropertyFactory;->textAnchor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :cond_2
    const-string v3, "top"

    goto :goto_2

    :goto_3
    if-eqz v0, :cond_3

    const v3, 0x3f666666    # 0.9f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    :goto_4
    move-object v10, v1

    goto :goto_5

    :cond_3
    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textOffset([Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    goto :goto_4

    :goto_5
    if-nez p3, :cond_4

    const-string v1, "#666666"

    goto :goto_6

    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "#8FB8FF"

    goto :goto_6

    :cond_5
    const-string v1, "#C9D6EA"

    :goto_6
    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v11

    if-eqz p3, :cond_6

    const-string v1, "#10151D"

    goto :goto_7

    :cond_6
    const-string v1, "#FFFFFF"

    :goto_7
    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloColor(Ljava/lang/String;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v12

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloWidth(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v13

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lorg/maplibre/android/style/layers/PropertyFactory;->textHaloBlur(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v14

    filled-new-array/range {v4 .. v14}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/maplibre/android/style/layers/SymbolLayer;->withProperties([Lorg/maplibre/android/style/layers/PropertyValue;)Lorg/maplibre/android/style/layers/SymbolLayer;

    move-result-object v1

    const-string v2, "withProperties(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    const v0, 0x3f333333    # 0.7f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/style/layers/PropertyFactory;->iconSize(Ljava/lang/Float;)Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    filled-new-array {v0}, [Lorg/maplibre/android/style/layers/PropertyValue;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setProperties([Lorg/maplibre/android/style/layers/PropertyValue;)V

    :cond_7
    if-eqz p6, :cond_8

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/style/layers/Layer;->setMinZoom(F)V

    :cond_8
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, p0}, Lorg/maplibre/android/maps/Style;->addLayerBelow(Lorg/maplibre/android/style/layers/Layer;Ljava/lang/String;)V

    return-void
.end method

.method public static final u(Lr0/u0;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final u0(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/16 v0, 0x10

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    const/16 v1, 0x24

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, p0

    const/4 v6, 0x1

    int-to-float v7, v6

    mul-float/2addr v7, p0

    int-to-float v0, v0

    sub-float v8, v0, v5

    int-to-float v1, v1

    sub-float v9, v1, v7

    invoke-direct {v4, v5, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, p0

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v8, 0x32

    const/16 v9, 0x38

    const/16 v10, 0x26

    invoke-static {v10, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v4, v5, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v8, p0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3, v4, v5, v5, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/16 v4, 0x39

    const/16 v5, 0x35

    const/16 v7, 0xe5

    invoke-static {v7, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/16 v5, 0xc1

    const/4 v7, 0x7

    const/16 v8, 0xff

    invoke-static {v8, v5, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const/16 v7, 0xa0

    const/16 v8, 0x47

    const/16 v9, 0x43

    invoke-static {v9, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    filled-new-array {v4, v5, v7}, [I

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v5, v7, :cond_0

    aget v7, v4, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v0, v8

    const v9, 0x3e8f5c29    # 0.28f

    int-to-float v10, v5

    mul-float/2addr v10, v9

    const v9, 0x3e6147ae    # 0.22f

    add-float/2addr v10, v9

    mul-float/2addr v10, v1

    const v9, 0x40733333    # 3.8f

    mul-float/2addr v9, p0

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11, v6}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v3, v8, v10, v9, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static final v(Lr0/u0;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final w(Lr0/u0;)Lua/nav/routing/SavedAddress;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/SavedAddress;

    return-object p0
.end method

.method public static final x(Lr0/u0;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final y(Lr0/u0;)Lsc/d;
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsc/d;

    return-object p0
.end method

.method public static final z(Lr0/u0;)Z
    .locals 0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
