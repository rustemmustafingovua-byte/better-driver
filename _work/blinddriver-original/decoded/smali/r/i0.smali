.class public abstract Lr/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3fc0000000000000L    # 0.125

    double-to-float v0, v0

    const/16 v1, 0x12

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lr/i0;->a:F

    return-void
.end method

.method public static final a(Ly1/j0;Ly1/u;Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    instance-of v2, v1, Lr/x;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lr/x;

    iget v3, v2, Lr/x;->s:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lr/x;->s:I

    goto :goto_0

    :cond_0
    new-instance v2, Lr/x;

    invoke-direct {v2, v1}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v1, v2, Lr/x;->r:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lr/x;->s:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget v0, v2, Lr/x;->q:F

    iget v4, v2, Lr/x;->p:I

    iget-object v8, v2, Lr/x;->o:Lr/y2;

    iget-object v9, v2, Lr/x;->n:Lj9/x;

    iget-object v10, v2, Lr/x;->m:Ly1/m;

    iget-object v11, v2, Lr/x;->l:Ly1/j0;

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move/from16 v17, v0

    move-object v12, v8

    move-object v0, v11

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static/range {p0 .. p0}, Ly4/s;->c(Ly1/j0;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_3
    new-instance v1, Lj9/x;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-wide v8, v0, Ly1/u;->a:J

    iput-wide v8, v1, Lj9/x;->l:J

    invoke-virtual/range {p0 .. p0}, Ly1/j0;->e()Lf2/p2;

    move-result-object v4

    iget v0, v0, Ly1/u;->i:I

    invoke-static {v4, v0}, Lr/i0;->j(Lf2/p2;I)F

    move-result v0

    new-instance v4, Lr/y2;

    const/4 v8, 0x3

    invoke-direct {v4, v5, v8}, Lr/y2;-><init>(Lr/m1;I)V

    move-object v10, v1

    move-object v9, v4

    const/4 v8, 0x0

    move-object/from16 v1, p2

    move-object v4, v2

    move v2, v0

    move-object/from16 v0, p0

    :goto_1
    iput-object v0, v4, Lr/x;->l:Ly1/j0;

    iput-object v1, v4, Lr/x;->m:Ly1/m;

    iput-object v10, v4, Lr/x;->n:Lj9/x;

    iput-object v9, v4, Lr/x;->o:Lr/y2;

    iput v8, v4, Lr/x;->p:I

    iput v2, v4, Lr/x;->q:F

    iput v7, v4, Lr/x;->s:I

    invoke-virtual {v0, v1, v4}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_4

    return-object v3

    :cond_4
    move/from16 v17, v2

    move-object v2, v4

    move v4, v8

    move-object v12, v9

    move-object v9, v10

    move-object v10, v1

    move-object v1, v11

    :goto_2
    check-cast v1, Ly1/l;

    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Ly1/u;

    iget-wide v14, v14, Ly1/u;->a:J

    iget-wide v5, v9, Lj9/x;->l:J

    invoke-static {v14, v15, v5, v6}, Ly1/t;->e(JJ)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_4
    check-cast v13, Ly1/u;

    if-eqz v13, :cond_8

    invoke-static {v13}, Ly1/t;->d(Ly1/u;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    iget-wide v5, v13, Ly1/u;->c:J

    iget-wide v13, v13, Ly1/u;->g:J

    move-wide v15, v13

    move-wide v13, v5

    invoke-virtual/range {v12 .. v17}, Lr/y2;->a(JJF)J

    move-result-wide v5

    const-wide v13, 0x7fffffff7fffffffL

    and-long/2addr v5, v13

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v13

    if-eqz v5, :cond_d

    move v8, v7

    goto :goto_9

    :cond_8
    :goto_5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_a

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ly1/u;

    iget-boolean v11, v11, Ly1/u;->d:Z

    if-eqz v11, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v8, 0x0

    :goto_7
    check-cast v8, Ly1/u;

    if-nez v8, :cond_c

    if-eqz v4, :cond_b

    move v6, v7

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    :goto_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    iget-wide v5, v8, Ly1/u;->a:J

    iput-wide v5, v9, Lj9/x;->l:J

    :cond_d
    move v8, v4

    :goto_9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v4, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    iget-boolean v6, v6, Ly1/u;->d:Z

    if-eqz v6, :cond_e

    move-object v4, v2

    move-object v1, v10

    move/from16 v2, v17

    const/4 v5, 0x0

    move-object v10, v9

    move-object v9, v12

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    if-eqz v8, :cond_10

    move v6, v7

    goto :goto_b

    :cond_10
    const/4 v6, 0x0

    :goto_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Ly1/j0;JLa9/c;)Ljava/lang/Object;
    .locals 17

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lr/y;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lr/y;

    iget v4, v3, Lr/y;->o:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lr/y;->o:I

    goto :goto_0

    :cond_0
    new-instance v3, Lr/y;

    invoke-direct {v3, v2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v2, v3, Lr/y;->n:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lr/y;->o:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lr/y;->m:Lj9/x;

    iget-object v1, v3, Lr/y;->l:Ly1/j0;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    iget-object v5, v2, Ly1/j0;->q:Ly1/k0;

    iget-object v5, v5, Ly1/k0;->D:Ly1/l;

    invoke-static {v5, v0, v1}, Lr/i0;->i(Ly1/l;J)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_8

    :cond_3
    new-instance v5, Lj9/x;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-wide v0, v5, Lj9/x;->l:J

    move-object v0, v5

    :goto_1
    iput-object v2, v3, Lr/y;->l:Ly1/j0;

    iput-object v0, v3, Lr/y;->m:Lj9/x;

    iput v6, v3, Lr/y;->o:I

    sget-object v1, Ly1/m;->m:Ly1/m;

    invoke-virtual {v2, v1, v3}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_2
    check-cast v2, Ly1/l;

    iget-object v5, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v8, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ly1/u;

    iget-wide v12, v12, Ly1/u;->a:J

    iget-wide v14, v0, Lj9/x;->l:J

    invoke-static {v12, v13, v14, v15}, Ly1/t;->e(JJ)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_4
    check-cast v11, Ly1/u;

    if-nez v11, :cond_7

    move-object v11, v7

    goto :goto_7

    :cond_7
    invoke-static {v11}, Ly1/t;->d(Ly1/u;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v2, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_5
    if-ge v9, v5, :cond_9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Ly1/u;

    iget-boolean v10, v10, Ly1/u;->d:Z

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    move-object v8, v7

    :goto_6
    check-cast v8, Ly1/u;

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    iget-wide v8, v8, Ly1/u;->a:J

    iput-wide v8, v0, Lj9/x;->l:J

    goto :goto_9

    :cond_b
    invoke-static {v11, v6}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v8

    const-wide/16 v12, 0x0

    invoke-static {v8, v9, v12, v13}, Ll1/b;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_7
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ly1/u;->b()Z

    move-result v0

    if-nez v0, :cond_c

    return-object v11

    :cond_c
    :goto_8
    return-object v7

    :cond_d
    :goto_9
    move-object v2, v1

    goto :goto_1
.end method

.method public static final c(Ly1/j0;JILod/y6;La9/a;)Ljava/lang/Object;
    .locals 21

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Lr/z;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lr/z;

    iget v4, v3, Lr/z;->s:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lr/z;->s:I

    goto :goto_0

    :cond_0
    new-instance v3, Lr/z;

    invoke-direct {v3, v2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v2, v3, Lr/z;->r:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lr/z;->s:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget v0, v3, Lr/z;->q:F

    iget-object v1, v3, Lr/z;->p:Ly1/u;

    iget-object v5, v3, Lr/z;->o:Lr/y2;

    iget-object v11, v3, Lr/z;->n:Lj9/x;

    iget-object v12, v3, Lr/z;->m:Ly1/j0;

    iget-object v13, v3, Lr/z;->l:Li9/e;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v5

    move v9, v8

    move-object/from16 v17, v10

    move-object v5, v12

    move-object v12, v13

    move-object/from16 v18, v11

    move v11, v0

    move-wide/from16 v19, v6

    move-object v6, v1

    move-wide/from16 v0, v19

    :goto_1
    move-object/from16 v7, v18

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Lr/z;->q:F

    iget-object v1, v3, Lr/z;->o:Lr/y2;

    iget-object v5, v3, Lr/z;->n:Lj9/x;

    iget-object v11, v3, Lr/z;->m:Ly1/j0;

    iget-object v12, v3, Lr/z;->l:Li9/e;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move-object v11, v5

    move-object/from16 v5, v18

    goto :goto_3

    :cond_3
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    sget-object v2, Lr/m1;->m:Lr/m1;

    move-object/from16 v5, p0

    iget-object v11, v5, Ly1/j0;->q:Ly1/k0;

    iget-object v11, v11, Ly1/k0;->D:Ly1/l;

    invoke-static {v11, v0, v1}, Lr/i0;->i(Ly1/l;J)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v17, v10

    goto/16 :goto_c

    :cond_4
    invoke-virtual {v5}, Ly1/j0;->e()Lf2/p2;

    move-result-object v11

    move/from16 v12, p3

    invoke-static {v11, v12}, Lr/i0;->j(Lf2/p2;I)F

    move-result v11

    new-instance v12, Lj9/x;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-wide v0, v12, Lj9/x;->l:J

    new-instance v0, Lr/y2;

    invoke-direct {v0, v6, v7, v2}, Lr/y2;-><init>(JLr/m1;)V

    move-object v1, v0

    move-object/from16 v0, p4

    :goto_2
    iput-object v0, v3, Lr/z;->l:Li9/e;

    iput-object v5, v3, Lr/z;->m:Ly1/j0;

    iput-object v12, v3, Lr/z;->n:Lj9/x;

    iput-object v1, v3, Lr/z;->o:Lr/y2;

    iput-object v10, v3, Lr/z;->p:Ly1/u;

    iput v11, v3, Lr/z;->q:F

    iput v9, v3, Lr/z;->s:I

    sget-object v2, Ly1/m;->m:Ly1/m;

    invoke-virtual {v5, v2, v3}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    goto/16 :goto_a

    :cond_5
    move-object/from16 v18, v12

    move-object v12, v0

    move v0, v11

    move-object/from16 v11, v18

    :goto_3
    check-cast v2, Ly1/l;

    iget-object v13, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v14

    const/4 v15, 0x0

    move v9, v15

    :goto_4
    if-ge v9, v14, :cond_7

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    check-cast v10, Ly1/u;

    move/from16 p0, v9

    iget-wide v8, v10, Ly1/u;->a:J

    iget-wide v6, v11, Lj9/x;->l:J

    invoke-static {v8, v9, v6, v7}, Ly1/t;->e(JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v9, p0, 0x1

    move-object/from16 v10, v17

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    goto :goto_4

    :cond_7
    move-object/from16 v17, v10

    move-object/from16 v16, v17

    :goto_5
    move-object/from16 v6, v16

    check-cast v6, Ly1/u;

    if-nez v6, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v6}, Ly1/u;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-static {v6}, Ly1/t;->d(Ly1/u;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v6

    :goto_6
    if-ge v15, v6, :cond_b

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ly1/u;

    iget-boolean v8, v8, Ly1/u;->d:Z

    if-eqz v8, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v7, v17

    :goto_7
    check-cast v7, Ly1/u;

    if-nez v7, :cond_c

    goto/16 :goto_c

    :cond_c
    iget-wide v6, v7, Ly1/u;->a:J

    iput-wide v6, v11, Lj9/x;->l:J

    move v7, v0

    move-object v2, v1

    const-wide/16 v0, 0x0

    goto :goto_8

    :cond_d
    iget-wide v7, v6, Ly1/u;->c:J

    iget-wide v9, v6, Ly1/u;->g:J

    move/from16 p5, v0

    move-object/from16 p0, v1

    move-wide/from16 p1, v7

    move-wide/from16 p3, v9

    invoke-virtual/range {p0 .. p5}, Lr/y2;->a(JJF)J

    move-result-wide v0

    move-object/from16 v2, p0

    move/from16 v7, p5

    const-wide v8, 0x7fffffff7fffffffL

    and-long/2addr v8, v0

    const-wide v13, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v8, v8, v13

    if-eqz v8, :cond_f

    const/16 v8, 0x20

    shr-long/2addr v0, v8

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v12, v6, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ly1/u;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    return-object v6

    :cond_e
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lr/y2;->a:J

    :goto_8
    move-object v8, v11

    move v11, v7

    move-wide v6, v0

    move-object v0, v12

    move-object v12, v8

    move-object v1, v2

    move-object/from16 v10, v17

    const/4 v8, 0x2

    :goto_9
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_f
    const-wide/16 v0, 0x0

    sget-object v8, Ly1/m;->n:Ly1/m;

    iput-object v12, v3, Lr/z;->l:Li9/e;

    iput-object v5, v3, Lr/z;->m:Ly1/j0;

    iput-object v11, v3, Lr/z;->n:Lj9/x;

    iput-object v2, v3, Lr/z;->o:Lr/y2;

    iput-object v6, v3, Lr/z;->p:Ly1/u;

    iput v7, v3, Lr/z;->q:F

    const/4 v9, 0x2

    iput v9, v3, Lr/z;->s:I

    invoke-virtual {v5, v8, v3}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_10

    :goto_a
    return-object v4

    :cond_10
    move-object/from16 v18, v11

    move v11, v7

    goto/16 :goto_1

    :goto_b
    invoke-virtual {v6}, Ly1/u;->b()Z

    move-result v6

    if-eqz v6, :cond_11

    :goto_c
    return-object v17

    :cond_11
    move-object v8, v12

    move-object v12, v7

    move-wide v6, v0

    move-object v0, v8

    move-object v1, v2

    move v8, v9

    move-object/from16 v10, v17

    goto :goto_9
.end method

.method public static final d(Ly1/j0;JLa9/a;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lr/a0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/a0;

    iget v1, v0, Lr/a0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/a0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/a0;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lr/a0;->o:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/a0;->p:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/a0;->n:Lj9/u;

    iget-object p1, v0, Lr/a0;->m:Lj9/y;

    iget-object p2, v0, Lr/a0;->l:Ly1/u;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ly1/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p3, p3, Ly1/k0;->D:Ly1/l;

    invoke-static {p3, p1, p2}, Lr/i0;->i(Ly1/l;J)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_4

    :cond_3
    iget-object p3, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p3, p3, Ly1/k0;->D:Ly1/l;

    iget-object p3, p3, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ly1/u;

    iget-wide v7, v7, Ly1/u;->a:J

    invoke-static {v7, v8, p1, p2}, Ly1/t;->e(JJ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_2
    move-object p2, v6

    check-cast p2, Ly1/u;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Lj9/y;

    invoke-direct {p1}, Lj9/y;-><init>()V

    new-instance p3, Lj9/y;

    invoke-direct {p3}, Lj9/y;-><init>()V

    iput-object p2, p3, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Ly1/j0;->e()Lf2/p2;

    move-result-object v2

    invoke-interface {v2}, Lf2/p2;->b()J

    move-result-wide v5

    :try_start_1
    new-instance v2, Lj9/u;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lr/b0;

    invoke-direct {v7, v2, p3, p1, v4}, Lr/b0;-><init>(Lj9/u;Lj9/y;Lj9/y;Ly8/c;)V

    iput-object p2, v0, Lr/a0;->l:Ly1/u;

    iput-object p1, v0, Lr/a0;->m:Lj9/y;

    iput-object v2, v0, Lr/a0;->n:Lj9/u;

    iput v3, v0, Lr/a0;->p:I

    invoke-virtual {p0, v5, v6, v7, v0}, Ly1/j0;->f(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    move-object p0, v2

    :goto_3
    iget-boolean p0, p0, Lj9/u;->l:Z

    if-eqz p0, :cond_9

    iget-object p0, p1, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Ly1/u;
    :try_end_1
    .catch Ly1/n; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    return-object v4

    :catch_0
    iget-object p0, p1, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Ly1/u;

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    move-object p2, p0

    :goto_5
    return-object p2
.end method

.method public static final e(Ly1/j0;JLb0/x;La9/a;)Ljava/lang/Object;
    .locals 20

    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Lr/c0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lr/c0;

    iget v4, v3, Lr/c0;->s:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lr/c0;->s:I

    goto :goto_0

    :cond_0
    new-instance v3, Lr/c0;

    invoke-direct {v3, v2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v2, v3, Lr/c0;->r:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lr/c0;->s:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget v0, v3, Lr/c0;->q:F

    iget-object v1, v3, Lr/c0;->p:Ly1/u;

    iget-object v5, v3, Lr/c0;->o:Lr/y2;

    iget-object v11, v3, Lr/c0;->n:Lj9/x;

    iget-object v12, v3, Lr/c0;->m:Ly1/j0;

    iget-object v13, v3, Lr/c0;->l:Li9/e;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object v2, v5

    move v5, v0

    move-object v0, v13

    move-object v13, v2

    move v9, v8

    move-object v2, v12

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v3, Lr/c0;->q:F

    iget-object v1, v3, Lr/c0;->o:Lr/y2;

    iget-object v5, v3, Lr/c0;->n:Lj9/x;

    iget-object v11, v3, Lr/c0;->m:Ly1/j0;

    iget-object v12, v3, Lr/c0;->l:Li9/e;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move/from16 v18, v0

    move-object v0, v12

    :goto_1
    move-object v13, v1

    goto :goto_3

    :cond_3
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v2, p0

    iget-object v5, v2, Ly1/j0;->q:Ly1/k0;

    iget-object v5, v5, Ly1/k0;->D:Ly1/l;

    invoke-static {v5, v0, v1}, Lr/i0;->i(Ly1/l;J)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_c

    :cond_4
    invoke-virtual {v2}, Ly1/j0;->e()Lf2/p2;

    move-result-object v5

    invoke-interface {v5}, Lf2/p2;->f()F

    move-result v5

    new-instance v11, Lj9/x;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput-wide v0, v11, Lj9/x;->l:J

    new-instance v0, Lr/y2;

    invoke-direct {v0, v6, v7, v10}, Lr/y2;-><init>(JLr/m1;)V

    move-object v1, v0

    move-object/from16 v0, p3

    :goto_2
    iput-object v0, v3, Lr/c0;->l:Li9/e;

    iput-object v2, v3, Lr/c0;->m:Ly1/j0;

    iput-object v11, v3, Lr/c0;->n:Lj9/x;

    iput-object v1, v3, Lr/c0;->o:Lr/y2;

    iput-object v10, v3, Lr/c0;->p:Ly1/u;

    iput v5, v3, Lr/c0;->q:F

    iput v9, v3, Lr/c0;->s:I

    sget-object v12, Ly1/m;->m:Ly1/m;

    invoke-virtual {v2, v12, v3}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_5

    goto/16 :goto_a

    :cond_5
    move/from16 v18, v5

    move-object v5, v11

    move-object v11, v2

    move-object v2, v12

    goto :goto_1

    :goto_3
    check-cast v2, Ly1/l;

    iget-object v1, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v12, :cond_7

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ly1/u;

    move/from16 v17, v15

    iget-wide v14, v9, Ly1/u;->a:J

    iget-wide v8, v5, Lj9/x;->l:J

    invoke-static {v14, v15, v8, v9}, Ly1/t;->e(JJ)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v15, v17, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 v16, v10

    :goto_5
    move-object/from16 v1, v16

    check-cast v1, Ly1/u;

    if-nez v1, :cond_8

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v1}, Ly1/u;->b()Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-static {v1}, Ly1/t;->d(Ly1/u;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v1, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v2, :cond_b

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ly1/u;

    iget-boolean v9, v9, Ly1/u;->d:Z

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_b
    move-object v8, v10

    :goto_7
    check-cast v8, Ly1/u;

    if-nez v8, :cond_c

    goto :goto_c

    :cond_c
    iget-wide v1, v8, Ly1/u;->a:J

    iput-wide v1, v5, Lj9/x;->l:J

    move/from16 v2, v18

    goto :goto_8

    :cond_d
    iget-wide v14, v1, Ly1/u;->c:J

    iget-wide v8, v1, Ly1/u;->g:J

    move-wide/from16 v16, v8

    invoke-virtual/range {v13 .. v18}, Lr/y2;->a(JJF)J

    move-result-wide v8

    move/from16 v2, v18

    const-wide v14, 0x7fffffff7fffffffL

    and-long/2addr v14, v8

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v12, v14, v16

    if-eqz v12, :cond_f

    new-instance v12, Ll1/b;

    invoke-direct {v12, v8, v9}, Ll1/b;-><init>(J)V

    invoke-interface {v0, v1, v12}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ly1/u;->b()Z

    move-result v8

    if-eqz v8, :cond_e

    return-object v1

    :cond_e
    iput-wide v6, v13, Lr/y2;->a:J

    :goto_8
    move-object v1, v5

    move v5, v2

    move-object v2, v11

    move-object v11, v1

    move-object v1, v13

    const/4 v8, 0x2

    :goto_9
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_f
    sget-object v8, Ly1/m;->n:Ly1/m;

    iput-object v0, v3, Lr/c0;->l:Li9/e;

    iput-object v11, v3, Lr/c0;->m:Ly1/j0;

    iput-object v5, v3, Lr/c0;->n:Lj9/x;

    iput-object v13, v3, Lr/c0;->o:Lr/y2;

    iput-object v1, v3, Lr/c0;->p:Ly1/u;

    iput v2, v3, Lr/c0;->q:F

    const/4 v9, 0x2

    iput v9, v3, Lr/c0;->s:I

    invoke-virtual {v11, v8, v3}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_10

    :goto_a
    return-object v4

    :cond_10
    move-object/from16 v19, v5

    move v5, v2

    move-object v2, v11

    move-object/from16 v11, v19

    :goto_b
    invoke-virtual {v1}, Ly1/u;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_c
    return-object v10

    :cond_11
    move v8, v9

    move-object v1, v13

    goto :goto_9
.end method

.method public static f(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 12

    new-instance v0, Lp2/y;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lp2/y;-><init>(I)V

    new-instance v1, Lp/a1;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lp/a1;-><init>(I)V

    new-instance v9, Lp/a1;

    invoke-direct {v9, v2}, Lp/a1;-><init>(I)V

    new-instance v7, Lb0/x2;

    const/16 v2, 0x12

    invoke-direct {v7, v2, v0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lm0/f1;

    const/4 v0, 0x6

    invoke-direct {v10, v1, v0}, Lm0/f1;-><init>(Li9/a;I)V

    new-instance v4, Lp/a1;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Lp/a1;-><init>(I)V

    new-instance v5, Lj9/x;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lr/d0;

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v8, p1

    invoke-direct/range {v3 .. v11}, Lr/d0;-><init>(Li9/a;Lj9/x;Lr/m1;Li9/f;Li9/e;Li9/a;Li9/c;Ly8/c;)V

    invoke-static {p0, v3, p2}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    sget-object p2, Lt8/z;->a:Lt8/z;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static final g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lr/g0;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lr/g0;

    iget v1, v0, Lr/g0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/g0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/g0;

    invoke-direct {v0, p4}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p4, v0, Lr/g0;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/g0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/g0;->m:Li9/c;

    iget-object p1, v0, Lr/g0;->l:Ly1/j0;

    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, La/a;->E(Ljava/lang/Object;)V

    :goto_1
    iput-object p0, v0, Lr/g0;->l:Ly1/j0;

    iput-object p3, v0, Lr/g0;->m:Li9/c;

    iput v3, v0, Lr/g0;->o:I

    invoke-static {p0, p1, p2, v0}, Lr/i0;->b(Ly1/j0;JLa9/c;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p4, Ly1/u;

    if-nez p4, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-static {p4}, Ly1/t;->d(Ly1/u;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    invoke-interface {p3, p4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p4, Ly1/u;->a:J

    goto :goto_1
.end method

.method public static final h(Ly1/j0;JLb0/a;La9/a;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p4

    instance-of v1, v0, Lr/h0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lr/h0;

    iget v2, v1, Lr/h0;->r:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lr/h0;->r:I

    goto :goto_0

    :cond_0
    new-instance v1, Lr/h0;

    invoke-direct {v1, v0}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v0, v1, Lr/h0;->q:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lr/h0;->r:I

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    iget-object v3, v1, Lr/h0;->p:Lj9/x;

    iget-object v7, v1, Lr/h0;->o:Ly1/j0;

    iget-object v8, v1, Lr/h0;->n:Lr/m1;

    iget-object v9, v1, Lr/h0;->m:Ly1/j0;

    iget-object v10, v1, Lr/h0;->l:Li9/c;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v16, v9

    move-object v9, v3

    move-object/from16 v3, v16

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lr/m1;->m:Lr/m1;

    move-object/from16 v3, p0

    iget-object v7, v3, Ly1/j0;->q:Ly1/k0;

    iget-object v7, v7, Ly1/k0;->D:Ly1/l;

    move-wide/from16 v8, p1

    invoke-static {v7, v8, v9}, Lr/i0;->i(Ly1/l;J)Z

    move-result v7

    if-eqz v7, :cond_3

    move v15, v6

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_3
    move-object v7, v1

    move-object v1, v0

    move-object/from16 v0, p3

    :goto_2
    new-instance v10, Lj9/x;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    iput-wide v8, v10, Lj9/x;->l:J

    move-object v8, v1

    move-object v1, v7

    move-object v7, v3

    :goto_3
    iput-object v0, v1, Lr/h0;->l:Li9/c;

    iput-object v3, v1, Lr/h0;->m:Ly1/j0;

    iput-object v8, v1, Lr/h0;->n:Lr/m1;

    iput-object v7, v1, Lr/h0;->o:Ly1/j0;

    iput-object v10, v1, Lr/h0;->p:Lj9/x;

    iput v6, v1, Lr/h0;->r:I

    sget-object v9, Ly1/m;->m:Ly1/m;

    invoke-virtual {v7, v9, v1}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_4

    return-object v2

    :cond_4
    move-object/from16 v16, v10

    move-object v10, v0

    move-object v0, v9

    move-object/from16 v9, v16

    :goto_4
    check-cast v0, Ly1/l;

    iget-object v11, v0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ly1/u;

    iget-wide v4, v15, Ly1/u;->a:J

    move-object/from16 p0, v7

    iget-wide v6, v9, Lj9/x;->l:J

    invoke-static {v4, v5, v6, v7}, Ly1/t;->e(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p0

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 p0, v7

    const/4 v14, 0x0

    :goto_6
    check-cast v14, Ly1/u;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_7
    const/4 v15, 0x1

    goto :goto_d

    :cond_7
    invoke-static {v14}, Ly1/t;->d(Ly1/u;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ly1/u;

    iget-boolean v7, v7, Ly1/u;->d:Z

    if-eqz v7, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_9
    check-cast v6, Ly1/u;

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    iget-wide v4, v6, Ly1/u;->a:J

    iput-wide v4, v9, Lj9/x;->l:J

    const/4 v15, 0x1

    goto :goto_c

    :cond_b
    const/4 v15, 0x1

    invoke-static {v14, v15}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v4

    if-nez v8, :cond_c

    invoke-static {v4, v5}, Ll1/b;->c(J)F

    move-result v0

    goto :goto_b

    :cond_c
    sget-object v0, Lr/m1;->l:Lr/m1;

    if-ne v8, v0, :cond_d

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    :goto_a
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_b

    :cond_d
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    goto :goto_a

    :goto_b
    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_e

    :goto_c
    move-object/from16 v7, p0

    move-object v0, v10

    move v6, v15

    move-object v10, v9

    goto/16 :goto_3

    :cond_e
    :goto_d
    if-nez v14, :cond_f

    :goto_e
    goto/16 :goto_1

    :cond_f
    invoke-virtual {v14}, Ly1/u;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_e

    :cond_10
    invoke-static {v14}, Ly1/t;->d(Ly1/u;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v5, v14

    :goto_f
    if-eqz v5, :cond_11

    move v4, v15

    goto :goto_10

    :cond_11
    const/4 v4, 0x0

    :goto_10
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-interface {v10, v14}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v14, Ly1/u;->a:J

    move-object v7, v1

    move-object v1, v8

    move-object v0, v10

    move v6, v15

    move-wide v8, v4

    goto/16 :goto_2
.end method

.method public static final i(Ly1/l;J)Z
    .locals 6

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ly1/u;

    iget-wide v4, v4, Ly1/u;->a:J

    invoke-static {v4, v5, p1, p2}, Ly1/t;->e(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Ly1/u;

    const/4 p0, 0x1

    if-eqz v3, :cond_2

    iget-boolean p1, v3, Ly1/u;->d:Z

    if-ne p1, p0, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p0, v1

    return p0
.end method

.method public static final j(Lf2/p2;I)F
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Lf2/p2;->f()F

    move-result p0

    sget p1, Lr/i0;->a:F

    mul-float/2addr p0, p1

    return p0

    :cond_0
    invoke-interface {p0}, Lf2/p2;->f()F

    move-result p0

    return p0
.end method
