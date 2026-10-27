.class public abstract Lp0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    int-to-float v0, v0

    sput v0, Lp0/y;->a:F

    const/4 v1, 0x4

    int-to-float v1, v1

    sput v1, Lp0/y;->b:F

    const/4 v1, 0x2

    int-to-float v1, v1

    sput v1, Lp0/y;->c:F

    const/16 v1, 0x18

    int-to-float v1, v1

    sput v1, Lp0/y;->d:F

    sput v0, Lp0/y;->e:F

    sput v0, Lp0/y;->f:F

    return-void
.end method

.method public static final a(Ljava/lang/CharSequence;Li9/e;Lo0/a5;Li9/f;Li9/e;Li9/e;Li9/e;ZZZLs/i;Lu/s0;Lo0/x4;Lz0/d;Lr0/q;II)V
    .locals 45

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move/from16 v9, p15

    move/from16 v10, p16

    sget-object v11, Lr0/e;->r:Lr0/e;

    sget-object v12, Lm/g;->n:Lm/g;

    sget-object v16, Lp0/z;->l:[Lp0/z;

    move-object/from16 v23, v11

    const v11, 0x20979528

    invoke-virtual {v8, v11}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v11, v9, 0x6

    move/from16 v16, v11

    const/4 v11, 0x1

    if-nez v16, :cond_1

    invoke-virtual {v8, v11}, Lr0/q;->e(I)Z

    move-result v16

    if-eqz v16, :cond_0

    const/16 v16, 0x4

    goto :goto_0

    :cond_0
    const/16 v16, 0x2

    :goto_0
    or-int v16, v9, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v9

    :goto_1
    and-int/lit8 v17, v9, 0x30

    const/16 v18, 0x10

    const/16 v19, 0x20

    move-object/from16 v11, p0

    if-nez v17, :cond_3

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    move/from16 v17, v19

    goto :goto_2

    :cond_2
    move/from16 v17, v18

    :goto_2
    or-int v16, v16, v17

    :cond_3
    and-int/lit16 v11, v9, 0x180

    const/16 v17, 0x80

    const/16 v20, 0x100

    if-nez v11, :cond_5

    move-object/from16 v11, p1

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move/from16 v21, v20

    goto :goto_3

    :cond_4
    move/from16 v21, v17

    :goto_3
    or-int v16, v16, v21

    goto :goto_4

    :cond_5
    move-object/from16 v11, p1

    :goto_4
    and-int/lit16 v11, v9, 0xc00

    const/16 v21, 0x400

    move/from16 v22, v11

    if-nez v22, :cond_7

    invoke-virtual {v8, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x800

    goto :goto_5

    :cond_6
    move/from16 v22, v21

    :goto_5
    or-int v16, v16, v22

    :cond_7
    and-int/lit16 v11, v9, 0x6000

    const/16 v22, 0x2000

    const/16 v26, 0x4000

    if-nez v11, :cond_9

    invoke-virtual {v8, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v11, v26

    goto :goto_6

    :cond_8
    move/from16 v11, v22

    :goto_6
    or-int v16, v16, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int v27, v9, v11

    const/high16 v28, 0x10000

    const/high16 v29, 0x20000

    if-nez v27, :cond_b

    invoke-virtual {v8, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    move/from16 v27, v29

    goto :goto_7

    :cond_a
    move/from16 v27, v28

    :goto_7
    or-int v16, v16, v27

    :cond_b
    const/high16 v27, 0x180000

    and-int v30, v9, v27

    const/high16 v31, 0x80000

    const/high16 v32, 0x100000

    move/from16 v33, v11

    const/4 v11, 0x0

    if-nez v30, :cond_d

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    move/from16 v30, v32

    goto :goto_8

    :cond_c
    move/from16 v30, v31

    :goto_8
    or-int v16, v16, v30

    :cond_d
    const/high16 v30, 0xc00000

    and-int v34, v9, v30

    const/high16 v35, 0x400000

    const/high16 v36, 0x800000

    if-nez v34, :cond_f

    invoke-virtual {v8, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    move/from16 v34, v36

    goto :goto_9

    :cond_e
    move/from16 v34, v35

    :goto_9
    or-int v16, v16, v34

    :cond_f
    const/high16 v34, 0x6000000

    and-int v34, v9, v34

    if-nez v34, :cond_11

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    const/high16 v34, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v34, 0x2000000

    :goto_a
    or-int v16, v16, v34

    :cond_11
    const/high16 v34, 0x30000000

    and-int v34, v9, v34

    if-nez v34, :cond_13

    invoke-virtual {v8, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const/high16 v11, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v11, 0x10000000

    :goto_b
    or-int v16, v16, v11

    :cond_13
    move/from16 v11, v16

    and-int/lit8 v16, v10, 0x6

    if-nez v16, :cond_15

    invoke-virtual {v8, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x4

    goto :goto_c

    :cond_14
    const/16 v16, 0x2

    :goto_c
    or-int v16, v10, v16

    goto :goto_d

    :cond_15
    move/from16 v16, v10

    :goto_d
    and-int/lit8 v34, v10, 0x30

    move/from16 v0, p7

    if-nez v34, :cond_17

    invoke-virtual {v8, v0}, Lr0/q;->h(Z)Z

    move-result v34

    if-eqz v34, :cond_16

    move/from16 v18, v19

    :cond_16
    or-int v16, v16, v18

    :cond_17
    and-int/lit16 v0, v10, 0x180

    if-nez v0, :cond_19

    invoke-virtual {v8, v13}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    move/from16 v17, v20

    :cond_18
    or-int v16, v16, v17

    :cond_19
    and-int/lit16 v0, v10, 0xc00

    if-nez v0, :cond_1b

    invoke-virtual {v8, v14}, Lr0/q;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v21, 0x800

    :cond_1a
    or-int v16, v16, v21

    :cond_1b
    and-int/lit16 v0, v10, 0x6000

    if-nez v0, :cond_1d

    invoke-virtual {v8, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v22, v26

    :cond_1c
    or-int v16, v16, v22

    :cond_1d
    and-int v0, v10, v33

    if-nez v0, :cond_1f

    invoke-virtual {v8, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move/from16 v28, v29

    :cond_1e
    or-int v16, v16, v28

    :cond_1f
    and-int v0, v10, v27

    if-nez v0, :cond_21

    invoke-virtual {v8, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move/from16 v31, v32

    :cond_20
    or-int v16, v16, v31

    :cond_21
    and-int v0, v10, v30

    if-nez v0, :cond_23

    invoke-virtual {v8, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move/from16 v35, v36

    :cond_22
    or-int v16, v16, v35

    :cond_23
    move/from16 v0, v16

    const v16, 0x12492493

    move/from16 v26, v0

    and-int v0, v11, v16

    const v2, 0x12492492

    if-ne v0, v2, :cond_25

    const v0, 0x492493

    and-int v0, v26, v0

    const v2, 0x492492

    if-eq v0, v2, :cond_24

    goto :goto_e

    :cond_24
    const/4 v0, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v0, 0x1

    :goto_f
    and-int/lit8 v2, v11, 0x1

    invoke-virtual {v8, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_64

    shr-int/lit8 v0, v26, 0xc

    and-int/lit8 v0, v0, 0xe

    invoke-static {v15, v8, v0}, Lc6/o;->K(Ls/i;Lr0/q;I)Lr0/u0;

    move-result-object v0

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v2, Lp0/k;->l:Lp0/k;

    goto :goto_10

    :cond_26
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_27

    sget-object v2, Lp0/k;->m:Lp0/k;

    goto :goto_10

    :cond_27
    sget-object v2, Lp0/k;->n:Lp0/k;

    :goto_10
    if-nez p8, :cond_28

    iget-wide v13, v6, Lo0/x4;->z:J

    :goto_11
    move/from16 v28, v0

    goto :goto_12

    :cond_28
    if-eqz p9, :cond_29

    iget-wide v13, v6, Lo0/x4;->A:J

    goto :goto_11

    :cond_29
    if-eqz v0, :cond_2a

    iget-wide v13, v6, Lo0/x4;->x:J

    goto :goto_11

    :cond_2a
    iget-wide v13, v6, Lo0/x4;->y:J

    goto :goto_11

    :goto_12
    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v8, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v5, v0, Lo0/h5;->j:Lp2/m0;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    move-object/from16 v29, v5

    invoke-virtual/range {v29 .. v29}, Lp2/m0;->b()J

    move-result-wide v4

    sget-wide v6, Lm1/p;->g:J

    invoke-static {v4, v5, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v0}, Lp2/m0;->b()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v4

    if-eqz v4, :cond_2c

    :cond_2b
    invoke-virtual/range {v29 .. v29}, Lp2/m0;->b()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v0}, Lp2/m0;->b()J

    move-result-wide v4

    invoke-static {v4, v5, v6, v7}, Lm1/p;->c(JJ)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    const/4 v9, 0x1

    goto :goto_13

    :cond_2d
    const/4 v9, 0x0

    :goto_13
    invoke-virtual {v0}, Lp2/m0;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    if-eqz v9, :cond_2f

    cmp-long v16, v4, v6

    if-eqz v16, :cond_2e

    goto :goto_14

    :cond_2e
    move-wide v4, v13

    :cond_2f
    :goto_14
    invoke-virtual/range {v29 .. v29}, Lp2/m0;->b()J

    move-result-wide v16

    if-eqz v9, :cond_31

    cmp-long v6, v16, v6

    if-eqz v6, :cond_30

    goto :goto_15

    :cond_30
    move-wide v6, v13

    goto :goto_16

    :cond_31
    :goto_15
    move-wide/from16 v6, v16

    :goto_16
    if-eqz p3, :cond_32

    const/16 v30, 0x1

    :goto_17
    move-object/from16 v31, v0

    goto :goto_18

    :cond_32
    const/16 v30, 0x0

    goto :goto_17

    :goto_18
    const-string v0, "TextFieldInputState"

    move-wide/from16 v32, v4

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-static {v2, v0, v8, v4, v5}, Ln/m1;->d(Ljava/lang/Object;Ljava/lang/String;Lr0/q;II)Ln/h1;

    move-result-object v0

    iget-object v2, v0, Ln/h1;->d:Lr0/e1;

    sget-object v4, Lq0/q;->m:Lq0/q;

    invoke-static {v4, v8}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v19

    sget-object v20, Ln/d;->j:Ln/o1;

    invoke-virtual {v0}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp0/k;

    const v5, -0x559dce72

    invoke-virtual {v8, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v34, 0x0

    const/high16 v35, 0x3f800000    # 1.0f

    if-eqz v4, :cond_33

    const/4 v5, 0x1

    if-eq v4, v5, :cond_35

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    :cond_33
    move/from16 v4, v35

    :goto_19
    const/4 v5, 0x0

    goto :goto_1a

    :cond_34
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    if-eqz v30, :cond_33

    move/from16 v4, v34

    goto :goto_19

    :goto_1a
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp0/k;

    const v5, -0x559dce72

    invoke-virtual {v8, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_36

    const/4 v5, 0x1

    if-eq v4, v5, :cond_38

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    :cond_36
    move/from16 v4, v35

    :goto_1b
    const/4 v5, 0x0

    goto :goto_1c

    :cond_37
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_38
    if-eqz v30, :cond_36

    move/from16 v4, v34

    goto :goto_1b

    :goto_1c
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual {v0}, Ln/h1;->f()Ln/c1;

    const v4, -0x2a50698e

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    const/high16 v22, 0x30000

    move-object/from16 v16, v0

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v40

    sget-object v0, Lq0/q;->o:Lq0/q;

    invoke-static {v0, v8}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v4

    sget-object v5, Lq0/q;->p:Lq0/q;

    invoke-static {v5, v8}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lp0/k;

    move-object/from16 v36, v2

    const v2, -0x4128d333

    invoke-virtual {v8, v2}, Lr0/q;->b0(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v37, v4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3a

    const/4 v4, 0x2

    if-ne v2, v4, :cond_39

    :goto_1d
    move/from16 v2, v34

    :goto_1e
    const/4 v4, 0x0

    goto :goto_20

    :cond_39
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3a
    if-eqz v30, :cond_3b

    goto :goto_1d

    :cond_3b
    :goto_1f
    move/from16 v2, v35

    goto :goto_1e

    :cond_3c
    move-object/from16 v37, v4

    goto :goto_1f

    :goto_20
    invoke-virtual {v8, v4}, Lr0/q;->q(Z)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0/k;

    const v4, -0x4128d333

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3d

    :goto_21
    move/from16 v2, v34

    :goto_22
    const/4 v4, 0x0

    goto :goto_23

    :cond_3d
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3e
    if-eqz v30, :cond_3f

    goto :goto_21

    :cond_3f
    move/from16 v2, v35

    goto :goto_22

    :goto_23
    invoke-virtual {v8, v4}, Lr0/q;->q(Z)V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ln/h1;->f()Ln/c1;

    move-result-object v2

    const v4, -0x3aa6c997

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lp0/k;->l:Lp0/k;

    move-object/from16 v19, v5

    sget-object v5, Lp0/k;->m:Lp0/k;

    invoke-virtual {v2, v4, v5}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v21

    if-eqz v21, :cond_42

    :cond_40
    move-object/from16 v19, v37

    :cond_41
    :goto_24
    const/4 v5, 0x0

    goto :goto_25

    :cond_42
    invoke-virtual {v2, v5, v4}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v4

    if-nez v4, :cond_41

    sget-object v4, Lp0/k;->n:Lp0/k;

    invoke-virtual {v2, v4, v5}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_24

    :goto_25
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp0/k;

    const v5, -0x4b028119

    invoke-virtual {v8, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_43

    const/4 v5, 0x1

    if-eq v4, v5, :cond_45

    const/4 v5, 0x2

    if-ne v4, v5, :cond_44

    :cond_43
    move/from16 v4, v35

    :goto_26
    const/4 v5, 0x0

    goto :goto_27

    :cond_44
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_45
    if-eqz v30, :cond_43

    move/from16 v4, v34

    goto :goto_26

    :goto_27
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp0/k;

    move-object/from16 v18, v4

    const v4, -0x4b028119

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_46

    const/4 v5, 0x1

    if-eq v4, v5, :cond_48

    const/4 v5, 0x2

    if-ne v4, v5, :cond_47

    :cond_46
    move/from16 v34, v35

    :goto_28
    const/4 v5, 0x0

    goto :goto_29

    :cond_47
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_48
    if-eqz v30, :cond_46

    goto :goto_28

    :goto_29
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ln/h1;->f()Ln/c1;

    move-object/from16 v17, v4

    const v4, 0x7ebca8cb

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    move-object/from16 v19, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v19

    move-object/from16 v21, v8

    move-object/from16 v19, v37

    invoke-static/range {v16 .. v22}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v4

    invoke-static {v0, v8}, Lo0/z2;->l(Lq0/q;Lr0/q;)Ln/r0;

    move-result-object v19

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/k;

    const v5, -0xc5f552

    invoke-virtual {v8, v5}, Lr0/q;->b0(I)V

    sget-object v17, Lp0/w;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v17, v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_49

    move-wide/from16 v20, v32

    :goto_2a
    const/4 v5, 0x0

    goto :goto_2b

    :cond_49
    move-wide/from16 v20, v6

    goto :goto_2a

    :goto_2b
    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    invoke-static/range {v20 .. v21}, Lm1/p;->f(J)Ln1/c;

    move-result-object v0

    invoke-virtual {v8, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v24, v4

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    move/from16 v20, v5

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-nez v20, :cond_4b

    if-ne v4, v5, :cond_4a

    goto :goto_2c

    :cond_4a
    move-wide/from16 v20, v6

    goto :goto_2d

    :cond_4b
    :goto_2c
    new-instance v4, Landroidx/fragment/app/t;

    move-wide/from16 v20, v6

    const/16 v6, 0x15

    invoke-direct {v4, v6, v0}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    new-instance v0, Ln/o1;

    invoke-direct {v0, v12, v4}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    invoke-virtual {v8, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_2d
    check-cast v4, Ln/o1;

    invoke-virtual/range {v16 .. v16}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/k;

    const v6, -0xc5f552

    invoke-virtual {v8, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v17, v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_4c

    move-wide/from16 v6, v32

    :goto_2e
    const/4 v0, 0x0

    goto :goto_2f

    :cond_4c
    move-wide/from16 v6, v20

    goto :goto_2e

    :goto_2f
    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    new-instance v0, Lm1/p;

    invoke-direct {v0, v6, v7}, Lm1/p;-><init>(J)V

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp0/k;

    const v7, -0xc5f552

    invoke-virtual {v8, v7}, Lr0/q;->b0(I)V

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v17, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4d

    move-wide/from16 v6, v32

    :goto_30
    move-object/from16 v17, v0

    const/4 v0, 0x0

    goto :goto_31

    :cond_4d
    move-wide/from16 v6, v20

    goto :goto_30

    :goto_31
    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    new-instance v0, Lm1/p;

    invoke-direct {v0, v6, v7}, Lm1/p;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Ln/h1;->f()Ln/c1;

    const v6, 0x747961b9

    invoke-virtual {v8, v6}, Lr0/q;->b0(I)V

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    move-object/from16 v18, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v0

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp0/k;

    const v4, -0x1bb38f5d

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    invoke-static {v13, v14}, Lm1/p;->f(J)Ln1/c;

    move-result-object v6

    invoke-virtual {v8, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v7, :cond_4e

    if-ne v4, v5, :cond_4f

    :cond_4e
    new-instance v4, Landroidx/fragment/app/t;

    const/16 v7, 0x15

    invoke-direct {v4, v7, v6}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    new-instance v6, Ln/o1;

    invoke-direct {v6, v12, v4}, Ln/o1;-><init>(Li9/c;Li9/c;)V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_4f
    move-object/from16 v20, v4

    check-cast v20, Ln/o1;

    invoke-virtual/range {v16 .. v16}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp0/k;

    const v4, -0x1bb38f5d

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    new-instance v7, Lm1/p;

    invoke-direct {v7, v13, v14}, Lm1/p;-><init>(J)V

    invoke-virtual/range {v36 .. v36}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lp0/k;

    invoke-virtual {v8, v4}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    new-instance v4, Lm1/p;

    invoke-direct {v4, v13, v14}, Lm1/p;-><init>(J)V

    invoke-virtual/range {v16 .. v16}, Ln/h1;->f()Ln/c1;

    const v12, 0x46fc0e6e

    invoke-virtual {v8, v12}, Lr0/q;->b0(I)V

    invoke-virtual {v8, v6}, Lr0/q;->q(Z)V

    move-object/from16 v18, v4

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    invoke-static/range {v16 .. v22}, Ln/m1;->c(Ln/h1;Ljava/lang/Object;Ljava/lang/Object;Ln/x;Ln/o1;Lr0/q;I)Ln/d1;

    move-result-object v8

    move-object/from16 v14, v21

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_50

    new-instance v4, Lp0/v;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v14, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_50
    move-object v12, v4

    check-cast v12, Lp0/v;

    const/4 v13, 0x0

    if-nez p3, :cond_51

    const v0, -0x70c16e39

    invoke-virtual {v14, v0}, Lr0/q;->b0(I)V

    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lr0/q;->q(Z)V

    move-object/from16 v0, p12

    move-object v15, v5

    move/from16 v43, v11

    move-object v1, v13

    move-object/from16 v16, v1

    move-object/from16 v3, v23

    move-object/from16 v13, v24

    const/16 v25, 0x1

    goto :goto_32

    :cond_51
    const/4 v4, 0x0

    const v6, -0x70c16e38

    invoke-virtual {v14, v6}, Lr0/q;->b0(I)V

    move/from16 v27, v4

    new-instance v4, Lp0/s;

    move-object v10, v0

    move-object v15, v5

    move/from16 v43, v11

    move-object/from16 v16, v13

    move-object/from16 v3, v23

    move-object/from16 v13, v24

    move/from16 v1, v27

    move-object/from16 v5, v29

    move-object/from16 v6, v31

    move-object/from16 v7, v40

    const/16 v25, 0x1

    move-object/from16 v11, p3

    move-object/from16 v0, p12

    invoke-direct/range {v4 .. v12}, Lp0/s;-><init>(Lp2/m0;Lp2/m0;Ln/d1;Ln/d1;ZLn/d1;Li9/f;Lp0/v;)V

    const v5, -0x402b4ec0

    invoke-static {v5, v4, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v4

    invoke-virtual {v14, v1}, Lr0/q;->q(Z)V

    move-object v1, v4

    :goto_32
    if-nez p8, :cond_52

    iget-wide v4, v0, Lo0/x4;->D:J

    :goto_33
    move-wide v6, v4

    goto :goto_34

    :cond_52
    if-eqz p9, :cond_53

    iget-wide v4, v0, Lo0/x4;->E:J

    goto :goto_33

    :cond_53
    if-eqz v28, :cond_54

    iget-wide v4, v0, Lo0/x4;->B:J

    goto :goto_33

    :cond_54
    iget-wide v4, v0, Lo0/x4;->C:J

    goto :goto_33

    :goto_34
    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    const/4 v10, 0x3

    if-ne v4, v15, :cond_55

    new-instance v4, Lm0/w0;

    invoke-direct {v4, v2, v10}, Lm0/w0;-><init>(Lr0/r2;I)V

    sget-object v5, Lr0/n2;->a:Lx2/k;

    new-instance v5, Lr0/d0;

    invoke-direct {v5, v4, v3}, Lr0/d0;-><init>(Li9/a;Lr0/m2;)V

    invoke-virtual {v14, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v5

    :cond_55
    check-cast v4, Lr0/r2;

    if-eqz p4, :cond_56

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_56

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_56

    const v4, -0x70b07c28

    invoke-virtual {v14, v4}, Lr0/q;->b0(I)V

    new-instance v4, Lp0/t;

    move-object/from16 v9, p4

    move-object v5, v2

    move-object/from16 v8, v29

    invoke-direct/range {v4 .. v9}, Lp0/t;-><init>(Ln/d1;JLp2/m0;Li9/e;)V

    const v2, 0x53c6f2c5

    invoke-static {v2, v4, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    goto :goto_35

    :cond_56
    const/4 v5, 0x0

    const v2, -0x70aa6c96

    invoke-virtual {v14, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    move-object/from16 v2, v16

    :goto_35
    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v15, :cond_57

    new-instance v4, Lm0/w0;

    const/4 v5, 0x4

    invoke-direct {v4, v13, v5}, Lm0/w0;-><init>(Lr0/r2;I)V

    sget-object v5, Lr0/n2;->a:Lx2/k;

    new-instance v5, Lr0/d0;

    invoke-direct {v5, v4, v3}, Lr0/d0;-><init>(Li9/a;Lr0/m2;)V

    invoke-virtual {v14, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v4, v5

    :cond_57
    check-cast v4, Lr0/r2;

    const v3, -0x709f7ed6

    invoke-virtual {v14, v3}, Lr0/q;->b0(I)V

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    const v3, -0x7096b376

    invoke-virtual {v14, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    const v3, -0x7094085f

    invoke-virtual {v14, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    if-nez p8, :cond_58

    iget-wide v3, v0, Lo0/x4;->v:J

    goto :goto_36

    :cond_58
    if-eqz p9, :cond_59

    iget-wide v3, v0, Lo0/x4;->w:J

    goto :goto_36

    :cond_59
    if-eqz v28, :cond_5a

    iget-wide v3, v0, Lo0/x4;->t:J

    goto :goto_36

    :cond_5a
    iget-wide v3, v0, Lo0/x4;->u:J

    :goto_36
    if-nez p5, :cond_5b

    const v3, -0x708fc380

    invoke-virtual {v14, v3}, Lr0/q;->b0(I)V

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    move-object/from16 v11, p5

    move-object/from16 v3, v16

    goto :goto_37

    :cond_5b
    const/4 v5, 0x0

    const v6, -0x708fc37f

    invoke-virtual {v14, v6}, Lr0/q;->b0(I)V

    new-instance v6, Lp0/u;

    move-object/from16 v11, p5

    invoke-direct {v6, v3, v4, v11}, Lp0/u;-><init>(JLi9/e;)V

    const v3, 0x4f8b22f9

    invoke-static {v3, v6, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    invoke-virtual {v14, v5}, Lr0/q;->q(Z)V

    :goto_37
    if-nez p8, :cond_5c

    iget-wide v4, v0, Lo0/x4;->H:J

    :goto_38
    move-wide v5, v4

    goto :goto_39

    :cond_5c
    if-eqz p9, :cond_5d

    iget-wide v4, v0, Lo0/x4;->I:J

    goto :goto_38

    :cond_5d
    if-eqz v28, :cond_5e

    iget-wide v4, v0, Lo0/x4;->F:J

    goto :goto_38

    :cond_5e
    iget-wide v4, v0, Lo0/x4;->G:J

    goto :goto_38

    :goto_39
    if-nez p6, :cond_5f

    const v4, -0x708b48fc

    invoke-virtual {v14, v4}, Lr0/q;->b0(I)V

    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Lr0/q;->q(Z)V

    move-object/from16 v4, v16

    goto :goto_3a

    :cond_5f
    const/4 v12, 0x0

    const v4, -0x708b48fb

    invoke-virtual {v14, v4}, Lr0/q;->b0(I)V

    new-instance v4, Lo0/z;

    const/4 v9, 0x1

    move-object/from16 v8, p6

    move-object/from16 v7, v31

    invoke-direct/range {v4 .. v9}, Lo0/z;-><init>(JLjava/lang/Object;Lt8/e;I)V

    const v5, 0x31e62e50

    invoke-static {v5, v4, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v4

    invoke-virtual {v14, v12}, Lr0/q;->q(Z)V

    :goto_3a
    const v5, -0x7075f34a

    invoke-virtual {v14, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v15, :cond_60

    new-instance v5, Ll1/e;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ll1/e;-><init>(J)V

    invoke-static {v5}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v5

    invoke-virtual {v14, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_60
    check-cast v5, Lr0/u0;

    new-instance v6, Lp0/r;

    move-object/from16 v8, p2

    move-object/from16 v13, p11

    move-object/from16 v7, p13

    invoke-direct {v6, v5, v8, v13, v7}, Lp0/r;-><init>(Lr0/u0;Lo0/a5;Lu/s0;Lz0/d;)V

    const v9, 0x1f7a6892

    invoke-static {v9, v6, v14}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    new-instance v36, Lo0/c2;

    const/16 v37, 0x0

    const/16 v38, 0x1

    const-class v39, Lr0/r2;

    const-string v41, "value"

    const-string v42, "getValue()Ljava/lang/Object;"

    invoke-direct/range {v36 .. v42}, Lo0/c2;-><init>(IILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v10

    move-object/from16 v10, v36

    move-object/from16 v9, v40

    new-instance v12, Lp0/x;

    invoke-direct {v12, v10}, Lp0/x;-><init>(Lo0/c2;)V

    move/from16 v10, v43

    and-int/lit16 v0, v10, 0x1c00

    move-object/from16 v18, v1

    const/16 v1, 0x800

    if-ne v0, v1, :cond_61

    goto :goto_3b

    :cond_61
    const/16 v25, 0x0

    :goto_3b
    invoke-virtual {v14, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v25, v0

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_62

    if-ne v1, v15, :cond_63

    :cond_62
    new-instance v1, Lp/o0;

    invoke-direct {v1, v8, v9, v5}, Lp/o0;-><init>(Lo0/a5;Ln/d1;Lr0/u0;)V

    invoke-virtual {v14, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_63
    check-cast v1, Li9/c;

    shr-int/lit8 v0, v10, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x6

    shl-int/lit8 v5, v26, 0x15

    const/high16 v9, 0xe000000

    and-int/2addr v5, v9

    or-int/2addr v0, v5

    shl-int/lit8 v5, v10, 0x12

    const/high16 v9, 0x70000000

    and-int/2addr v5, v9

    or-int v15, v0, v5

    const v0, 0xe000

    shr-int/lit8 v5, v26, 0x3

    and-int/2addr v0, v5

    or-int/lit16 v0, v0, 0x180

    move-object/from16 v5, v16

    move-object v11, v6

    move-object/from16 v6, v16

    move/from16 v7, p7

    move-object v10, v1

    move-object v1, v2

    move-object v9, v12

    move-object/from16 v2, v18

    move-object v12, v4

    move-object v4, v3

    move-object/from16 v3, v16

    move/from16 v16, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v16}, Lo0/j2;->b(Li9/e;Li9/f;Li9/e;Li9/e;Li9/e;Li9/e;Li9/e;ZLo0/a5;Lp0/x;Li9/c;Lz0/d;Li9/e;Lu/s0;Lr0/q;II)V

    move-object v8, v14

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Lr0/q;->q(Z)V

    goto :goto_3c

    :cond_64
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_3c
    invoke-virtual {v8}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_65

    move-object v1, v0

    new-instance v0, Lp0/p;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v44, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lp0/p;-><init>(Ljava/lang/CharSequence;Li9/e;Lo0/a5;Li9/f;Li9/e;Li9/e;Li9/e;ZZZLs/i;Lu/s0;Lo0/x4;Lz0/d;II)V

    move-object/from16 v1, v44

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_65
    return-void
.end method

.method public static final b(JLp2/m0;Li9/e;Lr0/q;I)V
    .locals 8

    const v0, 0x17a3cff9

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p4, p0, p1}, Lr0/q;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p5

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, p5, 0x180

    if-nez v1, :cond_3

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p4, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/lit16 v7, v0, 0x3fe

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v7}, Lp0/h;->a(JLp2/m0;Li9/e;Lr0/q;I)V

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :cond_5
    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {v6}, Lr0/q;->u()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v0, Lp0/o;

    const/4 v6, 0x1

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lp0/o;-><init>(JLp2/m0;Li9/e;II)V

    iput-object v0, p0, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final c(JLi9/e;Lr0/q;I)V
    .locals 3

    const v0, 0x2330c171

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p0, p1}, Lr0/q;->f(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    invoke-virtual {p3, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lo0/z0;->a:Lr0/a0;

    new-instance v2, Lm1/p;

    invoke-direct {v2, p0, p1}, Lm1/p;-><init>(J)V

    invoke-virtual {v1, v2}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p2, p3, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v0, Lb0/b;

    invoke-direct {v0, p0, p1, p2, p4}, Lb0/b;-><init>(JLi9/e;I)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_4
    return-void
.end method

.method public static final d(Lo0/a5;)Lf1/d;
    .locals 3

    instance-of v0, p0, Lo0/a5;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lo0/a5;->a:Lf1/h;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final e(Lr0/q;)F
    .locals 8

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    iget-object v0, v0, Lp2/m0;->b:Lp2/s;

    iget-wide v0, v0, Lp2/s;->c:J

    sget-wide v2, Lq0/e0;->l:J

    const-wide v4, 0xff00000000L

    and-long/2addr v4, v0

    const-wide v6, 0x100000000L

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    sget-object v2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/c;

    invoke-interface {p0, v0, v1}, Lb3/c;->v(J)F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public static final f(Lr0/q;)F
    .locals 2

    sget-object v0, Lo0/n1;->c:Lr0/s2;

    invoke-virtual {p0, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb3/f;

    iget p0, p0, Lb3/f;->l:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float p0, v1

    :cond_0
    sget v0, Lq0/b0;->a:F

    sub-float/2addr p0, v0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float v0, v1

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    return v0

    :cond_1
    return p0
.end method
