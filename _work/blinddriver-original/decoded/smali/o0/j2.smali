.class public abstract Lo0/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    int-to-float v0, v0

    sput v0, Lo0/j2;->a:F

    return-void
.end method

.method public static final a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V
    .locals 38

    move-object/from16 v0, p18

    move/from16 v1, p19

    move/from16 v2, p20

    move/from16 v3, p21

    const v4, 0x71569c68

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    move-object/from16 v10, p0

    invoke-virtual {v0, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v1

    and-int/lit8 v5, v1, 0x30

    move-object/from16 v11, p1

    if-nez v5, :cond_2

    invoke-virtual {v0, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v4, v5

    :cond_2
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_4

    or-int/lit16 v4, v4, 0x180

    :cond_3
    move-object/from16 v8, p2

    goto :goto_3

    :cond_4
    and-int/lit16 v8, v1, 0x180

    if-nez v8, :cond_3

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x100

    goto :goto_2

    :cond_5
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v4, v9

    :goto_3
    and-int/lit8 v9, v3, 0x8

    if-eqz v9, :cond_6

    or-int/lit16 v4, v4, 0xc00

    move/from16 v14, p3

    goto :goto_5

    :cond_6
    move/from16 v14, p3

    invoke-virtual {v0, v14}, Lr0/q;->h(Z)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0x800

    goto :goto_4

    :cond_7
    const/16 v15, 0x400

    :goto_4
    or-int/2addr v4, v15

    :goto_5
    or-int/lit16 v4, v4, 0x6000

    and-int/lit8 v15, v3, 0x20

    const/high16 v16, 0x10000

    const/high16 v17, 0x20000

    if-nez v15, :cond_8

    move-object/from16 v15, p4

    invoke-virtual {v0, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    move/from16 v18, v17

    goto :goto_6

    :cond_8
    move-object/from16 v15, p4

    :cond_9
    move/from16 v18, v16

    :goto_6
    or-int v4, v4, v18

    and-int/lit8 v18, v3, 0x40

    const/high16 v19, 0x100000

    const/high16 v20, 0x80000

    const/high16 v21, 0x180000

    if-eqz v18, :cond_a

    or-int v4, v4, v21

    move-object/from16 v6, p5

    goto :goto_8

    :cond_a
    and-int v22, v1, v21

    move-object/from16 v6, p5

    if-nez v22, :cond_c

    invoke-virtual {v0, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move/from16 v23, v19

    goto :goto_7

    :cond_b
    move/from16 v23, v20

    :goto_7
    or-int v4, v4, v23

    :cond_c
    :goto_8
    and-int/lit16 v7, v3, 0x80

    const/high16 v24, 0x800000

    const/high16 v25, 0x400000

    const/high16 v26, 0xc00000

    if-eqz v7, :cond_d

    or-int v4, v4, v26

    move-object/from16 v12, p6

    goto :goto_a

    :cond_d
    and-int v27, v1, v26

    move-object/from16 v12, p6

    if-nez v27, :cond_f

    invoke-virtual {v0, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    move/from16 v28, v24

    goto :goto_9

    :cond_e
    move/from16 v28, v25

    :goto_9
    or-int v4, v4, v28

    :cond_f
    :goto_a
    const/high16 v28, 0x6000000

    or-int v29, v4, v28

    and-int/lit16 v13, v3, 0x200

    const/high16 v31, 0x10000000

    const/high16 v32, 0x20000000

    const/high16 v33, 0x30000000

    if-eqz v13, :cond_11

    const/high16 v29, 0x36000000

    or-int v29, v4, v29

    :cond_10
    move-object/from16 v4, p7

    goto :goto_c

    :cond_11
    and-int v4, v1, v33

    if-nez v4, :cond_10

    move-object/from16 v4, p7

    invoke-virtual {v0, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    move/from16 v34, v32

    goto :goto_b

    :cond_12
    move/from16 v34, v31

    :goto_b
    or-int v29, v29, v34

    :goto_c
    or-int/lit8 v34, v2, 0x36

    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_13

    move/from16 v35, v1

    or-int/lit16 v1, v2, 0x1b6

    goto :goto_f

    :cond_13
    move/from16 v35, v1

    and-int/lit16 v1, v2, 0x180

    if-nez v1, :cond_15

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_14

    const/16 v36, 0x100

    goto :goto_d

    :cond_14
    const/16 v36, 0x80

    :goto_d
    or-int v34, v34, v36

    :goto_e
    move/from16 v1, v34

    goto :goto_f

    :cond_15
    move-object/from16 v1, p8

    goto :goto_e

    :goto_f
    and-int/lit16 v2, v3, 0x2000

    if-eqz v2, :cond_16

    or-int/lit16 v1, v1, 0xc00

    goto :goto_11

    :cond_16
    move/from16 v34, v1

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lr0/q;->h(Z)Z

    move-result v36

    if-eqz v36, :cond_17

    const/16 v27, 0x800

    goto :goto_10

    :cond_17
    const/16 v27, 0x400

    :goto_10
    or-int v27, v34, v27

    move/from16 v1, v27

    :goto_11
    move/from16 v27, v2

    and-int/lit16 v2, v3, 0x4000

    if-eqz v2, :cond_18

    or-int/lit16 v1, v1, 0x6000

    move/from16 v30, v1

    move-object/from16 v1, p10

    goto :goto_13

    :cond_18
    move/from16 v30, v1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    const/16 v34, 0x4000

    goto :goto_12

    :cond_19
    const/16 v34, 0x2000

    :goto_12
    or-int v30, v30, v34

    :goto_13
    const v34, 0x8000

    and-int v34, v3, v34

    const/high16 v36, 0x30000

    if-eqz v34, :cond_1a

    or-int v30, v30, v36

    move-object/from16 v1, p11

    goto :goto_15

    :cond_1a
    and-int v36, p20, v36

    move-object/from16 v1, p11

    if-nez v36, :cond_1c

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1b

    move/from16 v36, v17

    goto :goto_14

    :cond_1b
    move/from16 v36, v16

    :goto_14
    or-int v30, v30, v36

    :cond_1c
    :goto_15
    and-int v16, v3, v16

    if-eqz v16, :cond_1d

    or-int v19, v30, v21

    move-object/from16 v1, p12

    goto :goto_17

    :cond_1d
    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    goto :goto_16

    :cond_1e
    move/from16 v19, v20

    :goto_16
    or-int v19, v30, v19

    :goto_17
    and-int v17, v3, v17

    if-eqz v17, :cond_1f

    or-int v19, v19, v26

    move/from16 v1, p13

    goto :goto_19

    :cond_1f
    and-int v21, p20, v26

    move/from16 v1, p13

    if-nez v21, :cond_21

    invoke-virtual {v0, v1}, Lr0/q;->h(Z)Z

    move-result v21

    if-eqz v21, :cond_20

    goto :goto_18

    :cond_20
    move/from16 v24, v25

    :goto_18
    or-int v19, v19, v24

    :cond_21
    :goto_19
    and-int v21, p20, v28

    const/high16 v24, 0x40000

    if-nez v21, :cond_23

    and-int v21, v3, v24

    move/from16 v1, p14

    if-nez v21, :cond_22

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v21

    if-eqz v21, :cond_22

    const/high16 v21, 0x4000000

    goto :goto_1a

    :cond_22
    const/high16 v21, 0x2000000

    :goto_1a
    or-int v19, v19, v21

    goto :goto_1b

    :cond_23
    move/from16 v1, p14

    :goto_1b
    and-int v20, v3, v20

    if-eqz v20, :cond_24

    or-int v19, v19, v33

    move/from16 v1, p15

    goto :goto_1c

    :cond_24
    and-int v21, p20, v33

    move/from16 v1, p15

    if-nez v21, :cond_26

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v21

    if-eqz v21, :cond_25

    move/from16 v31, v32

    :cond_25
    or-int v19, v19, v31

    :cond_26
    :goto_1c
    and-int v21, v3, v25

    move-object/from16 v1, p17

    if-nez v21, :cond_27

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_27

    const/16 v22, 0x100

    goto :goto_1d

    :cond_27
    const/16 v22, 0x80

    :goto_1d
    const/16 v21, 0x16

    or-int v1, v21, v22

    const v21, 0x12492493

    move/from16 v22, v2

    and-int v2, v29, v21

    const v3, 0x12492492

    const/16 v23, 0x1

    if-ne v2, v3, :cond_29

    and-int v2, v19, v21

    if-ne v2, v3, :cond_29

    and-int/lit16 v1, v1, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_28

    goto :goto_1e

    :cond_28
    const/4 v1, 0x0

    goto :goto_1f

    :cond_29
    :goto_1e
    move/from16 v1, v23

    :goto_1f
    and-int/lit8 v2, v29, 0x1

    invoke-virtual {v0, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v1, p19, 0x1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_20

    :cond_2a
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v22, p7

    move-object/from16 v23, p8

    move-object/from16 v19, p10

    move/from16 v16, p13

    move/from16 v2, p14

    move/from16 v18, p15

    move-object/from16 v24, p16

    move-object/from16 v9, p17

    move-object v7, v6

    move-object v6, v8

    move-object/from16 v21, v12

    move v12, v14

    move-object v1, v15

    move/from16 v8, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    goto/16 :goto_2c

    :cond_2b
    :goto_20
    if-eqz v5, :cond_2c

    sget-object v1, Lf1/o;->a:Lf1/o;

    goto :goto_21

    :cond_2c
    move-object v1, v8

    :goto_21
    if-eqz v9, :cond_2d

    move/from16 v14, v23

    :cond_2d
    and-int/lit8 v2, p21, 0x20

    if-eqz v2, :cond_2e

    sget-object v2, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/m0;

    move-object v15, v2

    :cond_2e
    const/4 v2, 0x0

    if-eqz v18, :cond_2f

    move-object v6, v2

    :cond_2f
    if-eqz v7, :cond_30

    move-object v12, v2

    :cond_30
    if-eqz v13, :cond_31

    move-object v3, v2

    goto :goto_22

    :cond_31
    move-object/from16 v3, p7

    :goto_22
    if-eqz v35, :cond_32

    goto :goto_23

    :cond_32
    move-object/from16 v2, p8

    :goto_23
    if-eqz v27, :cond_33

    const/4 v5, 0x0

    goto :goto_24

    :cond_33
    move/from16 v5, p9

    :goto_24
    if-eqz v22, :cond_34

    sget-object v7, Lu2/c0;->l:Lc2/c0;

    goto :goto_25

    :cond_34
    move-object/from16 v7, p10

    :goto_25
    if-eqz v34, :cond_35

    sget-object v8, Lb0/q1;->d:Lb0/q1;

    goto :goto_26

    :cond_35
    move-object/from16 v8, p11

    :goto_26
    if-eqz v16, :cond_36

    sget-object v9, Lb0/p1;->b:Lb0/p1;

    goto :goto_27

    :cond_36
    move-object/from16 v9, p12

    :goto_27
    if-eqz v17, :cond_37

    const/4 v13, 0x0

    goto :goto_28

    :cond_37
    move/from16 v13, p13

    :goto_28
    and-int v16, p21, v24

    if-eqz v16, :cond_39

    if-eqz v13, :cond_38

    move/from16 v16, v23

    goto :goto_29

    :cond_38
    const v16, 0x7fffffff

    goto :goto_29

    :cond_39
    move/from16 v16, p14

    :goto_29
    if-eqz v20, :cond_3a

    goto :goto_2a

    :cond_3a
    move/from16 v23, p15

    :goto_2a
    sget-object v17, Lo0/d2;->a:Lo0/d2;

    sget-object v4, Lq0/u;->b:Lq0/y;

    invoke-static {v4, v0}, Lo0/r3;->a(Lq0/y;Lr0/q;)Lm1/h0;

    move-result-object v4

    and-int v18, p21, v25

    move-object/from16 p2, v1

    if-eqz v18, :cond_3b

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v0, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    invoke-static {v1, v0}, Lo0/d2;->c(Lo0/u0;Lr0/q;)Lo0/x4;

    move-result-object v1

    move-object/from16 v18, v9

    move-object v9, v1

    move-object v1, v15

    move-object/from16 v15, v18

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v7

    move-object/from16 v21, v12

    move v12, v14

    move/from16 v18, v23

    move-object/from16 v23, v2

    move-object v7, v6

    move-object v14, v8

    move/from16 v2, v16

    move-object/from16 v6, p2

    :goto_2b
    move v8, v5

    move/from16 v16, v13

    goto :goto_2c

    :cond_3b
    move-object/from16 v22, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v7

    move-object/from16 v21, v12

    move v12, v14

    move-object v1, v15

    move/from16 v18, v23

    move-object/from16 v23, v2

    move-object v7, v6

    move-object v14, v8

    move-object v15, v9

    move/from16 v2, v16

    move-object/from16 v6, p2

    move-object/from16 v9, p17

    goto :goto_2b

    :goto_2c
    invoke-virtual {v0}, Lr0/q;->r()V

    const v3, 0x4e15cd93    # 6.283194E8f

    invoke-virtual {v0, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-ne v3, v4, :cond_3c

    new-instance v3, Ls/i;

    invoke-direct {v3}, Ls/i;-><init>()V

    invoke-virtual {v0, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3c
    check-cast v3, Ls/i;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lr0/q;->q(Z)V

    const v5, 0x7621d1a2

    invoke-virtual {v0, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v1}, Lp2/m0;->b()J

    move-result-wide v25

    const-wide/16 v27, 0x10

    cmp-long v5, v25, v27

    if-eqz v5, :cond_3d

    goto :goto_2f

    :cond_3d
    invoke-static {v3, v0, v4}, Lc6/o;->K(Ls/i;Lr0/q;I)Lr0/u0;

    move-result-object v5

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v12, :cond_3e

    iget-wide v4, v9, Lo0/x4;->c:J

    :goto_2d
    move-wide/from16 v25, v4

    goto :goto_2e

    :cond_3e
    if-eqz v8, :cond_3f

    iget-wide v4, v9, Lo0/x4;->d:J

    goto :goto_2d

    :cond_3f
    if-eqz v4, :cond_40

    iget-wide v4, v9, Lo0/x4;->a:J

    goto :goto_2d

    :cond_40
    iget-wide v4, v9, Lo0/x4;->b:J

    goto :goto_2d

    :goto_2e
    const/4 v4, 0x0

    :goto_2f
    invoke-virtual {v0, v4}, Lr0/q;->q(Z)V

    new-instance v4, Lp2/m0;

    const-wide/16 v27, 0x0

    const v5, 0xfffffe

    const-wide/16 v29, 0x0

    const/4 v13, 0x0

    const-wide/16 v31, 0x0

    const/16 v17, 0x0

    move-object/from16 p2, v4

    move/from16 p13, v5

    move-object/from16 p7, v13

    move/from16 p10, v17

    move-wide/from16 p3, v25

    move-wide/from16 p11, v27

    move-wide/from16 p5, v29

    move-wide/from16 p8, v31

    invoke-direct/range {p2 .. p13}, Lp2/m0;-><init>(JJLt2/k;JIJI)V

    invoke-virtual {v1, v4}, Lp2/m0;->d(Lp2/m0;)Lp2/m0;

    move-result-object v13

    sget-object v4, Lm0/b2;->a:Lr0/a0;

    iget-object v5, v9, Lo0/x4;->k:Lm0/a2;

    invoke-virtual {v4, v5}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v4

    new-instance v5, Lo0/i2;

    move/from16 v17, v2

    move-object/from16 v20, v3

    invoke-direct/range {v5 .. v24}, Lo0/i2;-><init>(Lf1/r;Li9/e;ZLo0/x4;Ljava/lang/String;Li9/c;ZLp2/m0;Lb0/q1;Lb0/p1;ZIILu2/d0;Ls/i;Li9/e;Li9/e;Li9/e;Lm1/h0;)V

    const v2, 0x6fb38128

    invoke-static {v2, v5, v0}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v4, v2, v0, v3}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    move-object v5, v1

    move-object v3, v6

    move-object v6, v7

    move v10, v8

    move v4, v12

    move-object v12, v14

    move-object v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v11, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v17, v24

    move-object/from16 v18, v9

    move-object/from16 v9, v23

    goto :goto_30

    :cond_41
    invoke-virtual {v0}, Lr0/q;->W()V

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object v3, v8

    move-object v7, v12

    move v4, v14

    move-object v5, v15

    move-object/from16 v8, p7

    move-object/from16 v12, p11

    move/from16 v14, p13

    move/from16 v15, p14

    :goto_30
    invoke-virtual {v0}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_42

    move-object v1, v0

    new-instance v0, Lo0/e2;

    move-object/from16 v2, p1

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v21}, Lo0/e2;-><init>(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;III)V

    move-object/from16 v1, v37

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_42
    return-void
.end method

.method public static final b(Li9/e;Li9/f;Li9/e;Li9/e;Li9/e;Li9/e;Li9/e;ZLo0/a5;Lp0/x;Li9/c;Lz0/d;Li9/e;Lu/s0;Lr0/q;II)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v0, p11

    move-object/from16 v15, p12

    move-object/from16 v13, p13

    move-object/from16 v8, p14

    move/from16 v9, p15

    move/from16 v11, p16

    sget-object v12, Lf1/c;->p:Lf1/j;

    sget-object v14, Lf1/c;->l:Lf1/j;

    move-object/from16 v16, v12

    const v12, 0x2cec89be

    invoke-virtual {v8, v12}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v12, v9, 0x6

    move/from16 v17, v12

    sget-object v12, Lf1/o;->a:Lf1/o;

    move-object/from16 v18, v14

    if-nez v17, :cond_1

    invoke-virtual {v8, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x4

    goto :goto_0

    :cond_0
    const/16 v17, 0x2

    :goto_0
    or-int v17, v9, v17

    goto :goto_1

    :cond_1
    move/from16 v17, v9

    :goto_1
    and-int/lit8 v20, v9, 0x30

    const/16 v21, 0x10

    if-nez v20, :cond_3

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x20

    goto :goto_2

    :cond_2
    move/from16 v20, v21

    :goto_2
    or-int v17, v17, v20

    :cond_3
    and-int/lit16 v14, v9, 0x180

    const/16 v22, 0x80

    const/16 v23, 0x100

    if-nez v14, :cond_5

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move/from16 v14, v23

    goto :goto_3

    :cond_4
    move/from16 v14, v22

    :goto_3
    or-int v17, v17, v14

    :cond_5
    and-int/lit16 v14, v9, 0xc00

    const/16 v24, 0x400

    const/16 v25, 0x800

    if-nez v14, :cond_7

    invoke-virtual {v8, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move/from16 v14, v25

    goto :goto_4

    :cond_6
    move/from16 v14, v24

    :goto_4
    or-int v17, v17, v14

    :cond_7
    and-int/lit16 v14, v9, 0x6000

    const/16 v26, 0x2000

    if-nez v14, :cond_9

    invoke-virtual {v8, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/16 v14, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v14, v26

    :goto_5
    or-int v17, v17, v14

    :cond_9
    const/high16 v14, 0x30000

    and-int v14, p15, v14

    if-nez v14, :cond_b

    invoke-virtual {v8, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v14, 0x10000

    :goto_6
    or-int v17, v17, v14

    :cond_b
    const/high16 v14, 0x180000

    and-int v14, p15, v14

    if-nez v14, :cond_d

    invoke-virtual {v8, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/high16 v14, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v14, 0x80000

    :goto_7
    or-int v17, v17, v14

    :cond_d
    const/high16 v14, 0xc00000

    and-int v14, p15, v14

    if-nez v14, :cond_f

    invoke-virtual {v8, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/high16 v14, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v14, 0x400000

    :goto_8
    or-int v17, v17, v14

    :cond_f
    const/high16 v14, 0x6000000

    and-int v14, p15, v14

    if-nez v14, :cond_11

    move/from16 v14, p7

    invoke-virtual {v8, v14}, Lr0/q;->h(Z)Z

    move-result v28

    if-eqz v28, :cond_10

    const/high16 v28, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v28, 0x2000000

    :goto_9
    or-int v17, v17, v28

    goto :goto_a

    :cond_11
    move/from16 v14, p7

    :goto_a
    const/high16 v28, 0x30000000

    and-int v28, p15, v28

    move-object/from16 v9, p8

    if-nez v28, :cond_13

    invoke-virtual {v8, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    const/high16 v30, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v30, 0x10000000

    :goto_b
    or-int v17, v17, v30

    :cond_13
    and-int/lit8 v30, v11, 0x6

    if-nez v30, :cond_16

    and-int/lit8 v30, v11, 0x8

    if-nez v30, :cond_14

    invoke-virtual {v8, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v30

    goto :goto_c

    :cond_14
    invoke-virtual {v8, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v30

    :goto_c
    if-eqz v30, :cond_15

    const/16 v30, 0x4

    goto :goto_d

    :cond_15
    const/16 v30, 0x2

    :goto_d
    or-int v30, v11, v30

    goto :goto_e

    :cond_16
    move/from16 v30, v11

    :goto_e
    and-int/lit8 v31, v11, 0x30

    move-object/from16 v9, p10

    if-nez v31, :cond_18

    invoke-virtual {v8, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_17

    const/16 v21, 0x20

    :cond_17
    or-int v30, v30, v21

    :cond_18
    and-int/lit16 v9, v11, 0x180

    if-nez v9, :cond_1a

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    move/from16 v22, v23

    :cond_19
    or-int v30, v30, v22

    :cond_1a
    and-int/lit16 v9, v11, 0xc00

    if-nez v9, :cond_1c

    invoke-virtual {v8, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    move/from16 v24, v25

    :cond_1b
    or-int v30, v30, v24

    :cond_1c
    and-int/lit16 v9, v11, 0x6000

    if-nez v9, :cond_1e

    invoke-virtual {v8, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const/16 v26, 0x4000

    :cond_1d
    or-int v30, v30, v26

    :cond_1e
    move/from16 v9, v30

    const v21, 0x12492493

    and-int v11, v17, v21

    move-object/from16 v21, v12

    const v12, 0x12492492

    if-ne v11, v12, :cond_20

    and-int/lit16 v11, v9, 0x2493

    const/16 v12, 0x2492

    if-eq v11, v12, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v11, 0x0

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v11, 0x1

    :goto_10
    and-int/lit8 v12, v17, 0x1

    invoke-virtual {v8, v12, v11}, Lr0/q;->T(IZ)Z

    move-result v11

    if-eqz v11, :cond_51

    invoke-static {v8}, Lp0/y;->f(Lr0/q;)F

    move-result v14

    and-int/lit8 v11, v9, 0x70

    const/16 v12, 0x20

    if-ne v11, v12, :cond_21

    const/4 v11, 0x1

    goto :goto_11

    :cond_21
    const/4 v11, 0x0

    :goto_11
    const/high16 v12, 0xe000000

    and-int v12, v17, v12

    const/high16 v15, 0x4000000

    if-ne v12, v15, :cond_22

    const/4 v12, 0x1

    goto :goto_12

    :cond_22
    const/4 v12, 0x0

    :goto_12
    or-int/2addr v11, v12

    const/high16 v12, 0x70000000

    and-int v12, v17, v12

    const/high16 v15, 0x20000000

    if-ne v12, v15, :cond_23

    const/4 v12, 0x1

    goto :goto_13

    :cond_23
    const/4 v12, 0x0

    :goto_13
    or-int/2addr v11, v12

    and-int/lit8 v15, v9, 0xe

    const/4 v12, 0x4

    if-eq v15, v12, :cond_25

    and-int/lit8 v19, v9, 0x8

    if-eqz v19, :cond_24

    invoke-virtual {v8, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    goto :goto_14

    :cond_24
    const/16 v19, 0x0

    goto :goto_15

    :cond_25
    :goto_14
    const/16 v19, 0x1

    :goto_15
    or-int v11, v11, v19

    const v19, 0xe000

    and-int v12, v9, v19

    move/from16 v19, v9

    const/16 v9, 0x4000

    if-ne v12, v9, :cond_26

    const/4 v9, 0x1

    goto :goto_16

    :cond_26
    const/4 v9, 0x0

    :goto_16
    or-int/2addr v9, v11

    invoke-virtual {v8, v14}, Lr0/q;->d(F)Z

    move-result v11

    or-int/2addr v9, v11

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lr0/m;->a:Lr0/e;

    if-nez v9, :cond_28

    if-ne v11, v12, :cond_27

    goto :goto_17

    :cond_27
    move-object/from16 v1, v16

    move/from16 v16, v15

    move-object v15, v1

    move-object v3, v8

    move-object/from16 v32, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    const/4 v7, 0x2

    goto :goto_18

    :cond_28
    :goto_17
    new-instance v8, Lo0/l2;

    move-object/from16 v1, v16

    move/from16 v16, v15

    move-object v15, v1

    move-object/from16 v11, p8

    move-object/from16 v9, p10

    move-object/from16 v3, p14

    move-object/from16 v32, v12

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    const/4 v7, 0x2

    move-object v12, v10

    move/from16 v10, p7

    invoke-direct/range {v8 .. v14}, Lo0/l2;-><init>(Li9/c;ZLo0/a5;Lp0/x;Lu/s0;F)V

    invoke-virtual {v3, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v11, v8

    :goto_18
    check-cast v11, Lo0/l2;

    sget-object v8, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v3, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb3/m;

    move-object v9, v8

    iget-wide v7, v3, Lr0/q;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v2, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v12

    sget-object v18, Le2/h;->b:Le2/g;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v9

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    move/from16 v21, v14

    iget-boolean v14, v3, Lr0/q;->S:Z

    if-eqz v14, :cond_29

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_19

    :cond_29
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_19
    sget-object v14, Le2/g;->f:Le2/e;

    invoke-static {v14, v11, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v11, Le2/g;->e:Le2/e;

    invoke-static {v11, v8, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->g:Le2/e;

    iget-boolean v10, v3, Lr0/q;->S:Z

    if-nez v10, :cond_2a

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v10, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    :cond_2a
    invoke-static {v7, v3, v7, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_2b
    sget-object v6, Le2/g;->d:Le2/e;

    invoke-static {v6, v12, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v7, v19, 0x6

    and-int/lit8 v7, v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_2f

    const v7, 0x7fe3b06d

    invoke-virtual {v3, v7}, Lr0/q;->b0(I)V

    const-string v7, "Leading"

    invoke-static {v2, v7}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v7

    sget-object v10, Lo0/v1;->a:Lo0/v1;

    invoke-interface {v7, v10}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v7

    const/4 v10, 0x0

    invoke-static {v15, v10}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v12

    move-object v10, v1

    iget-wide v0, v3, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    invoke-static {v7, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v3}, Lr0/q;->e0()V

    move-object/from16 v23, v10

    iget-boolean v10, v3, Lr0/q;->S:Z

    if-eqz v10, :cond_2c

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1a

    :cond_2c
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_1a
    invoke-static {v14, v12, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v1, v3, Lr0/q;->S:Z

    if-nez v1, :cond_2d

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_2d
    invoke-static {v0, v3, v0, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_2e
    invoke-static {v6, v7, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v17, 0xc

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lr0/q;->q(Z)V

    goto :goto_1b

    :cond_2f
    move-object/from16 v23, v1

    const/4 v10, 0x0

    const v0, 0x7fe7716d

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v10}, Lr0/q;->q(Z)V

    :goto_1b
    if-eqz v5, :cond_33

    const v0, 0x7fe8184b

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    const-string v0, "Trailing"

    invoke-static {v2, v0}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v0

    sget-object v1, Lo0/v1;->a:Lo0/v1;

    invoke-interface {v0, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-static {v15, v10}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v12, v3, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v10

    invoke-static {v0, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-eqz v12, :cond_30

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1c

    :cond_30
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_1c
    invoke-static {v14, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v10, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v1, v3, Lr0/q;->S:Z

    if-nez v1, :cond_31

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v1, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    :cond_31
    invoke-static {v7, v3, v7, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_32
    invoke-static {v6, v0, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v17, 0xf

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lr0/q;->q(Z)V

    :goto_1d
    move-object/from16 v13, p13

    move-object/from16 v0, v18

    goto :goto_1e

    :cond_33
    const v0, 0x7febe0cd

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v10}, Lr0/q;->q(Z)V

    goto :goto_1d

    :goto_1e
    invoke-static {v13, v0}, Lu/b;->g(Lu/s0;Lb3/m;)F

    move-result v1

    invoke-static {v13, v0}, Lu/b;->f(Lu/s0;Lb3/m;)F

    move-result v0

    if-eqz v4, :cond_34

    sub-float v1, v1, v21

    int-to-float v7, v10

    cmpg-float v12, v1, v7

    if-gez v12, :cond_34

    move v1, v7

    :cond_34
    move/from16 v25, v1

    if-eqz v5, :cond_35

    sub-float v0, v0, v21

    int-to-float v1, v10

    cmpg-float v7, v0, v1

    if-gez v7, :cond_35

    move v0, v1

    :cond_35
    const/4 v1, 0x0

    if-eqz p5, :cond_39

    const v7, 0x7ff69eb8

    invoke-virtual {v3, v7}, Lr0/q;->b0(I)V

    const-string v7, "Prefix"

    invoke-static {v2, v7}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v7

    sget v10, Lp0/y;->d:F

    const/4 v12, 0x2

    invoke-static {v7, v10, v1, v12}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v7

    invoke-static {v7}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v24

    sget v27, Lp0/y;->c:F

    const/16 v28, 0x0

    const/16 v29, 0xa

    const/16 v26, 0x0

    invoke-static/range {v24 .. v29}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v7

    move-object/from16 v10, v23

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v15

    move-object/from16 v21, v2

    iget-wide v1, v3, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v7, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v7

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-eqz v12, :cond_36

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_1f

    :cond_36
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_1f
    invoke-static {v14, v15, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v2, v3, Lr0/q;->S:Z

    if-nez v2, :cond_37

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    :cond_37
    invoke-static {v1, v3, v1, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_38
    invoke-static {v6, v7, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v1, v17, 0x12

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-interface {v2, v3, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lr0/q;->q(Z)V

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lr0/q;->q(Z)V

    goto :goto_20

    :cond_39
    move-object/from16 v21, v2

    move-object/from16 v10, v23

    const/4 v12, 0x0

    move-object/from16 v2, p5

    const v1, 0x7ffb9ecd

    invoke-virtual {v3, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v12}, Lr0/q;->q(Z)V

    :goto_20
    if-eqz p6, :cond_3d

    const v1, 0x7ffc47ba

    invoke-virtual {v3, v1}, Lr0/q;->b0(I)V

    const-string v1, "Suffix"

    move-object/from16 v7, v21

    invoke-static {v7, v1}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v1

    sget v12, Lp0/y;->d:F

    move/from16 v29, v0

    const/4 v0, 0x2

    const/4 v15, 0x0

    invoke-static {v1, v12, v15, v0}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    invoke-static {v1}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v26

    sget v27, Lp0/y;->c:F

    const/16 v30, 0x0

    const/16 v31, 0xa

    const/16 v28, 0x0

    invoke-static/range {v26 .. v31}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v10, v1}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v15

    iget-wide v12, v3, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v12

    invoke-static {v0, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v13, v3, Lr0/q;->S:Z

    if-eqz v13, :cond_3a

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_21

    :cond_3a
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_21
    invoke-static {v14, v15, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v12, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-nez v12, :cond_3b

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3c

    :cond_3b
    invoke-static {v1, v3, v1, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_3c
    invoke-static {v6, v0, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v17, 0x15

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-interface {v1, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    goto :goto_22

    :cond_3d
    move-object/from16 v1, p6

    move/from16 v29, v0

    move-object/from16 v7, v21

    const/4 v0, 0x0

    const v12, -0x7ffebfb3

    invoke-virtual {v3, v12}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    :goto_22
    sget v12, Lp0/y;->d:F

    const/4 v13, 0x2

    const/4 v15, 0x0

    invoke-static {v7, v12, v15, v13}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v33

    if-nez v2, :cond_3e

    move/from16 v34, v25

    goto :goto_23

    :cond_3e
    int-to-float v13, v0

    move/from16 v34, v13

    :goto_23
    if-nez v1, :cond_3f

    move/from16 v36, v29

    goto :goto_24

    :cond_3f
    int-to-float v13, v0

    move/from16 v36, v13

    :goto_24
    const/16 v37, 0x0

    const/16 v38, 0xa

    const/16 v35, 0x0

    invoke-static/range {v33 .. v38}, Lu/b;->t(Lf1/r;FFFFI)Lf1/r;

    move-result-object v0

    if-eqz p1, :cond_40

    const v13, -0x7ff91a72

    invoke-virtual {v3, v13}, Lr0/q;->b0(I)V

    const-string v13, "Hint"

    invoke-static {v7, v13}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v13

    invoke-interface {v13, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v13

    shr-int/lit8 v15, v17, 0x3

    and-int/lit8 v15, v15, 0x70

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v12, p1

    invoke-interface {v12, v13, v3, v15}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    goto :goto_25

    :cond_40
    move-object/from16 v12, p1

    const/4 v13, 0x0

    const v15, -0x7ff7b5d3

    invoke-virtual {v3, v15}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    :goto_25
    const-string v13, "TextField"

    invoke-static {v7, v13}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v13

    invoke-interface {v13, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    const/4 v13, 0x1

    invoke-static {v10, v13}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v15

    iget-wide v1, v3, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v2

    invoke-static {v0, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v13, v3, Lr0/q;->S:Z

    if-eqz v13, :cond_41

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_26

    :cond_41
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_26
    invoke-static {v14, v15, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v2, v3, Lr0/q;->S:Z

    if-nez v2, :cond_42

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v2, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    :cond_42
    invoke-static {v1, v3, v1, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_43
    invoke-static {v6, v0, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v17, 0x3

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-interface {v1, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    if-eqz p2, :cond_4c

    const v0, -0x7fedc0ae

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    move/from16 v0, v16

    const/4 v2, 0x4

    if-eq v0, v2, :cond_46

    and-int/lit8 v0, v19, 0x8

    if-eqz v0, :cond_44

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_27

    :cond_44
    move-object/from16 v0, p9

    :cond_45
    const/4 v2, 0x0

    goto :goto_28

    :cond_46
    move-object/from16 v0, p9

    :goto_27
    const/4 v2, 0x1

    :goto_28
    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v2, :cond_47

    move-object/from16 v2, v32

    if-ne v13, v2, :cond_48

    :cond_47
    new-instance v13, Lad/t;

    const/16 v2, 0x1a

    invoke-direct {v13, v2, v0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v13}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_48
    check-cast v13, Li9/a;

    new-instance v2, Lod/l6;

    const/4 v15, 0x6

    invoke-direct {v2, v13, v15}, Lod/l6;-><init>(Li9/a;I)V

    invoke-static {v7, v2}, Lc2/x;->k(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v2

    invoke-static {v2}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v2

    const-string v13, "Label"

    invoke-static {v2, v13}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v2

    invoke-interface {v2, v7}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v15

    iget-wide v0, v3, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    invoke-static {v2, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v13, v3, Lr0/q;->S:Z

    if-eqz v13, :cond_49

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_29

    :cond_49
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_29
    invoke-static {v14, v15, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v1, v3, Lr0/q;->S:Z

    if-nez v1, :cond_4a

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v1, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    :cond_4a
    invoke-static {v0, v3, v0, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_4b
    invoke-static {v6, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v17, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-interface {v1, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    goto :goto_2a

    :cond_4c
    move-object/from16 v1, p2

    const/4 v13, 0x0

    const v0, -0x7fe7b9d3

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    :goto_2a
    if-eqz p12, :cond_50

    const v0, -0x7fe6fc50

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    const-string v0, "Supporting"

    invoke-static {v7, v0}, Lc2/x;->l(Lf1/r;Ljava/lang/Object;)Lf1/r;

    move-result-object v0

    sget v2, Lp0/y;->f:F

    const/4 v7, 0x2

    const/4 v15, 0x0

    invoke-static {v0, v2, v15, v7}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    invoke-static {v0}, Lu/b1;->s(Lf1/r;)Lf1/r;

    move-result-object v0

    sget v2, Lp0/y;->a:F

    sget v7, Lp0/y;->b:F

    const/4 v13, 0x0

    int-to-float v13, v13

    new-instance v15, Lu/s0;

    invoke-direct {v15, v2, v7, v2, v13}, Lu/s0;-><init>(FFFF)V

    invoke-static {v0, v15}, Lu/b;->o(Lf1/r;Lu/s0;)Lf1/r;

    move-result-object v0

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v2

    iget-wide v4, v3, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v0, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v7, v3, Lr0/q;->S:Z

    if-eqz v7, :cond_4d

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_2b

    :cond_4d
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_2b
    invoke-static {v14, v2, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v11, v5, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-boolean v2, v3, Lr0/q;->S:Z

    if-nez v2, :cond_4e

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    :cond_4e
    invoke-static {v4, v3, v4, v8}, Lm/a;->q(ILr0/q;ILe2/e;)V

    :cond_4f
    invoke-static {v6, v0, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v19, 0x9

    and-int/lit8 v0, v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v15, p12

    invoke-interface {v15, v3, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    goto :goto_2c

    :cond_50
    move-object/from16 v15, p12

    const/4 v0, 0x1

    const/4 v13, 0x0

    const v2, -0x7fe1de33

    invoke-virtual {v3, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v3, v13}, Lr0/q;->q(Z)V

    :goto_2c
    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    goto :goto_2d

    :cond_51
    move-object/from16 v15, p12

    move-object v12, v2

    move-object v1, v3

    move-object v3, v8

    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_2d
    invoke-virtual {v3}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_52

    move-object v2, v0

    new-instance v0, Lo0/f2;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v14, p13

    move/from16 v16, p16

    move-object v3, v1

    move-object/from16 v39, v2

    move-object v2, v12

    move-object v13, v15

    move-object/from16 v1, p0

    move-object/from16 v12, p11

    move/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Lo0/f2;-><init>(Li9/e;Li9/f;Li9/e;Li9/e;Li9/e;Li9/e;Li9/e;ZLo0/a5;Lp0/x;Li9/c;Lz0/d;Li9/e;Lu/s0;II)V

    move-object/from16 v2, v39

    iput-object v0, v2, Lr0/n1;->d:Li9/e;

    :cond_52
    return-void
.end method
