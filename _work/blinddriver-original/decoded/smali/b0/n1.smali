.class public abstract Lb0/n1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb0/j1;

.field public static final b:Ly1/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lb0/j1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lb0/j1;-><init>(I)V

    sput-object v0, Lb0/n1;->a:Lb0/j1;

    new-instance v0, Ly1/a;

    const/16 v1, 0x3fe

    invoke-direct {v0, v1}, Ly1/a;-><init>(I)V

    sput-object v0, Lb0/n1;->b:Ly1/a;

    return-void
.end method

.method public static final A(Lf1/r;Lp2/g;Lp2/m0;Li9/c;IZIILt2/d;Ljava/util/List;Li9/c;Ll0/i;Li9/c;)Lf1/r;
    .locals 12

    if-nez p11, :cond_0

    new-instance v0, Ll0/n;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v3, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Ll0/n;-><init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Li9/c;)V

    sget-object p1, Lf1/o;->a:Lf1/o;

    invoke-interface {p0, p1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ll0/f;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v3, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Ll0/f;-><init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;)V

    iget-object p1, v11, Ll0/i;->q:Lf1/r;

    invoke-interface {p0, p1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final B(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "both minLines "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and maxLines "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " must be greater than zero"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lt/b;->a(Ljava/lang/String;)V

    :cond_1
    if-gt p0, p1, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minLines "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be less than or equal to maxLines "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static final a(Lp2/g;Lf1/r;Lp2/m0;Li9/c;IZIILjava/util/Map;Lr0/q;II)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v4, p9

    move/from16 v13, p10

    const v0, -0x5013ac4b

    invoke-virtual {v4, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v13, 0x6

    const/4 v3, 0x2

    if-nez v0, :cond_1

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    or-int/2addr v0, v13

    goto :goto_1

    :cond_1
    move v0, v13

    :goto_1
    and-int/lit8 v5, v13, 0x30

    move-object/from16 v8, p1

    if-nez v5, :cond_3

    invoke-virtual {v4, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v0, v5

    :cond_3
    and-int/lit16 v5, v13, 0x180

    if-nez v5, :cond_5

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_3

    :cond_4
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v0, v9

    goto :goto_4

    :cond_5
    move-object/from16 v5, p2

    :goto_4
    and-int/lit16 v9, v13, 0xc00

    if-nez v9, :cond_7

    move-object/from16 v9, p3

    invoke-virtual {v4, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x800

    goto :goto_5

    :cond_6
    const/16 v10, 0x400

    :goto_5
    or-int/2addr v0, v10

    goto :goto_6

    :cond_7
    move-object/from16 v9, p3

    :goto_6
    and-int/lit16 v10, v13, 0x6000

    if-nez v10, :cond_9

    move/from16 v10, p4

    invoke-virtual {v4, v10}, Lr0/q;->e(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_7

    :cond_8
    const/16 v11, 0x2000

    :goto_7
    or-int/2addr v0, v11

    goto :goto_8

    :cond_9
    move/from16 v10, p4

    :goto_8
    const/high16 v11, 0x30000

    and-int/2addr v11, v13

    if-nez v11, :cond_b

    move/from16 v11, p5

    invoke-virtual {v4, v11}, Lr0/q;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_a

    const/high16 v12, 0x20000

    goto :goto_9

    :cond_a
    const/high16 v12, 0x10000

    :goto_9
    or-int/2addr v0, v12

    goto :goto_a

    :cond_b
    move/from16 v11, p5

    :goto_a
    const/high16 v12, 0x180000

    and-int/2addr v12, v13

    if-nez v12, :cond_d

    invoke-virtual {v4, v6}, Lr0/q;->e(I)Z

    move-result v12

    if-eqz v12, :cond_c

    const/high16 v12, 0x100000

    goto :goto_b

    :cond_c
    const/high16 v12, 0x80000

    :goto_b
    or-int/2addr v0, v12

    :cond_d
    const/high16 v12, 0xc00000

    and-int/2addr v12, v13

    if-nez v12, :cond_f

    invoke-virtual {v4, v7}, Lr0/q;->e(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/high16 v12, 0x800000

    goto :goto_c

    :cond_e
    const/high16 v12, 0x400000

    :goto_c
    or-int/2addr v0, v12

    :cond_f
    const/high16 v12, 0x6000000

    and-int/2addr v12, v13

    move-object/from16 v14, p8

    if-nez v12, :cond_11

    invoke-virtual {v4, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const/high16 v12, 0x4000000

    goto :goto_d

    :cond_10
    const/high16 v12, 0x2000000

    :goto_d
    or-int/2addr v0, v12

    :cond_11
    const/high16 v12, 0x30000000

    or-int/2addr v0, v12

    and-int/lit8 v12, p11, 0x6

    const/4 v15, 0x0

    if-nez v12, :cond_14

    and-int/lit8 v12, p11, 0x8

    if-nez v12, :cond_12

    invoke-virtual {v4, v15}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_e

    :cond_12
    invoke-virtual {v4, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    :goto_e
    if-eqz v12, :cond_13

    const/4 v12, 0x4

    goto :goto_f

    :cond_13
    move v12, v3

    :goto_f
    or-int v12, p11, v12

    goto :goto_10

    :cond_14
    move/from16 v12, p11

    :goto_10
    const v16, 0x12492493

    and-int v15, v0, v16

    const v2, 0x12492492

    const/4 v10, 0x0

    if-ne v15, v2, :cond_16

    and-int/lit8 v2, v12, 0x3

    if-eq v2, v3, :cond_15

    goto :goto_11

    :cond_15
    move v2, v10

    goto :goto_12

    :cond_16
    :goto_11
    const/4 v2, 0x1

    :goto_12
    and-int/lit8 v15, v0, 0x1

    invoke-virtual {v4, v15, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {v7, v6}, Lb0/n1;->B(II)V

    sget-object v2, Lm0/j1;->a:Lr0/a0;

    invoke-virtual {v4, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/i1;

    sget-object v15, Lr0/m;->a:Lr0/e;

    if-eqz v2, :cond_1b

    const v9, 0x5eab0cd5

    invoke-virtual {v4, v9}, Lr0/q;->b0(I)V

    sget-object v9, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v4, v9}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lm0/a2;

    iget-wide v3, v9, Lm0/a2;->b:J

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    move/from16 v25, v0

    new-instance v0, Lb0/x;

    invoke-direct {v0, v10, v2}, Lb0/x;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lad/b2;

    const/4 v5, 0x4

    invoke-direct {v10, v5}, Lad/b2;-><init>(I)V

    new-instance v5, Lg5/c;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0, v10}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_18

    if-ne v10, v15, :cond_17

    goto :goto_13

    :cond_17
    const/4 v6, 0x1

    goto :goto_14

    :cond_18
    :goto_13
    new-instance v10, Lb0/r;

    const/4 v6, 0x1

    invoke-direct {v10, v2, v6}, Lb0/r;-><init>(Lm0/i1;I)V

    invoke-virtual {v0, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_14
    check-cast v10, Li9/a;

    const/4 v6, 0x0

    invoke-static {v9, v5, v10, v0, v6}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lr0/q;->f(J)Z

    move-result v9

    invoke-virtual {v0, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0, v3, v4}, Lr0/q;->f(J)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v0}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_19

    if-ne v10, v15, :cond_1a

    :cond_19
    new-instance v18, Ll0/i;

    move-object/from16 v21, v2

    move-wide/from16 v22, v3

    move-wide/from16 v19, v5

    invoke-direct/range {v18 .. v23}, Ll0/i;-><init>(JLm0/i1;J)V

    move-object/from16 v10, v18

    invoke-virtual {v0, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1a
    move-object v2, v10

    check-cast v2, Ll0/i;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lr0/q;->q(Z)V

    move-object/from16 v17, v2

    goto :goto_15

    :cond_1b
    move/from16 v25, v0

    move-object v0, v4

    move v6, v10

    const v2, 0x5eb28b71

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v0, v6}, Lr0/q;->q(Z)V

    const/16 v17, 0x0

    :goto_15
    sget-object v2, Lb0/k;->a:Lt8/j;

    iget-object v2, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, v1, Lp2/g;->l:Ljava/util/List;

    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v4, :cond_1e

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e;

    iget-object v9, v5, Lp2/e;->a:Ljava/lang/Object;

    instance-of v9, v9, Lp2/g0;

    if-eqz v9, :cond_1c

    iget-object v9, v5, Lp2/e;->d:Ljava/lang/String;

    const-string v10, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iget v9, v5, Lp2/e;->b:I

    iget v5, v5, Lp2/e;->c:I

    const/4 v10, 0x0

    invoke-static {v10, v2, v9, v5}, Lp2/h;->b(IIII)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_17

    :cond_1c
    const/4 v10, 0x0

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1e
    const/4 v10, 0x0

    move v3, v10

    :goto_17
    invoke-static {v1}, Ll7/a;->q(Lp2/g;)Z

    move-result v2

    sget-object v4, Lf2/l1;->k:Lr0/s2;

    invoke-virtual {v0, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt2/d;

    if-nez v3, :cond_20

    if-nez v2, :cond_20

    const v2, 0x5eb64fb6

    invoke-virtual {v0, v2}, Lr0/q;->b0(I)V

    and-int/lit8 v2, v25, 0xe

    or-int/lit16 v2, v2, 0xc00

    shr-int/lit8 v3, v25, 0x3

    and-int/lit8 v3, v3, 0x70

    or-int v5, v2, v3

    const/4 v3, 0x0

    move-object v2, v4

    move-object v4, v0

    move-object v0, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lb0/b0;->a(Lp2/g;Lp2/m0;Lt2/d;Ljava/util/List;Lr0/q;I)V

    move-object v13, v4

    move/from16 v26, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object v0, v8

    move v5, v11

    move-object/from16 v11, v17

    const/4 v15, 0x1

    move-object v8, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v12}, Lb0/n1;->A(Lf1/r;Lp2/g;Lp2/m0;Li9/c;IZIILt2/d;Ljava/util/List;Li9/c;Ll0/i;Li9/c;)Lf1/r;

    move-result-object v8

    sget-object v0, Lb0/j;->c:Lb0/j;

    iget-wide v1, v13, Lr0/q;->T:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-static {v8, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v4, Le2/h;->b:Le2/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v5, v13, Lr0/q;->S:Z

    if-eqz v5, :cond_1f

    invoke-virtual {v13, v4}, Lr0/q;->l(Li9/a;)V

    goto :goto_18

    :cond_1f
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_18
    sget-object v4, Le2/g;->f:Le2/e;

    invoke-static {v4, v0, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v3, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v13, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v2, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {v13, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-virtual {v13, v15}, Lr0/q;->q(Z)V

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    move-object v4, v13

    goto/16 :goto_1a

    :cond_20
    move-object v13, v0

    move-object v2, v4

    move v0, v10

    move-object/from16 v11, v17

    const/16 v24, 0x1

    const v1, 0x5ec5cfb6

    invoke-virtual {v13, v1}, Lr0/q;->b0(I)V

    and-int/lit8 v1, v25, 0xe

    const/4 v5, 0x4

    if-ne v1, v5, :cond_21

    move/from16 v9, v24

    goto :goto_19

    :cond_21
    move v9, v0

    :goto_19
    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v9, :cond_22

    if-ne v1, v15, :cond_23

    :cond_22
    invoke-static/range {p0 .. p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v1

    invoke-virtual {v13, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    check-cast v1, Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp2/g;

    invoke-virtual {v13, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_24

    if-ne v6, v15, :cond_25

    :cond_24
    new-instance v6, Lb0/y;

    invoke-direct {v6, v1, v0}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v13, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_25
    check-cast v6, Li9/c;

    shr-int/lit8 v1, v25, 0x3

    and-int/lit16 v1, v1, 0x38e

    shr-int/lit8 v5, v25, 0xc

    const v7, 0xe000

    and-int/2addr v5, v7

    or-int/2addr v1, v5

    shl-int/lit8 v5, v25, 0x9

    const/high16 v8, 0x70000

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    shl-int/lit8 v5, v25, 0x6

    const/high16 v8, 0x380000

    and-int/2addr v8, v5

    or-int/2addr v1, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v8, v5

    or-int/2addr v1, v8

    const/high16 v8, 0xe000000

    and-int/2addr v8, v5

    or-int/2addr v1, v8

    const/high16 v8, 0x70000000

    and-int/2addr v5, v8

    or-int/2addr v1, v5

    shr-int/lit8 v5, v25, 0x15

    and-int/lit16 v5, v5, 0x380

    shl-int/lit8 v8, v12, 0xc

    and-int/2addr v7, v8

    or-int v15, v5, v7

    move-object v0, v14

    move v14, v1

    move-object v1, v4

    move-object v4, v0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v10, v2

    move-object v12, v6

    move-object/from16 v2, p3

    move/from16 v6, p4

    invoke-static/range {v0 .. v15}, Lb0/n1;->i(Lf1/r;Lp2/g;Li9/c;ZLjava/util/Map;Lp2/m0;IZIILt2/d;Ll0/i;Li9/c;Lr0/q;II)V

    move-object v4, v13

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lr0/q;->q(Z)V

    goto :goto_1a

    :cond_26
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_1a
    invoke-virtual {v4}, Lr0/q;->u()Lr0/n1;

    move-result-object v12

    if-eqz v12, :cond_27

    new-instance v0, Lb0/z;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lb0/z;-><init>(Lp2/g;Lf1/r;Lp2/m0;Li9/c;IZIILjava/util/Map;II)V

    iput-object v0, v12, Lr0/n1;->d:Li9/e;

    :cond_27
    return-void
.end method

.method public static final b(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIILr0/q;II)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v2, p2

    move/from16 v7, p6

    move-object/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    const v0, -0x3e089999

    invoke-virtual {v13, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, v14, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v13, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_1
    move v0, v14

    :goto_1
    and-int/lit8 v4, v14, 0x30

    if-nez v4, :cond_3

    invoke-virtual {v13, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_3
    and-int/lit16 v4, v14, 0x180

    if-nez v4, :cond_5

    invoke-virtual {v13, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_5
    and-int/lit8 v4, v15, 0x8

    if-eqz v4, :cond_7

    or-int/lit16 v0, v0, 0xc00

    :cond_6
    move-object/from16 v6, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v14, 0xc00

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-virtual {v13, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_4

    :cond_8
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v0, v9

    :goto_5
    and-int/lit8 v9, v15, 0x10

    if-eqz v9, :cond_a

    or-int/lit16 v0, v0, 0x6000

    :cond_9
    move/from16 v10, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v10, v14, 0x6000

    if-nez v10, :cond_9

    move/from16 v10, p4

    invoke-virtual {v13, v10}, Lr0/q;->e(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x4000

    goto :goto_6

    :cond_b
    const/16 v11, 0x2000

    :goto_6
    or-int/2addr v0, v11

    :goto_7
    and-int/lit8 v11, v15, 0x20

    const/high16 v12, 0x30000

    if-eqz v11, :cond_d

    or-int/2addr v0, v12

    :cond_c
    move/from16 v12, p5

    goto :goto_9

    :cond_d
    and-int/2addr v12, v14

    if-nez v12, :cond_c

    move/from16 v12, p5

    invoke-virtual {v13, v12}, Lr0/q;->h(Z)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v16, 0x10000

    :goto_8
    or-int v0, v0, v16

    :goto_9
    const/high16 v16, 0x180000

    and-int v16, v14, v16

    if-nez v16, :cond_10

    invoke-virtual {v13, v7}, Lr0/q;->e(I)Z

    move-result v16

    if-eqz v16, :cond_f

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_f
    const/high16 v16, 0x80000

    :goto_a
    or-int v0, v0, v16

    :cond_10
    and-int/lit16 v3, v15, 0x80

    const/high16 v17, 0xc00000

    if-eqz v3, :cond_11

    or-int v0, v0, v17

    move/from16 v5, p7

    goto :goto_c

    :cond_11
    and-int v17, v14, v17

    move/from16 v5, p7

    if-nez v17, :cond_13

    invoke-virtual {v13, v5}, Lr0/q;->e(I)Z

    move-result v18

    if-eqz v18, :cond_12

    const/high16 v18, 0x800000

    goto :goto_b

    :cond_12
    const/high16 v18, 0x400000

    :goto_b
    or-int v0, v0, v18

    :cond_13
    :goto_c
    const/high16 v18, 0x6000000

    or-int v18, v0, v18

    move/from16 v19, v0

    and-int/lit16 v0, v15, 0x200

    move/from16 v20, v0

    const/4 v0, 0x0

    if-eqz v20, :cond_14

    const/high16 v18, 0x36000000

    or-int v18, v19, v18

    goto :goto_f

    :cond_14
    const/high16 v19, 0x30000000

    and-int v19, v14, v19

    if-nez v19, :cond_17

    const/high16 v19, 0x40000000    # 2.0f

    and-int v19, v14, v19

    if-nez v19, :cond_15

    invoke-virtual {v13, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v19

    goto :goto_d

    :cond_15
    invoke-virtual {v13, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v19

    :goto_d
    if-eqz v19, :cond_16

    const/high16 v19, 0x20000000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x10000000

    :goto_e
    or-int v18, v18, v19

    :cond_17
    :goto_f
    const v19, 0x12492493

    and-int v0, v18, v19

    move/from16 v19, v3

    const v3, 0x12492492

    move/from16 v21, v9

    if-eq v0, v3, :cond_18

    const/4 v0, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    :goto_10
    and-int/lit8 v3, v18, 0x1

    invoke-virtual {v13, v3, v0}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v4, :cond_19

    const/16 v22, 0x0

    goto :goto_11

    :cond_19
    move-object/from16 v22, v6

    :goto_11
    if-eqz v21, :cond_1a

    const/16 v21, 0x1

    goto :goto_12

    :cond_1a
    move/from16 v21, p4

    :goto_12
    if-eqz v11, :cond_1b

    const/4 v12, 0x1

    :cond_1b
    if-eqz v19, :cond_1c

    const/4 v11, 0x1

    goto :goto_13

    :cond_1c
    move v11, v5

    :goto_13
    invoke-static {v11, v7}, Lb0/n1;->B(II)V

    sget-object v0, Lm0/j1;->a:Lr0/a0;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm0/i1;

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-eqz v0, :cond_21

    const v4, 0x153e95a3

    invoke-virtual {v13, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v13, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/a2;

    iget-wide v4, v4, Lm0/a2;->b:J

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    new-instance v10, Lb0/x;

    const/4 v9, 0x0

    invoke-direct {v10, v9, v0}, Lb0/x;-><init>(ILjava/lang/Object;)V

    new-instance v9, Lad/b2;

    const/4 v7, 0x4

    invoke-direct {v9, v7}, Lad/b2;-><init>(I)V

    new-instance v7, Lg5/c;

    move/from16 p3, v11

    const/4 v11, 0x2

    invoke-direct {v7, v11, v10, v9}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1d

    if-ne v10, v3, :cond_1e

    :cond_1d
    new-instance v10, Lb0/r;

    const/4 v9, 0x0

    invoke-direct {v10, v0, v9}, Lb0/r;-><init>(Lm0/i1;I)V

    invoke-virtual {v13, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1e
    check-cast v10, Li9/a;

    const/4 v9, 0x0

    invoke-static {v6, v7, v10, v13, v9}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lr0/q;->f(J)Z

    move-result v9

    invoke-virtual {v13, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v13, v4, v5}, Lr0/q;->f(J)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1f

    if-ne v10, v3, :cond_20

    :cond_1f
    new-instance v23, Ll0/i;

    move-object/from16 v26, v0

    move-wide/from16 v27, v4

    move-wide/from16 v24, v6

    invoke-direct/range {v23 .. v28}, Ll0/i;-><init>(JLm0/i1;J)V

    move-object/from16 v10, v23

    invoke-virtual {v13, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_20
    move-object v0, v10

    check-cast v0, Ll0/i;

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    move-object v11, v0

    goto :goto_14

    :cond_21
    move/from16 p3, v11

    const/4 v9, 0x0

    const v0, 0x1546143f    # 4.0001753E-26f

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    const/4 v11, 0x0

    :goto_14
    sget-object v0, Lf2/l1;->k:Lr0/s2;

    invoke-virtual {v13, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lt2/d;

    and-int/lit8 v0, v18, 0xe

    shr-int/lit8 v4, v18, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v0, v4

    sget-object v4, Lb0/b0;->a:Lr0/s2;

    invoke-virtual {v13, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/concurrent/Executor;

    if-eqz v7, :cond_2a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Lb0/b0;->b(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    const v4, 0x4ac2b5df    # 6380271.5f

    invoke-virtual {v13, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {v13, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb3/m;

    sget-object v6, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v13, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb3/c;

    and-int/lit8 v9, v0, 0x70

    xor-int/lit8 v9, v9, 0x30

    const/16 v10, 0x20

    if-le v9, v10, :cond_22

    :try_start_0
    invoke-virtual {v13, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    :cond_22
    and-int/lit8 v9, v0, 0x30

    if-ne v9, v10, :cond_24

    :cond_23
    const/4 v9, 0x1

    goto :goto_15

    :cond_24
    const/4 v9, 0x0

    :goto_15
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual {v13, v10}, Lr0/q;->e(I)Z

    move-result v10

    or-int/2addr v9, v10

    and-int/lit8 v10, v0, 0xe

    xor-int/lit8 v10, v10, 0x6

    move/from16 p4, v0

    const/4 v0, 0x4

    if-le v10, v0, :cond_25

    invoke-virtual {v13, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_26

    :cond_25
    and-int/lit8 v10, p4, 0x6

    if-ne v10, v0, :cond_27

    :cond_26
    const/4 v0, 0x1

    goto :goto_16

    :cond_27
    const/4 v0, 0x0

    :goto_16
    or-int/2addr v0, v9

    invoke-virtual {v13, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual {v13, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v0, v9

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_28

    if-ne v9, v3, :cond_29

    :cond_28
    new-instance v0, Lb/r;

    move-object v2, v4

    move-object v4, v6

    const/4 v6, 0x1

    move-object v3, v1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lb/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v9, v0

    :cond_29
    check-cast v9, Ljava/lang/Runnable;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v9, 0x0

    :goto_17
    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    goto :goto_18

    :cond_2a
    const/4 v9, 0x0

    const v0, 0x4a909e87    # 4738883.5f

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    goto :goto_17

    :goto_18
    if-nez v11, :cond_2b

    if-nez v22, :cond_2b

    const v0, 0x1554c093

    invoke-virtual {v13, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    new-instance v0, Ll0/r;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v6, p6

    move-object v3, v5

    move v5, v12

    move/from16 v4, v21

    invoke-direct/range {v0 .. v7}, Ll0/r;-><init>(Ljava/lang/String;Lp2/m0;Lt2/d;IZII)V

    move-object/from16 v30, v1

    move-object v1, v0

    move-object/from16 v0, v30

    invoke-interface {v8, v1}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v1

    move-object/from16 v3, v22

    const/4 v15, 0x1

    goto :goto_19

    :cond_2b
    move-object/from16 v0, p0

    move/from16 v7, p3

    move v5, v12

    move/from16 v4, v21

    const v1, 0x154aedf1

    invoke-virtual {v13, v1}, Lr0/q;->b0(I)V

    new-instance v1, Lp2/g;

    invoke-direct {v1, v0}, Lp2/g;-><init>(Ljava/lang/String;)V

    sget-object v2, Lf2/l1;->k:Lr0/s2;

    invoke-virtual {v13, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/d;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v29, v9

    const/4 v9, 0x0

    move/from16 v6, p6

    move-object v0, v8

    move-object/from16 v3, v22

    move/from16 v14, v29

    const/4 v15, 0x1

    move-object v8, v2

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v12}, Lb0/n1;->A(Lf1/r;Lp2/g;Lp2/m0;Li9/c;IZIILt2/d;Ljava/util/List;Li9/c;Ll0/i;Li9/c;)Lf1/r;

    move-result-object v1

    invoke-virtual {v13, v14}, Lr0/q;->q(Z)V

    :goto_19
    sget-object v0, Lb0/j;->c:Lb0/j;

    iget-wide v8, v13, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-static {v1, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v9, v13, Lr0/q;->S:Z

    if-eqz v9, :cond_2c

    invoke-virtual {v13, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_1a

    :cond_2c
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_1a
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v0, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v6, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v13, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v1, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Le2/g;->g:Le2/e;

    invoke-static {v13, v0, v1}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    invoke-virtual {v13, v15}, Lr0/q;->q(Z)V

    move v6, v5

    move v8, v7

    move v5, v4

    move-object v4, v3

    goto :goto_1b

    :cond_2d
    invoke-virtual {v13}, Lr0/q;->W()V

    move v8, v5

    move-object v4, v6

    move v6, v12

    move/from16 v5, p4

    :goto_1b
    invoke-virtual {v13}, Lr0/q;->u()Lr0/n1;

    move-result-object v11

    if-eqz v11, :cond_2e

    new-instance v0, Lb0/w;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lb0/w;-><init>(Ljava/lang/String;Lf1/r;Lp2/m0;Li9/c;IZIIII)V

    iput-object v0, v11, Lr0/n1;->d:Li9/e;

    :cond_2e
    return-void
.end method

.method public static final c(Lm0/b1;Lz0/d;Lr0/q;I)V
    .locals 7

    const v0, -0x249e1dc7

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x3c28fe3f

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    new-instance v0, Lad/w;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0}, Lh0/h;->c(Li9/e;)Lf1/r;

    move-result-object v0

    iget-object v1, p0, Lm0/b1;->g:Lg5/s;

    new-instance v3, Lm0/z0;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v5}, Lm0/z0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    new-instance v5, Lm0/i0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lm0/i0;-><init>(Lm0/b1;I)V

    invoke-static {v0, v1, v3, v2, v5}, Lh0/h;->d(Lf1/r;Lg5/s;Li9/c;Lm0/p1;Li9/c;)Lf1/r;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, p1, p2, v1}, Lg0/i;->b(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {p2, v4}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lb0/c0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lb0/c0;-><init>(Lm0/b1;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final d(Lm0/v1;Lz0/d;Lr0/q;I)V
    .locals 8

    const v0, 0x5b67725a

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, -0x34c94080

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p0}, Lm0/v1;->k()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lf1/o;->a:Lf1/o;

    goto :goto_4

    :cond_5
    new-instance v1, Lm0/o1;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4, v2}, Lm0/o1;-><init>(Lm0/v1;Ly8/c;I)V

    invoke-static {v1}, Lh0/h;->c(Li9/e;)Lf1/r;

    move-result-object v1

    iget-object v2, p0, Lm0/v1;->y:Lg5/s;

    new-instance v5, Lm0/z0;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v4, v6}, Lm0/z0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    new-instance v6, Lm0/p1;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v7}, Lm0/p1;-><init>(Lm0/v1;Ly8/c;I)V

    new-instance v4, Lb0/o0;

    const/4 v7, 0x2

    invoke-direct {v4, p0, v7}, Lb0/o0;-><init>(Lm0/v1;I)V

    invoke-static {v1, v2, v5, v6, v4}, Lh0/h;->d(Lf1/r;Lg5/s;Li9/c;Lm0/p1;Li9/c;)Lf1/r;

    move-result-object v1

    :goto_4
    and-int/lit8 v0, v0, 0x70

    invoke-static {v1, p1, p2, v0}, Lg0/i;->b(Lf1/r;Lz0/d;Lr0/q;I)V

    invoke-virtual {p2, v3}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_6
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_5
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lb0/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p3, v1}, Lb0/d0;-><init>(Lm0/v1;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final e(Lm0/b1;Lz0/d;Lr0/q;I)V
    .locals 3

    const v0, -0x38eb05b1

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p0, p1, p2, v0}, Lb0/n1;->c(Lm0/b1;Lz0/d;Lr0/q;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_2
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_3

    new-instance v0, Lb0/c0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lb0/c0;-><init>(Lm0/b1;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_3
    return-void
.end method

.method public static final f(Lm0/v1;Lz0/d;Lr0/q;I)V
    .locals 3

    const v0, 0x7c0599e6

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    if-eq v1, v2, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p0, p1, p2, v0}, Lb0/n1;->d(Lm0/v1;Lz0/d;Lr0/q;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lb0/d0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p3, v1}, Lb0/d0;-><init>(Lm0/v1;Lz0/d;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_6
    return-void
.end method

.method public static final g(Lu2/x;Li9/c;Lf1/r;Lp2/m0;Lu2/d0;Li9/c;Ls/i;Lm1/j0;ZIILu2/k;Lb0/p1;ZLz0/d;Lr0/q;II)V
    .locals 70

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v14, p3

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move/from16 v15, p8

    move/from16 v2, p9

    move-object/from16 v5, p11

    move-object/from16 v4, p12

    move/from16 v6, p13

    move-object/from16 v7, p15

    move/from16 v8, p16

    move/from16 v9, p17

    iget-wide v12, v3, Lu2/x;->b:J

    move-wide/from16 v16, v12

    iget-object v12, v3, Lu2/x;->c:Lp2/l0;

    iget-object v13, v3, Lu2/x;->a:Lp2/g;

    move-object/from16 v18, v12

    const v12, 0x1d9f981

    invoke-virtual {v7, v12}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v12, v8, 0x6

    const/16 v19, 0x2

    move/from16 v20, v12

    if-nez v20, :cond_1

    invoke-virtual {v7, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x4

    goto :goto_0

    :cond_0
    move/from16 v20, v19

    :goto_0
    or-int v20, v8, v20

    goto :goto_1

    :cond_1
    move/from16 v20, v8

    :goto_1
    and-int/lit8 v21, v8, 0x30

    const/16 v22, 0x10

    if-nez v21, :cond_3

    invoke-virtual {v7, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x20

    goto :goto_2

    :cond_2
    move/from16 v21, v22

    :goto_2
    or-int v20, v20, v21

    :cond_3
    const/16 v21, 0x20

    and-int/lit16 v12, v8, 0x180

    const/16 v24, 0x80

    const/16 v25, 0x100

    if-nez v12, :cond_5

    invoke-virtual {v7, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move/from16 v12, v25

    goto :goto_3

    :cond_4
    move/from16 v12, v24

    :goto_3
    or-int v20, v20, v12

    :cond_5
    and-int/lit16 v12, v8, 0xc00

    const/16 v26, 0x400

    if-nez v12, :cond_7

    invoke-virtual {v7, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/16 v12, 0x800

    goto :goto_4

    :cond_6
    move/from16 v12, v26

    :goto_4
    or-int v20, v20, v12

    :cond_7
    and-int/lit16 v12, v8, 0x6000

    const/16 v27, 0x2000

    if-nez v12, :cond_9

    invoke-virtual {v7, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v12, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v12, v27

    :goto_5
    or-int v20, v20, v12

    :cond_9
    const/high16 v12, 0x30000

    and-int v28, v8, v12

    const/high16 v29, 0x20000

    const/high16 v30, 0x10000

    move-object/from16 v11, p5

    if-nez v28, :cond_b

    invoke-virtual {v7, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    move/from16 v31, v29

    goto :goto_6

    :cond_a
    move/from16 v31, v30

    :goto_6
    or-int v20, v20, v31

    :cond_b
    const/high16 v31, 0x180000

    and-int v32, v8, v31

    if-nez v32, :cond_d

    invoke-virtual {v7, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    const/high16 v32, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v32, 0x80000

    :goto_7
    or-int v20, v20, v32

    :cond_d
    const/high16 v32, 0xc00000

    and-int v32, v8, v32

    move-object/from16 v11, p7

    if-nez v32, :cond_f

    invoke-virtual {v7, v11}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    const/high16 v32, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v32, 0x400000

    :goto_8
    or-int v20, v20, v32

    :cond_f
    const/high16 v32, 0x6000000

    and-int v32, v8, v32

    if-nez v32, :cond_11

    invoke-virtual {v7, v15}, Lr0/q;->h(Z)Z

    move-result v32

    if-eqz v32, :cond_10

    const/high16 v32, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v32, 0x2000000

    :goto_9
    or-int v20, v20, v32

    :cond_11
    const/high16 v32, 0x30000000

    and-int v32, v8, v32

    if-nez v32, :cond_13

    invoke-virtual {v7, v2}, Lr0/q;->e(I)Z

    move-result v32

    if-eqz v32, :cond_12

    const/high16 v32, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v32, 0x10000000

    :goto_a
    or-int v20, v20, v32

    :cond_13
    and-int/lit8 v32, v9, 0x6

    move/from16 v11, p10

    if-nez v32, :cond_15

    invoke-virtual {v7, v11}, Lr0/q;->e(I)Z

    move-result v32

    if-eqz v32, :cond_14

    const/16 v19, 0x4

    :cond_14
    or-int v19, v9, v19

    goto :goto_b

    :cond_15
    move/from16 v19, v9

    :goto_b
    and-int/lit8 v32, v9, 0x30

    if-nez v32, :cond_17

    invoke-virtual {v7, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_16

    move/from16 v22, v21

    :cond_16
    or-int v19, v19, v22

    :cond_17
    move/from16 v22, v12

    and-int/lit16 v12, v9, 0x180

    if-nez v12, :cond_19

    invoke-virtual {v7, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    move/from16 v24, v25

    :cond_18
    or-int v19, v19, v24

    :cond_19
    and-int/lit16 v12, v9, 0xc00

    if-nez v12, :cond_1b

    invoke-virtual {v7, v6}, Lr0/q;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_1a

    const/16 v26, 0x800

    :cond_1a
    or-int v19, v19, v26

    :cond_1b
    and-int/lit16 v12, v9, 0x6000

    const/4 v11, 0x0

    if-nez v12, :cond_1d

    invoke-virtual {v7, v11}, Lr0/q;->h(Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    const/16 v27, 0x4000

    :cond_1c
    or-int v19, v19, v27

    :cond_1d
    and-int v12, v9, v22

    if-nez v12, :cond_1f

    move-object/from16 v12, p14

    invoke-virtual {v7, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    goto :goto_c

    :cond_1e
    move/from16 v29, v30

    :goto_c
    or-int v19, v19, v29

    goto :goto_d

    :cond_1f
    move-object/from16 v12, p14

    :goto_d
    or-int v11, v19, v31

    const v19, 0x12492493

    and-int v1, v20, v19

    const v6, 0x12492492

    if-ne v1, v6, :cond_21

    const v1, 0x92493

    and-int/2addr v1, v11

    const v6, 0x92492

    if-eq v1, v6, :cond_20

    goto :goto_e

    :cond_20
    const/4 v1, 0x0

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v1, 0x1

    :goto_f
    and-int/lit8 v6, v20, 0x1

    invoke-virtual {v7, v6, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {v7}, Lr0/q;->Y()V

    and-int/lit8 v1, p16, 0x1

    if-eqz v1, :cond_23

    invoke-virtual {v7}, Lr0/q;->C()Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_10

    :cond_22
    invoke-virtual {v7}, Lr0/q;->W()V

    :cond_23
    :goto_10
    invoke-virtual {v7}, Lr0/q;->r()V

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v1, v6, :cond_24

    new-instance v1, Lk1/u;

    invoke-direct {v1}, Lk1/u;-><init>()V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_24
    check-cast v1, Lk1/u;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_25

    sget-object v8, Lk0/r;->a:Lk0/q;

    new-instance v8, Lk0/b;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_25
    check-cast v8, Lk0/b;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_26

    new-instance v9, Lu2/y;

    invoke-direct {v9, v8}, Lu2/y;-><init>(Lu2/s;)V

    invoke-virtual {v7, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_26
    check-cast v9, Lu2/y;

    move-object/from16 v24, v8

    sget-object v8, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {v7, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lb3/c;

    move-object/from16 v25, v8

    sget-object v8, Lf2/l1;->k:Lr0/s2;

    invoke-virtual {v7, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt2/d;

    move-object/from16 v26, v8

    sget-object v8, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v7, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/a2;

    move-object/from16 v27, v9

    iget-wide v8, v8, Lm0/a2;->b:J

    sget-object v12, Lf2/l1;->i:Lr0/s2;

    invoke-virtual {v7, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lk1/l;

    move-object/from16 v29, v12

    sget-object v12, Lf2/l1;->t:Lr0/s2;

    invoke-virtual {v7, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf2/s2;

    move-object/from16 v30, v12

    sget-object v12, Lf2/l1;->p:Lr0/s2;

    invoke-virtual {v7, v12}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf2/k2;

    const/4 v14, 0x1

    if-ne v2, v14, :cond_27

    if-nez v15, :cond_27

    iget-boolean v14, v5, Lu2/k;->a:Z

    if-eqz v14, :cond_27

    sget-object v14, Lr/m1;->m:Lr/m1;

    goto :goto_11

    :cond_27
    sget-object v14, Lr/m1;->l:Lr/m1;

    :goto_11
    const v2, -0xcbd7bf2

    invoke-virtual {v7, v2}, Lr0/q;->b0(I)V

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v15, Lb0/v2;->g:Lg5/c;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v7, v5}, Lr0/q;->e(I)Z

    move-result v5

    move/from16 v31, v5

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    move/from16 v32, v11

    const/4 v11, 0x6

    if-nez v31, :cond_28

    if-ne v5, v6, :cond_29

    :cond_28
    new-instance v5, Lad/t;

    invoke-direct {v5, v11, v14}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_29
    check-cast v5, Li9/a;

    const/4 v11, 0x0

    invoke-static {v2, v15, v5, v7, v11}, Lc1/k;->d([Ljava/lang/Object;Lc1/j;Li9/a;Lr0/q;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb0/v2;

    invoke-virtual {v7, v11}, Lr0/q;->q(Z)V

    iget-object v5, v2, Lb0/v2;->f:Lr0/e1;

    invoke-virtual {v5}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr/m1;

    if-eq v5, v14, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lr/m1;->l:Lr/m1;

    if-ne v14, v1, :cond_2a

    const-string v1, "only single-line, non-wrap text fields can scroll horizontally"

    goto :goto_12

    :cond_2a
    const-string v1, "single-line, non-wrap text fields can only scroll horizontally"

    :goto_12
    const-string v2, "Mismatching scroller orientation; "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    and-int/lit8 v11, v20, 0xe

    const/4 v5, 0x4

    if-ne v11, v5, :cond_2c

    const/4 v14, 0x1

    goto :goto_13

    :cond_2c
    const/4 v14, 0x0

    :goto_13
    const v23, 0xe000

    and-int v15, v20, v23

    const/16 v5, 0x4000

    if-ne v15, v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_14

    :cond_2d
    const/4 v5, 0x0

    :goto_14
    or-int/2addr v5, v14

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_2f

    if-ne v14, v6, :cond_2e

    goto :goto_15

    :cond_2e
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v36, v11

    move-object/from16 v35, v13

    move-object/from16 v39, v18

    const/16 v11, 0x8

    goto/16 :goto_17

    :cond_2f
    :goto_15
    invoke-static {v0, v13}, Lb0/i3;->a(Lu2/d0;Lp2/g;)Lu2/b0;

    move-result-object v5

    if-eqz v18, :cond_30

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v14, v18

    iget-wide v1, v14, Lp2/l0;->a:J

    iget-object v15, v5, Lu2/b0;->b:Lu2/q;

    sget v35, Lp2/l0;->c:I

    move-wide/from16 v35, v1

    shr-long v1, v35, v21

    long-to-int v1, v1

    invoke-interface {v15, v1}, Lu2/q;->s(I)I

    move-result v1

    const-wide v37, 0xffffffffL

    move-object v2, v13

    move-object/from16 v39, v14

    and-long v13, v35, v37

    long-to-int v13, v13

    invoke-interface {v15, v13}, Lu2/q;->s(I)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v13, Lp2/d;

    iget-object v5, v5, Lu2/b0;->a:Lp2/g;

    invoke-direct {v13, v5}, Lp2/d;-><init>(Lp2/g;)V

    new-instance v40, Lp2/e0;

    const/16 v58, 0x0

    const v59, 0xefff

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const-wide/16 v50, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    sget-object v57, La3/l;->c:La3/l;

    invoke-direct/range {v40 .. v59}, Lp2/e0;-><init>(JJLt2/k;Lt2/i;Lt2/j;Lt2/p;Ljava/lang/String;JLa3/a;La3/p;Lw2/b;JLa3/l;Lm1/g0;I)V

    move-object/from16 v35, v2

    move-object/from16 v5, v40

    new-instance v2, Lp2/c;

    move/from16 v36, v11

    const/16 v11, 0x8

    invoke-direct {v2, v5, v14, v1, v11}, Lp2/c;-><init>(Lp2/e0;III)V

    iget-object v1, v13, Lp2/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lp2/d;->e()Lp2/g;

    move-result-object v1

    new-instance v2, Lu2/b0;

    invoke-direct {v2, v1, v15}, Lu2/b0;-><init>(Lp2/g;Lu2/q;)V

    move-object v14, v2

    goto :goto_16

    :cond_30
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move/from16 v36, v11

    move-object/from16 v35, v13

    move-object/from16 v39, v18

    const/16 v11, 0x8

    move-object v14, v5

    :goto_16
    invoke-virtual {v7, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_17
    move-object v1, v14

    check-cast v1, Lu2/b0;

    iget-object v13, v1, Lu2/b0;->a:Lp2/g;

    iget-object v5, v1, Lu2/b0;->b:Lu2/q;

    invoke-virtual {v7}, Lr0/q;->B()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_76

    iget v14, v2, Lr0/n1;->b:I

    const/16 v19, 0x1

    or-int/lit8 v14, v14, 0x1

    iput v14, v2, Lr0/n1;->b:I

    invoke-virtual {v7, v12}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_32

    if-ne v15, v6, :cond_31

    goto :goto_18

    :cond_31
    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move-object v1, v13

    move-object v0, v15

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v60, v30

    move-object/from16 v5, v35

    move/from16 v15, p8

    move-object/from16 v25, v6

    move-object/from16 v6, v29

    move-wide/from16 v29, v16

    goto :goto_19

    :cond_32
    :goto_18
    new-instance v15, Lb0/r1;

    move-object v14, v12

    new-instance v12, Lb0/b2;

    const/16 v18, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move-object v3, v14

    move-object v0, v15

    move-object/from16 v60, v30

    move-object/from16 v5, v35

    move-object/from16 v11, v39

    const/4 v1, 0x4

    move-object/from16 v14, p3

    move/from16 v15, p8

    move-object/from16 v69, v25

    move-object/from16 v25, v6

    move-object/from16 v6, v29

    move-wide/from16 v29, v16

    move-object/from16 v16, v69

    move-object/from16 v17, v26

    invoke-direct/range {v12 .. v18}, Lb0/b2;-><init>(Lp2/g;Lp2/m0;ZLb3/c;Lt2/d;I)V

    move-object v11, v12

    move-object v1, v13

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct {v0, v11, v2, v3}, Lb0/r1;-><init>(Lb0/b2;Lr0/n1;Lf2/k2;)V

    invoke-virtual {v7, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_19
    move-object v2, v0

    check-cast v2, Lb0/r1;

    iput-object v10, v2, Lb0/r1;->u:Li9/c;

    iput-wide v8, v2, Lb0/r1;->z:J

    iget-object v0, v2, Lb0/r1;->r:Lb0/o1;

    iput-object v4, v0, Lb0/o1;->b:Lb0/p1;

    iput-object v6, v0, Lb0/o1;->c:Lk1/l;

    iput-object v5, v2, Lb0/r1;->j:Lp2/g;

    iget-object v0, v2, Lb0/r1;->a:Lb0/b2;

    iget-object v3, v0, Lb0/b2;->a:Lp2/g;

    invoke-static {v3, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lb0/b2;->b:Lp2/m0;

    invoke-static {v3, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-boolean v3, v0, Lb0/b2;->e:Z

    if-ne v3, v15, :cond_33

    iget v3, v0, Lb0/b2;->f:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_33

    iget v3, v0, Lb0/b2;->c:I

    const v9, 0x7fffffff

    if-ne v3, v9, :cond_33

    iget v3, v0, Lb0/b2;->d:I

    if-ne v3, v8, :cond_33

    iget-object v3, v0, Lb0/b2;->g:Lb3/c;

    invoke-static {v3, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lb0/b2;->i:Ljava/util/List;

    sget-object v8, Lu8/r;->l:Lu8/r;

    invoke-static {v3, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v3, v0, Lb0/b2;->h:Lt2/d;

    if-eq v3, v13, :cond_34

    :cond_33
    move-object/from16 v16, v12

    goto :goto_1a

    :cond_34
    move-object/from16 v16, v12

    goto :goto_1b

    :goto_1a
    new-instance v12, Lb0/b2;

    const/16 v18, 0x0

    move-object/from16 v17, v13

    move-object v13, v1

    invoke-direct/range {v12 .. v18}, Lb0/b2;-><init>(Lp2/g;Lp2/m0;ZLb3/c;Lt2/d;I)V

    move-object v0, v12

    :goto_1b
    iget-object v1, v2, Lb0/r1;->a:Lb0/b2;

    const/4 v8, 0x1

    if-eq v1, v0, :cond_35

    iput-boolean v8, v2, Lb0/r1;->p:Z

    :cond_35
    iput-object v0, v2, Lb0/r1;->a:Lb0/b2;

    iget-object v0, v2, Lb0/r1;->d:Lg5/e;

    iget-object v1, v2, Lb0/r1;->e:Lu2/a0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v3, Lu2/h;

    invoke-virtual {v3}, Lu2/h;->c()Lp2/l0;

    move-result-object v3

    move-object/from16 v11, v39

    invoke-static {v11, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v9, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v9, Lu2/x;

    iget-object v9, v9, Lu2/x;->a:Lp2/g;

    iget-object v9, v9, Lp2/g;->m:Ljava/lang/String;

    iget-object v12, v5, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v9, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    new-instance v9, Lu2/h;

    move-wide/from16 v12, v29

    invoke-direct {v9, v5, v12, v13}, Lu2/h;-><init>(Lp2/g;J)V

    iput-object v9, v0, Lg5/e;->n:Ljava/lang/Object;

    const/4 v5, 0x0

    goto :goto_1d

    :cond_36
    move-wide/from16 v12, v29

    iget-object v5, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v5, Lu2/x;

    iget-wide v8, v5, Lu2/x;->b:J

    invoke-static {v8, v9, v12, v13}, Lp2/l0;->b(JJ)Z

    move-result v5

    if-nez v5, :cond_37

    iget-object v5, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v5, Lu2/h;

    invoke-static {v12, v13}, Lp2/l0;->f(J)I

    move-result v8

    invoke-static {v12, v13}, Lp2/l0;->e(J)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lu2/h;->f(II)V

    const/4 v5, 0x1

    :goto_1c
    const/4 v8, 0x0

    goto :goto_1d

    :cond_37
    const/4 v5, 0x0

    goto :goto_1c

    :goto_1d
    const/4 v9, -0x1

    if-nez v11, :cond_38

    iget-object v11, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v11, Lu2/h;

    iput v9, v11, Lu2/h;->d:I

    iput v9, v11, Lu2/h;->e:I

    goto :goto_1e

    :cond_38
    iget-wide v9, v11, Lp2/l0;->a:J

    invoke-static {v9, v10}, Lp2/l0;->c(J)Z

    move-result v11

    if-nez v11, :cond_39

    iget-object v11, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v11, Lu2/h;

    invoke-static {v9, v10}, Lp2/l0;->f(J)I

    move-result v15

    invoke-static {v9, v10}, Lp2/l0;->e(J)I

    move-result v9

    invoke-virtual {v11, v15, v9}, Lu2/h;->e(II)V

    :cond_39
    :goto_1e
    const-wide/16 v10, 0x0

    if-nez v8, :cond_3b

    if-nez v5, :cond_3a

    if-nez v3, :cond_3a

    goto :goto_1f

    :cond_3a
    move-object/from16 v3, p0

    move-object v5, v3

    goto :goto_20

    :cond_3b
    :goto_1f
    iget-object v3, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v3, Lu2/h;

    const/4 v5, -0x1

    iput v5, v3, Lu2/h;->d:I

    iput v5, v3, Lu2/h;->e:I

    const/4 v3, 0x0

    const/4 v15, 0x3

    move-object/from16 v5, p0

    invoke-static {v5, v3, v10, v11, v15}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v3

    :goto_20
    iget-object v8, v0, Lg5/e;->m:Ljava/lang/Object;

    check-cast v8, Lu2/x;

    iput-object v3, v0, Lg5/e;->m:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    invoke-virtual {v1, v8, v3}, Lu2/a0;->a(Lu2/x;Lu2/x;)V

    :cond_3c
    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3d

    new-instance v0, Lb0/h3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v7, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3d
    check-cast v0, Lb0/h3;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-boolean v3, v0, Lb0/h3;->e:Z

    if-nez v3, :cond_3f

    iget-object v3, v0, Lb0/h3;->d:Ljava/lang/Long;

    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :cond_3e
    const/16 v3, 0x1388

    int-to-long v3, v3

    add-long/2addr v10, v3

    cmp-long v3, v8, v10

    if-lez v3, :cond_40

    :cond_3f
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lb0/h3;->d:Ljava/lang/Long;

    invoke-virtual {v0, v5}, Lb0/h3;->a(Lu2/x;)V

    :cond_40
    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_41

    invoke-static {v7}, Lr0/r;->p(Lr0/q;)Lu9/t;

    move-result-object v3

    invoke-virtual {v7, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_41
    move-object v8, v3

    check-cast v8, Lu9/t;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_42

    new-instance v3, Ly/c;

    invoke-direct {v3}, Ly/c;-><init>()V

    invoke-virtual {v7, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_42
    move-object v9, v3

    check-cast v9, Ly/c;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_43

    new-instance v3, Lm0/v1;

    invoke-direct {v3, v0}, Lm0/v1;-><init>(Lb0/h3;)V

    invoke-virtual {v7, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_43
    move-object v4, v3

    check-cast v4, Lm0/v1;

    move-object/from16 v3, v21

    iput-object v3, v4, Lm0/v1;->b:Lu2/q;

    move-object/from16 v10, p4

    iput-object v10, v4, Lm0/v1;->f:Lu2/d0;

    iget-object v11, v2, Lb0/r1;->v:Lb0/h0;

    iput-object v11, v4, Lm0/v1;->c:Li9/c;

    iput-object v2, v4, Lm0/v1;->d:Lb0/r1;

    iget-object v11, v4, Lm0/v1;->e:Lr0/e1;

    invoke-virtual {v11, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    new-instance v11, Lp2/l0;

    invoke-direct {v11, v12, v13}, Lp2/l0;-><init>(J)V

    iput-object v11, v4, Lm0/v1;->w:Lp2/l0;

    sget-object v11, Lf2/l1;->f:Lr0/s2;

    invoke-virtual {v7, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf2/g1;

    iput-object v11, v4, Lm0/v1;->h:Lf2/g1;

    iput-object v8, v4, Lm0/v1;->i:Lu9/t;

    sget-object v11, Lf2/l1;->q:Lr0/s2;

    invoke-virtual {v7, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lf2/l2;

    sget-object v11, Lf2/l1;->l:Lr0/s2;

    invoke-virtual {v7, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt1/a;

    iput-object v11, v4, Lm0/v1;->k:Lt1/a;

    move-object/from16 v11, v33

    iput-object v11, v4, Lm0/v1;->l:Lk1/u;

    iget-object v12, v4, Lm0/v1;->m:Lr0/e1;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v12, v4, Lm0/v1;->n:Lr0/e1;

    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const v12, 0x753a5109

    invoke-virtual {v7, v12}, Lr0/q;->b0(I)V

    sget-object v12, Lm0/y;->l:Lm0/y;

    iget-object v13, v14, Lp2/m0;->a:Lp2/e0;

    iget-object v13, v13, Lp2/e0;->k:Lw2/b;

    const/4 v15, 0x6

    invoke-static {v12, v13, v7, v15}, Lm0/w;->b(Lm0/y;Lw2/b;Lr0/q;I)Lm0/u;

    move-result-object v12

    iput-object v12, v4, Lm0/v1;->j:Lm0/u;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lr0/q;->q(Z)V

    invoke-virtual {v2}, Lb0/r1;->b()Z

    invoke-virtual {v7, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v12

    move/from16 v13, v32

    and-int/lit16 v15, v13, 0x1c00

    move-object/from16 v21, v0

    const/16 v0, 0x800

    if-ne v15, v0, :cond_44

    const/4 v0, 0x1

    goto :goto_21

    :cond_44
    const/4 v0, 0x0

    :goto_21
    or-int/2addr v0, v12

    and-int v12, v13, v23

    move/from16 v23, v0

    const/16 v0, 0x4000

    if-ne v12, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_22

    :cond_45
    const/4 v0, 0x0

    :goto_22
    or-int v0, v23, v0

    move/from16 v23, v0

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v25

    or-int v23, v23, v25

    move/from16 v10, v36

    const/4 v0, 0x4

    if-ne v10, v0, :cond_46

    const/16 v25, 0x1

    goto :goto_23

    :cond_46
    const/16 v25, 0x0

    :goto_23
    or-int v23, v23, v25

    and-int/lit8 v25, v13, 0x70

    move-object/from16 v33, v11

    xor-int/lit8 v11, v25, 0x30

    move/from16 v32, v13

    const/16 v13, 0x20

    move-object/from16 v0, p11

    if-le v11, v13, :cond_47

    invoke-virtual {v7, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_48

    :cond_47
    and-int/lit8 v0, v32, 0x30

    if-ne v0, v13, :cond_49

    :cond_48
    const/4 v0, 0x1

    goto :goto_24

    :cond_49
    const/4 v0, 0x0

    :goto_24
    or-int v0, v23, v0

    invoke-virtual {v7, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v7, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v7, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v7, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v23

    or-int v0, v0, v23

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-nez v0, :cond_4b

    if-ne v13, v1, :cond_4a

    goto :goto_25

    :cond_4a
    move-object/from16 v14, p6

    move-object/from16 v62, v6

    move/from16 v36, v10

    move-object v0, v13

    move/from16 v19, v15

    move-object/from16 v61, v24

    move-object/from16 v13, v33

    move-object/from16 v63, v34

    move-object v10, v1

    move-object v1, v2

    move-object v6, v3

    move-object v15, v7

    move-object v2, v8

    move-object/from16 v24, v9

    move-object/from16 v3, v27

    move/from16 v9, p13

    move-object v8, v5

    move-object/from16 v5, p11

    goto :goto_26

    :cond_4b
    :goto_25
    new-instance v0, Lb0/g0;

    move-object/from16 v14, p6

    move-object/from16 v62, v6

    move/from16 v36, v10

    move/from16 v19, v15

    move-object/from16 v61, v24

    move-object/from16 v13, v33

    move-object/from16 v63, v34

    move-object v10, v1

    move-object v1, v2

    move-object v6, v3

    move-object v15, v7

    move-object/from16 v3, v27

    move/from16 v2, p13

    move-object v7, v4

    move-object v4, v5

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v9}, Lb0/g0;-><init>(Lb0/r1;ZLu2/y;Lu2/x;Lu2/k;Lu2/q;Lm0/v1;Lu9/t;Ly/c;)V

    move-object/from16 v24, v9

    move v9, v2

    move-object v2, v8

    move-object v8, v4

    move-object v4, v7

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_26
    check-cast v0, Li9/c;

    sget-object v7, Lf1/o;->a:Lf1/o;

    move-object/from16 v25, v2

    invoke-static {v7, v13}, Lk1/d;->j(Lf1/r;Lk1/u;)Lf1/r;

    move-result-object v2

    invoke-static {v2, v0}, Lk1/d;->s(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    invoke-static {v0, v9, v14}, Lp/o;->n(Lf1/r;ZLs/i;)Lf1/r;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v15}, Lr0/r;->C(Ljava/lang/Object;Lr0/q;)Lr0/u0;

    move-result-object v2

    invoke-virtual {v15, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v26

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v27

    or-int v26, v26, v27

    invoke-virtual {v15, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v27

    or-int v26, v26, v27

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v27

    or-int v26, v26, v27

    move-object/from16 v27, v0

    const/16 v0, 0x20

    if-le v11, v0, :cond_4d

    invoke-virtual {v15, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_4c

    goto :goto_27

    :cond_4c
    move-object/from16 v29, v1

    goto :goto_28

    :cond_4d
    :goto_27
    move-object/from16 v29, v1

    and-int/lit8 v1, v32, 0x30

    if-ne v1, v0, :cond_4e

    :goto_28
    const/4 v0, 0x1

    goto :goto_29

    :cond_4e
    const/4 v0, 0x0

    :goto_29
    or-int v0, v26, v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_50

    if-ne v1, v10, :cond_4f

    goto :goto_2a

    :cond_4f
    move-object v0, v1

    move-object v9, v6

    move-object/from16 v33, v13

    move-object/from16 v64, v25

    move-object/from16 v65, v27

    move-object/from16 v1, v29

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    move-object v13, v7

    goto :goto_2b

    :cond_50
    :goto_2a
    new-instance v0, Landroidx/lifecycle/l0;

    move-object v1, v6

    const/4 v6, 0x0

    move-object/from16 v26, v7

    const/4 v7, 0x1

    move-object v9, v1

    move-object/from16 v33, v13

    move-object/from16 v64, v25

    move-object/from16 v13, v26

    move-object/from16 v65, v27

    move-object/from16 v1, v29

    invoke-direct/range {v0 .. v7}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    move-object/from16 v25, v2

    move-object/from16 v27, v3

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2b
    check-cast v0, Li9/e;

    sget-object v2, Lt8/z;->a:Lt8/z;

    invoke-static {v0, v2, v15}, Lr0/r;->f(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_51

    if-ne v2, v10, :cond_52

    :cond_51
    new-instance v2, Lb0/h0;

    const/4 v0, 0x0

    invoke-direct {v2, v1, v0}, Lb0/h0;-><init>(Lb0/r1;I)V

    invoke-virtual {v15, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_52
    check-cast v2, Li9/c;

    const v0, 0x845fed

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lb0/w0;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v2}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    move/from16 v6, v19

    invoke-static {v13, v0, v3}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v7

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x4000

    if-ne v12, v5, :cond_53

    const/4 v2, 0x1

    goto :goto_2c

    :cond_53
    const/4 v2, 0x0

    :goto_2c
    or-int/2addr v0, v2

    const/16 v2, 0x800

    if-ne v6, v2, :cond_54

    const/4 v2, 0x1

    goto :goto_2d

    :cond_54
    const/4 v2, 0x0

    :goto_2d
    or-int/2addr v0, v2

    invoke-virtual {v15, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_56

    if-ne v2, v10, :cond_55

    goto :goto_2e

    :cond_55
    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_2f

    :cond_56
    :goto_2e
    new-instance v0, Lb0/i0;

    move/from16 v3, p13

    move-object v5, v9

    move-object/from16 v2, v33

    invoke-direct/range {v0 .. v5}, Lb0/i0;-><init>(Lb0/r1;Lk1/u;ZLm0/v1;Lu2/q;)V

    move-object v2, v1

    move-object v1, v5

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2f
    check-cast v0, Li9/c;

    if-eqz p13, :cond_57

    new-instance v3, Lb0/l2;

    const/4 v12, 0x0

    invoke-direct {v3, v12, v0, v14}, Lb0/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7, v3}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v7

    :cond_57
    iget-object v0, v4, Lm0/v1;->A:Lad/a2;

    iget-object v3, v4, Lm0/v1;->z:Lm0/t1;

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_58

    if-ne v9, v10, :cond_59

    :cond_58
    new-instance v9, Lb0/w0;

    const/4 v12, 0x0

    invoke-direct {v9, v12, v4}, Lb0/w0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_59
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    new-instance v5, Ly1/f0;

    const/4 v12, 0x4

    invoke-direct {v5, v0, v3, v9, v12}, Ly1/f0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;I)V

    invoke-interface {v7, v5}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    sget-object v3, Ly1/r;->a:Ly1/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ly1/t;->b:Ly1/a;

    invoke-static {v0, v3}, Ly1/t;->g(Lf1/r;Ly1/a;)Lf1/r;

    move-result-object v7

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v9, v36

    if-ne v9, v12, :cond_5a

    const/4 v3, 0x1

    goto :goto_30

    :cond_5a
    const/4 v3, 0x0

    :goto_30
    or-int/2addr v0, v3

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_5c

    if-ne v3, v10, :cond_5b

    goto :goto_31

    :cond_5b
    const/4 v12, 0x1

    goto :goto_32

    :cond_5c
    :goto_31
    new-instance v3, Lb0/o;

    const/4 v12, 0x1

    invoke-direct {v3, v2, v8, v1, v12}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_32
    check-cast v3, Li9/c;

    invoke-static {v13, v3}, Lj1/g;->d(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v19

    invoke-virtual {v15, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0x800

    if-ne v6, v3, :cond_5d

    move v3, v12

    goto :goto_33

    :cond_5d
    const/4 v3, 0x0

    :goto_33
    or-int/2addr v0, v3

    move-object/from16 v3, v60

    invoke-virtual {v15, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v15, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    const/4 v5, 0x4

    if-ne v9, v5, :cond_5e

    move v5, v12

    goto :goto_34

    :cond_5e
    const/4 v5, 0x0

    :goto_34
    or-int/2addr v0, v5

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_60

    if-ne v5, v10, :cond_5f

    goto :goto_35

    :cond_5f
    move-object v6, v1

    move-object v1, v2

    move-object/from16 v30, v3

    goto :goto_36

    :cond_60
    :goto_35
    new-instance v0, Lb0/j0;

    move-object v6, v1

    move-object v1, v2

    move-object v5, v8

    move/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Lb0/j0;-><init>(Lb0/r1;ZLf2/s2;Lm0/v1;Lu2/x;Lu2/q;)V

    move-object/from16 v30, v3

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v5, v0

    :goto_36
    check-cast v5, Li9/c;

    invoke-static {v13, v5}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v26

    move-object/from16 v0, p4

    instance-of v5, v0, Lu2/r;

    new-instance v0, Lk0/d;

    move-object/from16 v2, p0

    move-object/from16 v8, p11

    move-object v3, v1

    move-object/from16 v66, v7

    move v14, v9

    move-object/from16 v1, v20

    move-object/from16 v12, v27

    move-object/from16 v9, v33

    move-object v7, v4

    move/from16 v4, p13

    invoke-direct/range {v0 .. v9}, Lk0/d;-><init>(Lu2/b0;Lu2/x;Lb0/r1;ZZLu2/q;Lm0/v1;Lu2/k;Lk1/u;)V

    move-object v9, v0

    move-object v1, v3

    if-eqz p13, :cond_62

    move-object/from16 v0, v30

    check-cast v0, Lf2/x1;

    iget-object v0, v0, Lf2/x1;->a:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lb0/r1;->A:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/l0;

    iget-wide v2, v0, Lp2/l0;->a:J

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, v1, Lb0/r1;->B:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/l0;

    iget-wide v2, v0, Lp2/l0;->a:J

    invoke-static {v2, v3}, Lp2/l0;->c(J)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_37

    :cond_61
    const/4 v0, 0x1

    goto :goto_38

    :cond_62
    :goto_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_63

    new-instance v0, Lb0/e2;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v2, v1

    move-object v4, v6

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v5}, Lb0/e2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    invoke-static {v13, v0}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_39

    :cond_63
    move-object/from16 v20, v13

    :goto_39
    invoke-virtual {v15, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_64

    if-ne v2, v10, :cond_65

    :cond_64
    new-instance v2, Lb0/o0;

    const/4 v0, 0x0

    invoke-direct {v2, v7, v0}, Lb0/o0;-><init>(Lm0/v1;I)V

    invoke-virtual {v15, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_65
    check-cast v2, Li9/c;

    invoke-static {v7, v2, v15}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    const/4 v5, 0x4

    if-ne v14, v5, :cond_66

    const/4 v2, 0x1

    goto :goto_3a

    :cond_66
    const/4 v2, 0x0

    :goto_3a
    or-int/2addr v0, v2

    const/16 v2, 0x20

    if-le v11, v2, :cond_67

    invoke-virtual {v15, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    :cond_67
    and-int/lit8 v3, v32, 0x30

    if-ne v3, v2, :cond_69

    :cond_68
    const/4 v2, 0x1

    goto :goto_3b

    :cond_69
    const/4 v2, 0x0

    :goto_3b
    or-int/2addr v0, v2

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_6b

    if-ne v2, v10, :cond_6a

    goto :goto_3c

    :cond_6a
    move-object v11, v8

    goto :goto_3d

    :cond_6b
    :goto_3c
    new-instance v0, Lb0/p0;

    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object v4, v8

    move-object v2, v12

    invoke-direct/range {v0 .. v5}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v11, v4

    invoke-virtual {v15, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_3d
    check-cast v2, Li9/c;

    invoke-static {v11, v2, v15}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    iget-object v8, v1, Lb0/r1;->v:Lb0/h0;

    move/from16 v12, p9

    const/4 v14, 0x1

    if-ne v12, v14, :cond_6c

    const/4 v5, 0x1

    :goto_3e
    move-object v0, v9

    goto :goto_3f

    :cond_6c
    const/4 v5, 0x0

    goto :goto_3e

    :goto_3f
    iget v9, v11, Lu2/k;->e:I

    move-object v2, v0

    new-instance v0, Lb0/j2;

    move-object/from16 v3, p0

    move/from16 v14, p13

    move-object v12, v2

    move-object v2, v7

    move/from16 v4, v17

    move-object/from16 v7, v21

    invoke-direct/range {v0 .. v9}, Lb0/j2;-><init>(Lb0/r1;Lm0/v1;Lu2/x;ZZLu2/q;Lb0/h3;Li9/c;I)V

    move-object v4, v2

    invoke-static {v13, v0}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v0

    iget v2, v11, Lu2/k;->d:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6d

    goto :goto_40

    :cond_6d
    const/16 v3, 0x8

    if-ne v2, v3, :cond_6e

    :goto_40
    const/4 v2, 0x0

    goto :goto_41

    :cond_6e
    const/4 v2, 0x1

    :goto_41
    invoke-interface/range {v25 .. v25}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v15, v2}, Lr0/q;->h(Z)Z

    move-result v5

    move-object/from16 v8, v61

    invoke-virtual {v15, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_6f

    if-ne v7, v10, :cond_70

    :cond_6f
    new-instance v7, Lb0/q0;

    const/4 v5, 0x0

    invoke-direct {v7, v2, v8, v5}, Lb0/q0;-><init>(ZLjava/lang/Object;I)V

    invoke-virtual {v15, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_70
    check-cast v7, Li9/a;

    invoke-static {v3, v2, v7}, Lj0/b;->a(ZZLi9/a;)Lf1/r;

    move-result-object v2

    sget-object v3, Lb0/m;->a:Lr0/a0;

    invoke-virtual {v15, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm1/m;

    sget-object v5, Lb0/m;->b:Lr0/a0;

    invoke-virtual {v15, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm1/p;

    move-object/from16 v21, v6

    iget-wide v5, v5, Lm1/p;->a:J

    const v7, 0x4dffeb3b    # 5.3670077E8f

    move-object v9, v12

    invoke-static {v7}, Lm1/v;->c(I)J

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Lm1/p;->c(JJ)Z

    move-result v7

    if-nez v7, :cond_71

    new-instance v3, Lm1/j0;

    invoke-direct {v3, v5, v6}, Lm1/j0;-><init>(J)V

    :cond_71
    invoke-virtual {v15, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v15, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_72

    if-ne v6, v10, :cond_73

    :cond_72
    new-instance v6, Lb0/r0;

    const/4 v12, 0x0

    invoke-direct {v6, v12, v1, v3}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_73
    check-cast v6, Li9/c;

    invoke-static {v13, v6}, Lj1/g;->f(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v3

    move-object/from16 v11, p2

    invoke-interface {v11, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v3

    invoke-static {v3, v8, v1, v4}, Lk0/o;->m(Lf1/r;Lk0/b;Lb0/r1;Lm0/v1;)Lf1/r;

    move-result-object v3

    invoke-interface {v3, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    move-object/from16 v3, v65

    invoke-interface {v2, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v2

    new-instance v3, Lb0/b1;

    move-object/from16 v6, v62

    invoke-direct {v3, v6, v1}, Lb0/b1;-><init>(Lk1/l;Lb0/r1;)V

    invoke-static {v2, v3}, Lw1/c;->e(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v2

    new-instance v3, Lb0/b1;

    const/4 v12, 0x0

    invoke-direct {v3, v12, v1, v4}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lw1/c;->e(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v2

    invoke-interface {v2, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    new-instance v2, Lb0/r2;

    move-object/from16 v7, p6

    move-object/from16 v6, v63

    invoke-direct {v2, v6, v14, v7}, Lb0/r2;-><init>(Lb0/v2;ZLs/i;)V

    new-instance v3, Lf1/m;

    invoke-direct {v3, v2}, Lf1/m;-><init>(Li9/f;)V

    invoke-interface {v0, v3}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    move-object/from16 v2, v66

    invoke-interface {v0, v2}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    invoke-interface {v0, v9}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object v0

    new-instance v2, Lb0/h0;

    const/4 v8, 0x1

    invoke-direct {v2, v1, v8}, Lb0/h0;-><init>(Lb0/r1;I)V

    invoke-static {v0, v2}, Lc2/x;->m(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    new-instance v2, Lg0/k;

    move-object/from16 v3, v64

    const/4 v5, 0x3

    invoke-direct {v2, v5, v4, v3}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lh0/h;->a(Lf1/r;Li9/e;)Lf1/r;

    move-result-object v0

    if-eqz v14, :cond_74

    invoke-virtual {v1}, Lb0/r1;->b()Z

    move-result v2

    if-eqz v2, :cond_74

    iget-object v2, v1, Lb0/r1;->q:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_74

    move-object/from16 v2, v30

    check-cast v2, Lf2/x1;

    iget-object v2, v2, Lf2/x1;->a:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_74

    goto :goto_42

    :cond_74
    move v8, v12

    :goto_42
    if-eqz v8, :cond_75

    sget-object v2, Lp/i1;->a:Lm2/w;

    new-instance v2, Lb0/x2;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v4}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-static {v13, v2}, Lf1/a;->a(Lf1/r;Li9/f;)Lf1/r;

    move-result-object v2

    move-object v12, v2

    :goto_43
    move-object v2, v0

    goto :goto_44

    :cond_75
    move-object v12, v13

    goto :goto_43

    :goto_44
    new-instance v0, Lb0/e0;

    move-object/from16 v7, p0

    move-object/from16 v3, p3

    move/from16 v5, p9

    move-object/from16 v67, v2

    move-object v14, v4

    move v15, v8

    move-object/from16 v18, v16

    move-object/from16 v10, v19

    move-object/from16 v9, v20

    move-object/from16 v17, v21

    move-object/from16 v13, v24

    move-object/from16 v11, v26

    move-object/from16 v8, p4

    move-object/from16 v16, p5

    move/from16 v4, p10

    move-object v2, v1

    move-object/from16 v1, p14

    invoke-direct/range {v0 .. v18}, Lb0/e0;-><init>(Lz0/d;Lb0/r1;Lp2/m0;IILb0/v2;Lu2/x;Lu2/d0;Lf1/r;Lf1/r;Lf1/r;Lf1/r;Ly/c;Lm0/v1;ZLi9/c;Lu2/q;Lb3/c;)V

    move-object v4, v14

    const v1, -0x308d4209

    move-object/from16 v15, p15

    invoke-static {v1, v0, v15}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const/16 v1, 0x180

    move-object/from16 v2, v67

    invoke-static {v2, v4, v0, v15, v1}, Lb0/n1;->h(Lf1/r;Lm0/v1;Lz0/d;Lr0/q;I)V

    goto :goto_45

    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no recompose scope found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    move-object v15, v7

    invoke-virtual {v15}, Lr0/q;->W()V

    :goto_45
    invoke-virtual {v15}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_78

    move-object v1, v0

    new-instance v0, Lb0/f0;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v68, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lb0/f0;-><init>(Lu2/x;Li9/c;Lf1/r;Lp2/m0;Lu2/d0;Li9/c;Ls/i;Lm1/j0;ZIILu2/k;Lb0/p1;ZLz0/d;II)V

    move-object/from16 v1, v68

    iput-object v0, v1, Lr0/n1;->d:Li9/e;

    :cond_78
    return-void
.end method

.method public static final h(Lf1/r;Lm0/v1;Lz0/d;Lr0/q;I)V
    .locals 8

    const v0, 0x795d8dec

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p4

    invoke-virtual {p3, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v2, 0x92

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, v0, 0x1

    invoke-virtual {p3, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lf1/c;->l:Lf1/j;

    invoke-static {v1, v3}, Lu/l;->d(Lf1/j;Z)Lc2/r0;

    move-result-object v1

    iget-wide v4, p3, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {p3}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {p0, p3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {p3}, Lr0/q;->e0()V

    iget-boolean v7, p3, Lr0/q;->S:Z

    if-eqz v7, :cond_3

    invoke-virtual {p3, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lr0/q;->o0()V

    :goto_3
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v1, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v4, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {p3, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {p3, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v5, p3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x7e

    invoke-static {p1, p2, p3, v0}, Lb0/n1;->f(Lm0/v1;Lz0/d;Lr0/q;I)V

    invoke-virtual {p3, v3}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p3}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_5

    new-instance v0, Lb0/k0;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lt8/e;II)V

    iput-object v0, p3, Lr0/n1;->d:Li9/e;

    :cond_5
    return-void
.end method

.method public static final i(Lf1/r;Lp2/g;Li9/c;ZLjava/util/Map;Lp2/m0;IZIILt2/d;Ll0/i;Li9/c;Lr0/q;II)V
    .locals 30

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v4, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const v1, -0x7e46da9f

    invoke-virtual {v4, v1}, Lr0/q;->c0(I)Lr0/q;

    and-int/lit8 v1, v14, 0x6

    move-object/from16 v9, p0

    if-nez v1, :cond_1

    invoke-virtual {v4, v9}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v14

    goto :goto_1

    :cond_1
    move v1, v14

    :goto_1
    and-int/lit8 v5, v14, 0x30

    if-nez v5, :cond_3

    invoke-virtual {v4, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    goto :goto_2

    :cond_2
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v1, v5

    :cond_3
    and-int/lit16 v5, v14, 0x180

    if-nez v5, :cond_5

    invoke-virtual {v4, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v1, v5

    :cond_5
    and-int/lit16 v5, v14, 0xc00

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-nez v5, :cond_7

    invoke-virtual {v4, v7}, Lr0/q;->h(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v5, v17

    goto :goto_4

    :cond_6
    move/from16 v5, v16

    :goto_4
    or-int/2addr v1, v5

    :cond_7
    and-int/lit16 v5, v14, 0x6000

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-nez v5, :cond_9

    invoke-virtual {v4, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move/from16 v5, v19

    goto :goto_5

    :cond_8
    move/from16 v5, v18

    :goto_5
    or-int/2addr v1, v5

    :cond_9
    const/high16 v5, 0x30000

    and-int/2addr v5, v14

    if-nez v5, :cond_b

    move-object/from16 v5, p5

    invoke-virtual {v4, v5}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/high16 v20, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v20, 0x10000

    :goto_6
    or-int v1, v1, v20

    goto :goto_7

    :cond_b
    move-object/from16 v5, p5

    :goto_7
    const/high16 v20, 0x180000

    and-int v20, v14, v20

    move/from16 v10, p6

    if-nez v20, :cond_d

    invoke-virtual {v4, v10}, Lr0/q;->e(I)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v21, 0x80000

    :goto_8
    or-int v1, v1, v21

    :cond_d
    const/high16 v21, 0xc00000

    and-int v21, v14, v21

    move/from16 v12, p7

    if-nez v21, :cond_f

    invoke-virtual {v4, v12}, Lr0/q;->h(Z)Z

    move-result v22

    if-eqz v22, :cond_e

    const/high16 v22, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v22, 0x400000

    :goto_9
    or-int v1, v1, v22

    :cond_f
    const/high16 v22, 0x6000000

    and-int v22, v14, v22

    move/from16 v13, p8

    if-nez v22, :cond_11

    invoke-virtual {v4, v13}, Lr0/q;->e(I)Z

    move-result v23

    if-eqz v23, :cond_10

    const/high16 v23, 0x4000000

    goto :goto_a

    :cond_10
    const/high16 v23, 0x2000000

    :goto_a
    or-int v1, v1, v23

    :cond_11
    const/high16 v23, 0x30000000

    and-int v23, v14, v23

    move/from16 v2, p9

    if-nez v23, :cond_13

    invoke-virtual {v4, v2}, Lr0/q;->e(I)Z

    move-result v24

    if-eqz v24, :cond_12

    const/high16 v24, 0x20000000

    goto :goto_b

    :cond_12
    const/high16 v24, 0x10000000

    :goto_b
    or-int v1, v1, v24

    :cond_13
    and-int/lit8 v24, v15, 0x6

    move-object/from16 v3, p10

    if-nez v24, :cond_15

    invoke-virtual {v4, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v24, 0x4

    goto :goto_c

    :cond_14
    const/16 v24, 0x2

    :goto_c
    or-int v24, v15, v24

    goto :goto_d

    :cond_15
    move/from16 v24, v15

    :goto_d
    and-int/lit8 v25, v15, 0x30

    move-object/from16 v11, p11

    if-nez v25, :cond_17

    invoke-virtual {v4, v11}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_16

    const/16 v20, 0x20

    goto :goto_e

    :cond_16
    const/16 v20, 0x10

    :goto_e
    or-int v24, v24, v20

    :cond_17
    move/from16 v20, v1

    and-int/lit16 v1, v15, 0x180

    move/from16 v26, v1

    const/4 v1, 0x0

    if-nez v26, :cond_19

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    const/16 v21, 0x100

    goto :goto_f

    :cond_18
    const/16 v21, 0x80

    :goto_f
    or-int v24, v24, v21

    :cond_19
    and-int/lit16 v1, v15, 0xc00

    if-nez v1, :cond_1b

    move-object/from16 v1, p12

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    move/from16 v16, v17

    :cond_1a
    or-int v24, v24, v16

    goto :goto_10

    :cond_1b
    move-object/from16 v1, p12

    :goto_10
    and-int/lit16 v1, v15, 0x6000

    if-nez v1, :cond_1e

    const v1, 0x8000

    and-int/2addr v1, v15

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_11

    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v16

    :goto_11
    if-eqz v16, :cond_1d

    move/from16 v18, v19

    :cond_1d
    or-int v24, v24, v18

    :cond_1e
    move/from16 v1, v24

    const v16, 0x12492493

    and-int v2, v20, v16

    const v3, 0x12492492

    if-ne v2, v3, :cond_20

    and-int/lit16 v2, v1, 0x2493

    const/16 v3, 0x2492

    if-eq v2, v3, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    goto :goto_13

    :cond_20
    :goto_12
    const/4 v2, 0x1

    :goto_13
    and-int/lit8 v3, v20, 0x1

    invoke-virtual {v4, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-static {v0}, Ll7/a;->q(Lp2/g;)Z

    move-result v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-eqz v2, :cond_24

    const v2, 0x8ae5063

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    and-int/lit8 v2, v20, 0x70

    const/16 v7, 0x20

    if-ne v2, v7, :cond_21

    const/4 v2, 0x1

    goto :goto_14

    :cond_21
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_22

    if-ne v7, v3, :cond_23

    :cond_22
    new-instance v7, Lb0/e3;

    invoke-direct {v7, v0}, Lb0/e3;-><init>(Lp2/g;)V

    invoke-virtual {v4, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_23
    move-object v2, v7

    check-cast v2, Lb0/e3;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lr0/q;->q(Z)V

    move-object v7, v2

    goto :goto_15

    :cond_24
    const/4 v7, 0x0

    const v2, 0x8af50dc

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v7}, Lr0/q;->q(Z)V

    const/4 v7, 0x0

    :goto_15
    invoke-static {v0}, Ll7/a;->q(Lp2/g;)Z

    move-result v2

    if-eqz v2, :cond_28

    const v2, 0x8b25723

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    and-int/lit8 v2, v20, 0x70

    move/from16 v16, v1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_25

    const/4 v1, 0x1

    goto :goto_16

    :cond_25
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v4, v7}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_26

    if-ne v2, v3, :cond_27

    :cond_26
    new-instance v2, Lb0/n;

    const/4 v1, 0x1

    invoke-direct {v2, v1, v7, v0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_27
    check-cast v2, Li9/a;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    :goto_17
    move-object/from16 v17, v2

    goto :goto_19

    :cond_28
    move/from16 v16, v1

    const v1, 0x8b3d321

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    and-int/lit8 v1, v20, 0x70

    const/16 v2, 0x20

    if-ne v1, v2, :cond_29

    const/4 v1, 0x1

    goto :goto_18

    :cond_29
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2a

    if-ne v2, v3, :cond_2b

    :cond_2a
    new-instance v2, Lad/t;

    const/4 v1, 0x4

    invoke-direct {v2, v1, v0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2b
    check-cast v2, Li9/a;

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    goto :goto_17

    :goto_19
    if-eqz p3, :cond_33

    if-eqz v8, :cond_32

    sget-object v1, Lb0/k;->a:Lt8/j;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    goto/16 :goto_1d

    :cond_2c
    iget-object v1, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Lp2/g;->l:Ljava/util/List;

    if-eqz v2, :cond_2e

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v5, :cond_2f

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Lp2/e;

    move/from16 v18, v5

    iget-object v5, v2, Lp2/e;->a:Ljava/lang/Object;

    move/from16 v23, v9

    iget v9, v2, Lp2/e;->c:I

    iget v10, v2, Lp2/e;->b:I

    iget-object v11, v2, Lp2/e;->d:Ljava/lang/String;

    instance-of v5, v5, Lp2/g0;

    if-eqz v5, :cond_2d

    const-string v5, "androidx.compose.foundation.text.inlineContent"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x0

    invoke-static {v5, v1, v10, v9}, Lp2/h;->b(IIII)Z

    move-result v24

    if-eqz v24, :cond_2d

    new-instance v5, Lp2/e;

    iget-object v2, v2, Lp2/e;->a:Ljava/lang/Object;

    move/from16 v24, v1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.text.StringAnnotation"

    invoke-static {v2, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lp2/g0;

    iget-object v1, v2, Lp2/g0;->a:Ljava/lang/String;

    invoke-direct {v5, v11, v10, v9, v1}, Lp2/e;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_2d
    move/from16 v24, v1

    :goto_1b
    add-int/lit8 v9, v23, 0x1

    move/from16 v10, p6

    move-object/from16 v11, p11

    move/from16 v5, v18

    move-object/from16 v2, v19

    move/from16 v1, v24

    goto :goto_1a

    :cond_2e
    sget-object v0, Lu8/r;->l:Lu8/r;

    :cond_2f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v5, :cond_31

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp2/e;

    iget-object v10, v10, Lp2/e;->a:Ljava/lang/Object;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_30

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_30
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_31
    new-instance v0, Lt8/j;

    invoke-direct {v0, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_32
    :goto_1d
    sget-object v0, Lb0/k;->a:Lt8/j;

    :goto_1e
    const/4 v1, 0x0

    goto :goto_1f

    :cond_33
    new-instance v0, Lt8/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1f
    iget-object v2, v0, Lt8/j;->l:Ljava/lang/Object;

    move-object/from16 v25, v2

    check-cast v25, Ljava/util/List;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    if-eqz p3, :cond_35

    const v0, 0x8b8a5ec

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_34

    invoke-static {v1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {v4, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_34
    check-cast v0, Lr0/u0;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    move-object v10, v0

    goto :goto_20

    :cond_35
    const/4 v5, 0x0

    const v0, 0x8b9fcbc    # 1.11937E-33f

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    move-object v10, v1

    :goto_20
    if-eqz p3, :cond_38

    const v0, 0x8bb68fd

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_36

    if-ne v1, v3, :cond_37

    :cond_36
    new-instance v1, Lb0/y;

    const/4 v0, 0x1

    invoke-direct {v1, v10, v0}, Lb0/y;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_37
    check-cast v1, Li9/c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    :goto_21
    move-object/from16 v26, v1

    goto :goto_22

    :cond_38
    const/4 v5, 0x0

    const v0, 0x8bc7ffc

    invoke-virtual {v4, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    goto :goto_21

    :goto_22
    shr-int/lit8 v0, v20, 0x3

    and-int/lit8 v11, v0, 0xe

    shr-int/lit8 v0, v20, 0xc

    and-int/lit8 v0, v0, 0x70

    or-int/2addr v0, v11

    shl-int/lit8 v1, v16, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int v5, v0, v1

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object/from16 v2, p10

    move-object v12, v3

    move/from16 v8, v20

    move-object/from16 v3, v25

    invoke-static/range {v0 .. v5}, Lb0/b0;->a(Lp2/g;Lp2/m0;Lt2/d;Ljava/util/List;Lr0/q;I)V

    invoke-interface/range {v17 .. v17}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lp2/g;

    invoke-virtual {v4, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    and-int/lit16 v2, v8, 0x380

    const/16 v5, 0x100

    if-ne v2, v5, :cond_39

    const/4 v2, 0x1

    goto :goto_23

    :cond_39
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v1, v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3a

    if-ne v2, v12, :cond_3b

    :cond_3a
    new-instance v2, Lb0/s;

    const/4 v5, 0x0

    invoke-direct {v2, v7, v6, v5}, Lb0/s;-><init>(Lb0/e3;Li9/c;I)V

    invoke-virtual {v4, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3b
    move-object/from16 v19, v2

    check-cast v19, Li9/c;

    move-object/from16 v16, p0

    move-object/from16 v18, p5

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v23, p9

    move-object/from16 v24, p10

    move-object/from16 v27, p11

    move-object/from16 v28, p12

    move-object/from16 v25, v3

    move/from16 v22, v13

    invoke-static/range {v16 .. v28}, Lb0/n1;->A(Lf1/r;Lp2/g;Lp2/m0;Li9/c;IZIILt2/d;Ljava/util/List;Li9/c;Ll0/i;Li9/c;)Lf1/r;

    move-result-object v1

    if-nez p3, :cond_3e

    const v2, 0x8ce8017

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3d

    if-ne v3, v12, :cond_3c

    goto :goto_24

    :cond_3c
    const/4 v5, 0x0

    goto :goto_25

    :cond_3d
    :goto_24
    new-instance v3, Lb0/t;

    const/4 v5, 0x0

    invoke-direct {v3, v7, v5}, Lb0/t;-><init>(Lb0/e3;I)V

    invoke-virtual {v4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_25
    check-cast v3, Li9/a;

    new-instance v2, Lb0/u1;

    invoke-direct {v2, v5, v3}, Lb0/u1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    goto :goto_28

    :cond_3e
    const v2, 0x8d13291

    invoke-virtual {v4, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v4, v7}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_3f

    if-ne v3, v12, :cond_40

    :cond_3f
    new-instance v3, Lb0/t;

    const/4 v2, 0x1

    invoke-direct {v3, v7, v2}, Lb0/t;-><init>(Lb0/e3;I)V

    invoke-virtual {v4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_40
    check-cast v3, Li9/a;

    invoke-virtual {v4, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_42

    if-ne v5, v12, :cond_41

    goto :goto_26

    :cond_41
    const/4 v2, 0x0

    goto :goto_27

    :cond_42
    :goto_26
    new-instance v5, Lb0/u;

    const/4 v2, 0x0

    invoke-direct {v5, v10, v2}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v4, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_27
    check-cast v5, Li9/a;

    new-instance v8, Lb0/f3;

    invoke-direct {v8, v2, v3, v5}, Lb0/f3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lr0/q;->q(Z)V

    move-object v2, v8

    :goto_28
    iget-wide v12, v4, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v4}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v1, v4}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v8, Le2/h;->b:Le2/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Le2/g;->b:Le2/f;

    invoke-virtual {v4}, Lr0/q;->e0()V

    iget-boolean v10, v4, Lr0/q;->S:Z

    if-eqz v10, :cond_43

    invoke-virtual {v4, v8}, Lr0/q;->l(Li9/a;)V

    goto :goto_29

    :cond_43
    invoke-virtual {v4}, Lr0/q;->o0()V

    :goto_29
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v2, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v2, Le2/g;->e:Le2/e;

    invoke-static {v2, v5, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Le2/g;->g:Le2/e;

    invoke-static {v4, v2, v3}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v2, Le2/g;->h:Le2/d;

    invoke-static {v4, v2}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v2, Le2/g;->d:Le2/e;

    invoke-static {v2, v1, v4}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-nez v7, :cond_44

    const v1, -0x19d78e09

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    const/4 v5, 0x0

    :goto_2a
    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    goto :goto_2b

    :cond_44
    const/4 v5, 0x0

    const v1, -0x115988b6

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v7, v4, v5}, Lb0/e3;->a(Lr0/q;I)V

    goto :goto_2a

    :goto_2b
    if-nez v9, :cond_45

    const v1, -0x19d6c7af

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    :goto_2c
    invoke-virtual {v4, v5}, Lr0/q;->q(Z)V

    const/4 v1, 0x1

    goto :goto_2d

    :cond_45
    const v1, -0x19d6c7ae

    invoke-virtual {v4, v1}, Lr0/q;->b0(I)V

    invoke-static {v0, v9, v4, v11}, Lb0/k;->a(Lp2/g;Ljava/util/List;Lr0/q;I)V

    goto :goto_2c

    :goto_2d
    invoke-virtual {v4, v1}, Lr0/q;->q(Z)V

    goto :goto_2e

    :cond_46
    invoke-virtual {v4}, Lr0/q;->W()V

    :goto_2e
    invoke-virtual {v4}, Lr0/q;->u()Lr0/n1;

    move-result-object v1

    if-eqz v1, :cond_47

    new-instance v0, Lb0/v;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v29, v1

    move-object v3, v6

    move-object/from16 v1, p0

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v15}, Lb0/v;-><init>(Lf1/r;Lp2/g;Li9/c;ZLjava/util/Map;Lp2/m0;IZIILt2/d;Ll0/i;Li9/c;II)V

    move-object v1, v0

    move-object/from16 v0, v29

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_47
    return-void
.end method

.method public static final j(Lm0/v1;ZLr0/q;I)V
    .locals 11

    const v0, 0x25552d88

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p1}, Lr0/q;->h(Z)Z

    move-result v1

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    const v1, 0x5b336eec

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    iget-object v3, p0, Lm0/v1;->d:Lb0/r1;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lb0/r1;->d()Lb0/z2;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v3, Lb0/z2;->a:Lp2/j0;

    iget-object v7, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v7, :cond_3

    iget-boolean v7, v7, Lb0/r1;->p:Z

    goto :goto_3

    :cond_3
    move v7, v4

    :goto_3
    if-nez v7, :cond_4

    move-object v6, v3

    :cond_4
    if-nez v6, :cond_6

    const v0, 0x5b336eeb

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    :cond_5
    :goto_4
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto/16 :goto_a

    :cond_6
    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-wide v7, v1, Lu2/x;->b:J

    invoke-static {v7, v8}, Lp2/l0;->c(J)Z

    move-result v1

    const v3, 0x7ae91d8e

    if-nez v1, :cond_9

    const v1, 0x7dc11ac6

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    iget-object v1, p0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v7

    iget-wide v7, v7, Lu2/x;->b:J

    shr-long/2addr v7, v2

    long-to-int v2, v7

    invoke-interface {v1, v2}, Lu2/q;->s(I)I

    move-result v1

    iget-object v2, p0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v7

    iget-wide v7, v7, Lu2/x;->b:J

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v7, v7

    invoke-interface {v2, v7}, Lu2/q;->s(I)I

    move-result v2

    invoke-virtual {v6, v1}, Lp2/j0;->a(I)La3/j;

    move-result-object v1

    sub-int/2addr v2, v4

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v2}, Lp2/j0;->a(I)La3/j;

    move-result-object v2

    iget-object v6, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v6, :cond_7

    iget-object v6, v6, Lb0/r1;->m:Lr0/e1;

    invoke-virtual {v6}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v4, :cond_7

    const v6, 0x7dc77b9a

    invoke-virtual {p2, v6}, Lr0/q;->b0(I)V

    shl-int/lit8 v6, v0, 0x6

    and-int/lit16 v6, v6, 0x380

    or-int/lit8 v6, v6, 0x6

    invoke-static {v4, v1, p0, p2, v6}, Lm0/d1;->g(ZLa3/j;Lm0/v1;Lr0/q;I)V

    :goto_5
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_7
    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_5

    :goto_6
    iget-object v1, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lb0/r1;->n:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_8

    const v1, 0x7dcccf7b

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    shl-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0x380

    or-int/lit8 v0, v0, 0x6

    invoke-static {v5, v2, p0, p2, v0}, Lm0/d1;->g(ZLa3/j;Lm0/v1;Lr0/q;I)V

    :goto_7
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_7

    :goto_8
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2, v3}, Lr0/q;->b0(I)V

    goto :goto_8

    :goto_9
    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lb0/r1;->l:Lr0/e1;

    iget-object v2, p0, Lm0/v1;->u:Lu2/x;

    iget-object v2, v2, Lu2/x;->a:Lp2/g;

    iget-object v2, v2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v3

    iget-object v3, v3, Lu2/x;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v0}, Lb0/r1;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lm0/v1;->r()V

    goto/16 :goto_4

    :cond_b
    invoke-virtual {p0}, Lm0/v1;->o()V

    goto/16 :goto_4

    :goto_a
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_c
    const v0, 0x768ee72a

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    invoke-virtual {p0}, Lm0/v1;->o()V

    goto :goto_b

    :cond_d
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_b
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lb0/n0;

    invoke-direct {v0, p0, p1, p3}, Lb0/n0;-><init>(Lm0/v1;ZI)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final k(Lm0/v1;Lr0/q;I)V
    .locals 13

    move v6, p2

    const v0, -0x5597ad88

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v6

    and-int/lit8 v2, v0, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v2, v1, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_1
    and-int/2addr v0, v7

    invoke-virtual {p1, v0, v2}, Lr0/q;->T(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lb0/r1;->o:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v7, :cond_b

    invoke-virtual {p0}, Lm0/v1;->m()Lp2/g;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    const v0, -0x7de7ecc8

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-nez v0, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v2, Lm0/r1;

    invoke-direct {v2, p0}, Lm0/r1;-><init>(Lm0/v1;)V

    invoke-virtual {p1, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Lb0/c2;

    sget-object v0, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/c;

    iget-object v5, p0, Lm0/v1;->b:Lu2/q;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v9

    iget-wide v9, v9, Lu2/x;->b:J

    sget v11, Lp2/l0;->c:I

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    long-to-int v9, v9

    invoke-interface {v5, v9}, Lu2/q;->s(I)I

    move-result v5

    iget-object v9, p0, Lm0/v1;->d:Lb0/r1;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lb0/r1;->d()Lb0/z2;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v9, v9, Lb0/z2;->a:Lp2/j0;

    iget-object v10, v9, Lp2/j0;->a:Lp2/i0;

    iget-object v10, v10, Lp2/i0;->a:Lp2/g;

    iget-object v10, v10, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v5, v8, v10}, Lg6/c1;->f(III)I

    move-result v5

    invoke-virtual {v9, v5}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v5

    iget v9, v5, Ll1/c;->a:F

    sget v10, Lb0/f2;->a:F

    invoke-interface {v0, v10}, Lb3/c;->V(F)F

    move-result v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    iget v1, v5, Ll1/c;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v9, v11

    const-wide v11, 0xffffffffL

    and-long/2addr v0, v11

    or-long/2addr v0, v9

    invoke-virtual {p1, v0, v1}, Lr0/q;->f(J)Z

    move-result v5

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_5

    if-ne v9, v3, :cond_6

    :cond_5
    new-instance v9, Lb0/x0;

    invoke-direct {v9, v0, v1}, Lb0/x0;-><init>(J)V

    invoke-virtual {p1, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lm0/r;

    invoke-virtual {p1, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p1, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_7

    if-ne v10, v3, :cond_8

    :cond_7
    new-instance v10, Lb0/a1;

    invoke-direct {v10, v8, v2, p0}, Lb0/a1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v2, v10}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Lr0/q;->f(J)Z

    move-result v5

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_9

    if-ne v10, v3, :cond_a

    :cond_9
    new-instance v10, Lad/c;

    const/4 v3, 0x6

    invoke-direct {v10, v3, v0, v1}, Lad/c;-><init>(IJ)V

    invoke-virtual {p1, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Li9/c;

    invoke-static {v2, v8, v10}, Lm2/n;->a(Lf1/r;ZLi9/c;)Lf1/r;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    move-object v0, v9

    invoke-static/range {v0 .. v5}, Lb0/g;->a(Lm0/r;Lf1/r;JLr0/q;I)V

    :goto_3
    invoke-virtual {p1, v8}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_b
    const v0, 0x7f222faa

    invoke-virtual {p1, v0}, Lr0/q;->b0(I)V

    goto :goto_3

    :cond_c
    invoke-virtual {p1}, Lr0/q;->W()V

    :goto_4
    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v1, Lb0/x;

    invoke-direct {v1, p2, v7, p0}, Lb0/x;-><init>(IILjava/lang/Object;)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_d
    return-void
.end method

.method public static final l(Lc2/e1;ILu2/b0;Lp2/j0;ZI)Ll1/c;
    .locals 1

    if-eqz p3, :cond_0

    iget-object p2, p2, Lu2/b0;->b:Lu2/q;

    invoke-interface {p2, p1}, Lu2/q;->s(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lp2/j0;->c(I)Ll1/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Ll1/c;->e:Ll1/c;

    :goto_0
    iget p2, p1, Ll1/c;->a:F

    sget p3, Lb0/f2;->a:F

    invoke-interface {p0, p3}, Lb3/c;->h0(F)I

    move-result p0

    if-eqz p4, :cond_1

    int-to-float p3, p5

    sub-float/2addr p3, p2

    int-to-float v0, p0

    sub-float/2addr p3, v0

    goto :goto_1

    :cond_1
    move p3, p2

    :goto_1
    if-eqz p4, :cond_2

    int-to-float p0, p5

    sub-float/2addr p0, p2

    goto :goto_2

    :cond_2
    int-to-float p0, p0

    add-float/2addr p0, p2

    :goto_2
    const/4 p2, 0x0

    const/16 p4, 0xa

    invoke-static {p1, p3, p0, p2, p4}, Ll1/c;->b(Ll1/c;FFFI)Ll1/c;

    move-result-object p0

    return-object p0
.end method

.method public static final m(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {p1}, Lw1/c;->b(Landroid/view/KeyEvent;)J

    move-result-wide v0

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    long-to-int p1, v0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final n(Ljava/util/List;Li9/a;)Ljava/util/ArrayList;
    .locals 9

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/q0;

    invoke-interface {v3}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier"

    invoke-static {v4, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lb0/g3;

    iget-object v4, v4, Lb0/g3;->a:Lb0/b3;

    iget-object v5, v4, Lb0/b3;->m:Ljava/lang/Object;

    check-cast v5, Lb0/e3;

    iget-object v4, v4, Lb0/b3;->n:Ljava/lang/Object;

    check-cast v4, Lp2/e;

    iget-object v5, v5, Lb0/e3;->a:Lr0/e1;

    invoke-virtual {v5}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/j0;

    if-nez v5, :cond_0

    new-instance v4, La1/b;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, La1/b;-><init>(I)V

    new-instance v5, Lad/s2;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v1, v1, v6}, Lad/s2;-><init>(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    invoke-static {v4, v5}, Lb0/e3;->c(Lp2/e;Lp2/j0;)Lp2/e;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, La1/b;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, La1/b;-><init>(I)V

    new-instance v5, Lad/s2;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v1, v1, v6}, Lad/s2;-><init>(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    iget v6, v4, Lp2/e;->b:I

    iget v4, v4, Lp2/e;->c:I

    invoke-virtual {v5, v6, v4}, Lp2/j0;->i(II)Lm1/g;

    move-result-object v4

    invoke-virtual {v4}, Lm1/g;->c()Ll1/c;

    move-result-object v4

    invoke-static {v4}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object v4

    invoke-virtual {v4}, Lb3/k;->d()I

    move-result v5

    invoke-virtual {v4}, Lb3/k;->b()I

    move-result v6

    new-instance v7, Lad/t;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v4}, Lad/t;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lad/s2;

    const/4 v8, 0x1

    invoke-direct {v4, v7, v5, v6, v8}, Lad/s2;-><init>(Ljava/lang/Object;III)V

    move-object v5, v4

    :goto_1
    iget v4, v5, Lad/s2;->m:I

    iget v6, v5, Lad/s2;->n:I

    invoke-static {v4, v4, v6, v6}, Ll9/a;->m(IIII)J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    new-instance v4, Lt8/j;

    iget-object v5, v5, Lad/s2;->o:Ljava/lang/Object;

    check-cast v5, Li9/a;

    invoke-direct {v4, v3, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final o(F)I
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static final p(Ly1/x;Lb0/c2;Ly8/c;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lb0/x1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lb0/x1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final q(Lb0/r1;)V
    .locals 7

    iget-object v0, p0, Lb0/r1;->e:Lu2/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lb0/r1;->d:Lg5/e;

    iget-object v3, p0, Lb0/r1;->v:Lb0/h0;

    iget-object v2, v2, Lg5/e;->m:Ljava/lang/Object;

    check-cast v2, Lu2/x;

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v1, v4, v5, v6}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb0/h0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lu2/a0;->a:Lu2/y;

    iget-object v3, v2, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v2, Lu2/y;->a:Lu2/s;

    invoke-interface {v0}, Lu2/s;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_0

    :cond_2
    :goto_0
    iput-object v1, p0, Lb0/r1;->e:Lu2/a0;

    return-void
.end method

.method public static final r(ILjava/lang/String;)I
    .locals 11

    invoke-static {}, Lb0/n1;->v()Lx3/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lx3/h;->c()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_5

    const-string v2, "charSequence cannot be null"

    invoke-static {p1, v2}, Lpc/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lx3/h;->e:Lx3/e;

    iget-object v4, v0, Lx3/e;->b:Lx2/k;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p0, v2, :cond_2

    :cond_1
    move-object v5, p1

    goto :goto_1

    :cond_2
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    add-int/lit8 v5, p0, 0x1

    const-class v6, Lx3/s;

    invoke-interface {v2, p0, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lx3/s;

    array-length v6, v5

    if-lez v6, :cond_3

    aget-object v3, v5, v3

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    move-object v5, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, p0, -0x10

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p0, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v10, Lx3/n;

    invoke-direct {v10, p0}, Lx3/n;-><init>(I)V

    const v8, 0x7fffffff

    const/4 v9, 0x1

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lx2/k;->c(Ljava/lang/CharSequence;IIIZLx3/m;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx3/n;

    iget v2, p1, Lx3/n;->n:I

    goto :goto_2

    :goto_1
    move v2, v0

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-ne v2, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p1

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not initialized yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move-object v5, p1

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_7
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->following(I)I

    move-result p0

    return p0
.end method

.method public static final s(Ljava/lang/CharSequence;I)I
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public static final t(Ljava/lang/CharSequence;I)I
    .locals 2

    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final u(ILjava/lang/String;)I
    .locals 4

    invoke-static {}, Lb0/n1;->v()Lx3/h;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    add-int/lit8 v2, p0, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lx3/h;->b(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result p0

    return p0
.end method

.method public static final v()Lx3/h;
    .locals 3

    invoke-static {}, Lx3/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx3/h;->a()Lx3/h;

    move-result-object v0

    invoke-virtual {v0}, Lx3/h;->c()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final w(Lp2/j0;I)F
    .locals 3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lp2/j0;->a:Lp2/i0;

    iget-object p0, p0, Lp2/j0;->b:Lp2/n;

    iget-object v0, v0, Lp2/i0;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lp2/n;->d(I)I

    move-result v0

    iget v1, p0, Lp2/n;->b:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lp2/n;->f:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lp2/n;->c(IZ)I

    move-result v1

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lp2/n;->m(I)V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lp2/d0;->e(ILjava/util/List;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object p1, p0, Lp2/p;->a:Lp2/a;

    iget p0, p0, Lp2/p;->d:I

    sub-int/2addr v0, p0

    iget-object p0, p1, Lp2/a;->d:Lq2/j;

    invoke-virtual {p0, v0}, Lq2/j;->e(I)F

    move-result p1

    invoke-virtual {p0, v0}, Lq2/j;->g(I)F

    move-result p0

    sub-float/2addr p1, p0

    return p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final x(Lb0/r1;Lu2/x;Lu2/q;)V
    .locals 11

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld1/g;->e()Li9/c;

    move-result-object v0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v1}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v8, p0, Lb0/r1;->e:Lu2/a0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_2

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lb0/r1;->c()Lc2/u;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_3

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :cond_3
    :try_start_3
    iget-object v5, p0, Lb0/r1;->a:Lb0/b2;

    iget-object v6, v0, Lb0/z2;->a:Lp2/j0;

    invoke-virtual {p0}, Lb0/r1;->b()Z

    move-result v9

    move-object v4, p1

    move-object v10, p2

    invoke-static/range {v4 .. v10}, Lb0/n1;->y(Lu2/x;Lb0/b2;Lp2/j0;Lc2/u;Lu2/a0;ZLu2/q;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v3, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method

.method public static y(Lu2/x;Lb0/b2;Lp2/j0;Lc2/u;Lu2/a0;ZLu2/q;)V
    .locals 5

    if-nez p5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v0, p0, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->e(J)I

    move-result p0

    invoke-interface {p6, p0}, Lu2/q;->s(I)I

    move-result p0

    sget-object p5, Lb0/h2;->a:Ljava/lang/String;

    iget-object p5, p2, Lp2/j0;->a:Lp2/i0;

    iget-object p5, p5, Lp2/i0;->a:Lp2/g;

    iget-object p5, p5, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    const-wide v0, 0xffffffffL

    if-ge p0, p5, :cond_1

    invoke-virtual {p2, p0}, Lp2/j0;->b(I)Ll1/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p2, p0}, Lp2/j0;->b(I)Ll1/c;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lb0/b2;->b:Lp2/m0;

    iget-object p2, p1, Lb0/b2;->g:Lb3/c;

    iget-object p1, p1, Lb0/b2;->h:Lt2/d;

    invoke-static {p0, p2, p1}, Lb0/h2;->b(Lp2/m0;Lb3/c;Lt2/d;)J

    move-result-wide p0

    new-instance p2, Lb3/l;

    invoke-direct {p2, p0, p1}, Lb3/l;-><init>(J)V

    new-instance p0, Ll1/c;

    iget-wide p1, p2, Lb3/l;->a:J

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-float p1, p1

    const/4 p2, 0x0

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p0, p2, p2, p5, p1}, Ll1/c;-><init>(FFFF)V

    :goto_0
    iget p1, p0, Ll1/c;->b:F

    iget p2, p0, Ll1/c;->a:F

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p5

    int-to-long p5, p5

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr p5, v4

    and-long/2addr v2, v0

    or-long/2addr p5, v2

    invoke-interface {p3, p5, p6}, Lc2/u;->R(J)J

    move-result-wide p5

    shr-long v2, p5, v4

    long-to-int p3, v2

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    and-long/2addr p5, v0

    long-to-int p5, p5

    invoke-static {p5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p5

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v2, p3

    invoke-static {p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long p5, p3

    shl-long/2addr v2, v4

    and-long/2addr p5, v0

    or-long/2addr p5, v2

    iget p3, p0, Ll1/c;->c:F

    sub-float/2addr p3, p2

    iget p0, p0, Ll1/c;->d:F

    sub-float/2addr p0, p1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    shl-long p0, p1, v4

    and-long p2, v2, v0

    or-long/2addr p0, p2

    invoke-static {p5, p6, p0, p1}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object p0

    iget-object p1, p4, Lu2/a0;->a:Lu2/y;

    iget-object p1, p1, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu2/a0;

    invoke-static {p1, p4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p4, Lu2/a0;->b:Lu2/s;

    invoke-interface {p1, p0}, Lu2/s;->b(Ll1/c;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final z(Lu2/y;Lb0/r1;Lu2/x;Lu2/k;Lu2/q;)V
    .locals 6

    iget-object v0, p1, Lb0/r1;->d:Lg5/e;

    iget-object v1, p1, Lb0/r1;->v:Lb0/h0;

    iget-object v2, p1, Lb0/r1;->w:Lb0/h0;

    new-instance v3, Lj9/y;

    invoke-direct {v3}, Lj9/y;-><init>()V

    new-instance v4, Lb0/o;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v1, v3, v5}, Lb0/o;-><init>(Ljava/lang/Object;Li9/c;Ljava/lang/Object;I)V

    iget-object v0, p0, Lu2/y;->a:Lu2/s;

    invoke-interface {v0, p2, p3, v4, v2}, Lu2/s;->g(Lu2/x;Lu2/k;Lb0/o;Lb0/h0;)V

    new-instance p3, Lu2/a0;

    invoke-direct {p3, p0, v0}, Lu2/a0;-><init>(Lu2/y;Lu2/s;)V

    iget-object p0, p0, Lu2/y;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p3, v3, Lj9/y;->m:Ljava/lang/Object;

    iput-object p3, p1, Lb0/r1;->e:Lu2/a0;

    invoke-static {p1, p2, p4}, Lb0/n1;->x(Lb0/r1;Lu2/x;Lu2/q;)V

    return-void
.end method
