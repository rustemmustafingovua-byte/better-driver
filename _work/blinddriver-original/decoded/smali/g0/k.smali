.class public final synthetic Lg0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lg0/k;->l:I

    iput-object p3, p0, Lg0/k;->n:Ljava/lang/Object;

    iput-object p4, p0, Lg0/k;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lg0/k;->l:I

    iput-object p2, p0, Lg0/k;->n:Ljava/lang/Object;

    iput-object p3, p0, Lg0/k;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le0/g;Le0/c;I)V
    .locals 0

    .line 3
    const/4 p3, 0x1

    iput p3, p0, Lg0/k;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/k;->m:Ljava/lang/Object;

    iput-object p2, p0, Lg0/k;->n:Ljava/lang/Object;

    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 63

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v1, v2}, Lb3/l;->a(JJ)Z

    move-result v3

    iget-object v4, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v4, Lx/u;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lw/j;

    move-object/from16 v5, p1

    check-cast v5, Lc2/s1;

    move-object/from16 v6, p2

    check-cast v6, Lb3/a;

    new-instance v8, Lx/y;

    invoke-direct {v8, v4, v5}, Lx/y;-><init>(Lx/u;Lc2/s1;)V

    iget-wide v6, v6, Lb3/a;->a:J

    iget-object v4, v0, Lw/j;->f:Lu/e;

    iget-object v9, v0, Lw/j;->e:Lu/g;

    iget-object v10, v0, Lw/j;->c:Lu/s0;

    iget-boolean v11, v0, Lw/j;->b:Z

    iget-object v12, v0, Lw/j;->a:Lw/p;

    iget-object v13, v12, Lw/p;->s:Lr0/u0;

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    iget-boolean v13, v12, Lw/p;->b:Z

    if-nez v13, :cond_1

    invoke-interface {v5}, Lc2/p;->T()Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    const/16 v23, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v23, 0x1

    :goto_1
    if-eqz v11, :cond_2

    sget-object v13, Lr/m1;->l:Lr/m1;

    goto :goto_2

    :cond_2
    sget-object v13, Lr/m1;->m:Lr/m1;

    :goto_2
    invoke-static {v6, v7, v13}, Lp/o;->i(JLr/m1;)V

    if-eqz v11, :cond_3

    invoke-interface {v5}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v13

    invoke-virtual {v10, v13}, Lu/s0;->a(Lb3/m;)F

    move-result v13

    invoke-interface {v5, v13}, Lb3/c;->h0(F)I

    move-result v13

    goto :goto_3

    :cond_3
    invoke-interface {v5}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v13

    invoke-static {v10, v13}, Lu/b;->g(Lu/s0;Lb3/m;)F

    move-result v13

    invoke-interface {v5, v13}, Lb3/c;->h0(F)I

    move-result v13

    :goto_3
    if-eqz v11, :cond_4

    invoke-interface {v5}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v14

    invoke-virtual {v10, v14}, Lu/s0;->b(Lb3/m;)F

    move-result v14

    invoke-interface {v5, v14}, Lb3/c;->h0(F)I

    move-result v14

    goto :goto_4

    :cond_4
    invoke-interface {v5}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v14

    invoke-static {v10, v14}, Lu/b;->f(Lu/s0;Lb3/m;)F

    move-result v14

    invoke-interface {v5, v14}, Lb3/c;->h0(F)I

    move-result v14

    :goto_4
    iget v15, v10, Lu/s0;->b:F

    invoke-interface {v5, v15}, Lb3/c;->h0(F)I

    move-result v15

    iget v10, v10, Lu/s0;->d:F

    invoke-interface {v5, v10}, Lb3/c;->h0(F)I

    move-result v10

    add-int/2addr v10, v15

    add-int v1, v13, v14

    if-eqz v11, :cond_5

    move v2, v10

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    if-eqz v11, :cond_6

    move/from16 v17, v15

    goto :goto_6

    :cond_6
    if-nez v11, :cond_7

    move/from16 v17, v13

    goto :goto_6

    :cond_7
    move/from16 v17, v14

    :goto_6
    sub-int v24, v2, v17

    neg-int v2, v1

    neg-int v14, v10

    invoke-static {v2, v14, v6, v7}, Lb3/b;->i(IIJ)J

    move-result-wide v18

    iget-object v2, v0, Lw/j;->d:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/g;

    iget-object v14, v2, Lw/g;->c:Lw/b;

    move/from16 p2, v1

    invoke-static/range {v18 .. v19}, Lb3/a;->h(J)I

    move-result v1

    move-object/from16 v16, v2

    invoke-static/range {v18 .. v19}, Lb3/a;->g(J)I

    move-result v2

    move/from16 v27, v3

    iget-object v3, v14, Lw/b;->a:Lr0/b1;

    invoke-virtual {v3, v1}, Lr0/b1;->h(I)V

    iget-object v1, v14, Lw/b;->b:Lr0/b1;

    invoke-virtual {v1, v2}, Lr0/b1;->h(I)V

    const-string v1, "null verticalArrangement when isVertical == true"

    if-eqz v11, :cond_9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Lu/g;->a()F

    move-result v2

    goto :goto_7

    :cond_8
    invoke-static {v1}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    if-eqz v4, :cond_85

    invoke-interface {v4}, Lu/e;->a()F

    move-result v2

    :goto_7
    invoke-interface {v5, v2}, Lb3/c;->h0(F)I

    move-result v25

    invoke-virtual/range {v16 .. v16}, Lw/g;->c()I

    move-result v22

    if-eqz v11, :cond_a

    invoke-static {v6, v7}, Lb3/a;->g(J)I

    move-result v2

    sub-int/2addr v2, v10

    goto :goto_8

    :cond_a
    invoke-static {v6, v7}, Lb3/a;->h(J)I

    move-result v2

    sub-int v2, v2, p2

    :goto_8
    int-to-long v13, v13

    const/16 v3, 0x20

    shl-long/2addr v13, v3

    move/from16 v29, v3

    move-object/from16 v28, v4

    int-to-long v3, v15

    const-wide v30, 0xffffffffL

    and-long v3, v3, v30

    or-long/2addr v3, v13

    new-instance v21, Lw/i;

    move v13, v10

    iget-boolean v10, v0, Lw/j;->b:Z

    iget-object v15, v0, Lw/j;->i:Lf1/d;

    iget-object v14, v0, Lw/j;->j:Lf1/i;

    move-object/from16 v32, v1

    iget-object v1, v0, Lw/j;->a:Lw/p;

    move-wide/from16 v33, v6

    move v6, v11

    move/from16 v35, v13

    move-object/from16 v11, v16

    move-object/from16 v7, v21

    move/from16 v13, v22

    const/16 p0, 0x1

    move-object/from16 v21, v1

    move-object v1, v12

    move-object/from16 v16, v14

    move/from16 v14, v25

    move-object v12, v8

    move-wide/from16 v61, v3

    move-object v4, v9

    move-wide/from16 v8, v18

    move/from16 v18, v24

    const/4 v3, 0x0

    move-wide/from16 v19, v61

    invoke-direct/range {v7 .. v21}, Lw/i;-><init>(JZLw/g;Lx/y;IILf1/d;Lf1/i;IIJLw/p;)V

    move-wide/from16 v61, v8

    move v9, v14

    move-wide/from16 v14, v61

    move-object v8, v12

    move v10, v13

    move/from16 v13, v17

    move-object v12, v7

    move/from16 v7, v18

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v3

    const/16 v36, 0x0

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ld1/g;->e()Li9/c;

    move-result-object v16

    move/from16 v37, v6

    move-object/from16 v6, v16

    :goto_9
    move/from16 v38, v7

    goto :goto_a

    :cond_b
    move/from16 v37, v6

    move-object/from16 v6, v36

    goto :goto_9

    :goto_a
    invoke-static {v3}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v7

    move-object/from16 v39, v8

    :try_start_0
    iget-object v8, v1, Lw/p;->e:Lf8/p2;

    move/from16 v40, v9

    iget-object v9, v8, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v9, Lr0/b1;

    invoke-virtual {v9}, Lr0/b1;->g()I

    move-result v9

    move-object/from16 v16, v4

    iget-object v4, v8, Lf8/p2;->d:Ljava/lang/Object;

    invoke-static {v9, v4, v11}, Lx/l;->f(ILjava/lang/Object;Lw/g;)I

    move-result v4

    if-eq v9, v4, :cond_c

    move/from16 v41, v2

    iget-object v2, v8, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v2, Lr0/b1;

    invoke-virtual {v2, v4}, Lr0/b1;->h(I)V

    iget-object v2, v8, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v2, Lx/z;

    move/from16 v17, v4

    iget v4, v2, Lx/z;->m:I

    if-eq v9, v4, :cond_d

    iput v9, v2, Lx/z;->m:I

    div-int/lit8 v9, v9, 0x1e

    mul-int/lit8 v9, v9, 0x1e

    add-int/lit8 v4, v9, -0x64

    move/from16 v22, v10

    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit16 v9, v9, 0x82

    invoke-static {v4, v9}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v4

    iget-object v2, v2, Lx/z;->l:Lr0/e1;

    invoke-virtual {v2, v4}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_6c

    :cond_c
    move/from16 v41, v2

    move/from16 v17, v4

    :cond_d
    move/from16 v22, v10

    :goto_b
    iget-object v2, v8, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v2, Lr0/b1;

    invoke-virtual {v2}, Lr0/b1;->g()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v7, v6}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object v3, v1, Lw/p;->r:Lx/c0;

    iget-object v4, v1, Lw/p;->o:Lr/a;

    iget-object v6, v4, Lr/a;->a:Lt0/b;

    iget v7, v6, Lt0/b;->n:I

    if-eqz v7, :cond_e

    move/from16 v7, p0

    goto :goto_c

    :cond_e
    const/4 v7, 0x0

    :goto_c
    sget-object v8, Lu8/r;->l:Lu8/r;

    if-nez v7, :cond_f

    iget-object v7, v3, Lx/c0;->l:Ld1/v;

    invoke-virtual {v7}, Ld1/v;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    move/from16 v18, v2

    move-object v7, v8

    move-object/from16 v42, v7

    goto/16 :goto_14

    :cond_f
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v4, Lr/a;->a:Lt0/b;

    iget v4, v4, Lt0/b;->n:I

    if-eqz v4, :cond_17

    new-instance v4, Lo9/d;

    iget v9, v6, Lt0/b;->n:I

    const-string v10, "MutableVector is empty."

    if-eqz v9, :cond_16

    move/from16 v18, v2

    iget-object v2, v6, Lt0/b;->l:[Ljava/lang/Object;

    const/16 v19, 0x0

    aget-object v20, v2, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v20

    check-cast v2, Lx/j;

    iget v2, v2, Lx/j;->a:I

    move-object/from16 v42, v8

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v9, :cond_11

    aget-object v20, v19, v8

    move/from16 v21, v8

    move-object/from16 v8, v20

    check-cast v8, Lx/j;

    iget v8, v8, Lx/j;->a:I

    if-ge v8, v2, :cond_10

    move v2, v8

    :cond_10
    add-int/lit8 v8, v21, 0x1

    goto :goto_d

    :cond_11
    if-ltz v2, :cond_12

    goto :goto_e

    :cond_12
    const-string v8, "negative minIndex"

    invoke-static {v8}, Lt/b;->a(Ljava/lang/String;)V

    :goto_e
    iget v8, v6, Lt0/b;->n:I

    if-eqz v8, :cond_15

    iget-object v6, v6, Lt0/b;->l:[Ljava/lang/Object;

    const/16 v19, 0x0

    aget-object v9, v6, v19

    check-cast v9, Lx/j;

    iget v9, v9, Lx/j;->b:I

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_14

    aget-object v19, v6, v10

    move-object/from16 v20, v6

    move-object/from16 v6, v19

    check-cast v6, Lx/j;

    iget v6, v6, Lx/j;->b:I

    if-le v6, v9, :cond_13

    move v9, v6

    :cond_13
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v20

    goto :goto_f

    :cond_14
    invoke-virtual {v11}, Lw/g;->c()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v8, p0

    invoke-direct {v4, v2, v6, v8}, Lo9/b;-><init>(III)V

    goto :goto_10

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v10}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v10}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v18, v2

    move-object/from16 v42, v8

    sget-object v4, Lo9/d;->o:Lo9/d;

    :goto_10
    iget-object v2, v3, Lx/c0;->l:Ld1/v;

    invoke-virtual {v2}, Ld1/v;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v2, :cond_1a

    invoke-virtual {v3, v6}, Lx/c0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx/a0;

    iget-object v9, v8, Lx/a0;->a:Ljava/lang/Object;

    iget v8, v8, Lx/a0;->c:I

    invoke-static {v8, v9, v11}, Lx/l;->f(ILjava/lang/Object;Lw/g;)I

    move-result v8

    iget v9, v4, Lo9/b;->l:I

    iget v10, v4, Lo9/b;->m:I

    if-gt v8, v10, :cond_18

    if-gt v9, v8, :cond_18

    goto :goto_12

    :cond_18
    if-ltz v8, :cond_19

    invoke-virtual {v11}, Lw/g;->c()I

    move-result v9

    if-ge v8, v9, :cond_19

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    :goto_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_1a
    iget v2, v4, Lo9/b;->l:I

    iget v3, v4, Lo9/b;->m:I

    if-gt v2, v3, :cond_1b

    :goto_13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1b
    :goto_14
    invoke-interface {v5}, Lc2/p;->T()Z

    move-result v2

    if-nez v2, :cond_1d

    if-nez v23, :cond_1c

    goto :goto_15

    :cond_1c
    iget-object v2, v1, Lw/p;->w:Lg5/c;

    iget-object v2, v2, Lg5/c;->n:Ljava/lang/Object;

    check-cast v2, Ln/k;

    iget-object v2, v2, Ln/k;->m:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    goto :goto_16

    :cond_1d
    :goto_15
    iget v2, v1, Lw/p;->h:F

    :goto_16
    iget-object v3, v1, Lw/p;->n:Lx/s;

    move/from16 v10, v22

    invoke-interface {v5}, Lc2/p;->T()Z

    move-result v22

    iget-object v4, v0, Lw/j;->g:Lu9/t;

    iget-object v6, v1, Lw/p;->v:Lr0/u0;

    iget-object v0, v0, Lw/j;->h:Lx/h;

    if-ltz v13, :cond_1e

    goto :goto_17

    :cond_1e
    const-string v8, "invalid beforeContentPadding"

    invoke-static {v8}, Lt/b;->a(Ljava/lang/String;)V

    :goto_17
    if-ltz v38, :cond_1f

    goto :goto_18

    :cond_1f
    const-string v8, "invalid afterContentPadding"

    invoke-static {v8}, Lt/b;->a(Ljava/lang/String;)V

    :goto_18
    sget-object v8, Lu8/s;->l:Lu8/s;

    iget-object v9, v12, Lw/i;->b:Lw/g;

    if-gtz v10, :cond_22

    invoke-static {v14, v15}, Lb3/a;->j(J)I

    move-result v17

    invoke-static {v14, v15}, Lb3/a;->i(J)I

    move-result v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v9, Lw/g;->d:Ld1/c0;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v16, v3

    move-object/from16 v21, v12

    invoke-virtual/range {v16 .. v25}, Lx/s;->b(IILjava/util/ArrayList;Ld1/c0;Lw/i;ZZII)V

    move-object/from16 v19, v16

    move-object/from16 v3, v21

    if-nez v22, :cond_20

    invoke-virtual/range {v19 .. v19}, Lx/s;->a()J

    if-nez v27, :cond_20

    const-wide/16 v6, 0x0

    long-to-int v0, v6

    invoke-static {v0, v14, v15}, Lb3/b;->g(IJ)I

    move-result v17

    long-to-int v0, v6

    invoke-static {v0, v14, v15}, Lb3/b;->f(IJ)I

    move-result v18

    :cond_20
    new-instance v0, Ln/p1;

    const/16 v2, 0x18

    invoke-direct {v0, v2}, Ln/p1;-><init>(I)V

    add-int v2, v17, p2

    move-wide/from16 v10, v33

    invoke-static {v2, v10, v11}, Lb3/b;->g(IJ)I

    move-result v2

    add-int v6, v18, v35

    invoke-static {v6, v10, v11}, Lb3/b;->f(IJ)I

    move-result v6

    invoke-interface {v5, v2, v6, v8, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v12

    neg-int v0, v13

    add-int v21, v41, v38

    if-eqz v37, :cond_21

    sget-object v2, Lr/m1;->l:Lr/m1;

    :goto_19
    move-object/from16 v23, v2

    goto :goto_1a

    :cond_21
    sget-object v2, Lr/m1;->m:Lr/m1;

    goto :goto_19

    :goto_1a
    new-instance v7, Lw/k;

    const/4 v14, 0x0

    const/16 v22, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-wide v2, v3, Lw/i;->d:J

    move/from16 v20, v0

    move-wide/from16 v17, v2

    move-object v15, v4

    move/from16 v24, v38

    move-object/from16 v16, v39

    move/from16 v25, v40

    move-object/from16 v19, v42

    invoke-direct/range {v7 .. v25}, Lw/k;-><init>(Lw/l;IZFLc2/s0;FZLu9/t;Lb3/c;JLjava/util/List;IIILr/m1;II)V

    move-object/from16 v47, v1

    move-object v6, v5

    goto/16 :goto_6b

    :cond_22
    move-wide/from16 v61, v33

    move-object/from16 v34, v4

    move v4, v10

    move-wide/from16 v10, v61

    move-object/from16 v33, v0

    move-object/from16 v19, v3

    move-object v3, v12

    move/from16 v0, v17

    move-object/from16 v12, v39

    if-lt v0, v4, :cond_23

    add-int/lit8 v0, v4, -0x1

    const/16 v18, 0x0

    :cond_23
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v17

    sub-int v18, v18, v17

    if-nez v0, :cond_24

    if-gez v18, :cond_24

    add-int v17, v17, v18

    const/16 v18, 0x0

    :cond_24
    move/from16 v20, v0

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    move/from16 v21, v2

    neg-int v2, v13

    if-gez v40, :cond_25

    move/from16 v24, v40

    :goto_1b
    move-object/from16 v25, v8

    goto :goto_1c

    :cond_25
    const/16 v24, 0x0

    goto :goto_1b

    :goto_1c
    add-int v8, v2, v24

    add-int v18, v18, v8

    move-object/from16 v39, v5

    move-object/from16 v45, v6

    move-wide/from16 v43, v10

    move/from16 v10, v18

    move-object/from16 v18, v9

    const/4 v9, 0x0

    :goto_1d
    iget-wide v5, v3, Lw/i;->d:J

    if-gez v10, :cond_26

    if-lez v20, :cond_26

    add-int/lit8 v11, v20, -0x1

    invoke-virtual {v3, v11, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lu8/k;->add(ILjava/lang/Object;)V

    iget v6, v5, Lw/l;->o:I

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v5, v5, Lw/l;->n:I

    add-int/2addr v10, v5

    move/from16 v20, v11

    goto :goto_1d

    :cond_26
    if-ge v10, v8, :cond_27

    sub-int v10, v8, v10

    sub-int v17, v17, v10

    move v10, v8

    :cond_27
    move/from16 v11, v17

    sub-int/2addr v10, v8

    add-int v46, v41, v38

    move/from16 v17, v9

    if-gez v46, :cond_28

    const/4 v9, 0x0

    :goto_1e
    move-object/from16 v47, v1

    goto :goto_1f

    :cond_28
    move/from16 v9, v46

    goto :goto_1e

    :goto_1f
    neg-int v1, v10

    move/from16 v50, v2

    move/from16 v48, v10

    move/from16 v49, v20

    const/4 v10, 0x0

    const/16 v24, 0x0

    :goto_20
    iget v2, v0, Lu8/k;->n:I

    if-ge v10, v2, :cond_2a

    if-lt v1, v9, :cond_29

    invoke-virtual {v0, v10}, Lu8/k;->b(I)Ljava/lang/Object;

    const/16 v24, 0x1

    goto :goto_20

    :cond_29
    add-int/lit8 v49, v49, 0x1

    invoke-virtual {v0, v10}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->n:I

    add-int/2addr v1, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_2a
    move/from16 v2, v17

    move/from16 v17, v48

    move/from16 v10, v49

    move/from16 v48, v24

    :goto_21
    if-ge v10, v4, :cond_2c

    if-lt v1, v9, :cond_2b

    if-lez v1, :cond_2b

    invoke-virtual {v0}, Lu8/k;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_2c

    :cond_2b
    move/from16 v24, v4

    goto :goto_22

    :cond_2c
    move/from16 v24, v4

    move/from16 v4, v41

    goto :goto_24

    :goto_22
    invoke-virtual {v3, v10, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v4

    move/from16 v49, v9

    iget v9, v4, Lw/l;->n:I

    add-int/2addr v1, v9

    if-gt v1, v8, :cond_2d

    move/from16 v51, v1

    add-int/lit8 v1, v24, -0x1

    if-eq v10, v1, :cond_2e

    add-int/lit8 v1, v10, 0x1

    sub-int v4, v17, v9

    move/from16 v20, v1

    move/from16 v17, v4

    const/16 v48, 0x1

    goto :goto_23

    :cond_2d
    move/from16 v51, v1

    :cond_2e
    iget v1, v4, Lw/l;->o:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v4}, Lu8/k;->addLast(Ljava/lang/Object;)V

    move v2, v1

    :goto_23
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v24

    move/from16 v9, v49

    move/from16 v1, v51

    goto :goto_21

    :goto_24
    if-ge v1, v4, :cond_31

    sub-int v8, v4, v1

    sub-int v17, v17, v8

    add-int/2addr v1, v8

    move/from16 v9, v17

    :goto_25
    if-ge v9, v13, :cond_2f

    if-lez v20, :cond_2f

    move/from16 v17, v1

    add-int/lit8 v1, v20, -0x1

    move/from16 v41, v8

    invoke-virtual {v3, v1, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v8

    move/from16 v20, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lu8/k;->add(ILjava/lang/Object;)V

    iget v1, v8, Lw/l;->o:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v1, v8, Lw/l;->n:I

    add-int/2addr v9, v1

    move/from16 v1, v17

    move/from16 v8, v41

    goto :goto_25

    :cond_2f
    move/from16 v17, v1

    move/from16 v41, v8

    add-int v8, v11, v41

    if-gez v9, :cond_30

    add-int/2addr v8, v9

    add-int v1, v17, v9

    move/from16 v17, v2

    move/from16 v2, v20

    const/4 v9, 0x0

    goto :goto_27

    :cond_30
    move/from16 v1, v17

    :goto_26
    move/from16 v17, v2

    move/from16 v2, v20

    goto :goto_27

    :cond_31
    move v8, v11

    move/from16 v9, v17

    goto :goto_26

    :goto_27
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v41, v10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    move/from16 v20, v13

    invoke-static {v8}, Ljava/lang/Integer;->signum(I)I

    move-result v13

    if-ne v10, v13, :cond_32

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v13

    if-lt v10, v13, :cond_32

    int-to-float v10, v8

    move v13, v10

    goto :goto_28

    :cond_32
    move/from16 v13, v21

    :goto_28
    sub-float v10, v21, v13

    const/16 v21, 0x0

    if-eqz v22, :cond_33

    if-le v8, v11, :cond_33

    cmpg-float v49, v10, v21

    if-gtz v49, :cond_33

    sub-int/2addr v8, v11

    int-to-float v8, v8

    add-float v21, v8, v10

    :cond_33
    move/from16 v49, v21

    if-ltz v9, :cond_34

    goto :goto_29

    :cond_34
    const-string v8, "negative currentFirstItemScrollOffset"

    invoke-static {v8}, Lt/b;->a(Ljava/lang/String;)V

    :goto_29
    neg-int v8, v9

    invoke-virtual {v0}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    if-gtz v20, :cond_36

    if-gez v40, :cond_35

    goto :goto_2b

    :cond_35
    move/from16 v20, v8

    move/from16 v21, v9

    move-object v8, v10

    :goto_2a
    const/4 v10, 0x0

    goto :goto_2e

    :cond_36
    :goto_2b
    invoke-virtual {v0}, Lu8/k;->a()I

    move-result v11

    move/from16 v20, v8

    const/4 v8, 0x0

    :goto_2c
    if-ge v8, v11, :cond_38

    invoke-virtual {v0, v8}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v51, v10

    move-object/from16 v10, v21

    check-cast v10, Lw/l;

    iget v10, v10, Lw/l;->n:I

    if-eqz v9, :cond_37

    if-gt v10, v9, :cond_37

    move/from16 v21, v9

    invoke-static {v0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v9

    if-eq v8, v9, :cond_39

    sub-int v9, v21, v10

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    goto :goto_2c

    :cond_37
    move/from16 v21, v9

    goto :goto_2d

    :cond_38
    move/from16 v21, v9

    move-object/from16 v51, v10

    :cond_39
    :goto_2d
    move-object/from16 v8, v51

    goto :goto_2a

    :goto_2e
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    move-object/from16 v10, v36

    if-gt v9, v2, :cond_3b

    :goto_2f
    if-nez v10, :cond_3a

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_3a
    invoke-virtual {v3, v2, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v2, v9, :cond_3b

    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    :cond_3b
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v11, -0x1

    add-int/2addr v2, v11

    if-ltz v2, :cond_3f

    :goto_30
    add-int/lit8 v51, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v2, v9, :cond_3d

    if-nez v10, :cond_3c

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_3c
    invoke-virtual {v3, v2, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    if-gez v51, :cond_3e

    goto :goto_31

    :cond_3e
    move/from16 v2, v51

    goto :goto_30

    :cond_3f
    :goto_31
    if-nez v10, :cond_40

    move-object/from16 v10, v42

    :cond_40
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v9, v17

    const/4 v11, 0x0

    :goto_32
    if-ge v11, v2, :cond_41

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    move/from16 v52, v2

    move-object/from16 v2, v51

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->o:I

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v52

    goto :goto_32

    :cond_41
    invoke-static {v0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->a:I

    add-int/lit8 v11, v24, -0x1

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw/l;

    iget v11, v11, Lw/l;->a:I

    const/16 v51, 0x1

    add-int/lit8 v11, v11, 0x1

    if-gt v11, v2, :cond_43

    move-object/from16 v51, v36

    :goto_33
    if-nez v51, :cond_42

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    :cond_42
    move/from16 v52, v9

    move-object/from16 v9, v51

    move/from16 v51, v13

    invoke-virtual {v3, v11, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v11, v2, :cond_44

    add-int/lit8 v11, v11, 0x1

    move/from16 v13, v51

    move-object/from16 v51, v9

    move/from16 v9, v52

    goto :goto_33

    :cond_43
    move/from16 v52, v9

    move/from16 v51, v13

    move-object/from16 v9, v36

    :cond_44
    if-eqz v9, :cond_45

    invoke-static {v9}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw/l;

    iget v11, v11, Lw/l;->a:I

    if-le v11, v2, :cond_45

    invoke-static {v9}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->a:I

    :cond_45
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v11

    const/4 v13, 0x0

    :goto_34
    if-ge v13, v11, :cond_48

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Number;

    move-object/from16 v54, v7

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-le v7, v2, :cond_47

    if-nez v9, :cond_46

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_46
    invoke-virtual {v3, v7, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v54

    goto :goto_34

    :cond_48
    if-nez v9, :cond_49

    move-object/from16 v9, v42

    :cond_49
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v7, v52

    const/4 v11, 0x0

    :goto_35
    if-ge v11, v2, :cond_4a

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lw/l;

    iget v13, v13, Lw/l;->o:I

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_4a
    invoke-virtual {v0}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    goto :goto_36

    :cond_4b
    const/4 v2, 0x0

    :goto_36
    if-eqz v37, :cond_4c

    move v11, v7

    goto :goto_37

    :cond_4c
    move v11, v1

    :goto_37
    invoke-static {v11, v14, v15}, Lb3/b;->g(IJ)I

    move-result v13

    if-eqz v37, :cond_4d

    move v7, v1

    :cond_4d
    invoke-static {v7, v14, v15}, Lb3/b;->f(IJ)I

    move-result v7

    move-object v11, v9

    if-eqz v37, :cond_4e

    move v9, v7

    :goto_38
    move/from16 v52, v2

    goto :goto_39

    :cond_4e
    move v9, v13

    goto :goto_38

    :goto_39
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_3a

    :cond_4f
    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_51

    if-nez v20, :cond_50

    goto :goto_3b

    :cond_50
    const-string v53, "non-zero itemsScrollOffset"

    invoke-static/range {v53 .. v53}, Lt/b;->c(Ljava/lang/String;)V

    :cond_51
    :goto_3b
    move/from16 v53, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lu8/k;->a()I

    move-result v54

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v55

    add-int v55, v55, v54

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v54

    move/from16 v56, v2

    add-int v2, v54, v55

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v56, :cond_5a

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_3c

    :cond_52
    const-string v2, "no extra items"

    invoke-static {v2}, Lt/b;->a(Ljava/lang/String;)V

    :goto_3c
    invoke-virtual {v0}, Lu8/k;->a()I

    move-result v2

    new-array v10, v2, [I

    const/4 v11, 0x0

    :goto_3d
    if-ge v11, v2, :cond_53

    invoke-virtual {v0, v11}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v54, v3

    move-object/from16 v3, v20

    check-cast v3, Lw/l;

    iget v3, v3, Lw/l;->m:I

    aput v3, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v54

    goto :goto_3d

    :cond_53
    move-object/from16 v54, v3

    new-array v3, v2, [I

    if-eqz v37, :cond_55

    if-eqz v16, :cond_54

    move-object/from16 v11, v16

    invoke-interface {v11, v9, v12, v10, v3}, Lu/g;->c(ILc2/t0;[I[I)V

    move/from16 v16, v2

    move-object/from16 v28, v8

    move-object v8, v12

    move-object/from16 v2, v18

    move/from16 v59, v24

    move/from16 v60, v41

    move-wide/from16 v57, v43

    move-object v12, v3

    move v3, v7

    move-object/from16 v41, v25

    goto :goto_3e

    :cond_54
    invoke-static/range {v32 .. v32}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_55
    if-eqz v28, :cond_59

    sget-object v11, Lb3/m;->l:Lb3/m;

    move-object/from16 v16, v12

    move-object v12, v3

    move v3, v7

    move-object/from16 v7, v28

    move-object/from16 v28, v8

    move-object/from16 v8, v16

    move/from16 v16, v2

    move-object/from16 v2, v18

    move/from16 v59, v24

    move/from16 v60, v41

    move-wide/from16 v57, v43

    move-object/from16 v41, v25

    invoke-interface/range {v7 .. v12}, Lu/e;->b(Lb3/c;I[ILb3/m;[I)V

    :goto_3e
    new-instance v7, Lo9/d;

    const/4 v10, 0x1

    add-int/lit8 v9, v16, -0x1

    const/4 v11, 0x0

    invoke-direct {v7, v11, v9, v10}, Lo9/b;-><init>(III)V

    iget v9, v7, Lo9/b;->m:I

    iget v7, v7, Lo9/b;->n:I

    if-lez v7, :cond_56

    if-gez v9, :cond_57

    :cond_56
    if-gez v7, :cond_58

    if-gtz v9, :cond_58

    :cond_57
    const/4 v10, 0x0

    :goto_3f
    aget v11, v12, v10

    invoke-virtual {v0, v10}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Lw/l;

    invoke-virtual {v7, v11, v13, v3}, Lw/l;->c(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v10, v9, :cond_58

    add-int v10, v10, v17

    move/from16 v7, v17

    goto :goto_3f

    :cond_58
    move-object/from16 v43, v8

    goto/16 :goto_43

    :cond_59
    const-string v0, "null horizontalArrangement when isVertical == false"

    invoke-static {v0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5a
    move-object/from16 v54, v3

    move v3, v7

    move-object/from16 v28, v8

    move-object v8, v12

    move-object/from16 v2, v18

    move/from16 v59, v24

    move/from16 v60, v41

    move-wide/from16 v57, v43

    move-object/from16 v41, v25

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v7

    move/from16 v12, v20

    const/4 v9, 0x0

    :goto_40
    if-ge v9, v7, :cond_5b

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v7

    move-object/from16 v7, v16

    check-cast v7, Lw/l;

    move-object/from16 v43, v8

    iget v8, v7, Lw/l;->n:I

    sub-int/2addr v12, v8

    invoke-virtual {v7, v12, v13, v3}, Lw/l;->c(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    move/from16 v7, v17

    move-object/from16 v8, v43

    goto :goto_40

    :cond_5b
    move-object/from16 v43, v8

    invoke-virtual {v0}, Lu8/k;->a()I

    move-result v7

    move/from16 v8, v20

    const/4 v9, 0x0

    :goto_41
    if-ge v9, v7, :cond_5c

    invoke-virtual {v0, v9}, Lu8/k;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    invoke-virtual {v10, v8, v13, v3}, Lw/l;->c(III)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lw/l;->n:I

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    :cond_5c
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_42
    if-ge v9, v7, :cond_5d

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lw/l;

    invoke-virtual {v10, v8, v13, v3}, Lw/l;->c(III)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lw/l;->n:I

    add-int/2addr v8, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    :cond_5d
    :goto_43
    iget-object v7, v2, Lw/g;->d:Ld1/c0;

    move/from16 v18, v3

    move-object/from16 v20, v7

    move/from16 v17, v13

    move-object/from16 v16, v19

    move/from16 v24, v21

    move/from16 v25, v53

    move-object/from16 v21, v54

    move-object/from16 v19, v1

    invoke-virtual/range {v16 .. v25}, Lx/s;->b(IILjava/util/ArrayList;Ld1/c0;Lw/i;ZZII)V

    move-object/from16 v9, v19

    move-object/from16 v7, v21

    move/from16 v1, v22

    move/from16 v8, v25

    if-nez v1, :cond_60

    invoke-virtual/range {v16 .. v16}, Lx/s;->a()J

    if-nez v27, :cond_60

    if-eqz v37, :cond_5e

    move v10, v3

    :goto_44
    move-object/from16 v16, v0

    const-wide/16 v11, 0x0

    goto :goto_45

    :cond_5e
    move v10, v13

    goto :goto_44

    :goto_45
    long-to-int v0, v11

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v14, v15}, Lb3/b;->g(IJ)I

    move-result v13

    long-to-int v0, v11

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v14, v15}, Lb3/b;->f(IJ)I

    move-result v0

    if-eqz v37, :cond_5f

    move v3, v0

    goto :goto_46

    :cond_5f
    move v3, v13

    :goto_46
    if-eq v3, v10, :cond_61

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v15, 0x0

    :goto_47
    if-ge v15, v10, :cond_61

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw/l;

    iput v3, v11, Lw/l;->q:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_47

    :cond_60
    move-object/from16 v16, v0

    move v0, v3

    :cond_61
    invoke-virtual/range {v16 .. v16}, Lu8/k;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    if-eqz v3, :cond_62

    iget v15, v3, Lw/l;->a:I

    goto :goto_48

    :cond_62
    const/4 v15, 0x0

    :goto_48
    invoke-virtual/range {v16 .. v16}, Lu8/k;->k()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    if-eqz v3, :cond_63

    iget v3, v3, Lw/l;->a:I

    goto :goto_49

    :cond_63
    const/4 v3, 0x0

    :goto_49
    iget-object v2, v2, Lw/g;->b:Lw/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lk/j;->a:Lk/w;

    if-eqz v33, :cond_78

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_78

    iget v10, v2, Lk/w;->b:I

    if-eqz v10, :cond_78

    sub-int/2addr v3, v15

    if-ltz v3, :cond_68

    if-nez v10, :cond_64

    goto :goto_4c

    :cond_64
    const/4 v3, 0x0

    invoke-static {v3, v10}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v10

    iget v3, v10, Lo9/b;->l:I

    iget v10, v10, Lo9/b;->m:I

    if-gt v3, v10, :cond_66

    const/4 v11, -0x1

    :goto_4a
    invoke-virtual {v2, v3}, Lk/w;->c(I)I

    move-result v12

    if-gt v12, v15, :cond_65

    invoke-virtual {v2, v3}, Lk/w;->c(I)I

    move-result v11

    if-eq v3, v10, :cond_65

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_65
    const/4 v3, -0x1

    goto :goto_4b

    :cond_66
    const/4 v3, -0x1

    const/4 v11, -0x1

    :goto_4b
    if-ne v11, v3, :cond_67

    sget-object v3, Lk/j;->a:Lk/w;

    goto :goto_4d

    :cond_67
    new-instance v3, Lk/w;

    const/4 v10, 0x1

    invoke-direct {v3, v10}, Lk/w;-><init>(I)V

    invoke-virtual {v3, v11}, Lk/w;->a(I)V

    goto :goto_4d

    :cond_68
    :goto_4c
    move-object v3, v2

    :goto_4d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_4e
    if-ge v15, v12, :cond_6b

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v17, v12

    move-object v12, v14

    check-cast v12, Lw/l;

    iget v12, v12, Lw/l;->a:I

    move/from16 v18, v15

    iget-object v15, v2, Lk/w;->a:[I

    move-object/from16 v19, v15

    iget v15, v2, Lk/w;->b:I

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_4f
    if-ge v2, v15, :cond_6a

    move/from16 v21, v2

    aget v2, v19, v21

    if-ne v2, v12, :cond_69

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_69
    add-int/lit8 v2, v21, 0x1

    goto :goto_4f

    :cond_6a
    :goto_50
    add-int/lit8 v15, v18, 0x1

    move/from16 v12, v17

    move-object/from16 v2, v20

    goto :goto_4e

    :cond_6b
    iget-object v2, v3, Lk/w;->a:[I

    iget v3, v3, Lk/w;->b:I

    const/4 v15, 0x0

    :goto_51
    if-ge v15, v3, :cond_77

    aget v12, v2, v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v18, v2

    const/4 v2, 0x0

    const/16 v17, 0x0

    :goto_52
    if-ge v2, v14, :cond_6d

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    add-int/lit8 v2, v2, 0x1

    move/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->a:I

    if-ne v2, v12, :cond_6c

    move/from16 v2, v17

    :goto_53
    const/4 v14, -0x1

    goto :goto_54

    :cond_6c
    add-int/lit8 v17, v17, 0x1

    move/from16 v2, v20

    goto :goto_52

    :cond_6d
    const/4 v2, -0x1

    goto :goto_53

    :goto_54
    if-ne v2, v14, :cond_6e

    invoke-virtual {v7, v12, v5, v6}, Lw/i;->a(IJ)Lw/l;

    move-result-object v17

    :goto_55
    move-object/from16 v14, v17

    move/from16 v17, v3

    goto :goto_56

    :cond_6e
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lw/l;

    goto :goto_55

    :goto_56
    iget v3, v14, Lw/l;->n:I

    move/from16 v19, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6f

    move v2, v4

    const/high16 v3, -0x80000000

    goto :goto_58

    :cond_6f
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lw/l;->a(I)J

    move-result-wide v21

    iget-boolean v2, v14, Lw/l;->c:Z

    if-eqz v2, :cond_70

    move v2, v4

    and-long v3, v21, v30

    :goto_57
    long-to-int v3, v3

    goto :goto_58

    :cond_70
    move v2, v4

    shr-long v3, v21, v29

    goto :goto_57

    :goto_58
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v21, v2

    const/4 v2, 0x0

    :goto_59
    if-ge v2, v4, :cond_72

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v2

    move-object/from16 v2, v22

    check-cast v2, Lw/l;

    iget v2, v2, Lw/l;->a:I

    if-eq v2, v12, :cond_71

    goto :goto_5a

    :cond_71
    add-int/lit8 v2, v23, 0x1

    goto :goto_59

    :cond_72
    move-object/from16 v22, v36

    :goto_5a
    move-object/from16 v2, v22

    check-cast v2, Lw/l;

    if-eqz v2, :cond_74

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lw/l;->a(I)J

    move-result-wide v22

    iget-boolean v2, v2, Lw/l;->c:Z

    if-eqz v2, :cond_73

    move-wide/from16 v25, v5

    and-long v4, v22, v30

    :goto_5b
    long-to-int v2, v4

    goto :goto_5c

    :cond_73
    move-wide/from16 v25, v5

    shr-long v4, v22, v29

    goto :goto_5b

    :goto_5c
    const/high16 v4, -0x80000000

    goto :goto_5d

    :cond_74
    move-wide/from16 v25, v5

    const/high16 v2, -0x80000000

    goto :goto_5c

    :goto_5d
    if-ne v3, v4, :cond_75

    move/from16 v3, v50

    move v5, v3

    goto :goto_5e

    :cond_75
    move/from16 v5, v50

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_5e
    if-eq v2, v4, :cond_76

    sub-int v2, v2, v19

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_76
    const/4 v2, 0x1

    iput-boolean v2, v14, Lw/l;->p:Z

    invoke-virtual {v14, v3, v13, v0}, Lw/l;->c(III)V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v50, v5

    move/from16 v3, v17

    move-object/from16 v2, v18

    move/from16 v4, v21

    move-wide/from16 v5, v25

    goto/16 :goto_51

    :cond_77
    move/from16 v21, v4

    move/from16 v5, v50

    const/4 v2, 0x1

    goto :goto_5f

    :cond_78
    move/from16 v21, v4

    move/from16 v5, v50

    const/4 v2, 0x1

    move-object/from16 v10, v42

    :goto_5f
    if-eqz v52, :cond_7a

    invoke-static {v9}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    if-eqz v3, :cond_79

    iget v3, v3, Lw/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_60

    :cond_79
    move-object/from16 v3, v36

    goto :goto_60

    :cond_7a
    invoke-virtual/range {v16 .. v16}, Lu8/k;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    if-eqz v3, :cond_79

    iget v3, v3, Lw/l;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_60
    if-eqz v52, :cond_7c

    invoke-static {v9}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/l;

    if-eqz v4, :cond_7b

    iget v4, v4, Lw/l;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    :cond_7b
    :goto_61
    move/from16 v4, v59

    move/from16 v6, v60

    goto :goto_62

    :cond_7c
    invoke-virtual/range {v16 .. v16}, Lu8/k;->k()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw/l;

    if-eqz v4, :cond_7b

    iget v4, v4, Lw/l;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    goto :goto_61

    :goto_62
    if-lt v6, v4, :cond_7e

    move/from16 v6, v21

    if-le v8, v6, :cond_7d

    goto :goto_63

    :cond_7d
    const/4 v14, 0x0

    goto :goto_64

    :cond_7e
    :goto_63
    move v14, v2

    :goto_64
    new-instance v2, Lb0/o;

    move-object/from16 v6, v45

    invoke-direct {v2, v6, v9, v10, v1}, Lb0/o;-><init>(Lr0/u0;Ljava/util/ArrayList;Ljava/util/List;Z)V

    add-int v13, v13, p2

    move-wide/from16 v11, v57

    invoke-static {v13, v11, v12}, Lb3/b;->g(IJ)I

    move-result v1

    add-int v0, v0, v35

    invoke-static {v0, v11, v12}, Lb3/b;->f(IJ)I

    move-result v0

    move-object/from16 v6, v39

    move-object/from16 v8, v41

    invoke-interface {v6, v1, v0, v8, v2}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v12

    if-eqz v3, :cond_7f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_65

    :cond_7f
    const/4 v15, 0x0

    :goto_65
    if-eqz v36, :cond_80

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_66

    :cond_80
    const/4 v0, 0x0

    :goto_66
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_81

    move-object/from16 v19, v42

    goto :goto_68

    :cond_81
    invoke-static {v10}, Lu8/m;->C0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_67
    if-ge v2, v1, :cond_83

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw/l;

    iget v10, v3, Lw/l;->a:I

    if-gt v15, v10, :cond_82

    if-gt v10, v0, :cond_82

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_83
    sget-object v0, Lx/l;->a:Lcom/graphhopper/isochrone/algorithm/b;

    invoke-static {v8, v0}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v19, v8

    :goto_68
    if-eqz v37, :cond_84

    sget-object v0, Lr/m1;->l:Lr/m1;

    :goto_69
    move-object/from16 v23, v0

    goto :goto_6a

    :cond_84
    sget-object v0, Lr/m1;->m:Lr/m1;

    goto :goto_69

    :goto_6a
    new-instance v0, Lw/k;

    iget-wide v1, v7, Lw/i;->d:J

    move-object v7, v0

    move-wide/from16 v17, v1

    move/from16 v22, v4

    move/from16 v20, v5

    move v10, v14

    move/from16 v9, v24

    move-object/from16 v8, v28

    move-object/from16 v15, v34

    move/from16 v24, v38

    move/from16 v25, v40

    move-object/from16 v16, v43

    move/from16 v21, v46

    move/from16 v14, v48

    move/from16 v13, v49

    move/from16 v11, v51

    invoke-direct/range {v7 .. v25}, Lw/k;-><init>(Lw/l;IZFLc2/s0;FZLu9/t;Lb3/c;JLjava/util/List;IIILr/m1;II)V

    :goto_6b
    invoke-interface {v6}, Lc2/p;->T()Z

    move-result v0

    move-object/from16 v1, v47

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v0, v3}, Lw/p;->f(Lw/k;ZZ)V

    return-object v7

    :goto_6c
    invoke-static {v3, v7, v6}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw v0

    :cond_85
    const-string v0, "null horizontalAlignment when isVertical == false"

    invoke-static {v0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lg0/k;->l:I

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/16 v7, 0x8

    const/16 v8, 0x31

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v2, :pswitch_data_0

    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lx/m0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v10

    :goto_0
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    invoke-direct/range {p0 .. p2}, Lg0/k;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lx/u;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lx/t;

    iget-object v6, v0, Lx/t;->a:Ljava/lang/Object;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v9, :cond_2

    move v3, v11

    goto :goto_2

    :cond_2
    move v3, v10

    :goto_2
    and-int/2addr v1, v11

    invoke-virtual {v7, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v2, Lx/u;->b:Lod/a7;

    invoke-virtual {v1}, Lod/a7;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lw/g;

    iget v1, v0, Lx/t;->c:I

    invoke-virtual {v3}, Lw/g;->c()I

    move-result v4

    const/4 v5, -0x1

    if-ge v1, v4, :cond_3

    invoke-virtual {v3, v1}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v1, v3, Lw/g;->d:Ld1/c0;

    invoke-virtual {v1, v6}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_4

    iput v1, v0, Lx/t;->c:I

    :cond_4
    if-eq v1, v5, :cond_5

    const v4, -0x6339ef97

    invoke-virtual {v7, v4}, Lr0/q;->b0(I)V

    iget-object v4, v2, Lx/u;->a:Lc1/c;

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v3 .. v8}, Lx/l;->d(Lw/g;Ljava/lang/Object;ILjava/lang/Object;Lr0/q;I)V

    :goto_3
    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_5
    const v1, -0x63716822

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    goto :goto_3

    :goto_4
    invoke-virtual {v7, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v2, v1, :cond_7

    :cond_6
    new-instance v2, Lr0/o1;

    const/16 v1, 0xa

    invoke-direct {v2, v1, v0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v7, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Li9/c;

    invoke-static {v6, v2, v7}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lz0/d;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lu/o;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_9

    move v4, v11

    goto :goto_6

    :cond_9
    move v4, v10

    :goto_6
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lz0/d;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lc2/r0;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lz0/d;

    move-object/from16 v3, p1

    check-cast v3, Lc2/s1;

    check-cast v1, Lb3/a;

    new-instance v4, Lu/o;

    iget-wide v5, v1, Lb3/a;->a:J

    invoke-direct {v4, v3, v5, v6}, Lu/o;-><init>(Lc2/s1;J)V

    sget-object v5, Lt8/z;->a:Lt8/z;

    new-instance v6, Lg0/k;

    const/16 v7, 0x19

    invoke-direct {v6, v7, v0, v4}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lz0/d;

    const v4, -0x19bf96da

    invoke-direct {v0, v4, v11, v6}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-interface {v3, v0, v5}, Lc2/s1;->i0(Li9/e;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-wide v4, v1, Lb3/a;->a:J

    invoke-interface {v2, v3, v0, v4, v5}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lmb/x4;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/h2;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    instance-of v4, v1, Lr0/h;

    if-eqz v4, :cond_b

    move-object v0, v1

    check-cast v0, Lr0/h;

    iget-object v1, v2, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    instance-of v4, v1, Lr0/b2;

    if-nez v4, :cond_d

    instance-of v4, v1, Lr0/y1;

    if-eqz v4, :cond_c

    invoke-static {v0, v3, v1}, Lr0/r;->D(Lr0/h2;ILjava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Lr0/y1;

    invoke-virtual {v2, v0}, Lmb/x4;->e(Lr0/y1;)V

    goto :goto_8

    :cond_c
    instance-of v2, v1, Lr0/n1;

    if-eqz v2, :cond_d

    invoke-static {v0, v3, v1}, Lr0/r;->D(Lr0/h2;ILjava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Lr0/n1;

    invoke-virtual {v0}, Lr0/n1;->d()V

    :cond_d
    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lj9/w;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr/s1;

    move-object/from16 v3, p1

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    iget v1, v2, Lj9/w;->l:F

    sub-float/2addr v3, v1

    invoke-interface {v0, v3}, Lr/s1;->a(F)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, v2, Lj9/w;->l:F

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lq/d;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lq/c;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lr0/r;->H(I)I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lq/d;->a(Lq/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_7
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_e

    move v4, v11

    goto :goto_9

    :cond_e
    move v4, v10

    :goto_9
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    int-to-float v1, v7

    invoke-static {v1}, Lu/h;->g(F)Lu/f;

    move-result-object v1

    sget-object v4, Lf1/o;->a:Lf1/o;

    sget-object v8, Lf1/c;->x:Lf1/h;

    invoke-static {v1, v8, v3, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v8, v3, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v4, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-eqz v12, :cond_f

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_a
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v8, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v3, v1, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v3, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v4, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    const v0, 0x48d565cd

    invoke-virtual {v3, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lod/f7;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v7, :cond_10

    invoke-virtual {v1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "substring(...)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    invoke-static {v0, v2, v1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_10
    move-object v12, v1

    const/16 v0, 0x22

    invoke-static {v0}, La/a;->k(I)J

    move-result-wide v16

    sget-object v18, Lt2/k;->q:Lt2/k;

    sget-object v19, Lt2/p;->c:Lt2/m;

    const/16 v33, 0x0

    const v34, 0x1ff96

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v32, 0x30c00

    move-object/from16 v31, v3

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v1, v31

    invoke-virtual {v1, v10}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_11
    move-object v1, v3

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x48d57750    # 437178.5f

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v14, v0, Lo0/u0;->w:J

    const/16 v33, 0x0

    const v34, 0x1fffa

    const-string v12, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043e\u0442\u0440\u0438\u043c\u0430\u0442\u0438 \u043a\u043e\u0434. \u041f\u0435\u0440\u0435\u0432\u0456\u0440\u0442\u0435 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442 \u0456 \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437."

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x6

    move-object/from16 v31, v1

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v1, v10}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_12
    const v0, 0x48d5889b

    invoke-virtual {v1, v0}, Lr0/q;->b0(I)V

    const/16 v21, 0x0

    const/16 v22, 0x3f

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v1

    invoke-static/range {v12 .. v22}, Lo0/u2;->a(Lf1/r;JFJIFLr0/q;II)V

    invoke-virtual {v1, v10}, Lr0/q;->q(Z)V

    :goto_b
    const-string v0, "\u0412\u0441\u0442\u0430\u043d\u043e\u0432\u0456\u0442\u044c BlindDriver \u043d\u0430 \u043d\u043e\u0432\u0438\u0439 \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u0456 \u0432\u0432\u0435\u0434\u0456\u0442\u044c \u0446\u0435\u0439 \u043a\u043e\u0434 \u0442\u0430\u043c: \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u2192 \u00ab\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443\u00bb. \u041a\u043e\u0434 \u0434\u0456\u0454 15 \u0445\u0432\u0438\u043b\u0438\u043d \u0456 \u0441\u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0434\u0438\u043d \u0440\u0430\u0437. \u041f\u0456\u0441\u043b\u044f \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u043d\u0430 \u0446\u044c\u043e\u043c\u0443 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456 \u0432\u0438\u043c\u043a\u043d\u0435\u0442\u044c\u0441\u044f."

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v0, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v1, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v2, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v1, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/u0;

    iget-wide v14, v2, Lo0/u0;->s:J

    const/16 v33, 0x0

    const v34, 0xfffa

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v1, v11}, Lr0/q;->q(Z)V

    goto :goto_c

    :cond_13
    move-object v1, v3

    invoke-virtual {v1}, Lr0/q;->W()V

    :goto_c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_8
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_14

    move v10, v11

    :cond_14
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v3, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_15

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_16

    :cond_15
    new-instance v4, Lb0/n;

    const/16 v1, 0x1a

    invoke-direct {v4, v1, v2, v0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->N1:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_d

    :cond_17
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Li9/a;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_18

    move v10, v11

    :cond_18
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v3, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_19

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_1a

    :cond_19
    new-instance v4, Lod/q1;

    invoke-direct {v4, v2, v0, v11}, Lod/q1;-><init>(Li9/a;Lr0/u0;I)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1a
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->H1:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_e

    :cond_1b
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_a
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_1c

    move v10, v11

    :cond_1c
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v3, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1d

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_1e

    :cond_1d
    new-instance v4, Lnd/t;

    invoke-direct {v4, v9, v2, v0}, Lnd/t;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1e
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->G1:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_f

    :cond_1f
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/i;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_20

    move v10, v11

    :cond_20
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v3, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_21

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_22

    :cond_21
    new-instance v4, Lb0/n;

    const/16 v1, 0x14

    invoke-direct {v4, v1, v2, v0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_22
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->I0:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_10

    :cond_23
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_10
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/a;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_24

    move v10, v11

    :cond_24
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v3, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_25

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_26

    :cond_25
    new-instance v4, Lod/i4;

    invoke-direct {v4, v2, v0, v11}, Lod/i4;-><init>(Lua/nav/a;Lr0/u0;I)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_26
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->A0:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_11

    :cond_27
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_11
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/a;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Ljd/b;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x49

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/m;->p(Lua/nav/a;Ljd/b;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lwc/b;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/e4;->b(Lwc/b;Lf1/r;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/Step;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/e4;->f(Lua/nav/routing/Step;Lf1/r;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_10
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lad/a0;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/e4;->g(Lad/a0;Lf1/r;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_28

    move v4, v11

    goto :goto_12

    :cond_28
    move v4, v10

    :goto_12
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v3, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_29

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v4, v1, :cond_2a

    :cond_29
    new-instance v4, Lod/w0;

    invoke-direct {v4, v2, v0, v10}, Lod/w0;-><init>(Li9/c;Lr0/u0;I)V

    invoke-virtual {v3, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2a
    move-object v12, v4

    check-cast v12, Li9/a;

    sget-object v18, Lod/m;->r:Lz0/d;

    const/high16 v20, 0x30000000

    const/16 v21, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v12 .. v21}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_13

    :cond_2b
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lr0/q;->W()V

    :goto_13
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_12
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lad/u2;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/g3;->W(Lad/u2;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lsc/d;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v4, v1, 0x3

    if-eq v4, v9, :cond_2c

    move v10, v11

    :cond_2c
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v10}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_30

    sget-object v1, Lcd/d;->w0:Lcd/c;

    sget-object v4, Lsc/d;->l:Lsc/d;

    if-ne v2, v4, :cond_2d

    const-string v2, "A"

    goto :goto_14

    :cond_2d
    sget-object v2, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "B"

    goto :goto_14

    :cond_2e
    const-string v2, "\u0411"

    :goto_14
    invoke-static {v0}, Lzc/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v0, "\u2026"

    :cond_2f
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v33, 0x0

    const v34, 0x1fffe

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v3

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_15

    :cond_30
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Lr0/q;->W()V

    :goto_15
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_14
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Ldd/n;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lf1/r;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lod/a0;->e(Ldd/n;Lf1/r;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_15
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/support/a;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v9, :cond_31

    move v8, v11

    goto :goto_16

    :cond_31
    move v8, v10

    :goto_16
    and-int/2addr v1, v11

    invoke-virtual {v3, v1, v8}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-object v1, Lf1/o;->a:Lf1/o;

    const/16 v8, 0x1cc

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-static {v1, v9, v8, v11}, Lu/b1;->h(Lf1/r;FFI)Lf1/r;

    move-result-object v1

    invoke-static {v3}, Lp/o;->q(Lr0/q;)Lp/a2;

    move-result-object v8

    invoke-static {v1, v8}, Lp/o;->t(Lf1/r;Lp/a2;)Lf1/r;

    move-result-object v1

    int-to-float v5, v5

    invoke-static {v5}, Lu/h;->g(F)Lu/f;

    move-result-object v5

    sget-object v8, Lf1/c;->x:Lf1/h;

    invoke-static {v5, v8, v3, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v5

    iget-wide v8, v3, Lr0/q;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v8

    invoke-static {v1, v3}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v1

    sget-object v9, Le2/h;->b:Le2/g;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Le2/g;->b:Le2/f;

    invoke-virtual {v3}, Lr0/q;->e0()V

    iget-boolean v12, v3, Lr0/q;->S:Z

    if-eqz v12, :cond_32

    invoke-virtual {v3, v9}, Lr0/q;->l(Li9/a;)V

    goto :goto_17

    :cond_32
    invoke-virtual {v3}, Lr0/q;->o0()V

    :goto_17
    sget-object v9, Le2/g;->f:Le2/e;

    invoke-static {v9, v5, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v5, Le2/g;->e:Le2/e;

    invoke-static {v5, v8, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v3, v5, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v3, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v1, v3}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v1, 0x5c8c9579

    invoke-virtual {v3, v1}, Lr0/q;->b0(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/support/DevMessage;

    invoke-static {v2, v3, v10}, Lod/m;->h(Lua/nav/support/DevMessage;Lr0/q;I)V

    goto :goto_18

    :cond_33
    invoke-virtual {v3, v10}, Lr0/q;->q(Z)V

    invoke-static {v0, v4, v3, v7}, Lod/m;->m(Lua/nav/support/a;Li9/a;Lr0/q;I)V

    invoke-virtual {v3, v11}, Lr0/q;->q(Z)V

    goto :goto_19

    :cond_34
    invoke-virtual {v3}, Lr0/q;->W()V

    :goto_19
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_16
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lua/nav/support/a;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Li9/a;

    move-object/from16 v4, p1

    check-cast v4, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v4, v1}, Lod/m;->m(Lua/nav/support/a;Li9/a;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_17
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lo0/c1;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lg5/i;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lr0/r;->H(I)I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lo0/c1;->a(Lg5/i;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_18
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lm0/v1;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    move-object/from16 v5, p1

    check-cast v5, Ld0/a;

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v2}, Lm0/v1;->j()Z

    move-result v7

    invoke-virtual {v2}, Lm0/v1;->m()Lp2/g;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    move-object v8, v1

    goto :goto_1a

    :cond_35
    move-object v8, v4

    :goto_1a
    iget-object v1, v2, Lm0/v1;->w:Lp2/l0;

    if-eqz v1, :cond_36

    iget-wide v9, v1, Lp2/l0;->a:J

    iget-object v1, v2, Lm0/v1;->b:Lu2/q;

    const/16 v4, 0x20

    shr-long v11, v9, v4

    long-to-int v4, v11

    invoke-interface {v1, v4}, Lu2/q;->s(I)I

    move-result v4

    const-wide v11, 0xffffffffL

    and-long/2addr v9, v11

    long-to-int v9, v9

    invoke-interface {v1, v9}, Lu2/q;->s(I)I

    move-result v1

    invoke-static {v4, v1}, Lp2/d0;->b(II)J

    move-result-wide v9

    new-instance v4, Lp2/l0;

    invoke-direct {v4, v9, v10}, Lp2/l0;-><init>(J)V

    :cond_36
    move-object v9, v4

    iget-object v10, v2, Lm0/v1;->j:Lm0/u;

    new-instance v11, Lb0/o;

    invoke-direct {v11, v2, v0, v6, v3}, Lb0/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static/range {v5 .. v11}, Lm0/w;->a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lp2/l0;Lm0/u;Li9/c;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_19
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v2, Lg0/r;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr0/r;->H(I)I

    move-result v1

    invoke-virtual {v2, v0, v3, v1}, Lg0/r;->a(Landroid/graphics/drawable/Drawable;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1a
    iget-object v2, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v2, Le0/g;

    iget-object v0, v0, Lg0/k;->n:Ljava/lang/Object;

    check-cast v0, Le0/c;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v2, v0, v3, v1}, Lg0/m;->a(Le0/g;Le0/c;Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1b
    iget-object v2, v0, Lg0/k;->n:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Li0/e;

    iget-object v0, v0, Lg0/k;->m:Ljava/lang/Object;

    check-cast v0, Le0/g;

    move-object/from16 v2, p1

    check-cast v2, Lr0/q;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v9, :cond_37

    move v3, v11

    goto :goto_1b

    :cond_37
    move v3, v10

    :goto_1b
    and-int/2addr v1, v11

    invoke-virtual {v2, v1, v3}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-virtual {v2, v14}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_38

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v3, v1, :cond_39

    :cond_38
    new-instance v12, Lf2/p;

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v13, 0x0

    const-class v15, Li0/e;

    const-string v16, "data"

    const-string v17, "data()Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;"

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v20}, Lf2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-static {v12}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_39
    check-cast v3, Lr0/r2;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/c;

    invoke-static {v0, v1, v2, v10}, Lg0/m;->a(Le0/g;Le0/c;Lr0/q;I)V

    goto :goto_1c

    :cond_3a
    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_1c
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
