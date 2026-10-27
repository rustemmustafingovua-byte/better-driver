.class public final Lj0/c;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld1/c0;Lm0/o;Lb0/c2;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj0/c;->m:I

    .line 1
    iput-object p1, p0, Lj0/c;->p:Ljava/lang/Object;

    iput-object p2, p0, Lj0/c;->q:Ljava/lang/Object;

    iput-object p3, p0, Lj0/c;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lj0/d;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj0/c;->m:I

    .line 2
    iput-object p1, p0, Lj0/c;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lj0/c;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj0/c;

    iget-object v1, p0, Lj0/c;->p:Ljava/lang/Object;

    check-cast v1, Ld1/c0;

    iget-object v2, p0, Lj0/c;->q:Ljava/lang/Object;

    check-cast v2, Lm0/o;

    iget-object p0, p0, Lj0/c;->r:Ljava/lang/Object;

    check-cast p0, Lb0/c2;

    invoke-direct {v0, v1, v2, p0, p2}, Lj0/c;-><init>(Ld1/c0;Lm0/o;Lb0/c2;Ly8/c;)V

    iput-object p1, v0, Lj0/c;->o:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lj0/c;

    iget-object p0, p0, Lj0/c;->r:Ljava/lang/Object;

    check-cast p0, Lj0/d;

    invoke-direct {v0, p0, p2}, Lj0/c;-><init>(Lj0/d;Ly8/c;)V

    iput-object p1, v0, Lj0/c;->o:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lj0/c;->m:I

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lj0/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lj0/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lj0/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lj0/c;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lj0/c;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lj0/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lj0/c;->m:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lj0/c;->r:Ljava/lang/Object;

    check-cast v1, Lb0/c2;

    iget-object v2, v0, Lj0/c;->p:Ljava/lang/Object;

    check-cast v2, Ld1/c0;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lj0/c;->n:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v4, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v4, Ly1/j0;

    iput-object v4, v0, Lj0/c;->o:Ljava/lang/Object;

    iput v8, v0, Lj0/c;->n:I

    invoke-static {v4, v0}, Lm0/d1;->i(Ly1/j0;La9/a;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_4

    goto/16 :goto_6

    :cond_4
    :goto_1
    check-cast v9, Ly1/l;

    iget-object v10, v2, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v10, Lf2/p2;

    iget-object v11, v2, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v11, Ly1/u;

    iget-object v12, v9, Ly1/l;->a:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ly1/u;

    if-eqz v11, :cond_5

    iget-wide v14, v12, Ly1/u;->b:J

    move-wide/from16 v16, v14

    iget-wide v13, v11, Ly1/u;->b:J

    sub-long v14, v16, v13

    invoke-interface {v10}, Lf2/p2;->a()J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_5

    iget v13, v11, Ly1/u;->i:I

    invoke-static {v10, v13}, Lr/i0;->j(Lf2/p2;I)F

    move-result v10

    iget-wide v13, v11, Ly1/u;->c:J

    iget-wide v5, v12, Ly1/u;->c:J

    invoke-static {v13, v14, v5, v6}, Ll1/b;->d(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ll1/b;->c(J)F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_5

    iget v5, v2, Ld1/c0;->b:I

    add-int/2addr v5, v8

    iput v5, v2, Ld1/c0;->b:I

    goto :goto_2

    :cond_5
    iput v8, v2, Ld1/c0;->b:I

    :goto_2
    iput-object v12, v2, Ld1/c0;->d:Ljava/lang/Object;

    invoke-static {v9}, Lm0/d1;->v(Ly1/l;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget v10, v9, Ly1/l;->d:I

    and-int/lit8 v10, v10, 0x21

    if-eqz v10, :cond_8

    iget-object v10, v9, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_7

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly1/u;

    invoke-virtual {v14}, Ly1/u;->b()Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lj0/c;->q:Ljava/lang/Object;

    check-cast v1, Lm0/o;

    iput-object v6, v0, Lj0/c;->o:Ljava/lang/Object;

    iput v7, v0, Lj0/c;->n:I

    invoke-static {v4, v1, v2, v9, v0}, Lm0/d1;->x(Ly1/j0;Lm0/o;Ld1/c0;Ly1/l;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_8
    :goto_4
    if-nez v5, :cond_a

    iget v2, v2, Ld1/c0;->b:I

    if-ne v2, v8, :cond_9

    iput-object v6, v0, Lj0/c;->o:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v0, Lj0/c;->n:I

    invoke-static {v4, v1, v9, v0}, Lm0/d1;->z(Ly1/j0;Lb0/c2;Ly1/l;La9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_9
    iput-object v6, v0, Lj0/c;->o:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v0, Lj0/c;->n:I

    invoke-static {v4, v1, v9, v2, v0}, Lm0/d1;->j(Ly1/j0;Lb0/c2;Ly1/l;ILa9/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object v3

    :pswitch_0
    iget-object v1, v0, Lj0/c;->r:Ljava/lang/Object;

    check-cast v1, Lj0/d;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lj0/c;->n:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_e

    if-eq v3, v7, :cond_d

    if-eq v3, v5, :cond_c

    if-ne v3, v4, :cond_b

    iget-object v1, v0, Lj0/c;->p:Ljava/lang/Object;

    check-cast v1, Ly1/u;

    iget-object v3, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move v7, v4

    const/4 v6, 0x0

    move-object/from16 v4, p1

    goto/16 :goto_1c

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v3, v0, Lj0/c;->q:Ljava/lang/Object;

    check-cast v3, Ly1/m;

    iget-object v9, v0, Lj0/c;->p:Ljava/lang/Object;

    check-cast v9, Ly1/u;

    iget-object v10, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v10, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    goto/16 :goto_d

    :cond_d
    iget-object v3, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_7

    :cond_e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lj0/c;->o:Ljava/lang/Object;

    check-cast v3, Ly1/j0;

    sget-object v9, Ly1/m;->l:Ly1/m;

    iput-object v3, v0, Lj0/c;->o:Ljava/lang/Object;

    iput v7, v0, Lj0/c;->n:I

    invoke-static {v3, v7, v9, v0}, Lr/x2;->b(Ly1/j0;ZLy1/m;La9/a;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_f

    goto/16 :goto_20

    :cond_f
    :goto_7
    check-cast v9, Ly1/u;

    iget v10, v9, Ly1/u;->i:I

    iget-wide v11, v9, Ly1/u;->c:J

    if-ne v10, v4, :cond_10

    goto :goto_8

    :cond_10
    const/4 v13, 0x4

    if-ne v10, v13, :cond_36

    :goto_8
    const/16 v10, 0x20

    shr-long v13, v11, v10

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_11

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    iget-object v14, v3, Ly1/j0;->q:Ly1/k0;

    move/from16 p1, v10

    move-wide/from16 v16, v11

    iget-wide v10, v14, Ly1/k0;->I:J

    shr-long v10, v10, p1

    long-to-int v10, v10

    int-to-float v10, v10

    cmpg-float v10, v13, v10

    if-gez v10, :cond_11

    const-wide v10, 0xffffffffL

    and-long v12, v16, v10

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    cmpl-float v13, v13, v15

    if-ltz v13, :cond_11

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    iget-object v13, v3, Ly1/j0;->q:Ly1/k0;

    iget-wide v13, v13, Ly1/k0;->I:J

    and-long/2addr v10, v13

    long-to-int v10, v10

    int-to-float v10, v10

    cmpg-float v10, v12, v10

    if-gez v10, :cond_11

    move v10, v7

    goto :goto_9

    :cond_11
    const/4 v10, 0x0

    :goto_9
    iget-boolean v11, v1, Lj0/d;->C:Z

    if-nez v11, :cond_13

    if-eqz v10, :cond_12

    goto :goto_a

    :cond_12
    sget-object v10, Ly1/m;->m:Ly1/m;

    goto :goto_b

    :cond_13
    :goto_a
    sget-object v10, Ly1/m;->l:Ly1/m;

    :goto_b
    move-object/from16 v18, v10

    move-object v10, v3

    move-object/from16 v3, v18

    :goto_c
    iput-object v10, v0, Lj0/c;->o:Ljava/lang/Object;

    iput-object v9, v0, Lj0/c;->p:Ljava/lang/Object;

    iput-object v3, v0, Lj0/c;->q:Ljava/lang/Object;

    iput v5, v0, Lj0/c;->n:I

    invoke-virtual {v10, v3, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v2, :cond_14

    goto/16 :goto_20

    :cond_14
    :goto_d
    check-cast v11, Ly1/l;

    iget-object v12, v11, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v13, :cond_16

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Ly1/u;

    invoke-virtual {v6}, Ly1/u;->b()Z

    move-result v17

    if-nez v17, :cond_15

    iget-wide v7, v6, Ly1/u;->a:J

    iget-wide v4, v9, Ly1/u;->a:J

    invoke-static {v7, v8, v4, v5}, Ly1/t;->e(JJ)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-boolean v4, v6, Ly1/u;->d:Z

    if-eqz v4, :cond_15

    goto :goto_f

    :cond_15
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    goto :goto_e

    :cond_16
    const/4 v15, 0x0

    :goto_f
    check-cast v15, Ly1/u;

    if-nez v15, :cond_17

    goto :goto_10

    :cond_17
    iget-wide v4, v15, Ly1/u;->b:J

    iget-wide v6, v9, Ly1/u;->b:J

    sub-long/2addr v4, v6

    invoke-virtual {v10}, Ly1/j0;->e()Lf2/p2;

    move-result-object v6

    invoke-interface {v6}, Lf2/p2;->b()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_18

    goto :goto_10

    :cond_18
    iget v4, v11, Ly1/l;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_19

    :goto_10
    const/4 v15, 0x0

    goto :goto_11

    :cond_19
    iget-wide v6, v15, Ly1/u;->c:J

    iget-wide v11, v9, Ly1/u;->c:J

    invoke-static {v6, v7, v11, v12}, Ll1/b;->d(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ll1/b;->c(J)F

    move-result v4

    invoke-virtual {v10}, Ly1/j0;->e()Lf2/p2;

    move-result-object v6

    invoke-interface {v6}, Lf2/p2;->c()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_35

    :goto_11
    if-nez v15, :cond_1a

    goto/16 :goto_1f

    :cond_1a
    iget-boolean v3, v1, Lj0/d;->C:Z

    if-nez v3, :cond_30

    iget-object v3, v1, Lf1/q;->l:Lf1/q;

    const/4 v4, 0x0

    :goto_12
    const/16 v5, 0x10

    if-eqz v3, :cond_22

    instance-of v6, v3, Lk1/b0;

    if-eqz v6, :cond_1b

    check-cast v3, Lk1/b0;

    invoke-static {v3}, Lk1/b0;->U0(Lk1/b0;)Z

    goto/16 :goto_1a

    :cond_1b
    iget v6, v3, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_21

    instance-of v6, v3, Le2/k;

    if-eqz v6, :cond_21

    move-object v6, v3

    check-cast v6, Le2/k;

    iget-object v6, v6, Le2/k;->A:Lf1/q;

    const/4 v7, 0x0

    :goto_13
    if-eqz v6, :cond_20

    iget v8, v6, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1f

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    move-object v3, v6

    goto :goto_14

    :cond_1c
    if-nez v4, :cond_1d

    new-instance v4, Lt0/b;

    new-array v8, v5, [Lf1/q;

    invoke-direct {v4, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_1d
    if-eqz v3, :cond_1e

    invoke-virtual {v4, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_1e
    invoke-virtual {v4, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1f
    :goto_14
    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_13

    :cond_20
    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    goto :goto_12

    :cond_21
    invoke-static {v4}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_12

    :cond_22
    iget-object v3, v1, Lf1/q;->l:Lf1/q;

    iget-boolean v3, v3, Lf1/q;->y:Z

    if-nez v3, :cond_23

    const-string v3, "visitChildren called on an unattached node"

    invoke-static {v3}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_23
    new-instance v3, Lt0/b;

    new-array v4, v5, [Lf1/q;

    invoke-direct {v3, v4}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v4, v1, Lf1/q;->l:Lf1/q;

    iget-object v6, v4, Lf1/q;->q:Lf1/q;

    if-nez v6, :cond_24

    invoke-static {v3, v4}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_15

    :cond_24
    invoke-virtual {v3, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_25
    :goto_15
    iget v4, v3, Lt0/b;->n:I

    if-eqz v4, :cond_30

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/q;

    iget v6, v4, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_26

    invoke-static {v3, v4}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_15

    :cond_26
    :goto_16
    if-eqz v4, :cond_25

    iget v6, v4, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_2f

    const/4 v6, 0x0

    :goto_17
    if-eqz v4, :cond_25

    instance-of v7, v4, Lk1/b0;

    if-eqz v7, :cond_27

    check-cast v4, Lk1/b0;

    invoke-static {v4}, Lk1/b0;->U0(Lk1/b0;)Z

    goto :goto_1a

    :cond_27
    iget v7, v4, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_2d

    instance-of v7, v4, Le2/k;

    if-eqz v7, :cond_2d

    move-object v7, v4

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    const/4 v8, 0x0

    :goto_18
    if-eqz v7, :cond_2c

    iget v11, v7, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_2b

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_28

    move-object v4, v7

    goto :goto_19

    :cond_28
    if-nez v6, :cond_29

    new-instance v6, Lt0/b;

    new-array v11, v5, [Lf1/q;

    invoke-direct {v6, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_29
    if-eqz v4, :cond_2a

    invoke-virtual {v6, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_2a
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2b
    :goto_19
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_18

    :cond_2c
    const/4 v11, 0x1

    if-ne v8, v11, :cond_2e

    goto :goto_17

    :cond_2d
    const/4 v11, 0x1

    :cond_2e
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_17

    :cond_2f
    const/4 v11, 0x1

    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_16

    :cond_30
    :goto_1a
    iget-object v1, v1, Lj0/d;->B:Li9/a;

    invoke-interface {v1}, Li9/a;->invoke()Ljava/lang/Object;

    invoke-virtual {v15}, Ly1/u;->a()V

    move-object v1, v9

    move-object v3, v10

    :goto_1b
    sget-object v4, Ly1/m;->l:Ly1/m;

    iput-object v3, v0, Lj0/c;->o:Ljava/lang/Object;

    iput-object v1, v0, Lj0/c;->p:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lj0/c;->q:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lj0/c;->n:I

    invoke-virtual {v3, v4, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_31

    goto :goto_20

    :cond_31
    :goto_1c
    check-cast v4, Ly1/l;

    iget-object v4, v4, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_1d
    if-ge v8, v5, :cond_33

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ly1/u;

    invoke-virtual {v10}, Ly1/u;->b()Z

    move-result v11

    if-nez v11, :cond_32

    iget-wide v11, v10, Ly1/u;->a:J

    iget-wide v13, v1, Ly1/u;->a:J

    invoke-static {v11, v12, v13, v14}, Ly1/t;->e(JJ)Z

    move-result v11

    if-eqz v11, :cond_32

    iget-boolean v10, v10, Ly1/u;->d:Z

    if-eqz v10, :cond_32

    goto :goto_1e

    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_33
    move-object v9, v6

    :goto_1e
    check-cast v9, Ly1/u;

    if-nez v9, :cond_34

    goto :goto_1f

    :cond_34
    invoke-virtual {v9}, Ly1/u;->a()V

    goto :goto_1b

    :cond_35
    const/4 v4, 0x3

    const/4 v7, 0x1

    goto/16 :goto_c

    :cond_36
    :goto_1f
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_20
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
