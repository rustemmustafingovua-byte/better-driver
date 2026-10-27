.class public final synthetic Lm0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/b1;


# direct methods
.method public synthetic constructor <init>(Lm0/b1;I)V
    .locals 0

    iput p2, p0, Lm0/f0;->l:I

    iput-object p1, p0, Lm0/f0;->m:Lm0/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lm0/f0;->l:I

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    sget-object v7, Lt8/z;->a:Lt8/z;

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v0, Lm0/f0;->m:Lm0/b1;

    packed-switch v1, :pswitch_data_0

    iget-object v0, v10, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {v10}, Lm0/b1;->j()Lc2/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v2, Lk/o;->a:Lk/b0;

    new-instance v2, Lk/b0;

    invoke-direct {v2}, Lk/b0;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v8

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm0/q;

    iget-wide v12, v11, Lm0/q;->a:J

    iget-object v14, v11, Lm0/q;->c:Ll0/h;

    invoke-virtual {v14}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lp2/j0;

    if-nez v14, :cond_1

    move-object/from16 p0, v1

    move/from16 v16, v3

    move/from16 v17, v4

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    iget-object v15, v14, Lp2/j0;->a:Lp2/i0;

    iget-object v15, v15, Lp2/i0;->a:Lp2/g;

    iget-object v15, v15, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v6, Lm0/a0;

    move-object/from16 p0, v1

    new-instance v1, Lm0/z;

    move/from16 v16, v3

    invoke-virtual {v14, v8}, Lp2/j0;->a(I)La3/j;

    move-result-object v3

    invoke-direct {v1, v3, v8, v12, v13}, Lm0/z;-><init>(La3/j;IJ)V

    new-instance v3, Lm0/z;

    move/from16 v17, v4

    add-int/lit8 v4, v15, -0x1

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v14, v4}, Lp2/j0;->a(I)La3/j;

    move-result-object v4

    invoke-direct {v3, v4, v15, v12, v13}, Lm0/z;-><init>(La3/j;IJ)V

    invoke-direct {v6, v1, v3, v8}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    :goto_1
    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    if-nez v5, :cond_3

    move-object v5, v6

    :cond_3
    iget-wide v3, v11, Lm0/q;->a:J

    invoke-virtual {v2, v3, v4}, Lk/b0;->c(J)I

    move-result v1

    iget-object v9, v2, Lk/b0;->c:[Ljava/lang/Object;

    aget-object v11, v9, v1

    iget-object v11, v2, Lk/b0;->b:[J

    aput-wide v3, v11, v1

    aput-object v6, v9, v1

    move-object v9, v6

    :goto_2
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v16

    goto :goto_0

    :cond_4
    iget v1, v2, Lk/b0;->e:I

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    if-ne v5, v9, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Lm0/a0;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, v5, Lm0/a0;->a:Lm0/z;

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v4, v9, Lm0/a0;->b:Lm0/z;

    invoke-direct {v1, v3, v4, v8}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    move-object v5, v1

    :goto_3
    iget-object v0, v0, Lm0/i1;->k:Lr0/e1;

    invoke-virtual {v0, v2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, v10, Lm0/b1;->d:Li9/c;

    invoke-interface {v0, v5}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v10, Lm0/b1;->t:Lm0/t0;

    :goto_4
    return-object v7

    :pswitch_0
    iget-boolean v0, v10, Lm0/b1;->x:Z

    if-eqz v0, :cond_7

    invoke-virtual {v10}, Lm0/b1;->g()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v8, v9

    :cond_8
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v10}, Lm0/b1;->b()V

    invoke-virtual {v10}, Lm0/b1;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lm0/b1;->i()V

    :cond_9
    return-object v7

    :pswitch_2
    iget-object v0, v10, Lm0/b1;->a:Lm0/i1;

    iget-object v1, v10, Lm0/b1;->m:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    invoke-virtual {v10}, Lm0/b1;->f()Lm0/a0;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_e

    :cond_a
    iget-object v1, v10, Lm0/b1;->l:Lc2/u;

    if-nez v1, :cond_b

    goto/16 :goto_e

    :cond_b
    invoke-interface {v1}, Lc2/u;->j()Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_e

    :cond_c
    invoke-virtual {v10}, Lm0/b1;->j()Lc2/u;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v8

    :goto_5
    if-ge v7, v6, :cond_f

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v11

    iget-wide v12, v10, Lm0/q;->a:J

    invoke-virtual {v11, v12, v13}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm0/a0;

    if-eqz v11, :cond_d

    new-instance v12, Lt8/j;

    invoke-direct {v12, v10, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    :goto_6
    if-eqz v12, :cond_e

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v9, :cond_10

    invoke-static {v3}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_e

    :cond_11
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    sget-object v2, Lm0/d1;->a:Ll1/c;

    if-eqz v0, :cond_12

    move-object v9, v1

    move-object v0, v2

    goto/16 :goto_d

    :cond_12
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    move v10, v8

    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v12, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v14, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_7
    if-ge v10, v0, :cond_19

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt8/j;

    iget-object v6, v15, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Lm0/q;

    iget-object v15, v15, Lt8/j;->m:Ljava/lang/Object;

    check-cast v15, Lm0/a0;

    iget-object v7, v15, Lm0/a0;->a:Lm0/z;

    iget v7, v7, Lm0/z;->b:I

    iget-object v15, v15, Lm0/a0;->b:Lm0/z;

    iget v15, v15, Lm0/z;->b:I

    if-eq v7, v15, :cond_13

    invoke-virtual {v6}, Lm0/q;->c()Lc2/u;

    move-result-object v4

    if-nez v4, :cond_14

    :cond_13
    move/from16 v24, v0

    move-object v9, v1

    move-object/from16 v25, v3

    goto/16 :goto_c

    :cond_14
    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v7, v9

    if-ne v5, v7, :cond_15

    new-array v7, v9, [I

    aput v5, v7, v8

    goto :goto_8

    :cond_15
    const/4 v15, 0x2

    new-array v15, v15, [I

    aput v5, v15, v8

    aput v7, v15, v9

    move-object v7, v15

    :goto_8
    array-length v5, v7

    move v15, v8

    const/high16 v19, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v20, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v21, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v22, -0x800000    # Float.NEGATIVE_INFINITY

    :goto_9
    if-ge v15, v5, :cond_18

    aget v8, v7, v15

    iget-object v9, v6, Lm0/q;->c:Ll0/h;

    invoke-virtual {v9}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp2/j0;

    sget-object v23, Ll1/c;->e:Ll1/c;

    if-nez v9, :cond_16

    move/from16 v24, v0

    move-object/from16 v25, v3

    :goto_a
    move-object/from16 v0, v23

    goto :goto_b

    :cond_16
    move/from16 v24, v0

    iget-object v0, v9, Lp2/j0;->a:Lp2/i0;

    iget-object v0, v0, Lp2/i0;->a:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move-object/from16 v25, v3

    const/4 v3, 0x1

    if-ge v0, v3, :cond_17

    goto :goto_a

    :cond_17
    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    invoke-static {v8, v3, v0}, Lg6/c1;->f(III)I

    move-result v0

    invoke-virtual {v9, v0}, Lp2/j0;->b(I)Ll1/c;

    move-result-object v23

    goto :goto_a

    :goto_b
    iget v3, v0, Ll1/c;->a:F

    move/from16 v8, v19

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v19

    iget v3, v0, Ll1/c;->b:F

    move/from16 v9, v20

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v20

    iget v3, v0, Ll1/c;->c:F

    move/from16 v8, v21

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v21

    iget v0, v0, Ll1/c;->d:F

    move/from16 v3, v22

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v22

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v24

    move-object/from16 v3, v25

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_9

    :cond_18
    move/from16 v24, v0

    move-object/from16 v25, v3

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v3, v22

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    const/16 v0, 0x20

    shl-long/2addr v5, v0

    const-wide v19, 0xffffffffL

    and-long v7, v7, v19

    or-long/2addr v5, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move v15, v0

    move-object v9, v1

    int-to-long v0, v3

    shl-long/2addr v7, v15

    and-long v0, v0, v19

    or-long/2addr v0, v7

    invoke-interface {v9, v4, v5, v6}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v5

    invoke-interface {v9, v4, v0, v1}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide v0

    shr-long v3, v5, v15

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v11, v3}, Ljava/lang/Math;->min(FF)F

    move-result v11

    and-long v3, v5, v19

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->min(FF)F

    move-result v12

    shr-long v3, v0, v15

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v13

    and-long v0, v0, v19

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move-object v1, v9

    move/from16 v0, v24

    move-object/from16 v3, v25

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_19
    move-object v9, v1

    new-instance v0, Ll1/c;

    invoke-direct {v0, v11, v12, v13, v14}, Ll1/c;-><init>(FFFF)V

    :goto_d
    invoke-virtual {v0, v2}, Ll1/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-static {v9}, Lm0/d1;->A(Lc2/u;)Ll1/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Ll1/c;->f(Ll1/c;)Ll1/c;

    move-result-object v0

    iget v1, v0, Ll1/c;->c:F

    iget v2, v0, Ll1/c;->a:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1c

    iget v1, v0, Ll1/c;->d:F

    iget v3, v0, Ll1/c;->b:F

    sub-float/2addr v1, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1b

    goto :goto_e

    :cond_1b
    const-wide/16 v3, 0x0

    invoke-interface {v9, v3, v4}, Lc2/u;->R(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ll1/c;->j(J)Ll1/c;

    move-result-object v0

    iget v1, v0, Ll1/c;->d:F

    sget v3, Lm0/s0;->b:F

    const/4 v4, 0x4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    const/4 v1, 0x7

    invoke-static {v0, v2, v2, v3, v1}, Ll1/c;->b(Ll1/c;FFFI)Ll1/c;

    move-result-object v6

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v6, 0x0

    :goto_f
    return-object v6

    :pswitch_3
    invoke-virtual {v10}, Lm0/b1;->i()V

    return-object v7

    :pswitch_4
    iget-object v9, v0, Lm0/f0;->m:Lm0/b1;

    const/4 v3, 0x1

    iput-boolean v3, v9, Lm0/b1;->x:Z

    invoke-virtual {v9}, Lm0/b1;->o()V

    iget-object v0, v9, Lm0/b1;->r:Lr0/e1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object v0, v9, Lm0/b1;->s:Lr0/e1;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-boolean v0, v9, Lm0/b1;->u:Z

    if-eqz v0, :cond_22

    invoke-virtual {v9}, Lm0/b1;->h()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v10, Lj9/y;

    invoke-direct {v10}, Lj9/y;-><init>()V

    new-instance v11, Lj9/y;

    invoke-direct {v11}, Lj9/y;-><init>()V

    new-instance v12, Lj9/x;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iget-object v0, v9, Lm0/b1;->a:Lm0/i1;

    invoke-virtual {v9}, Lm0/b1;->j()Lc2/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm0/i1;->c(Lc2/u;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1e

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v6

    iget-wide v13, v4, Lm0/q;->a:J

    invoke-virtual {v6, v13, v14}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/a0;

    if-eqz v4, :cond_1d

    iget-object v6, v4, Lm0/a0;->a:Lm0/z;

    iget v6, v6, Lm0/z;->b:I

    iget-object v4, v4, Lm0/a0;->b:Lm0/z;

    iget v4, v4, Lm0/z;->b:I

    if-eq v6, v4, :cond_1d

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    goto :goto_10

    :cond_1e
    move v2, v5

    :goto_10
    if-eq v2, v5, :cond_21

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_21

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm0/q;

    invoke-virtual {v0}, Lm0/i1;->a()Lk/b0;

    move-result-object v8

    iget-wide v13, v6, Lm0/q;->a:J

    invoke-virtual {v8, v13, v14}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm0/a0;

    if-eqz v8, :cond_20

    invoke-virtual {v6}, Lm0/q;->d()Lp2/g;

    move-result-object v0

    iget-object v1, v8, Lm0/a0;->a:Lm0/z;

    iget v1, v1, Lm0/z;->b:I

    iget-object v4, v8, Lm0/a0;->b:Lm0/z;

    iget v4, v4, Lm0/z;->b:I

    invoke-static {v1, v4}, Lp2/d0;->b(II)J

    move-result-wide v13

    if-lt v5, v2, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    iget-wide v1, v6, Lm0/q;->a:J

    if-eqz v3, :cond_21

    iput-object v0, v10, Lj9/y;->m:Ljava/lang/Object;

    new-instance v0, Lp2/l0;

    invoke-direct {v0, v13, v14}, Lp2/l0;-><init>(J)V

    iput-object v0, v11, Lj9/y;->m:Ljava/lang/Object;

    iput-wide v1, v12, Lj9/x;->l:J

    goto :goto_13

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_21
    :goto_13
    iget-object v0, v10, Lj9/y;->m:Ljava/lang/Object;

    if-eqz v0, :cond_22

    iget-object v1, v11, Lj9/y;->m:Ljava/lang/Object;

    if-eqz v1, :cond_22

    iget-wide v1, v12, Lj9/x;->l:J

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    if-eqz v1, :cond_22

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, v9, Lm0/b1;->v:Lu9/t;

    if-eqz v0, :cond_22

    new-instance v8, Landroidx/lifecycle/j0;

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-direct/range {v8 .. v14}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v8, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_22
    const/4 v3, 0x0

    iput-boolean v3, v9, Lm0/b1;->u:Z

    return-object v7

    :pswitch_5
    iget-object v0, v10, Lm0/b1;->q:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    if-eqz v0, :cond_23

    iget-wide v2, v0, Ll1/b;->a:J

    :cond_23
    new-instance v0, Ll1/b;

    invoke-direct {v0, v2, v3}, Ll1/b;-><init>(J)V

    return-object v0

    :pswitch_6
    iget-object v0, v10, Lm0/b1;->p:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll1/b;

    if-eqz v0, :cond_24

    iget-wide v2, v0, Ll1/b;->a:J

    :cond_24
    new-instance v0, Ll1/b;

    invoke-direct {v0, v2, v3}, Ll1/b;-><init>(J)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
