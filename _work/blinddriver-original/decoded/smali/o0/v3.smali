.class public final synthetic Lo0/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lo0/o4;

.field public final synthetic m:J

.field public final synthetic n:J

.field public final synthetic o:J

.field public final synthetic p:J

.field public final synthetic q:F

.field public final synthetic r:F

.field public final synthetic s:Li9/e;

.field public final synthetic t:Li9/f;


# direct methods
.method public synthetic constructor <init>(Lo0/o4;JJJJFFLi9/e;Li9/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/v3;->l:Lo0/o4;

    iput-wide p2, p0, Lo0/v3;->m:J

    iput-wide p4, p0, Lo0/v3;->n:J

    iput-wide p6, p0, Lo0/v3;->o:J

    iput-wide p8, p0, Lo0/v3;->p:J

    iput p10, p0, Lo0/v3;->q:F

    iput p11, p0, Lo0/v3;->r:F

    iput-object p12, p0, Lo0/v3;->s:Li9/e;

    iput-object p13, p0, Lo0/v3;->t:Li9/f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lo1/d;

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-static {v2, v2}, Lb3/f;->b(FF)Z

    move-result v3

    iget-object v4, v0, Lo0/v3;->l:Lo0/o4;

    const-wide v11, 0xffffffffL

    const/16 v13, 0x20

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    iget-object v2, v4, Lo0/o4;->m:Lr/m1;

    sget-object v3, Lr/m1;->l:Lr/m1;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    shr-long/2addr v2, v13

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    :goto_0
    int-to-float v3, v5

    div-float/2addr v2, v3

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    and-long/2addr v2, v11

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, Lb3/c;->V(F)F

    move-result v2

    :goto_1
    sget-object v3, Lo0/a4;->a:Lo0/a4;

    iget-object v14, v4, Lo0/o4;->g:[F

    invoke-virtual {v4}, Lo0/o4;->b()F

    move-result v3

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Lb3/c;->M(I)F

    move-result v6

    invoke-interface {v1, v15}, Lb3/c;->M(I)F

    move-result v7

    iget-object v8, v4, Lo0/o4;->k:Lr0/b1;

    invoke-virtual {v8}, Lr0/b1;->g()I

    move-result v8

    invoke-interface {v1, v8}, Lb3/c;->M(I)F

    move-result v8

    iget-object v9, v4, Lo0/o4;->l:Lr0/b1;

    invoke-virtual {v9}, Lr0/b1;->g()I

    move-result v9

    invoke-interface {v1, v9}, Lb3/c;->M(I)F

    move-result v9

    invoke-interface {v1, v2}, Lb3/c;->P(F)F

    move-result v2

    iget-object v4, v4, Lo0/o4;->m:Lr/m1;

    sget-object v10, Lr/m1;->l:Lr/m1;

    const/16 v16, 0x1

    if-ne v4, v10, :cond_2

    move/from16 v17, v16

    goto :goto_2

    :cond_2
    move/from16 v17, v15

    :goto_2
    invoke-interface {v1}, Lo1/d;->getLayoutDirection()Lb3/m;

    move-result-object v10

    move-wide/from16 v18, v11

    sget-object v11, Lb3/m;->m:Lb3/m;

    if-ne v10, v11, :cond_3

    move/from16 v11, v16

    goto :goto_3

    :cond_3
    move v11, v15

    :goto_3
    if-eqz v11, :cond_4

    if-nez v17, :cond_4

    move/from16 v12, v16

    goto :goto_4

    :cond_4
    move v12, v15

    :goto_4
    invoke-interface {v1, v2}, Lb3/c;->V(F)F

    move-result v20

    if-eqz v17, :cond_5

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v21

    move v2, v6

    and-long v5, v21, v18

    :goto_5
    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    move/from16 v21, v5

    goto :goto_6

    :cond_5
    move v2, v6

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v5

    shr-long/2addr v5, v13

    goto :goto_5

    :goto_6
    invoke-static {v14}, Lu8/l;->t0([F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {v14}, Lu8/l;->A0([F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v6, v5}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_7

    :cond_6
    move v5, v15

    goto :goto_8

    :cond_7
    :goto_7
    move/from16 v5, v16

    :goto_8
    invoke-static {v14}, Lu8/l;->t0([F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v3, v10}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {v14}, Lu8/l;->A0([F)Ljava/lang/Float;

    move-result-object v10

    invoke-static {v3, v10}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_a

    :cond_8
    move v10, v15

    :goto_9
    move/from16 v22, v6

    goto :goto_b

    :cond_9
    :goto_a
    move/from16 v10, v16

    goto :goto_9

    :goto_b
    array-length v6, v14

    if-nez v6, :cond_b

    :cond_a
    move/from16 v23, v13

    goto :goto_d

    :cond_b
    if-nez v10, :cond_a

    sub-float v6, v21, v22

    move/from16 v23, v13

    const/4 v10, 0x2

    int-to-float v13, v10

    mul-float v13, v13, v20

    sub-float/2addr v6, v13

    mul-float/2addr v6, v3

    add-float v6, v6, v22

    add-float v6, v6, v20

    :goto_c
    move v13, v6

    goto :goto_e

    :goto_d
    sub-float v6, v21, v22

    mul-float/2addr v6, v3

    add-float v6, v6, v22

    goto :goto_c

    :goto_e
    array-length v3, v14

    iget v3, v0, Lo0/v3;->r:F

    invoke-interface {v1, v3}, Lb3/c;->V(F)F

    move-result v24

    int-to-float v3, v15

    iget v5, v0, Lo0/v3;->q:F

    invoke-static {v5, v3}, Lb3/f;->a(FF)I

    move-result v3

    if-lez v3, :cond_d

    if-eqz v17, :cond_c

    invoke-interface {v1, v7}, Lb3/c;->V(F)F

    const/4 v10, 0x2

    int-to-float v2, v10

    invoke-interface {v1, v5}, Lb3/c;->V(F)F

    invoke-interface {v1, v9}, Lb3/c;->V(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v5}, Lb3/c;->V(F)F

    move-result v2

    :goto_f
    add-float/2addr v2, v3

    move/from16 v25, v2

    goto :goto_10

    :cond_c
    const/4 v10, 0x2

    invoke-interface {v1, v2}, Lb3/c;->V(F)F

    int-to-float v2, v10

    invoke-interface {v1, v5}, Lb3/c;->V(F)F

    invoke-interface {v1, v8}, Lb3/c;->V(F)F

    move-result v3

    div-float/2addr v3, v2

    invoke-interface {v1, v5}, Lb3/c;->V(F)F

    move-result v2

    goto :goto_f

    :cond_d
    move/from16 v25, v22

    :goto_10
    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v2

    if-eqz v17, :cond_e

    and-long v2, v2, v18

    :goto_11
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    goto :goto_12

    :cond_e
    shr-long v2, v2, v23

    goto :goto_11

    :goto_12
    sub-float v2, v21, v25

    sub-float v2, v2, v20

    cmpg-float v2, v13, v2

    iget-object v3, v0, Lo0/v3;->s:Li9/e;

    if-gez v2, :cond_17

    if-eqz v12, :cond_f

    move/from16 v9, v20

    goto :goto_13

    :cond_f
    move/from16 v9, v24

    :goto_13
    if-eqz v12, :cond_10

    move/from16 v10, v24

    goto :goto_14

    :cond_10
    move/from16 v10, v20

    :goto_14
    add-float v2, v13, v25

    sub-float v5, v21, v2

    if-eqz v17, :cond_11

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move-object/from16 p1, v1

    move/from16 v26, v2

    int-to-long v1, v8

    shl-long v6, v6, v23

    and-long v1, v1, v18

    or-long/2addr v1, v6

    goto :goto_16

    :cond_11
    move-object/from16 p1, v1

    move/from16 v26, v2

    if-eqz v11, :cond_12

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    :goto_15
    int-to-long v6, v6

    shl-long v1, v1, v23

    and-long v6, v6, v18

    or-long/2addr v1, v6

    goto :goto_16

    :cond_12
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    goto :goto_15

    :goto_16
    if-eqz v17, :cond_13

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v6

    shr-long v6, v6, v23

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move-wide/from16 v27, v1

    int-to-long v1, v5

    shl-long v5, v6, v23

    :goto_17
    and-long v1, v1, v18

    or-long/2addr v1, v5

    move-wide v5, v1

    goto :goto_19

    :cond_13
    move-wide/from16 v27, v1

    if-eqz v11, :cond_14

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v1

    shr-long v1, v1, v23

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sub-float v1, v1, v26

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v5

    and-long v5, v5, v18

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    :goto_18
    int-to-long v1, v1

    shl-long v5, v5, v23

    goto :goto_17

    :cond_14
    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v1

    and-long v1, v1, v18

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    goto :goto_18

    :goto_19
    iget-wide v7, v0, Lo0/v3;->m:J

    move-object/from16 v1, p1

    move-object v15, v3

    move-object v2, v4

    move-wide/from16 v3, v27

    invoke-static/range {v1 .. v10}, Lo0/a4;->e(Lo1/d;Lr/m1;JJJFF)V

    if-eqz v17, :cond_15

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v3

    shr-long v3, v3, v23

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sub-float v4, v21, v20

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    :goto_1a
    int-to-long v3, v3

    shl-long v5, v5, v23

    and-long v3, v3, v18

    or-long/2addr v3, v5

    goto :goto_1b

    :cond_15
    if-eqz v11, :cond_16

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v3

    and-long v3, v3, v18

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v6, v3

    shl-long v3, v4, v23

    and-long v5, v6, v18

    or-long/2addr v3, v5

    goto :goto_1b

    :cond_16
    sub-float v3, v21, v20

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v4

    and-long v4, v4, v18

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    goto :goto_1a

    :goto_1b
    if-eqz v15, :cond_18

    new-instance v5, Ll1/b;

    invoke-direct {v5, v3, v4}, Ll1/b;-><init>(J)V

    invoke-interface {v15, v1, v5}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_17
    move-object v15, v3

    move-object v2, v4

    :cond_18
    :goto_1c
    sub-float v27, v13, v25

    if-nez v12, :cond_19

    move/from16 v9, v20

    goto :goto_1d

    :cond_19
    move/from16 v9, v24

    :goto_1d
    if-eqz v12, :cond_1a

    move/from16 v10, v20

    goto :goto_1e

    :cond_1a
    move/from16 v10, v24

    :goto_1e
    if-eqz v12, :cond_1b

    move/from16 v3, v27

    goto :goto_1f

    :cond_1b
    sub-float v3, v27, v22

    :goto_1f
    cmpl-float v4, v3, v9

    if-lez v4, :cond_20

    if-eqz v17, :cond_1c

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    :goto_20
    int-to-long v6, v6

    shl-long v4, v4, v23

    and-long v6, v6, v18

    or-long/2addr v4, v6

    goto :goto_21

    :cond_1c
    if-eqz v11, :cond_1d

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v4

    shr-long v4, v4, v23

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float v4, v4, v27

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    goto :goto_20

    :cond_1d
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    goto :goto_20

    :goto_21
    if-eqz v17, :cond_1e

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v6

    shr-long v6, v6, v23

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move-object/from16 p1, v1

    move-object v8, v2

    int-to-long v1, v3

    shl-long v6, v6, v23

    and-long v1, v1, v18

    or-long/2addr v1, v6

    :goto_22
    move-object v3, v8

    goto :goto_24

    :cond_1e
    move-object/from16 p1, v1

    move-object v8, v2

    if-eqz v11, :cond_1f

    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v1

    and-long v1, v1, v18

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    :goto_23
    int-to-long v6, v1

    shl-long v1, v2, v23

    and-long v6, v6, v18

    or-long/2addr v1, v6

    goto :goto_22

    :cond_1f
    invoke-interface/range {p1 .. p1}, Lo1/d;->d()J

    move-result-wide v1

    and-long v1, v1, v18

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    goto :goto_23

    :goto_24
    iget-wide v7, v0, Lo0/v3;->n:J

    move-wide/from16 v29, v1

    move-object v2, v3

    move-wide v3, v4

    move-wide/from16 v5, v29

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lo0/a4;->e(Lo1/d;Lr/m1;JJJFF)V

    :cond_20
    add-float v6, v22, v20

    sub-float v2, v21, v20

    sub-float v3, v13, v25

    add-float v13, v13, v25

    array-length v4, v14

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_25
    if-ge v5, v4, :cond_26

    aget v8, v14, v5

    add-int/lit8 v9, v7, 0x1

    if-eqz v15, :cond_21

    array-length v10, v14

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_21

    :goto_26
    move/from16 p1, v2

    move v8, v3

    goto/16 :goto_2a

    :cond_21
    invoke-static {v6, v2, v8}, Lg5/f;->C(FFF)F

    move-result v7

    cmpl-float v8, v7, v3

    if-ltz v8, :cond_22

    cmpg-float v8, v7, v13

    if-gtz v8, :cond_22

    goto :goto_26

    :cond_22
    if-eqz v17, :cond_23

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v20

    move/from16 p1, v2

    move v8, v3

    shr-long v2, v20, v23

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    :goto_27
    move-wide/from16 v20, v2

    int-to-long v2, v10

    shl-long v20, v20, v23

    and-long v2, v2, v18

    or-long v2, v20, v2

    goto :goto_28

    :cond_23
    move/from16 p1, v2

    move v8, v3

    if-eqz v11, :cond_24

    invoke-interface {v1}, Lo1/d;->d()J

    move-result-wide v2

    shr-long v2, v2, v23

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, v7

    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v20

    move v10, v2

    and-long v2, v20, v18

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move v10, v2

    int-to-long v2, v3

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    goto :goto_27

    :cond_24
    invoke-interface {v1}, Lo1/d;->j0()J

    move-result-wide v2

    and-long v2, v2, v18

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move v10, v2

    int-to-long v2, v3

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    goto :goto_27

    :goto_28
    new-instance v10, Ll1/b;

    invoke-direct {v10, v2, v3}, Ll1/b;-><init>(J)V

    cmpl-float v2, v7, v22

    if-ltz v2, :cond_25

    cmpg-float v2, v7, v27

    if-gtz v2, :cond_25

    iget-wide v2, v0, Lo0/v3;->p:J

    goto :goto_29

    :cond_25
    iget-wide v2, v0, Lo0/v3;->o:J

    :goto_29
    new-instance v7, Lm1/p;

    invoke-direct {v7, v2, v3}, Lm1/p;-><init>(J)V

    iget-object v2, v0, Lo0/v3;->t:Li9/f;

    invoke-interface {v2, v1, v10, v7}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p1

    move v3, v8

    move v7, v9

    goto/16 :goto_25

    :cond_26
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
