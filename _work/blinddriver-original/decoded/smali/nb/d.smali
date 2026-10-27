.class public final Lnb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:[[Lpb/a;

.field public final c:[Lpb/a;

.field public d:Z

.field public e:Lpb/a0;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v3, 0x0

    aput v0, v1, v3

    const-class v4, Lpb/a;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lpb/a;

    iput-object v1, p0, Lnb/d;->b:[[Lpb/a;

    new-array v0, v0, [Lpb/a;

    iput-object v0, p0, Lnb/d;->c:[Lpb/a;

    const/4 v1, 0x0

    iput-object v1, p0, Lnb/d;->e:Lpb/a0;

    new-instance v1, Lpb/a;

    invoke-direct {v1}, Lpb/a;-><init>()V

    aput-object v1, v0, v3

    new-instance v1, Lpb/a;

    invoke-direct {v1}, Lpb/a;-><init>()V

    aput-object v1, v0, v2

    iput v3, p0, Lnb/d;->a:I

    return-void
.end method

.method public static b(Lpb/a;D)Lpb/a;
    .locals 1

    invoke-virtual {p0}, Lpb/a;->f()Lpb/a;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p0, Lpb/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lpb/f;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lpb/a;->v(D)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static e(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Lpb/a;
    .locals 6

    invoke-static {p0, p2, p3}, La/a;->w(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v0

    invoke-static {p1, p2, p3}, La/a;->w(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_0

    move-wide v0, v2

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    invoke-static {p2, p0, p1}, La/a;->w(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v3

    cmpg-double v5, v3, v0

    if-gez v5, :cond_1

    move-wide v0, v3

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    invoke-static {p3, p0, p1}, La/a;->w(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-gez p0, :cond_2

    return-object p3

    :cond_2
    return-object p2
.end method

.method public static f(Lpb/a;Lpb/a;)D
    .locals 2

    invoke-virtual {p0}, Lpb/a;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lpb/a;->o()D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static g(Lpb/a;Lpb/a;Lpb/a;)D
    .locals 3

    invoke-virtual {p0}, Lpb/a;->o()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-static {p0, p1, p2}, Lnb/d;->h(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static h(Lpb/a;Lpb/a;Lpb/a;)D
    .locals 10

    invoke-virtual {p1}, Lpb/a;->o()D

    move-result-wide v0

    invoke-virtual {p2}, Lpb/a;->o()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lpb/a;->i(Lpb/a;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lpb/a;->i(Lpb/a;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    return-wide v2

    :cond_3
    sub-double/2addr v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_4

    :goto_1
    return-wide v0

    :cond_4
    iget-wide v4, p2, Lpb/a;->l:D

    iget-wide v6, p1, Lpb/a;->l:D

    sub-double/2addr v4, v6

    iget-wide v8, p2, Lpb/a;->m:D

    iget-wide p1, p1, Lpb/a;->m:D

    sub-double/2addr v8, p1

    mul-double/2addr v4, v4

    mul-double/2addr v8, v8

    add-double/2addr v8, v4

    iget-wide v4, p0, Lpb/a;->l:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lpb/a;->m:D

    sub-double/2addr v6, p1

    mul-double/2addr v4, v4

    mul-double/2addr v6, v6

    add-double/2addr v6, v4

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final a(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v0, Lnb/d;->b:[[Lpb/a;

    const/4 v6, 0x0

    aget-object v7, v5, v6

    aput-object v1, v7, v6

    aget-object v7, v5, v6

    const/4 v8, 0x1

    aput-object v2, v7, v8

    aget-object v7, v5, v8

    aput-object v3, v7, v6

    aput-object v4, v7, v8

    iput-boolean v6, v0, Lnb/d;->d:Z

    invoke-static/range {p1 .. p4}, Lpb/h;->f(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_17

    :cond_0
    invoke-static/range {p1 .. p3}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v7

    invoke-static {v1, v2, v4}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v9

    if-lez v7, :cond_1

    if-gtz v9, :cond_2a

    :cond_1
    if-gez v7, :cond_2

    if-gez v9, :cond_2

    goto/16 :goto_17

    :cond_2
    invoke-static {v3, v4, v1}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v10

    invoke-static {v3, v4, v2}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v11

    if-lez v10, :cond_3

    if-gtz v11, :cond_2a

    :cond_3
    if-gez v10, :cond_4

    if-gez v11, :cond_4

    goto/16 :goto_17

    :cond_4
    iget-object v12, v0, Lnb/d;->c:[Lpb/a;

    if-nez v7, :cond_b

    if-nez v9, :cond_b

    if-nez v10, :cond_b

    if-nez v11, :cond_b

    invoke-static/range {p1 .. p3}, Lpb/h;->e(Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v5

    invoke-static {v1, v2, v4}, Lpb/h;->e(Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v7

    invoke-static {v3, v4, v1}, Lpb/h;->e(Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v9

    invoke-static {v3, v4, v2}, Lpb/h;->e(Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v5, :cond_6

    if-eqz v7, :cond_6

    invoke-static {v3, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v9

    invoke-static {v3, v9, v10}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v3

    aput-object v3, v12, v6

    invoke-static {v4, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v1

    invoke-static {v4, v1, v2}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v8

    :cond_5
    :goto_0
    move v6, v11

    goto/16 :goto_17

    :cond_6
    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    invoke-static {v1, v3, v4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v9

    invoke-static {v1, v9, v10}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v6

    invoke-static/range {p2 .. p4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v8

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    if-eqz v9, :cond_8

    invoke-static {v3, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v13

    invoke-static {v3, v13, v14}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v2

    aput-object v2, v12, v6

    invoke-static {v1, v3, v4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v2

    aput-object v2, v12, v8

    invoke-virtual {v3, v1}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v7, :cond_5

    if-nez v10, :cond_5

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    if-eqz v10, :cond_9

    invoke-static {v3, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v13

    invoke-static {v3, v13, v14}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v6

    invoke-static/range {p2 .. p4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v8

    invoke-virtual {v3, v2}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    goto :goto_1

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v9, :cond_a

    invoke-static {v4, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v2

    aput-object v2, v12, v6

    invoke-static {v1, v3, v4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v2

    aput-object v2, v12, v8

    invoke-virtual {v4, v1}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    if-nez v10, :cond_5

    goto :goto_1

    :cond_a
    if-eqz v7, :cond_2a

    if-eqz v10, :cond_2a

    invoke-static {v4, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v13

    invoke-static {v4, v13, v14}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v6

    invoke-static/range {p2 .. p4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    aput-object v1, v12, v8

    invoke-virtual {v4, v2}, Lpb/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    if-nez v9, :cond_5

    :goto_1
    move v6, v8

    goto/16 :goto_17

    :cond_b
    if-eqz v7, :cond_21

    if-eqz v9, :cond_21

    if-eqz v10, :cond_21

    if-nez v11, :cond_c

    move v5, v6

    move v15, v8

    move-object/from16 v19, v12

    goto/16 :goto_14

    :cond_c
    iput-boolean v8, v0, Lnb/d;->d:Z

    new-instance v7, Lbc/a;

    iget-wide v9, v1, Lpb/a;->m:D

    invoke-direct {v7, v9, v10}, Lbc/a;-><init>(D)V

    iget-wide v9, v2, Lpb/a;->m:D

    invoke-virtual {v7, v9, v10}, Lbc/a;->s(D)V

    new-instance v9, Lbc/a;

    iget-wide v10, v2, Lpb/a;->l:D

    invoke-direct {v9, v10, v11}, Lbc/a;-><init>(D)V

    iget-wide v10, v1, Lpb/a;->l:D

    invoke-virtual {v9, v10, v11}, Lbc/a;->s(D)V

    new-instance v10, Lbc/a;

    iget-wide v14, v1, Lpb/a;->l:D

    invoke-direct {v10, v14, v15}, Lbc/a;-><init>(D)V

    iget-wide v14, v2, Lpb/a;->m:D

    move/from16 v16, v6

    move-object v11, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v10, v14, v15, v6, v7}, Lbc/a;->r(DD)V

    iget-wide v14, v2, Lpb/a;->l:D

    move-wide/from16 v18, v14

    iget-wide v13, v1, Lpb/a;->m:D

    const-wide v20, 0x41a0000002000000L    # 1.34217729E8

    mul-double v22, v18, v20

    sub-double v24, v22, v18

    mul-double v26, v13, v20

    sub-double v22, v22, v24

    sub-double v24, v18, v22

    sub-double v28, v26, v13

    mul-double v30, v18, v13

    sub-double v26, v26, v28

    sub-double v28, v13, v26

    mul-double v32, v22, v26

    sub-double v32, v32, v30

    mul-double v22, v22, v28

    add-double v22, v22, v32

    mul-double v26, v26, v24

    add-double v26, v26, v22

    mul-double v24, v24, v28

    add-double v24, v24, v26

    mul-double v18, v18, v6

    mul-double/2addr v13, v6

    add-double v13, v13, v18

    add-double v13, v13, v24

    move v15, v8

    move-object/from16 v18, v9

    add-double v8, v30, v13

    sub-double v30, v30, v8

    add-double v13, v30, v13

    iget-wide v6, v10, Lbc/a;->l:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_2

    :cond_d
    neg-double v6, v8

    neg-double v8, v13

    invoke-virtual {v10, v6, v7, v8, v9}, Lbc/a;->o(DD)V

    :goto_2
    new-instance v6, Lbc/a;

    iget-wide v7, v3, Lpb/a;->m:D

    invoke-direct {v6, v7, v8}, Lbc/a;-><init>(D)V

    iget-wide v7, v4, Lpb/a;->m:D

    invoke-virtual {v6, v7, v8}, Lbc/a;->s(D)V

    new-instance v7, Lbc/a;

    iget-wide v8, v4, Lpb/a;->l:D

    invoke-direct {v7, v8, v9}, Lbc/a;-><init>(D)V

    iget-wide v8, v3, Lpb/a;->l:D

    invoke-virtual {v7, v8, v9}, Lbc/a;->s(D)V

    new-instance v8, Lbc/a;

    iget-wide v13, v3, Lpb/a;->l:D

    invoke-direct {v8, v13, v14}, Lbc/a;-><init>(D)V

    iget-wide v13, v4, Lpb/a;->m:D

    move-object v9, v11

    move-object/from16 v19, v12

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v13, v14, v11, v12}, Lbc/a;->r(DD)V

    iget-wide v11, v4, Lpb/a;->l:D

    iget-wide v13, v3, Lpb/a;->m:D

    mul-double v24, v11, v20

    sub-double v26, v24, v11

    mul-double v20, v20, v13

    sub-double v24, v24, v26

    sub-double v26, v11, v24

    sub-double v28, v20, v13

    mul-double v30, v11, v13

    sub-double v20, v20, v28

    sub-double v28, v13, v20

    mul-double v32, v24, v20

    sub-double v32, v32, v30

    mul-double v24, v24, v28

    add-double v24, v24, v32

    mul-double v20, v20, v26

    add-double v20, v20, v24

    mul-double v26, v26, v28

    add-double v26, v26, v20

    const-wide/16 v22, 0x0

    mul-double v11, v11, v22

    mul-double v13, v13, v22

    add-double/2addr v13, v11

    add-double v13, v13, v26

    add-double v11, v30, v13

    sub-double v30, v30, v11

    add-double v13, v30, v13

    iget-wide v3, v8, Lbc/a;->l:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_e

    :goto_3
    move-object/from16 v3, v18

    goto :goto_4

    :cond_e
    neg-double v3, v11

    neg-double v11, v13

    invoke-virtual {v8, v3, v4, v11, v12}, Lbc/a;->o(DD)V

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v8}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v4

    invoke-virtual {v7, v10}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v11

    invoke-virtual {v4, v11}, Lbc/a;->u(Lbc/a;)V

    invoke-virtual {v6, v10}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v10

    move-object v11, v9

    invoke-virtual {v11, v8}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v8

    invoke-virtual {v10, v8}, Lbc/a;->u(Lbc/a;)V

    invoke-virtual {v11, v7}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v7

    invoke-virtual {v6, v3}, Lbc/a;->j(Lbc/a;)Lbc/a;

    move-result-object v3

    invoke-virtual {v7, v3}, Lbc/a;->u(Lbc/a;)V

    invoke-virtual {v4, v7}, Lbc/a;->p(Lbc/a;)V

    iget-wide v8, v4, Lbc/a;->l:D

    iget-wide v3, v4, Lbc/a;->m:D

    add-double/2addr v8, v3

    invoke-virtual {v10, v7}, Lbc/a;->p(Lbc/a;)V

    iget-wide v3, v10, Lbc/a;->l:D

    iget-wide v6, v10, Lbc/a;->m:D

    add-double/2addr v3, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_5

    :cond_f
    new-instance v13, Lpb/a;

    invoke-direct {v13, v8, v9, v3, v4}, Lpb/a;-><init>(DD)V

    goto :goto_6

    :cond_10
    :goto_5
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_11

    invoke-static/range {p1 .. p4}, Lnb/d;->e(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Lpb/a;

    move-result-object v13

    :cond_11
    aget-object v3, v5, v16

    aget-object v4, v3, v16

    aget-object v3, v3, v15

    iget-wide v6, v4, Lpb/a;->l:D

    iget-wide v8, v3, Lpb/a;->l:D

    iget-wide v10, v4, Lpb/a;->m:D

    iget-wide v3, v3, Lpb/a;->m:D

    cmpg-double v12, v6, v8

    if-gez v12, :cond_12

    goto :goto_7

    :cond_12
    move-wide/from16 v34, v8

    move-wide v8, v6

    move-wide/from16 v6, v34

    :goto_7
    cmpg-double v12, v10, v3

    if-gez v12, :cond_13

    goto :goto_8

    :cond_13
    move-wide/from16 v34, v10

    move-wide v10, v3

    move-wide/from16 v3, v34

    :goto_8
    aget-object v5, v5, v15

    aget-object v12, v5, v16

    aget-object v5, v5, v15

    move-wide/from16 v17, v3

    iget-wide v3, v12, Lpb/a;->l:D

    move-wide/from16 v20, v3

    iget-wide v3, v5, Lpb/a;->l:D

    move-wide/from16 v22, v3

    iget-wide v3, v12, Lpb/a;->m:D

    move-wide/from16 v24, v3

    iget-wide v3, v5, Lpb/a;->m:D

    cmpg-double v5, v20, v22

    if-gez v5, :cond_14

    goto :goto_9

    :cond_14
    move-wide/from16 v34, v22

    move-wide/from16 v22, v20

    move-wide/from16 v20, v34

    :goto_9
    cmpg-double v5, v24, v3

    if-gez v5, :cond_15

    move-wide/from16 v26, v24

    move-wide/from16 v24, v3

    goto :goto_a

    :cond_15
    move-wide/from16 v26, v3

    :goto_a
    iget-wide v3, v13, Lpb/a;->l:D

    move-wide/from16 v28, v3

    iget-wide v3, v13, Lpb/a;->m:D

    cmpg-double v5, v8, v6

    if-gez v5, :cond_16

    move v5, v15

    goto :goto_b

    :cond_16
    move/from16 v5, v16

    :goto_b
    if-eqz v5, :cond_17

    goto :goto_c

    :cond_17
    cmpl-double v5, v28, v6

    if-ltz v5, :cond_18

    cmpg-double v5, v28, v8

    if-gtz v5, :cond_18

    cmpl-double v5, v3, v10

    if-ltz v5, :cond_18

    cmpg-double v3, v3, v17

    if-gtz v3, :cond_18

    move v3, v15

    goto :goto_d

    :cond_18
    :goto_c
    move/from16 v3, v16

    :goto_d
    if-eqz v3, :cond_1c

    iget-wide v3, v13, Lpb/a;->l:D

    iget-wide v5, v13, Lpb/a;->m:D

    cmpg-double v7, v22, v20

    if-gez v7, :cond_19

    move v7, v15

    goto :goto_e

    :cond_19
    move/from16 v7, v16

    :goto_e
    if-eqz v7, :cond_1a

    goto :goto_f

    :cond_1a
    cmpl-double v7, v3, v20

    if-ltz v7, :cond_1b

    cmpg-double v3, v3, v22

    if-gtz v3, :cond_1b

    cmpl-double v3, v5, v26

    if-ltz v3, :cond_1b

    cmpg-double v3, v5, v24

    if-gtz v3, :cond_1b

    move v3, v15

    goto :goto_10

    :cond_1b
    :goto_f
    move/from16 v3, v16

    :goto_10
    if-eqz v3, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-static/range {p1 .. p4}, Lnb/d;->e(Lpb/a;Lpb/a;Lpb/a;Lpb/a;)Lpb/a;

    move-result-object v3

    invoke-virtual {v3}, Lpb/a;->f()Lpb/a;

    move-result-object v13

    :goto_11
    iget-object v3, v0, Lnb/d;->e:Lpb/a0;

    if-eqz v3, :cond_1e

    iget-object v4, v3, Lpb/a0;->l:Lpb/z;

    sget-object v5, Lpb/a0;->p:Lpb/z;

    if-ne v4, v5, :cond_1d

    goto :goto_12

    :cond_1d
    iget-wide v4, v13, Lpb/a;->l:D

    invoke-virtual {v3, v4, v5}, Lpb/a0;->b(D)D

    move-result-wide v4

    iput-wide v4, v13, Lpb/a;->l:D

    iget-wide v4, v13, Lpb/a;->m:D

    invoke-virtual {v3, v4, v5}, Lpb/a0;->b(D)D

    move-result-wide v3

    iput-wide v3, v13, Lpb/a;->m:D

    :cond_1e
    :goto_12
    invoke-static {v13, v1, v2}, Lnb/d;->h(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v13, v3, v4}, Lnb/d;->h(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-wide v1, v3

    goto :goto_13

    :cond_1f
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_13

    :cond_20
    add-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    :goto_13
    move-wide v2, v1

    move-object v1, v13

    goto/16 :goto_16

    :cond_21
    move v15, v8

    move-object/from16 v19, v12

    move v5, v6

    :goto_14
    iput-boolean v5, v0, Lnb/d;->d:Z

    invoke-virtual {v1, v3}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v1, v3}, Lnb/d;->f(Lpb/a;Lpb/a;)D

    move-result-wide v2

    goto :goto_16

    :cond_22
    invoke-virtual {v1, v4}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static {v1, v4}, Lnb/d;->f(Lpb/a;Lpb/a;)D

    move-result-wide v2

    goto :goto_16

    :cond_23
    invoke-virtual/range {p2 .. p3}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static/range {p2 .. p3}, Lnb/d;->f(Lpb/a;Lpb/a;)D

    move-result-wide v3

    :goto_15
    move-object v1, v2

    move-wide v2, v3

    goto :goto_16

    :cond_24
    invoke-virtual {v2, v4}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {v2, v4}, Lnb/d;->f(Lpb/a;Lpb/a;)D

    move-result-wide v3

    goto :goto_15

    :cond_25
    if-nez v7, :cond_26

    invoke-static {v3, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v1

    move-wide/from16 v34, v1

    move-object v1, v3

    move-wide/from16 v2, v34

    goto :goto_16

    :cond_26
    if-nez v9, :cond_27

    invoke-static {v4, v1, v2}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v1

    move-wide v2, v1

    move-object v1, v4

    goto :goto_16

    :cond_27
    if-nez v10, :cond_28

    invoke-static {v1, v3, v4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v2

    goto :goto_16

    :cond_28
    if-nez v11, :cond_29

    invoke-static/range {p2 .. p4}, Lnb/d;->g(Lpb/a;Lpb/a;Lpb/a;)D

    move-result-wide v3

    goto :goto_15

    :cond_29
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move-wide v2, v1

    const/4 v1, 0x0

    :goto_16
    invoke-static {v1, v2, v3}, Lnb/d;->b(Lpb/a;D)Lpb/a;

    move-result-object v1

    const/16 v16, 0x0

    aput-object v1, v19, v16

    move v6, v15

    :cond_2a
    :goto_17
    iput v6, v0, Lnb/d;->a:I

    return-void
.end method

.method public final c()Z
    .locals 0

    iget p0, p0, Lnb/d;->a:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 1

    invoke-virtual {p0}, Lnb/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lnb/d;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lnb/d;->b:[[Lpb/a;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget-object v4, v3, v2

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v4, v3}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v5

    aget-object v2, v1, v2

    aget-object v1, v1, v5

    invoke-static {v2, v1}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnb/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lnb/d;->d:Z

    if-nez v2, :cond_0

    const-string v2, " endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v2, p0, Lnb/d;->d:Z

    if-eqz v2, :cond_1

    const-string v2, " proper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget p0, p0, Lnb/d;->a:I

    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    const-string p0, " collinear"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
