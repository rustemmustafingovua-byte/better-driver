.class public abstract Lod/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    int-to-float v0, v0

    sput v0, Lod/a0;->a:F

    return-void
.end method

.method public static final a(Ldd/n;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v0, p5

    move/from16 v6, p6

    const-string v7, "s"

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onToggleNoGps"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "onClose"

    invoke-static {v4, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, -0xfe75c3f

    invoke-virtual {v0, v7}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v7, v6, 0x6

    if-nez v7, :cond_1

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v6

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    and-int/lit8 v8, v6, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v0, v2}, Lr0/q;->h(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v7, v8

    :cond_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_5

    invoke-virtual {v0, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x100

    goto :goto_3

    :cond_4
    const/16 v8, 0x80

    :goto_3
    or-int/2addr v7, v8

    :cond_5
    and-int/lit16 v8, v6, 0xc00

    if-nez v8, :cond_7

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x800

    goto :goto_4

    :cond_6
    const/16 v8, 0x400

    :goto_4
    or-int/2addr v7, v8

    :cond_7
    and-int/lit16 v8, v6, 0x6000

    if-nez v8, :cond_9

    invoke-virtual {v0, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x4000

    goto :goto_5

    :cond_8
    const/16 v8, 0x2000

    :goto_5
    or-int/2addr v7, v8

    :cond_9
    and-int/lit16 v8, v7, 0x2493

    const/16 v10, 0x2492

    if-eq v8, v10, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_6
    and-int/lit8 v10, v7, 0x1

    invoke-virtual {v0, v10, v8}, Lr0/q;->T(IZ)Z

    move-result v8

    if-eqz v8, :cond_27

    iget-object v8, v1, Ldd/n;->a:Ldd/l0;

    iget-object v10, v1, Ldd/n;->b:Ldd/y0;

    iget-object v13, v1, Ldd/n;->d:Ldd/l0;

    iget-object v14, v1, Ldd/n;->f:Ldd/p;

    iget-object v15, v1, Ldd/n;->g:Ldd/m0;

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lr0/m;->a:Lr0/e;

    if-ne v9, v11, :cond_c

    iget-object v9, v15, Ldd/m0;->b:Ljava/lang/Float;

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    :goto_7
    new-instance v12, Lr0/a1;

    invoke-direct {v12, v9}, Lr0/a1;-><init>(F)V

    invoke-virtual {v0, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v9, v12

    :cond_c
    check-cast v9, Lr0/a1;

    invoke-virtual {v0, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v12, :cond_d

    if-ne v6, v11, :cond_e

    :cond_d
    new-instance v6, Lb0/n;

    const/16 v12, 0xe

    invoke-direct {v6, v12, v15, v9}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_e
    check-cast v6, Li9/a;

    invoke-static {v6, v0}, Lr0/r;->j(Li9/a;Lr0/q;)V

    const v6, 0x4c7f68e0    # 6.695411E7f

    invoke-virtual {v0, v6}, Lr0/q;->b0(I)V

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v6

    move-object/from16 v19, v13

    if-eqz v8, :cond_f

    iget-wide v12, v8, Ldd/l0;->d:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_8

    :cond_f
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lod/a0;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_10

    iget-wide v2, v8, Ldd/l0;->e:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_9

    :cond_10
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Lod/a0;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_11

    iget-object v3, v8, Ldd/l0;->f:Ljava/lang/Double;

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_a
    const/4 v4, 0x0

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    goto :goto_a

    :goto_b
    invoke-static {v3, v4}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v8, :cond_12

    iget-object v4, v8, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const v13, 0x40666666    # 3.6f

    mul-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    :goto_c
    const/4 v13, 0x0

    goto :goto_d

    :cond_12
    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    invoke-static {v4, v13}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v4

    const-string v13, "GPS  "

    move-object/from16 v20, v9

    const-string v9, "  h "

    const-string v5, " "

    invoke-static {v13, v12, v5, v2, v9}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u043c  v "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u043a\u043c/\u0433"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_13

    iget-object v2, v8, Ldd/l0;->i:Ljava/lang/Float;

    :goto_e
    const/4 v13, 0x0

    goto :goto_f

    :cond_13
    const/4 v2, 0x0

    goto :goto_e

    :goto_f
    invoke-static {v2, v13}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_14

    iget-object v3, v8, Ldd/l0;->h:Ljava/lang/Float;

    goto :goto_10

    :cond_14
    const/4 v3, 0x0

    :goto_10
    invoke-static {v3, v13}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u2014"

    if-eqz v10, :cond_15

    iget-object v8, v10, Ldd/y0;->a:Ldd/u0;

    goto :goto_11

    :cond_15
    move-object v8, v4

    :goto_11
    const-string v9, ""

    if-eqz v10, :cond_16

    iget-object v10, v10, Ldd/y0;->b:Ljava/util/List;

    const/16 v25, 0x0

    const/16 v26, 0x3e

    const-string v22, " "

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v10

    invoke-static/range {v21 .. v26}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_17

    :cond_16
    move-object v10, v9

    :cond_17
    const-string v12, "\u043c  crs "

    const-string v13, "\u00b0  "

    move-object/from16 v21, v4

    const-string v4, "     acc "

    invoke-static {v4, v2, v12, v3, v13}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    iget v2, v1, Ldd/n;->j:I

    iget v3, v1, Ldd/n;->k:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "     \u0444\u0456\u043a\u0441\u0456\u0432 "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \u043f\u043e\u0433\u0430\u043d\u043e "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    if-eqz v19, :cond_18

    iget-wide v3, v2, Ldd/l0;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_12

    :cond_18
    const/4 v3, 0x0

    :goto_12
    invoke-static {v3}, Lod/a0;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_19

    iget-wide v12, v2, Ldd/l0;->e:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Lod/a0;->b(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1a

    iget-object v2, v2, Ldd/l0;->i:Ljava/lang/Float;

    :goto_14
    const/4 v13, 0x0

    goto :goto_15

    :cond_1a
    const/4 v2, 0x0

    goto :goto_14

    :goto_15
    invoke-static {v2, v13}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "NET  "

    const-string v10, "  acc "

    invoke-static {v8, v3, v5, v4, v10}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u043c"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lv8/b;->add(Ljava/lang/Object;)Z

    iget v2, v14, Ldd/p;->a:I

    iget-object v3, v14, Ldd/p;->j:Ljava/lang/String;

    iget v4, v14, Ldd/p;->b:I

    iget-object v8, v14, Ldd/p;->c:Ljava/lang/Float;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v8

    iget-object v12, v14, Ldd/p;->d:Ljava/lang/Float;

    invoke-static {v12, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v14, Ldd/p;->e:Ljava/lang/Float;

    invoke-static {v13, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v13

    move/from16 v19, v7

    iget-object v7, v14, Ldd/p;->f:Ljava/lang/Float;

    invoke-static {v7, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v22, v5

    iget-object v5, v14, Ldd/p;->g:Ljava/lang/Float;

    invoke-static {v5, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v5

    iget-boolean v10, v1, Ldd/n;->i:Z

    if-eqz v10, :cond_1b

    const-string v10, " JAM"

    goto :goto_16

    :cond_1b
    move-object v10, v9

    :goto_16
    iget v1, v14, Ldd/p;->h:I

    move-object/from16 v23, v9

    const-string v9, ", \u0443 \u0440\u0456\u0448\u0435\u043d\u043d\u0456 "

    move-object/from16 v24, v11

    const-string v11, ", C/N0 "

    const-string v0, "SAT  \u0432\u0438\u0434\u043d\u043e "

    invoke-static {v0, v2, v9, v4, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u00b1"

    const-string v4, " (\u0432\u0441\u0456 "

    invoke-static {v0, v8, v2, v12, v4}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ")  AGC "

    const-string v4, " (\u0432\u0456\u0434\u043d. "

    invoke-static {v0, v13, v2, v7, v4}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ")"

    const-string v4, "  meas "

    invoke-static {v0, v5, v2, v10, v4}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lv8/b;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget v0, v14, Ldd/p;->l:I

    iget v1, v14, Ldd/p;->k:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "     "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  L5/E5a trk:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " use:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_1c
    iget-object v0, v15, Ldd/m0;->a:Ljava/lang/Float;

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v20 .. v20}, Lr0/a1;->g()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v10, 0x1

    invoke-static {v1, v10}, Lod/a0;->c(Ljava/lang/Float;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Ldd/m0;->c:[F

    if-nez v2, :cond_1d

    const v2, -0x60bba28a

    move-object/from16 v3, p5

    invoke-virtual {v3, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    move-object/from16 v5, v24

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_19

    :cond_1d
    move-object/from16 v3, p5

    const v4, 0x36af9feb

    invoke-virtual {v3, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v5, v24

    if-ne v4, v5, :cond_1e

    new-instance v4, Ln/p1;

    const/16 v7, 0x10

    invoke-direct {v4, v7}, Ln/p1;-><init>(I)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1e
    check-cast v4, Li9/c;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_17
    if-ge v10, v9, :cond_21

    aget v12, v2, v10

    const/4 v13, 0x1

    add-int/2addr v11, v13

    move-object/from16 v14, v22

    if-le v11, v13, :cond_1f

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1f
    if-eqz v4, :cond_20

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-interface {v4, v12}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_18

    :cond_20
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v22, v14

    goto :goto_17

    :cond_21
    const/4 v13, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lr0/q;->q(Z)V

    :goto_19
    if-nez v2, :cond_22

    move-object/from16 v4, v21

    goto :goto_1a

    :cond_22
    move-object v4, v2

    :goto_1a
    const-string v2, "\u00b0 yaw "

    const-string v7, "\u00b0/\u0441 a "

    const-string v8, "SENS \u043a\u0443\u0440\u0441 "

    invoke-static {v8, v0, v2, v1, v7}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lv8/b;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    iget-boolean v0, v1, Ldd/n;->l:Z

    if-eqz v0, :cond_23

    iget-object v0, v1, Ldd/n;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "LOG  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-static {v6}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lr0/q;->q(Z)V

    const-wide v6, 0xcc000000L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v8

    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v3, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v7, v2, Lo0/q3;->b:La0/d;

    move/from16 v2, v19

    and-int/lit16 v2, v2, 0x1c00

    const/16 v4, 0x800

    if-ne v2, v4, :cond_24

    move v11, v13

    goto :goto_1b

    :cond_24
    const/4 v11, 0x0

    :goto_1b
    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v11, :cond_26

    if-ne v2, v5, :cond_25

    goto :goto_1c

    :cond_25
    move-object/from16 v5, p3

    goto :goto_1d

    :cond_26
    :goto_1c
    new-instance v2, Lkd/p;

    const/4 v4, 0x3

    move-object/from16 v5, p3

    invoke-direct {v2, v5, v4}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v3, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_1d
    check-cast v2, Li9/a;

    const/16 v4, 0xf

    move-object/from16 v6, p4

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-static {v6, v13, v10, v2, v4}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v2

    new-instance v4, Lo0/g3;

    move/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct {v4, v0, v11, v10}, Lo0/g3;-><init>(Lv8/b;Li9/a;Z)V

    const v0, 0x3ee8071c

    invoke-static {v0, v4, v3}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v15

    const v17, 0xc00180

    const/16 v18, 0x78

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v6, v2

    move-object/from16 v16, v3

    invoke-static/range {v6 .. v18}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_1e

    :cond_27
    move-object v5, v4

    invoke-virtual/range {p5 .. p5}, Lr0/q;->W()V

    :goto_1e
    invoke-virtual/range {p5 .. p5}, Lr0/q;->u()Lr0/n1;

    move-result-object v7

    if-eqz v7, :cond_28

    new-instance v0, Lod/z;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p6

    move-object v4, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v6}, Lod/z;-><init>(Ldd/n;ZLi9/a;Li9/a;Lf1/r;I)V

    iput-object v0, v7, Lr0/n1;->d:Li9/e;

    :cond_28
    return-void
.end method

.method public static b(Ljava/lang/Double;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%."

    const-string v3, "f"

    const/4 v4, 0x5

    invoke-static {v4, v2, v3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "\u2014"

    return-object p0
.end method

.method public static final c(Ljava/lang/Float;I)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v2, p0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    const-wide/16 v0, 0x0

    cmpg-double p0, v2, v0

    if-nez p0, :cond_0

    move-wide v2, v0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "%."

    const-string v1, "f"

    invoke-static {p1, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "\u2014"

    return-object p0
.end method

.method public static final d(Ldd/k0;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V
    .locals 8

    const-string v0, "engine"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onToggleNoGps"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClose"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1d8d4209

    invoke-virtual {p5, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p5, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p6

    invoke-virtual {p5, p1}, Lr0/q;->h(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {p5, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x6000

    and-int/lit16 v1, v0, 0x2493

    const/16 v2, 0x2492

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p5, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p4, p0, Ldd/k0;->j:Ldd/m;

    iget-object p4, p4, Ldd/m;->h:Lx9/l0;

    invoke-static {p4, p5}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object p4

    invoke-interface {p4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Ldd/n;

    const p4, 0xfff0

    and-int v7, v0, p4

    sget-object v5, Lf1/o;->a:Lf1/o;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lod/a0;->a(Ldd/n;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V

    move p2, v2

    move-object p3, v3

    move-object p5, v5

    goto :goto_4

    :cond_4
    move-object v4, p3

    move-object v6, p5

    move-object p3, p2

    move p2, p1

    invoke-virtual {v6}, Lr0/q;->W()V

    move-object p5, p4

    :goto_4
    invoke-virtual {v6}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object p1, p0

    new-instance p0, Lod/y;

    move-object p4, v4

    invoke-direct/range {p0 .. p6}, Lod/y;-><init>(Ldd/k0;ZLi9/a;Li9/a;Lf1/r;I)V

    iput-object p0, v0, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final e(Ldd/n;Lf1/r;Lr0/q;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v15, p3

    const-string v2, "s"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ldd/n;->h:Ldd/t;

    const v3, -0x7cc1fc57

    invoke-virtual {v12, v3}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v12, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v15

    invoke-virtual {v12, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    and-int/2addr v3, v6

    invoke-virtual {v12, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, v0, Ldd/n;->i:Z

    if-eqz v3, :cond_3

    sget-object v4, Ldd/t;->l:Ldd/t;

    if-eq v2, v4, :cond_3

    const-wide v2, 0xff6a1b9aL

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v3, "GPS \u26a1"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    sget-object v4, Ldd/t;->l:Ldd/t;

    if-ne v2, v4, :cond_5

    if-eqz v3, :cond_4

    const-string v2, "GPS \u2713\u26a1"

    goto :goto_3

    :cond_4
    const-string v2, "GPS \u2713"

    :goto_3
    const-wide v3, 0xff2e7d32L

    invoke-static {v3, v4}, Lm1/v;->d(J)J

    move-result-wide v3

    new-instance v5, Lm1/p;

    invoke-direct {v5, v3, v4}, Lm1/p;-><init>(J)V

    new-instance v3, Lt8/j;

    invoke-direct {v3, v2, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_4

    :cond_5
    sget-object v3, Ldd/t;->m:Ldd/t;

    if-ne v2, v3, :cond_6

    const-wide v2, 0xffef6c00L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v3, "GPS \u26a0"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    const-wide v2, 0xffc62828L

    invoke-static {v2, v3}, Lm1/v;->d(J)J

    move-result-wide v2

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    new-instance v2, Lt8/j;

    const-string v3, "GPS \u2715"

    invoke-direct {v2, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Lm1/p;

    iget-wide v4, v2, Lm1/p;->a:J

    sget-object v2, Lo0/r3;->a:Lr0/s2;

    invoke-virtual {v12, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/q3;

    iget-object v2, v2, Lo0/q3;->c:La0/d;

    sget v6, Lod/a0;->a:F

    invoke-static {v1, v6}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v6

    new-instance v7, Lnd/e;

    const/4 v8, 0x4

    invoke-direct {v7, v3, v8}, Lnd/e;-><init>(Ljava/lang/String;I)V

    const v3, -0x52928d92

    invoke-static {v3, v7, v12}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v11

    const/high16 v13, 0xc00000

    const/16 v14, 0x78

    move-object v3, v2

    move-object v2, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lo0/t4;->a(Lf1/r;Lm1/h0;JJFFLp/x;Lz0/d;Lr0/q;II)V

    goto :goto_5

    :cond_7
    invoke-virtual/range {p2 .. p2}, Lr0/q;->W()V

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v3, Lg0/k;

    const/4 v4, 0x7

    invoke-direct {v3, v15, v4, v0, v1}, Lg0/k;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v2, Lr0/n1;->d:Li9/e;

    :cond_8
    return-void
.end method
