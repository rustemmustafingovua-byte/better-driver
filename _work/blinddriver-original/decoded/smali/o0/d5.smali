.class public abstract Lo0/d5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/k1;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ln/k1;-><init>(I)V

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lo0/d5;->a:Lr0/a0;

    return-void
.end method

.method public static final a(Lp2/m0;Lz0/d;Lr0/q;I)V
    .locals 3

    const v0, 0xe9e0ce

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_2

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    :cond_2
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {p2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/m0;

    invoke-virtual {v2, p0}, Lp2/m0;->d(Lp2/m0;)Lp2/m0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v1

    and-int/lit8 v0, v0, 0x70

    const/16 v2, 0x8

    or-int/2addr v0, v2

    invoke-static {v1, p1, p2, v0}, Lr0/r;->a(Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v0, Lb0/h;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final b(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V
    .locals 40

    move-object/from16 v0, p19

    move/from16 v1, p20

    move/from16 v2, p21

    move/from16 v3, p22

    const v4, 0x6bda414b

    invoke-virtual {v0, v4}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v4, v1, 0x6

    if-nez v4, :cond_1

    move-object/from16 v4, p0

    invoke-virtual {v0, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    :goto_0
    or-int/2addr v7, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p0

    move v7, v1

    :goto_1
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_3

    or-int/lit8 v7, v7, 0x30

    :cond_2
    move-object/from16 v11, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_2

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/16 v12, 0x20

    goto :goto_2

    :cond_4
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v7, v12

    :goto_3
    and-int/lit8 v12, v3, 0x4

    if-eqz v12, :cond_5

    or-int/lit16 v7, v7, 0x180

    move-wide/from16 v5, p2

    goto :goto_5

    :cond_5
    and-int/lit16 v15, v1, 0x180

    move-wide/from16 v5, p2

    if-nez v15, :cond_7

    invoke-virtual {v0, v5, v6}, Lr0/q;->f(J)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v17, 0x100

    goto :goto_4

    :cond_6
    const/16 v17, 0x80

    :goto_4
    or-int v7, v7, v17

    :cond_7
    :goto_5
    or-int/lit16 v9, v7, 0xc00

    and-int/lit8 v18, v3, 0x10

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-eqz v18, :cond_8

    or-int/lit16 v9, v7, 0x6c00

    move-wide/from16 v10, p4

    goto :goto_7

    :cond_8
    and-int/lit16 v7, v1, 0x6000

    move-wide/from16 v10, p4

    if-nez v7, :cond_a

    invoke-virtual {v0, v10, v11}, Lr0/q;->f(J)Z

    move-result v21

    if-eqz v21, :cond_9

    move/from16 v21, v20

    goto :goto_6

    :cond_9
    move/from16 v21, v19

    :goto_6
    or-int v9, v9, v21

    :cond_a
    :goto_7
    and-int/lit8 v21, v3, 0x20

    const/4 v7, 0x0

    const/high16 v23, 0x10000

    const/high16 v24, 0x30000

    const/high16 v25, 0x20000

    if-eqz v21, :cond_b

    or-int v9, v9, v24

    goto :goto_9

    :cond_b
    and-int v21, v1, v24

    if-nez v21, :cond_d

    invoke-virtual {v0, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move/from16 v21, v25

    goto :goto_8

    :cond_c
    move/from16 v21, v23

    :goto_8
    or-int v9, v9, v21

    :cond_d
    :goto_9
    and-int/lit8 v21, v3, 0x40

    const/high16 v26, 0x80000

    const/high16 v27, 0x100000

    const/high16 v28, 0x180000

    if-eqz v21, :cond_e

    or-int v9, v9, v28

    move-object/from16 v13, p6

    goto :goto_b

    :cond_e
    and-int v29, v1, v28

    move-object/from16 v13, p6

    if-nez v29, :cond_10

    invoke-virtual {v0, v13}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    move/from16 v30, v27

    goto :goto_a

    :cond_f
    move/from16 v30, v26

    :goto_a
    or-int v9, v9, v30

    :cond_10
    :goto_b
    and-int/lit16 v14, v3, 0x80

    const/high16 v31, 0x400000

    const/high16 v32, 0x800000

    const/high16 v33, 0xc00000

    if-eqz v14, :cond_11

    or-int v9, v9, v33

    move-object/from16 v15, p7

    goto :goto_d

    :cond_11
    and-int v34, v1, v33

    move-object/from16 v15, p7

    if-nez v34, :cond_13

    invoke-virtual {v0, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    move/from16 v35, v32

    goto :goto_c

    :cond_12
    move/from16 v35, v31

    :goto_c
    or-int v9, v9, v35

    :cond_13
    :goto_d
    and-int/lit16 v7, v3, 0x100

    const/high16 v36, 0x6000000

    if-eqz v7, :cond_14

    or-int v9, v9, v36

    move-wide/from16 v4, p8

    goto :goto_f

    :cond_14
    and-int v36, v1, v36

    move-wide/from16 v4, p8

    if-nez v36, :cond_16

    invoke-virtual {v0, v4, v5}, Lr0/q;->f(J)Z

    move-result v6

    if-eqz v6, :cond_15

    const/high16 v6, 0x4000000

    goto :goto_e

    :cond_15
    const/high16 v6, 0x2000000

    :goto_e
    or-int/2addr v9, v6

    :cond_16
    :goto_f
    and-int/lit16 v6, v3, 0x200

    const/high16 v36, 0x30000000

    if-eqz v6, :cond_18

    or-int v9, v9, v36

    :cond_17
    const/4 v6, 0x0

    goto :goto_11

    :cond_18
    and-int v6, v1, v36

    if-nez v6, :cond_17

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_19

    const/high16 v35, 0x20000000

    goto :goto_10

    :cond_19
    const/high16 v35, 0x10000000

    :goto_10
    or-int v9, v9, v35

    :goto_11
    and-int/lit16 v6, v3, 0x400

    if-eqz v6, :cond_1a

    or-int/lit8 v16, v2, 0x6

    move-object/from16 v1, p10

    goto :goto_13

    :cond_1a
    and-int/lit8 v36, v2, 0x6

    move-object/from16 v1, p10

    if-nez v36, :cond_1c

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1b

    const/16 v16, 0x4

    goto :goto_12

    :cond_1b
    const/16 v16, 0x2

    :goto_12
    or-int v16, v2, v16

    goto :goto_13

    :cond_1c
    move/from16 v16, v2

    :goto_13
    and-int/lit16 v1, v3, 0x800

    if-eqz v1, :cond_1e

    or-int/lit8 v16, v16, 0x30

    move-wide/from16 v4, p11

    :cond_1d
    :goto_14
    move/from16 v17, v1

    move/from16 v1, v16

    goto :goto_16

    :cond_1e
    and-int/lit8 v34, v2, 0x30

    move-wide/from16 v4, p11

    if-nez v34, :cond_1d

    invoke-virtual {v0, v4, v5}, Lr0/q;->f(J)Z

    move-result v34

    if-eqz v34, :cond_1f

    const/16 v17, 0x20

    goto :goto_15

    :cond_1f
    const/16 v17, 0x10

    :goto_15
    or-int v16, v16, v17

    goto :goto_14

    :goto_16
    and-int/lit16 v4, v3, 0x1000

    if-eqz v4, :cond_21

    or-int/lit16 v1, v1, 0x180

    :cond_20
    move/from16 v5, p13

    goto :goto_18

    :cond_21
    and-int/lit16 v5, v2, 0x180

    if-nez v5, :cond_20

    move/from16 v5, p13

    invoke-virtual {v0, v5}, Lr0/q;->e(I)Z

    move-result v16

    if-eqz v16, :cond_22

    const/16 v29, 0x100

    goto :goto_17

    :cond_22
    const/16 v29, 0x80

    :goto_17
    or-int v1, v1, v29

    :goto_18
    move/from16 v16, v4

    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_23

    or-int/lit16 v1, v1, 0xc00

    goto :goto_1b

    :cond_23
    move/from16 v22, v1

    and-int/lit16 v1, v2, 0xc00

    if-nez v1, :cond_25

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Lr0/q;->h(Z)Z

    move-result v29

    if-eqz v29, :cond_24

    const/16 v29, 0x800

    goto :goto_19

    :cond_24
    const/16 v29, 0x400

    :goto_19
    or-int v22, v22, v29

    :goto_1a
    move/from16 v1, v22

    goto :goto_1b

    :cond_25
    move/from16 v1, p14

    goto :goto_1a

    :goto_1b
    move/from16 v22, v4

    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_27

    or-int/lit16 v1, v1, 0x6000

    move/from16 v29, v1

    :cond_26
    move/from16 v1, p15

    goto :goto_1c

    :cond_27
    move/from16 v29, v1

    and-int/lit16 v1, v2, 0x6000

    if-nez v1, :cond_26

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v30

    if-eqz v30, :cond_28

    move/from16 v19, v20

    :cond_28
    or-int v19, v29, v19

    move/from16 v29, v19

    :goto_1c
    const v19, 0x8000

    and-int v19, v3, v19

    if-eqz v19, :cond_29

    or-int v29, v29, v24

    move/from16 v1, p16

    goto :goto_1e

    :cond_29
    and-int v20, v2, v24

    move/from16 v1, p16

    if-nez v20, :cond_2b

    invoke-virtual {v0, v1}, Lr0/q;->e(I)Z

    move-result v20

    if-eqz v20, :cond_2a

    move/from16 v20, v25

    goto :goto_1d

    :cond_2a
    move/from16 v20, v23

    :goto_1d
    or-int v29, v29, v20

    :cond_2b
    :goto_1e
    and-int v20, v3, v23

    if-eqz v20, :cond_2c

    or-int v29, v29, v28

    move-object/from16 v1, p17

    goto :goto_1f

    :cond_2c
    and-int v23, v2, v28

    move-object/from16 v1, p17

    if-nez v23, :cond_2e

    invoke-virtual {v0, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2d

    move/from16 v26, v27

    :cond_2d
    or-int v29, v29, v26

    :cond_2e
    :goto_1f
    and-int v23, v2, v33

    if-nez v23, :cond_30

    and-int v23, v3, v25

    move-object/from16 v1, p18

    if-nez v23, :cond_2f

    invoke-virtual {v0, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2f

    move/from16 v31, v32

    :cond_2f
    or-int v29, v29, v31

    goto :goto_20

    :cond_30
    move-object/from16 v1, p18

    :goto_20
    const v23, 0x12492493

    and-int v1, v9, v23

    const v2, 0x12492492

    const/4 v3, 0x0

    const/16 v23, 0x1

    if-ne v1, v2, :cond_32

    const v1, 0x492493

    and-int v1, v29, v1

    const v2, 0x492492

    if-eq v1, v2, :cond_31

    goto :goto_21

    :cond_31
    move v1, v3

    goto :goto_22

    :cond_32
    :goto_21
    move/from16 v1, v23

    :goto_22
    and-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Lr0/q;->Y()V

    and-int/lit8 v1, p20, 0x1

    const v2, -0x1c00001

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_23

    :cond_33
    invoke-virtual {v0}, Lr0/q;->W()V

    and-int v1, p22, v25

    if-eqz v1, :cond_34

    and-int v29, v29, v2

    :cond_34
    move-object/from16 v1, p1

    move-wide/from16 v26, p2

    move-wide/from16 v7, p8

    move-object/from16 v6, p10

    move-wide/from16 v17, p11

    move/from16 v12, p14

    move/from16 v4, p15

    move/from16 v23, p16

    move-object/from16 v35, p17

    :cond_35
    move-object/from16 v14, p18

    goto/16 :goto_2d

    :cond_36
    :goto_23
    if-eqz v8, :cond_37

    sget-object v1, Lf1/o;->a:Lf1/o;

    goto :goto_24

    :cond_37
    move-object/from16 v1, p1

    :goto_24
    if-eqz v12, :cond_38

    sget-wide v26, Lm1/p;->g:J

    goto :goto_25

    :cond_38
    move-wide/from16 v26, p2

    :goto_25
    if-eqz v18, :cond_39

    sget-wide v10, Lb3/o;->c:J

    :cond_39
    if-eqz v21, :cond_3a

    const/4 v13, 0x0

    :cond_3a
    if-eqz v14, :cond_3b

    const/4 v15, 0x0

    :cond_3b
    if-eqz v7, :cond_3c

    sget-wide v7, Lb3/o;->c:J

    goto :goto_26

    :cond_3c
    move-wide/from16 v7, p8

    :goto_26
    if-eqz v6, :cond_3d

    const/4 v6, 0x0

    goto :goto_27

    :cond_3d
    move-object/from16 v6, p10

    :goto_27
    if-eqz v17, :cond_3e

    sget-wide v17, Lb3/o;->c:J

    goto :goto_28

    :cond_3e
    move-wide/from16 v17, p11

    :goto_28
    if-eqz v16, :cond_3f

    move/from16 v5, v23

    :cond_3f
    if-eqz v22, :cond_40

    move/from16 v12, v23

    goto :goto_29

    :cond_40
    move/from16 v12, p14

    :goto_29
    if-eqz v4, :cond_41

    const v4, 0x7fffffff

    goto :goto_2a

    :cond_41
    move/from16 v4, p15

    :goto_2a
    if-eqz v19, :cond_42

    goto :goto_2b

    :cond_42
    move/from16 v23, p16

    :goto_2b
    if-eqz v20, :cond_43

    const/16 v35, 0x0

    goto :goto_2c

    :cond_43
    move-object/from16 v35, p17

    :goto_2c
    and-int v14, p22, v25

    if-eqz v14, :cond_35

    sget-object v14, Lo0/d5;->a:Lr0/a0;

    invoke-virtual {v0, v14}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp2/m0;

    and-int v29, v29, v2

    :goto_2d
    invoke-virtual {v0}, Lr0/q;->r()V

    const v2, -0x21b08752

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    const-wide/16 v19, 0x10

    cmp-long v2, v26, v19

    if-eqz v2, :cond_44

    move-object/from16 p14, v1

    move-wide/from16 v21, v26

    goto :goto_2f

    :cond_44
    const v2, -0x21b0844d

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v14}, Lp2/m0;->b()J

    move-result-wide v21

    cmp-long v2, v21, v19

    if-eqz v2, :cond_45

    move-object/from16 p14, v1

    goto :goto_2e

    :cond_45
    sget-object v2, Lo0/z0;->a:Lr0/a0;

    invoke-virtual {v0, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/p;

    move-object/from16 p14, v1

    iget-wide v1, v2, Lm1/p;->a:J

    move-wide/from16 v21, v1

    :goto_2e
    invoke-virtual {v0, v3}, Lr0/q;->q(Z)V

    :goto_2f
    invoke-virtual {v0, v3}, Lr0/q;->q(Z)V

    if-eqz v6, :cond_46

    iget v3, v6, La3/k;->a:I

    :cond_46
    const v1, 0xfd6f50

    move/from16 p13, v1

    move/from16 p10, v3

    move-wide/from16 p8, v7

    move-wide/from16 p4, v10

    move-object/from16 p6, v13

    move-object/from16 p1, v14

    move-object/from16 p7, v15

    move-wide/from16 p11, v17

    move-wide/from16 p2, v21

    invoke-static/range {p1 .. p13}, Lp2/m0;->e(Lp2/m0;JJLt2/k;Lt2/p;JIJI)Lp2/m0;

    move-result-object v1

    and-int/lit8 v2, v9, 0x7e

    shr-int/lit8 v3, v29, 0x9

    and-int/lit16 v3, v3, 0x1c00

    or-int/2addr v2, v3

    shl-int/lit8 v3, v29, 0x6

    const v16, 0xe000

    and-int v16, v3, v16

    or-int v2, v2, v16

    const/high16 v16, 0x70000

    and-int v16, v3, v16

    or-int v2, v2, v16

    const/high16 v16, 0x380000

    and-int v16, v3, v16

    or-int v2, v2, v16

    const/high16 v16, 0x1c00000

    and-int v3, v3, v16

    or-int/2addr v2, v3

    shl-int/lit8 v3, v9, 0x12

    const/high16 v9, 0x70000000

    and-int/2addr v3, v9

    or-int/2addr v2, v3

    const/16 v3, 0x100

    move-object/from16 p1, p0

    move-object/from16 p2, p14

    move-object/from16 p9, v0

    move-object/from16 p3, v1

    move/from16 p10, v2

    move/from16 p11, v3

    move/from16 p7, v4

    move/from16 p5, v5

    move/from16 p6, v12

    move/from16 p8, v23

    move-object/from16 p4, v35

    invoke-static/range {p1 .. p11}, Lb0/n1;->b(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIILr0/q;II)V

    move-object/from16 v1, p2

    move-object v2, v1

    move/from16 v16, v4

    move-object/from16 v19, v14

    move-wide/from16 v3, v26

    move v14, v5

    move-wide/from16 v38, v10

    move-object v11, v6

    move-wide v9, v7

    move-wide/from16 v5, v38

    move-object v7, v13

    move-object v8, v15

    move v15, v12

    move-wide/from16 v12, v17

    move/from16 v17, v23

    move-object/from16 v18, v35

    goto :goto_30

    :cond_47
    invoke-virtual/range {p19 .. p19}, Lr0/q;->W()V

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move v14, v5

    move-wide v5, v10

    move-object v7, v13

    move-object v8, v15

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move/from16 v15, p14

    :goto_30
    invoke-virtual/range {p19 .. p19}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_48

    move-object v1, v0

    new-instance v0, Lo0/b5;

    const/16 v23, 0x0

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v37, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Lo0/b5;-><init>(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;IIII)V

    move-object/from16 v1, v37

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_48
    return-void
.end method

.method public static final c(Lp2/g;Lf1/r;JJJJIZIILjava/util/Map;Li9/c;Lp2/m0;Lr0/q;II)V
    .locals 53

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v14, p17

    move/from16 v0, p18

    move/from16 v2, p19

    const v5, 0x116b5779

    invoke-virtual {v14, v5}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v5, v0, 0x6

    if-nez v5, :cond_1

    invoke-virtual {v14, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v0

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    and-int/lit8 v8, v0, 0x30

    if-nez v8, :cond_3

    move-object/from16 v8, p1

    invoke-virtual {v14, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v5, v11

    goto :goto_3

    :cond_3
    move-object/from16 v8, p1

    :goto_3
    and-int/lit16 v11, v0, 0x180

    if-nez v11, :cond_5

    invoke-virtual {v14, v3, v4}, Lr0/q;->f(J)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_4

    :cond_4
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v5, v11

    :cond_5
    or-int/lit16 v5, v5, 0xc00

    and-int/lit16 v11, v0, 0x6000

    const/16 v16, 0x4000

    move-wide/from16 v9, p4

    if-nez v11, :cond_7

    invoke-virtual {v14, v9, v10}, Lr0/q;->f(J)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v16

    goto :goto_5

    :cond_6
    const/16 v18, 0x2000

    :goto_5
    or-int v5, v5, v18

    :cond_7
    const/high16 v18, 0x30000

    and-int v19, v0, v18

    const/high16 v20, 0x10000

    const/4 v6, 0x0

    const/high16 v22, 0x20000

    if-nez v19, :cond_9

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    move/from16 v19, v22

    goto :goto_6

    :cond_8
    move/from16 v19, v20

    :goto_6
    or-int v5, v5, v19

    :cond_9
    const/high16 v19, 0x180000

    and-int v23, v0, v19

    if-nez v23, :cond_b

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const/high16 v23, 0x100000

    goto :goto_7

    :cond_a
    const/high16 v23, 0x80000

    :goto_7
    or-int v5, v5, v23

    :cond_b
    const/high16 v23, 0xc00000

    and-int v24, v0, v23

    const/high16 v25, 0x400000

    const/high16 v26, 0x800000

    if-nez v24, :cond_d

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    move/from16 v24, v26

    goto :goto_8

    :cond_c
    move/from16 v24, v25

    :goto_8
    or-int v5, v5, v24

    :cond_d
    const/high16 v24, 0x6000000

    and-int v27, v0, v24

    const/high16 v28, 0x2000000

    const/high16 v29, 0x4000000

    move-wide/from16 v11, p6

    if-nez v27, :cond_f

    invoke-virtual {v14, v11, v12}, Lr0/q;->f(J)Z

    move-result v31

    if-eqz v31, :cond_e

    move/from16 v31, v29

    goto :goto_9

    :cond_e
    move/from16 v31, v28

    :goto_9
    or-int v5, v5, v31

    :cond_f
    const/high16 v31, 0x30000000

    and-int v31, v0, v31

    if-nez v31, :cond_11

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    const/high16 v31, 0x20000000

    goto :goto_a

    :cond_10
    const/high16 v31, 0x10000000

    :goto_a
    or-int v5, v5, v31

    :cond_11
    and-int/lit8 v31, v2, 0x6

    if-nez v31, :cond_13

    invoke-virtual {v14, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    const/16 v21, 0x4

    goto :goto_b

    :cond_12
    const/16 v21, 0x2

    :goto_b
    or-int v21, v2, v21

    goto :goto_c

    :cond_13
    move/from16 v21, v2

    :goto_c
    and-int/lit8 v31, v2, 0x30

    move-wide/from16 v7, p8

    if-nez v31, :cond_15

    invoke-virtual {v14, v7, v8}, Lr0/q;->f(J)Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v30, 0x20

    goto :goto_d

    :cond_14
    const/16 v30, 0x10

    :goto_d
    or-int v21, v21, v30

    :cond_15
    and-int/lit16 v13, v2, 0x180

    if-nez v13, :cond_17

    move/from16 v13, p10

    invoke-virtual {v14, v13}, Lr0/q;->e(I)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v17, 0x100

    goto :goto_e

    :cond_16
    const/16 v17, 0x80

    :goto_e
    or-int v21, v21, v17

    goto :goto_f

    :cond_17
    move/from16 v13, p10

    :goto_f
    and-int/lit16 v15, v2, 0xc00

    if-nez v15, :cond_19

    move/from16 v15, p11

    invoke-virtual {v14, v15}, Lr0/q;->h(Z)Z

    move-result v27

    if-eqz v27, :cond_18

    const/16 v27, 0x800

    goto :goto_10

    :cond_18
    const/16 v27, 0x400

    :goto_10
    or-int v21, v21, v27

    goto :goto_11

    :cond_19
    move/from16 v15, p11

    :goto_11
    and-int/lit16 v6, v2, 0x6000

    if-nez v6, :cond_1b

    move/from16 v6, p12

    invoke-virtual {v14, v6}, Lr0/q;->e(I)Z

    move-result v30

    if-eqz v30, :cond_1a

    goto :goto_12

    :cond_1a
    const/16 v16, 0x2000

    :goto_12
    or-int v21, v21, v16

    goto :goto_13

    :cond_1b
    move/from16 v6, p12

    :goto_13
    and-int v16, v2, v18

    move/from16 v0, p13

    if-nez v16, :cond_1d

    invoke-virtual {v14, v0}, Lr0/q;->e(I)Z

    move-result v16

    if-eqz v16, :cond_1c

    move/from16 v20, v22

    :cond_1c
    or-int v21, v21, v20

    :cond_1d
    or-int v16, v21, v19

    and-int v17, v2, v23

    move-object/from16 v0, p15

    if-nez v17, :cond_1f

    invoke-virtual {v14, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move/from16 v25, v26

    :cond_1e
    or-int v16, v16, v25

    :cond_1f
    and-int v17, v2, v24

    move-object/from16 v0, p16

    if-nez v17, :cond_21

    invoke-virtual {v14, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    move/from16 v28, v29

    :cond_20
    or-int v16, v16, v28

    :cond_21
    const v17, 0x12492493

    and-int v0, v5, v17

    const v2, 0x12492492

    const/4 v3, 0x0

    if-ne v0, v2, :cond_23

    const v0, 0x2492493

    and-int v0, v16, v0

    const v2, 0x2492492

    if-eq v0, v2, :cond_22

    goto :goto_14

    :cond_22
    move v0, v3

    goto :goto_15

    :cond_23
    :goto_14
    const/4 v0, 0x1

    :goto_15
    and-int/lit8 v2, v5, 0x1

    invoke-virtual {v14, v2, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v14}, Lr0/q;->Y()V

    and-int/lit8 v0, p18, 0x1

    if-eqz v0, :cond_25

    invoke-virtual {v14}, Lr0/q;->C()Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_16

    :cond_24
    invoke-virtual {v14}, Lr0/q;->W()V

    move-object/from16 v0, p14

    goto :goto_17

    :cond_25
    :goto_16
    sget-object v0, Lu8/s;->l:Lu8/s;

    :goto_17
    invoke-virtual {v14}, Lr0/q;->r()V

    const v2, 0x63f3c35c

    invoke-virtual {v14, v2}, Lr0/q;->b0(I)V

    const-wide/16 v17, 0x10

    cmp-long v2, p2, v17

    if-eqz v2, :cond_26

    move-wide/from16 v18, p2

    move/from16 v30, v5

    goto :goto_19

    :cond_26
    const v2, 0x63f3c661

    invoke-virtual {v14, v2}, Lr0/q;->b0(I)V

    invoke-virtual/range {p16 .. p16}, Lp2/m0;->b()J

    move-result-wide v19

    cmp-long v2, v19, v17

    if-eqz v2, :cond_27

    move/from16 v30, v5

    goto :goto_18

    :cond_27
    sget-object v2, Lo0/z0;->a:Lr0/a0;

    invoke-virtual {v14, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm1/p;

    move/from16 v30, v5

    iget-wide v4, v2, Lm1/p;->a:J

    move-wide/from16 v19, v4

    :goto_18
    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    move-wide/from16 v18, v19

    :goto_19
    invoke-virtual {v14, v3}, Lr0/q;->q(Z)V

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v14, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v4, v2, Lo0/u0;->a:J

    invoke-virtual {v14, v4, v5}, Lr0/q;->f(J)Z

    move-result v2

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 p14, v0

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-nez v2, :cond_28

    if-ne v3, v0, :cond_29

    :cond_28
    new-instance v3, Lp2/k0;

    new-instance v32, Lp2/e0;

    const/16 v50, 0x0

    const v51, 0xeffe

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-wide/16 v47, 0x0

    sget-object v49, La3/l;->c:La3/l;

    move-wide/from16 v33, v4

    invoke-direct/range {v32 .. v51}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v2, v32

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4, v4}, Lp2/k0;-><init>(Lp2/e0;Lp2/e0;Lp2/e0;Lp2/e0;)V

    invoke-virtual {v14, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_29
    check-cast v3, Lp2/k0;

    and-int/lit8 v2, v30, 0xe

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v4, 0x0

    :goto_1a
    invoke-virtual {v14, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v2, v4

    invoke-virtual {v14}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_2b

    if-ne v4, v0, :cond_2c

    :cond_2b
    new-instance v0, Lb0/a;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v3}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Lp2/g;->b(Li9/c;)Lp2/g;

    move-result-object v4

    invoke-virtual {v14, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2c
    move-object v5, v4

    check-cast v5, Lp2/g;

    const v29, 0xfd6f50

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p16

    move-wide/from16 v27, v7

    move-wide/from16 v20, v9

    move-wide/from16 v24, v11

    const/16 v26, 0x0

    invoke-static/range {v17 .. v29}, Lp2/m0;->e(Lp2/m0;JJLt2/k;Lt2/p;JIJI)Lp2/m0;

    move-result-object v7

    and-int/lit8 v0, v30, 0x70

    shr-int/lit8 v2, v16, 0xc

    and-int/lit16 v2, v2, 0x1c00

    or-int/2addr v0, v2

    shl-int/lit8 v2, v16, 0x6

    const v3, 0xe000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x70000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x380000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v2

    or-int/2addr v0, v3

    const/high16 v3, 0xe000000

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    shr-int/lit8 v2, v30, 0x9

    and-int/lit8 v16, v2, 0xe

    move/from16 v12, p13

    move-object/from16 v8, p15

    move v11, v6

    move v9, v13

    move v10, v15

    move-object/from16 v6, p1

    move-object/from16 v13, p14

    move v15, v0

    invoke-static/range {v5 .. v16}, Lb0/n1;->a(Lp2/g;Lf1/r;Lp2/m0;Li9/c;IZIILjava/util/Map;Lr0/q;II)V

    move-object v15, v13

    goto :goto_1b

    :cond_2d
    invoke-virtual/range {p17 .. p17}, Lr0/q;->W()V

    move-object/from16 v15, p14

    :goto_1b
    invoke-virtual/range {p17 .. p17}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v2, v0

    new-instance v0, Lo0/c5;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p18

    move/from16 v19, p19

    move-object/from16 v52, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v19}, Lo0/c5;-><init>(Lp2/g;Lf1/r;JJJJIZIILjava/util/Map;Li9/c;Lp2/m0;II)V

    move-object/from16 v2, v52

    iput-object v0, v2, Lr0/n1;->d:Li9/e;

    :cond_2e
    return-void
.end method
