.class public final Ly1/j;
.super Ly1/k;
.source "SourceFile"


# instance fields
.field public final c:Lf1/q;

.field public final d:Lf7/c0;

.field public final e:Lk/q;

.field public f:Le2/h1;

.field public g:Ly1/l;

.field public h:Z

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Lf1/q;)V
    .locals 2

    invoke-direct {p0}, Ly1/k;-><init>()V

    iput-object p1, p0, Ly1/j;->c:Lf1/q;

    new-instance p1, Lf7/c0;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lf7/c0;-><init>(I)V

    const/4 v0, 0x2

    new-array v1, v0, [J

    iput-object v1, p1, Lf7/c0;->c:Ljava/lang/Object;

    iput-object p1, p0, Ly1/j;->d:Lf7/c0;

    new-instance p1, Lk/q;

    invoke-direct {p1, v0}, Lk/q;-><init>(I)V

    iput-object p1, p0, Ly1/j;->e:Lk/q;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly1/j;->i:Z

    iput-boolean p1, p0, Ly1/j;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lk/q;Lc2/u;Lad/a2;Z)Z
    .locals 51

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p4}, Ly1/k;->a(Lk/q;Lc2/u;Lad/a2;Z)Z

    move-result v4

    iget-object v5, v0, Ly1/j;->c:Lf1/q;

    iget-boolean v6, v5, Lf1/q;->y:Z

    const/4 v7, 0x1

    if-nez v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v5, :cond_8

    instance-of v10, v5, Le2/v1;

    const/16 v11, 0x10

    if-eqz v10, :cond_1

    check-cast v5, Le2/v1;

    invoke-static {v5, v11}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v5

    iput-object v5, v0, Ly1/j;->f:Le2/h1;

    goto :goto_3

    :cond_1
    iget v10, v5, Lf1/q;->n:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    instance-of v10, v5, Le2/k;

    if-eqz v10, :cond_7

    move-object v10, v5

    check-cast v10, Le2/k;

    iget-object v10, v10, Le2/k;->A:Lf1/q;

    const/4 v9, 0x0

    :goto_1
    if-eqz v10, :cond_6

    iget v12, v10, Lf1/q;->n:I

    and-int/2addr v12, v11

    if-eqz v12, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v7, :cond_2

    move-object v5, v10

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    new-instance v8, Lt0/b;

    new-array v12, v11, [Lf1/q;

    invoke-direct {v8, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v8, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v8, v10}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v10, v10, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_6
    if-ne v9, v7, :cond_7

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_0

    :cond_8
    iget-object v5, v0, Ly1/j;->f:Le2/h1;

    if-nez v5, :cond_9

    :goto_4
    return v7

    :cond_9
    invoke-virtual {v1}, Lk/q;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_5
    iget-object v10, v0, Ly1/j;->e:Lk/q;

    iget-object v11, v0, Ly1/j;->d:Lf7/c0;

    if-ge v8, v5, :cond_12

    invoke-virtual {v1, v8}, Lk/q;->h(I)J

    move-result-wide v12

    invoke-virtual {v1, v8}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly1/u;

    invoke-virtual {v11, v12, v13}, Lf7/c0;->f(J)Z

    move-result v11

    if-eqz v11, :cond_11

    move v15, v7

    iget-wide v6, v14, Ly1/u;->g:J

    iget-object v11, v14, Ly1/u;->k:Ljava/util/ArrayList;

    move-object/from16 v16, v10

    iget-wide v9, v14, Ly1/u;->c:J

    const-wide v17, 0x7fffffff7fffffffL

    and-long v19, v6, v17

    const-wide v21, 0x7fffff007fffffL

    add-long v19, v19, v21

    const-wide v23, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long v19, v19, v23

    const-wide/16 v25, 0x0

    cmp-long v19, v19, v25

    if-nez v19, :cond_10

    and-long v19, v9, v17

    add-long v19, v19, v21

    and-long v19, v19, v23

    cmp-long v19, v19, v25

    if-nez v19, :cond_10

    move/from16 v19, v15

    new-instance v15, Ljava/util/ArrayList;

    sget-object v20, Lu8/r;->l:Lu8/r;

    if-nez v11, :cond_a

    move-object/from16 v27, v20

    :goto_6
    move/from16 v47, v4

    goto :goto_7

    :cond_a
    move-object/from16 v27, v11

    goto :goto_6

    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(I)V

    if-nez v11, :cond_b

    move-object/from16 v11, v20

    :cond_b
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v4

    move/from16 v20, v5

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_d

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v4

    move-object/from16 v4, v27

    check-cast v4, Ly1/c;

    move-wide/from16 v48, v12

    move-object v13, v11

    iget-wide v11, v4, Ly1/c;->b:J

    and-long v29, v11, v17

    add-long v29, v29, v21

    and-long v29, v29, v23

    cmp-long v27, v29, v25

    if-nez v27, :cond_c

    new-instance v29, Ly1/c;

    move-object/from16 v27, v13

    move-object/from16 v50, v14

    iget-wide v13, v4, Ly1/c;->a:J

    move/from16 v36, v5

    iget-object v5, v0, Ly1/j;->f:Le2/h1;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v11, v12}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide v32

    iget-wide v4, v4, Ly1/c;->c:J

    move-wide/from16 v34, v4

    move-wide/from16 v30, v13

    invoke-direct/range {v29 .. v35}, Ly1/c;-><init>(JJJ)V

    move-object/from16 v4, v29

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move/from16 v36, v5

    move-object/from16 v27, v13

    move-object/from16 v50, v14

    :goto_9
    add-int/lit8 v5, v36, 0x1

    move-object/from16 v11, v27

    move/from16 v4, v28

    move-wide/from16 v12, v48

    move-object/from16 v14, v50

    goto :goto_8

    :cond_d
    move-wide/from16 v48, v12

    move-object/from16 v50, v14

    iget-object v4, v0, Ly1/j;->f:Le2/h1;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v6, v7}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide v38

    iget-object v4, v0, Ly1/j;->f:Le2/h1;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v9, v10}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide v32

    iget-wide v4, v14, Ly1/u;->a:J

    iget-wide v6, v14, Ly1/u;->b:J

    iget-boolean v9, v14, Ly1/u;->d:Z

    iget-wide v10, v14, Ly1/u;->f:J

    iget-boolean v12, v14, Ly1/u;->h:Z

    iget v13, v14, Ly1/u;->i:I

    move-wide/from16 v28, v4

    iget-wide v4, v14, Ly1/u;->j:J

    iget v2, v14, Ly1/u;->e:F

    new-instance v27, Ly1/u;

    move-wide/from16 v43, v4

    iget-wide v4, v14, Ly1/u;->l:J

    move/from16 v35, v2

    move-wide/from16 v45, v4

    move-wide/from16 v30, v6

    move/from16 v34, v9

    move-wide/from16 v36, v10

    move/from16 v40, v12

    move/from16 v41, v13

    move-object/from16 v42, v15

    invoke-direct/range {v27 .. v46}, Ly1/u;-><init>(JJJZFJJZILjava/util/ArrayList;JJ)V

    move-object/from16 v2, v27

    iget-object v4, v14, Ly1/u;->o:Ly1/u;

    if-nez v4, :cond_e

    move-object v4, v14

    :cond_e
    iput-object v4, v2, Ly1/u;->o:Ly1/u;

    iget-object v4, v14, Ly1/u;->o:Ly1/u;

    if-nez v4, :cond_f

    goto :goto_a

    :cond_f
    move-object v14, v4

    :goto_a
    iput-object v14, v2, Ly1/u;->o:Ly1/u;

    move-object/from16 v6, v16

    move-wide/from16 v4, v48

    invoke-virtual {v6, v4, v5, v2}, Lk/q;->i(JLjava/lang/Object;)V

    goto :goto_b

    :cond_10
    move/from16 v47, v4

    move/from16 v20, v5

    move/from16 v19, v15

    goto :goto_b

    :cond_11
    move/from16 v47, v4

    move/from16 v20, v5

    move/from16 v19, v7

    :goto_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v7, v19

    move/from16 v5, v20

    move/from16 v4, v47

    goto/16 :goto_5

    :cond_12
    move/from16 v47, v4

    move/from16 v19, v7

    move-object v6, v10

    invoke-virtual {v6}, Lk/q;->size()I

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    iput v2, v11, Lf7/c0;->b:I

    iget-object v0, v0, Ly1/k;->a:Lt0/b;

    invoke-virtual {v0}, Lt0/b;->g()V

    return v19

    :cond_13
    iget v2, v11, Lf7/c0;->b:I

    add-int/lit8 v2, v2, -0x1

    :goto_c
    const/4 v4, -0x1

    if-ge v4, v2, :cond_17

    iget-object v5, v11, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v7, v5, v2

    invoke-virtual {v1, v7, v8}, Lk/q;->g(J)I

    move-result v5

    if-ltz v5, :cond_14

    goto :goto_e

    :cond_14
    iget v5, v11, Lf7/c0;->b:I

    if-ge v2, v5, :cond_16

    add-int/lit8 v5, v5, -0x1

    move v7, v2

    :goto_d
    if-ge v7, v5, :cond_15

    iget-object v8, v11, Lf7/c0;->c:Ljava/lang/Object;

    check-cast v8, [J

    add-int/lit8 v9, v7, 0x1

    aget-wide v12, v8, v9

    aput-wide v12, v8, v7

    move v7, v9

    goto :goto_d

    :cond_15
    iget v5, v11, Lf7/c0;->b:I

    add-int/2addr v5, v4

    iput v5, v11, Lf7/c0;->b:I

    :cond_16
    :goto_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v6}, Lk/q;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lk/q;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v2, :cond_18

    invoke-virtual {v6, v4}, Lk/q;->o(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_18
    new-instance v2, Ly1/l;

    invoke-direct {v2, v1, v3}, Ly1/l;-><init>(Ljava/util/List;Lad/a2;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_1a

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ly1/u;

    iget-wide v7, v7, Ly1/u;->a:J

    invoke-virtual {v3, v7, v8}, Lad/a2;->f(J)Z

    move-result v7

    if-eqz v7, :cond_19

    goto :goto_11

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1a
    const/4 v6, 0x0

    :goto_11
    check-cast v6, Ly1/u;

    const/4 v1, 0x3

    if-eqz v6, :cond_27

    iget-boolean v3, v6, Ly1/u;->d:Z

    if-nez p4, :cond_1b

    const/4 v4, 0x0

    iput-boolean v4, v0, Ly1/j;->i:Z

    goto :goto_16

    :cond_1b
    const/4 v4, 0x0

    iget-boolean v5, v0, Ly1/j;->i:Z

    if-nez v5, :cond_21

    if-nez v3, :cond_1c

    iget-boolean v5, v6, Ly1/u;->h:Z

    if-eqz v5, :cond_21

    :cond_1c
    iget-object v5, v0, Ly1/j;->f:Le2/h1;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v7, v5, Lc2/f1;->n:J

    iget-wide v5, v6, Ly1/u;->c:J

    const/16 v9, 0x20

    shr-long v10, v5, v9

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    const-wide v11, 0xffffffffL

    and-long/2addr v5, v11

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    shr-long v13, v7, v9

    long-to-int v6, v13

    and-long/2addr v7, v11

    long-to-int v7, v7

    const/4 v8, 0x0

    cmpg-float v9, v10, v8

    if-gez v9, :cond_1d

    move/from16 v9, v19

    goto :goto_12

    :cond_1d
    move v9, v4

    :goto_12
    int-to-float v6, v6

    cmpl-float v6, v10, v6

    if-lez v6, :cond_1e

    move/from16 v6, v19

    goto :goto_13

    :cond_1e
    move v6, v4

    :goto_13
    or-int/2addr v6, v9

    cmpg-float v8, v5, v8

    if-gez v8, :cond_1f

    move/from16 v8, v19

    goto :goto_14

    :cond_1f
    move v8, v4

    :goto_14
    or-int/2addr v6, v8

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_20

    move/from16 v5, v19

    goto :goto_15

    :cond_20
    move v5, v4

    :goto_15
    or-int/2addr v5, v6

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v0, Ly1/j;->i:Z

    :cond_21
    :goto_16
    iget-boolean v5, v0, Ly1/j;->i:Z

    iget-boolean v6, v0, Ly1/j;->h:Z

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq v5, v6, :cond_25

    iget v9, v2, Ly1/l;->f:I

    if-ne v9, v1, :cond_22

    goto :goto_17

    :cond_22
    if-ne v9, v8, :cond_23

    goto :goto_17

    :cond_23
    if-ne v9, v7, :cond_25

    :goto_17
    if-eqz v5, :cond_24

    move v7, v8

    :cond_24
    iput v7, v2, Ly1/l;->f:I

    goto :goto_18

    :cond_25
    iget v9, v2, Ly1/l;->f:I

    if-ne v9, v8, :cond_26

    if-eqz v6, :cond_26

    iget-boolean v6, v0, Ly1/j;->j:Z

    if-nez v6, :cond_26

    iput v1, v2, Ly1/l;->f:I

    goto :goto_18

    :cond_26
    if-ne v9, v7, :cond_28

    if-eqz v5, :cond_28

    if-eqz v3, :cond_28

    iput v1, v2, Ly1/l;->f:I

    goto :goto_18

    :cond_27
    const/4 v4, 0x0

    :cond_28
    :goto_18
    if-nez v47, :cond_2c

    iget v3, v2, Ly1/l;->f:I

    if-ne v3, v1, :cond_2c

    iget-object v1, v0, Ly1/j;->g:Ly1/l;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, v2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v3, v6, :cond_29

    goto :goto_1a

    :cond_29
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    move v6, v4

    :goto_19
    if-ge v6, v3, :cond_2b

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly1/u;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ly1/u;

    iget-wide v9, v7, Ly1/u;->c:J

    iget-wide v7, v8, Ly1/u;->c:J

    invoke-static {v9, v10, v7, v8}, Ll1/b;->b(JJ)Z

    move-result v7

    if-nez v7, :cond_2a

    goto :goto_1a

    :cond_2a
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2b
    move v7, v4

    goto :goto_1b

    :cond_2c
    :goto_1a
    move/from16 v7, v19

    :goto_1b
    iput-object v2, v0, Ly1/j;->g:Ly1/l;

    return v7
.end method

.method public final b(Lad/a2;)V
    .locals 10

    invoke-super {p0, p1}, Ly1/k;->b(Lad/a2;)V

    iget-object v0, p0, Ly1/j;->g:Ly1/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Ly1/j;->i:Z

    iput-boolean v1, p0, Ly1/j;->h:Z

    iget-object v1, v0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    iget-boolean v6, v5, Ly1/u;->d:Z

    iget-wide v7, v5, Ly1/u;->a:J

    invoke-virtual {p1, v7, v8}, Lad/a2;->f(J)Z

    move-result v5

    iget-boolean v9, p0, Ly1/j;->i:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-nez v6, :cond_3

    if-nez v9, :cond_3

    :cond_2
    iget-object v5, p0, Ly1/j;->d:Lf7/c0;

    invoke-virtual {v5, v7, v8}, Lf7/c0;->l(J)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Ly1/j;->i:Z

    iget p1, v0, Ly1/l;->f:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Ly1/j;->j:Z

    return-void
.end method

.method public final c()V
    .locals 8

    iget-object v0, p0, Ly1/k;->a:Lt0/b;

    iget-object v1, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, v1, v3

    check-cast v4, Ly1/j;

    invoke-virtual {v4}, Ly1/j;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p0, p0, Ly1/j;->c:Lf1/q;

    move-object v1, v0

    :goto_1
    if-eqz p0, :cond_8

    instance-of v3, p0, Le2/v1;

    if-eqz v3, :cond_1

    check-cast p0, Le2/v1;

    invoke-interface {p0}, Le2/v1;->F()V

    goto :goto_4

    :cond_1
    iget v3, p0, Lf1/q;->n:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    instance-of v3, p0, Le2/k;

    if-eqz v3, :cond_7

    move-object v3, p0

    check-cast v3, Le2/k;

    iget-object v3, v3, Le2/k;->A:Lf1/q;

    move v5, v2

    :goto_2
    const/4 v6, 0x1

    if-eqz v3, :cond_6

    iget v7, v3, Lf1/q;->n:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_2

    move-object p0, v3

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Lt0/b;

    new-array v6, v4, [Lf1/q;

    invoke-direct {v1, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {v1, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_4
    invoke-virtual {v1, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_3
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_6
    if-ne v5, v6, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-static {v1}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p0

    goto :goto_1

    :cond_8
    return-void
.end method

.method public final d(Lad/a2;)Z
    .locals 14

    iget-object v0, p0, Ly1/j;->e:Lk/q;

    invoke-virtual {v0}, Lk/q;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Ly1/j;->c:Lf1/q;

    iget-boolean v4, v1, Lf1/q;->y:Z

    if-nez v4, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v4, p0, Ly1/j;->g:Ly1/l;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v5, p0, Ly1/j;->f:Le2/h1;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v5, Lc2/f1;->n:J

    move-object v7, v1

    move-object v8, v2

    :goto_0
    const/4 v9, 0x1

    if-eqz v7, :cond_9

    instance-of v10, v7, Le2/v1;

    if-eqz v10, :cond_2

    check-cast v7, Le2/v1;

    sget-object v9, Ly1/m;->n:Ly1/m;

    invoke-interface {v7, v4, v9, v5, v6}, Le2/v1;->w0(Ly1/l;Ly1/m;J)V

    goto :goto_3

    :cond_2
    iget v10, v7, Lf1/q;->n:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eqz v10, :cond_8

    instance-of v10, v7, Le2/k;

    if-eqz v10, :cond_8

    move-object v10, v7

    check-cast v10, Le2/k;

    iget-object v10, v10, Le2/k;->A:Lf1/q;

    move v12, v3

    :goto_1
    if-eqz v10, :cond_7

    iget v13, v10, Lf1/q;->n:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_6

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v9, :cond_3

    move-object v7, v10

    goto :goto_2

    :cond_3
    if-nez v8, :cond_4

    new-instance v8, Lt0/b;

    new-array v13, v11, [Lf1/q;

    invoke-direct {v8, v13}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v8, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v7, v2

    :cond_5
    invoke-virtual {v8, v10}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v10, v10, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_7
    if-ne v12, v9, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v7

    goto :goto_0

    :cond_9
    iget-boolean v1, v1, Lf1/q;->y:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Ly1/k;->a:Lt0/b;

    iget-object v4, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    :goto_4
    if-ge v3, v1, :cond_a

    aget-object v5, v4, v3

    check-cast v5, Ly1/j;

    invoke-virtual {v5, p1}, Ly1/j;->d(Lad/a2;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    move v3, v9

    :goto_5
    invoke-virtual {p0, p1}, Ly1/j;->b(Lad/a2;)V

    invoke-virtual {v0}, Lk/q;->a()V

    iput-object v2, p0, Ly1/j;->f:Le2/h1;

    return v3
.end method

.method public final e(Lad/a2;Z)Z
    .locals 13

    iget-object v0, p0, Ly1/j;->e:Lk/q;

    invoke-virtual {v0}, Lk/q;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ly1/j;->c:Lf1/q;

    iget-boolean v2, v0, Lf1/q;->y:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Ly1/j;->g:Ly1/l;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Ly1/j;->f:Le2/h1;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v3, v3, Lc2/f1;->n:J

    const/4 v5, 0x0

    move-object v6, v0

    move-object v7, v5

    :goto_0
    const/16 v8, 0x10

    const/4 v9, 0x1

    if-eqz v6, :cond_9

    instance-of v10, v6, Le2/v1;

    if-eqz v10, :cond_2

    check-cast v6, Le2/v1;

    sget-object v8, Ly1/m;->l:Ly1/m;

    invoke-interface {v6, v2, v8, v3, v4}, Le2/v1;->w0(Ly1/l;Ly1/m;J)V

    goto :goto_3

    :cond_2
    iget v10, v6, Lf1/q;->n:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_8

    instance-of v10, v6, Le2/k;

    if-eqz v10, :cond_8

    move-object v10, v6

    check-cast v10, Le2/k;

    iget-object v10, v10, Le2/k;->A:Lf1/q;

    move v11, v1

    :goto_1
    if-eqz v10, :cond_7

    iget v12, v10, Lf1/q;->n:I

    and-int/2addr v12, v8

    if-eqz v12, :cond_6

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v9, :cond_3

    move-object v6, v10

    goto :goto_2

    :cond_3
    if-nez v7, :cond_4

    new-instance v7, Lt0/b;

    new-array v12, v8, [Lf1/q;

    invoke-direct {v7, v12}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v6, v5

    :cond_5
    invoke-virtual {v7, v10}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v10, v10, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_7
    if-ne v11, v9, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_0

    :cond_9
    iget-boolean v6, v0, Lf1/q;->y:Z

    if-eqz v6, :cond_a

    iget-object v6, p0, Ly1/k;->a:Lt0/b;

    iget-object v7, v6, Lt0/b;->l:[Ljava/lang/Object;

    iget v6, v6, Lt0/b;->n:I

    move v10, v1

    :goto_4
    if-ge v10, v6, :cond_a

    aget-object v11, v7, v10

    check-cast v11, Ly1/j;

    iget-object v12, p0, Ly1/j;->f:Le2/h1;

    invoke-static {v12}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v11, p1, p2}, Ly1/j;->e(Lad/a2;Z)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_a
    iget-boolean p0, v0, Lf1/q;->y:Z

    if-eqz p0, :cond_12

    move-object p0, v5

    :goto_5
    if-eqz v0, :cond_12

    instance-of p1, v0, Le2/v1;

    if-eqz p1, :cond_b

    check-cast v0, Le2/v1;

    sget-object p1, Ly1/m;->m:Ly1/m;

    invoke-interface {v0, v2, p1, v3, v4}, Le2/v1;->w0(Ly1/l;Ly1/m;J)V

    goto :goto_8

    :cond_b
    iget p1, v0, Lf1/q;->n:I

    and-int/2addr p1, v8

    if-eqz p1, :cond_11

    instance-of p1, v0, Le2/k;

    if-eqz p1, :cond_11

    move-object p1, v0

    check-cast p1, Le2/k;

    iget-object p1, p1, Le2/k;->A:Lf1/q;

    move p2, v1

    :goto_6
    if-eqz p1, :cond_10

    iget v6, p1, Lf1/q;->n:I

    and-int/2addr v6, v8

    if-eqz v6, :cond_f

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v9, :cond_c

    move-object v0, p1

    goto :goto_7

    :cond_c
    if-nez p0, :cond_d

    new-instance p0, Lt0/b;

    new-array v6, v8, [Lf1/q;

    invoke-direct {p0, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_d
    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v0, v5

    :cond_e
    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_f
    :goto_7
    iget-object p1, p1, Lf1/q;->q:Lf1/q;

    goto :goto_6

    :cond_10
    if-ne p2, v9, :cond_11

    goto :goto_5

    :cond_11
    :goto_8
    invoke-static {p0}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v0

    goto :goto_5

    :cond_12
    return v9
.end method

.method public final f(JLk/h0;)V
    .locals 3

    iget-object v0, p0, Ly1/j;->d:Lf7/c0;

    invoke-virtual {v0, p1, p2}, Lf7/c0;->f(J)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3, p0}, Lk/h0;->g(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lf7/c0;->l(J)V

    iget-object v0, p0, Ly1/j;->e:Lk/q;

    invoke-virtual {v0, p1, p2}, Lk/q;->j(J)V

    :cond_1
    :goto_0
    iget-object p0, p0, Ly1/k;->a:Lt0/b;

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    check-cast v2, Ly1/j;

    invoke-virtual {v2, p1, p2, p3}, Ly1/j;->f(JLk/h0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node(modifierNode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly1/j;->c:Lf1/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ly1/k;->a:Lt0/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ly1/j;->d:Lf7/c0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
