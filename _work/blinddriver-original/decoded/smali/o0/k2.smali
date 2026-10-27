.class public final synthetic Lo0/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lo0/l2;

.field public final synthetic m:I

.field public final synthetic n:I

.field public final synthetic o:Lc2/f1;

.field public final synthetic p:Lc2/f1;

.field public final synthetic q:Lc2/f1;

.field public final synthetic r:Lc2/f1;

.field public final synthetic s:Lc2/f1;

.field public final synthetic t:Lj9/y;

.field public final synthetic u:Lc2/f1;

.field public final synthetic v:Lc2/f1;

.field public final synthetic w:Lc2/f1;

.field public final synthetic x:Lc2/t0;

.field public final synthetic y:F


# direct methods
.method public synthetic constructor <init>(Lo0/l2;IILc2/f1;Lc2/f1;Lc2/f1;Lc2/f1;Lc2/f1;Lj9/y;Lc2/f1;Lc2/f1;Lc2/f1;Lc2/t0;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/k2;->l:Lo0/l2;

    iput p2, p0, Lo0/k2;->m:I

    iput p3, p0, Lo0/k2;->n:I

    iput-object p4, p0, Lo0/k2;->o:Lc2/f1;

    iput-object p5, p0, Lo0/k2;->p:Lc2/f1;

    iput-object p6, p0, Lo0/k2;->q:Lc2/f1;

    iput-object p7, p0, Lo0/k2;->r:Lc2/f1;

    iput-object p8, p0, Lo0/k2;->s:Lc2/f1;

    iput-object p9, p0, Lo0/k2;->t:Lj9/y;

    iput-object p10, p0, Lo0/k2;->u:Lc2/f1;

    iput-object p11, p0, Lo0/k2;->v:Lc2/f1;

    iput-object p12, p0, Lo0/k2;->w:Lc2/f1;

    iput-object p13, p0, Lo0/k2;->x:Lc2/t0;

    iput p14, p0, Lo0/k2;->y:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lc2/e1;

    iget-object v2, v0, Lo0/k2;->t:Lj9/y;

    iget-object v2, v2, Lj9/y;->m:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lc2/f1;

    iget-object v2, v0, Lo0/k2;->x:Lc2/t0;

    invoke-interface {v2}, Lb3/c;->a()F

    move-result v3

    invoke-interface {v2}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    iget-object v5, v0, Lo0/k2;->l:Lo0/l2;

    iget v6, v5, Lo0/l2;->f:F

    invoke-interface {v2, v6}, Lb3/c;->V(F)F

    move-result v2

    iget-object v6, v5, Lo0/l2;->c:Lo0/a5;

    iget-object v8, v5, Lo0/l2;->e:Lu/s0;

    iget-object v9, v0, Lo0/k2;->v:Lc2/f1;

    const/4 v10, 0x0

    move v11, v3

    const/4 v3, 0x0

    invoke-static {v1, v9, v10, v3}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    iget-object v9, v0, Lo0/k2;->w:Lc2/f1;

    if-eqz v9, :cond_0

    iget v12, v9, Lc2/f1;->m:I

    goto :goto_0

    :cond_0
    move v12, v10

    :goto_0
    iget v13, v0, Lo0/k2;->m:I

    sub-int/2addr v13, v12

    iget v12, v8, Lu/s0;->b:F

    mul-float/2addr v12, v11

    invoke-static {v12}, Ll9/a;->z(F)I

    move-result v12

    iget-object v14, v0, Lo0/k2;->o:Lc2/f1;

    const/4 v15, 0x1

    const/high16 v16, 0x40000000    # 2.0f

    const/16 v17, 0x0

    if-eqz v14, :cond_1

    iget v3, v14, Lc2/f1;->m:I

    sub-int v3, v13, v3

    int-to-float v3, v3

    div-float v3, v3, v16

    int-to-float v10, v15

    add-float v10, v10, v17

    mul-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v10, 0x0

    invoke-static {v1, v14, v10, v3}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_1
    iget v10, v0, Lo0/k2;->n:I

    iget-object v3, v0, Lo0/k2;->p:Lc2/f1;

    if-eqz v7, :cond_9

    iget-boolean v15, v5, Lo0/l2;->b:Z

    if-eqz v15, :cond_2

    iget v15, v7, Lc2/f1;->m:I

    sub-int v15, v13, v15

    int-to-float v15, v15

    div-float v15, v15, v16

    move/from16 v18, v2

    move-object/from16 v19, v5

    const/4 v2, 0x1

    int-to-float v5, v2

    add-float v5, v5, v17

    mul-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    :cond_2
    move/from16 v18, v2

    move-object/from16 v19, v5

    move v2, v12

    :goto_1
    iget v5, v7, Lc2/f1;->m:I

    div-int/lit8 v5, v5, 0x2

    neg-int v5, v5

    iget v15, v0, Lo0/k2;->y:F

    invoke-static {v15, v2, v5}, Lg5/f;->D(FII)I

    move-result v2

    invoke-static {v8, v4}, Lu/b;->g(Lu/s0;Lb3/m;)F

    move-result v5

    mul-float/2addr v5, v11

    invoke-static {v8, v4}, Lu/b;->f(Lu/s0;Lb3/m;)F

    move-result v8

    mul-float/2addr v8, v11

    if-nez v14, :cond_3

    move v11, v5

    goto :goto_2

    :cond_3
    iget v11, v14, Lc2/f1;->l:I

    int-to-float v11, v11

    sub-float v20, v5, v18

    cmpg-float v21, v20, v17

    if-gez v21, :cond_4

    move/from16 v20, v17

    :cond_4
    add-float v11, v11, v20

    :goto_2
    if-nez v3, :cond_5

    move/from16 v20, v5

    move v5, v8

    :goto_3
    move-object/from16 v18, v3

    goto :goto_4

    :cond_5
    move/from16 v20, v5

    iget v5, v3, Lc2/f1;->l:I

    int-to-float v5, v5

    sub-float v18, v8, v18

    cmpg-float v21, v18, v17

    if-gez v21, :cond_6

    move/from16 v18, v17

    :cond_6
    add-float v5, v5, v18

    goto :goto_3

    :goto_4
    sget-object v3, Lb3/m;->l:Lb3/m;

    if-ne v4, v3, :cond_7

    move/from16 v21, v20

    goto :goto_5

    :cond_7
    move/from16 v21, v8

    :goto_5
    if-ne v4, v3, :cond_8

    move v3, v11

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    sget v22, Lp0/y;->a:F

    move/from16 v22, v3

    iget-object v3, v6, Lo0/a5;->b:Lf1/h;

    move/from16 v23, v5

    iget v5, v7, Lc2/f1;->l:I

    add-float v11, v11, v23

    invoke-static {v11}, Ll9/a;->z(F)I

    move-result v11

    sub-int v11, v10, v11

    invoke-virtual {v3, v5, v11, v4}, Lf1/h;->a(IILb3/m;)I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v22

    invoke-static {v6}, Lp0/y;->d(Lo0/a5;)Lf1/d;

    move-result-object v5

    iget v6, v7, Lc2/f1;->l:I

    add-float v8, v20, v8

    invoke-static {v8}, Ll9/a;->z(F)I

    move-result v8

    sub-int v8, v10, v8

    check-cast v5, Lf1/h;

    invoke-virtual {v5, v6, v8, v4}, Lf1/h;->a(IILb3/m;)I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v21

    invoke-static {v3, v4, v15}, Lg5/f;->C(FFF)F

    move-result v3

    invoke-static {v3}, Ll9/a;->z(F)I

    move-result v3

    move/from16 v4, v17

    invoke-virtual {v1, v7, v3, v2, v4}, Lc2/e1;->i(Lc2/f1;IIF)V

    goto :goto_7

    :cond_9
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move/from16 v4, v17

    :goto_7
    iget-object v8, v0, Lo0/k2;->q:Lc2/f1;

    if-eqz v8, :cond_b

    if-eqz v14, :cond_a

    iget v2, v14, Lc2/f1;->l:I

    :goto_8
    move/from16 v17, v4

    move v6, v12

    move v5, v13

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    const/4 v3, 0x0

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    :goto_9
    invoke-static/range {v3 .. v8}, Lo0/l2;->i(ILo0/l2;IILc2/f1;Lc2/f1;)I

    move-result v12

    invoke-static {v1, v8, v2, v12}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    goto :goto_a

    :cond_b
    move/from16 v17, v4

    move v6, v12

    move v5, v13

    move-object/from16 v11, v18

    move-object/from16 v4, v19

    const/4 v3, 0x0

    :goto_a
    if-eqz v14, :cond_c

    iget v2, v14, Lc2/f1;->l:I

    goto :goto_b

    :cond_c
    const/4 v2, 0x0

    :goto_b
    if-eqz v8, :cond_d

    iget v8, v8, Lc2/f1;->l:I

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    :goto_c
    add-int/2addr v2, v8

    iget-object v8, v0, Lo0/k2;->s:Lc2/f1;

    invoke-static/range {v3 .. v8}, Lo0/l2;->i(ILo0/l2;IILc2/f1;Lc2/f1;)I

    move-result v12

    invoke-static {v1, v8, v2, v12}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    iget-object v8, v0, Lo0/k2;->u:Lc2/f1;

    if-eqz v8, :cond_e

    invoke-static/range {v3 .. v8}, Lo0/l2;->i(ILo0/l2;IILc2/f1;Lc2/f1;)I

    move-result v12

    invoke-static {v1, v8, v2, v12}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_e
    iget-object v8, v0, Lo0/k2;->r:Lc2/f1;

    if-eqz v8, :cond_10

    if-eqz v11, :cond_f

    iget v0, v11, Lc2/f1;->l:I

    goto :goto_d

    :cond_f
    const/4 v0, 0x0

    :goto_d
    sub-int v0, v10, v0

    iget v2, v8, Lc2/f1;->l:I

    sub-int/2addr v0, v2

    invoke-static/range {v3 .. v8}, Lo0/l2;->i(ILo0/l2;IILc2/f1;Lc2/f1;)I

    move-result v2

    invoke-static {v1, v8, v0, v2}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_10
    if-eqz v11, :cond_11

    iget v0, v11, Lc2/f1;->l:I

    sub-int/2addr v10, v0

    iget v0, v11, Lc2/f1;->m:I

    sub-int v13, v5, v0

    int-to-float v0, v13

    div-float v0, v0, v16

    const/4 v2, 0x1

    int-to-float v2, v2

    add-float v2, v2, v17

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v1, v11, v10, v0}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_11
    if-eqz v9, :cond_12

    const/4 v10, 0x0

    invoke-static {v1, v9, v10, v5}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    :cond_12
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
