.class public final Lx1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lx1/i;

.field public b:Lx1/i;

.field public c:Lj9/o;

.field public d:Lu9/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc2/l0;

    const/16 v1, 0x13

    invoke-direct {v0, v1, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lx1/d;->c:Lj9/o;

    return-void
.end method


# virtual methods
.method public final a(JJLa9/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Lx1/b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/b;

    iget v3, v2, Lx1/b;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/b;->n:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lx1/b;

    invoke-direct {v2, v0, v1}, Lx1/b;-><init>(Lx1/d;La9/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v8, Lx1/b;->l:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v8, Lx1/b;->n:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_14

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_3
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v0, Lx1/d;->a:Lx1/i;

    const/16 v3, 0x10

    const-class v6, Lx1/i;

    const-string v7, "visitAncestors called on an unattached node"

    const/high16 v9, 0x40000

    if-eqz v1, :cond_10

    iget-boolean v12, v1, Lf1/q;->y:Z

    if-eqz v12, :cond_10

    iget-object v12, v1, Lf1/q;->l:Lf1/q;

    iget-boolean v12, v12, Lf1/q;->y:Z

    if-nez v12, :cond_4

    invoke-static {v7}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v12, v1, Lf1/q;->l:Lf1/q;

    iget-object v12, v12, Lf1/q;->p:Lf1/q;

    invoke-static {v1}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v13

    :goto_2
    if-eqz v13, :cond_f

    iget-object v14, v13, Le2/g0;->R:Le2/c1;

    iget-object v14, v14, Le2/c1;->f:Lf1/q;

    iget v14, v14, Lf1/q;->o:I

    and-int/2addr v14, v9

    if-eqz v14, :cond_d

    :goto_3
    if-eqz v12, :cond_d

    iget v14, v12, Lf1/q;->n:I

    and-int/2addr v14, v9

    if-eqz v14, :cond_c

    move-object v14, v12

    const/4 v15, 0x0

    :goto_4
    if-eqz v14, :cond_c

    move/from16 p5, v9

    instance-of v9, v14, Le2/e2;

    if-eqz v9, :cond_5

    check-cast v14, Le2/e2;

    invoke-virtual {v1}, Lx1/i;->i()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v14}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v6, v9, :cond_b

    goto/16 :goto_9

    :cond_5
    iget v9, v14, Lf1/q;->n:I

    and-int v9, v9, p5

    if-eqz v9, :cond_b

    instance-of v9, v14, Le2/k;

    if-eqz v9, :cond_b

    move-object v9, v14

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    const/4 v10, 0x0

    :goto_5
    if-eqz v9, :cond_a

    iget v11, v9, Lf1/q;->n:I

    and-int v11, v11, p5

    if-eqz v11, :cond_9

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_6

    move-object v14, v9

    goto :goto_6

    :cond_6
    if-nez v15, :cond_7

    new-instance v15, Lt0/b;

    new-array v11, v3, [Lf1/q;

    invoke-direct {v15, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v15, v14}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v14, 0x0

    :cond_8
    invoke-virtual {v15, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_6
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_a
    if-ne v10, v5, :cond_b

    :goto_7
    move/from16 v9, p5

    goto :goto_4

    :cond_b
    invoke-static {v15}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v14

    goto :goto_7

    :cond_c
    move/from16 p5, v9

    iget-object v12, v12, Lf1/q;->p:Lf1/q;

    move/from16 v9, p5

    goto :goto_3

    :cond_d
    move/from16 p5, v9

    invoke-virtual {v13}, Le2/g0;->v()Le2/g0;

    move-result-object v13

    if-eqz v13, :cond_e

    iget-object v9, v13, Le2/g0;->R:Le2/c1;

    if-eqz v9, :cond_e

    iget-object v9, v9, Le2/c1;->e:Le2/b2;

    move-object v12, v9

    goto :goto_8

    :cond_e
    const/4 v12, 0x0

    :goto_8
    move/from16 v9, p5

    goto/16 :goto_2

    :cond_f
    move/from16 p5, v9

    const/4 v14, 0x0

    :goto_9
    check-cast v14, Lx1/i;

    goto :goto_a

    :cond_10
    move/from16 p5, v9

    const/4 v14, 0x0

    :goto_a
    const-wide/16 v9, 0x0

    if-nez v14, :cond_12

    iget-object v3, v0, Lx1/d;->b:Lx1/i;

    if-eqz v3, :cond_21

    iput v5, v8, Lx1/b;->n:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lx1/i;->j(JJLy8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_11

    goto/16 :goto_13

    :cond_11
    :goto_b
    check-cast v1, Lb3/q;

    iget-wide v9, v1, Lb3/q;->a:J

    goto/16 :goto_15

    :cond_12
    iget-object v0, v0, Lx1/d;->a:Lx1/i;

    if-eqz v0, :cond_1f

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_13

    invoke-static {v7}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v7

    :goto_c
    if-eqz v7, :cond_1e

    iget-object v11, v7, Le2/g0;->R:Le2/c1;

    iget-object v11, v11, Le2/c1;->f:Lf1/q;

    iget v11, v11, Lf1/q;->o:I

    and-int v11, v11, p5

    if-eqz v11, :cond_1c

    :goto_d
    if-eqz v1, :cond_1c

    iget v11, v1, Lf1/q;->n:I

    and-int v11, v11, p5

    if-eqz v11, :cond_1b

    move-object v11, v1

    const/4 v12, 0x0

    :goto_e
    if-eqz v11, :cond_1b

    instance-of v13, v11, Le2/e2;

    if-eqz v13, :cond_14

    check-cast v11, Le2/e2;

    invoke-virtual {v0}, Lx1/i;->i()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    if-ne v6, v13, :cond_1a

    goto :goto_11

    :cond_14
    iget v13, v11, Lf1/q;->n:I

    and-int v13, v13, p5

    if-eqz v13, :cond_1a

    instance-of v13, v11, Le2/k;

    if-eqz v13, :cond_1a

    move-object v13, v11

    check-cast v13, Le2/k;

    iget-object v13, v13, Le2/k;->A:Lf1/q;

    const/4 v14, 0x0

    :goto_f
    if-eqz v13, :cond_19

    iget v15, v13, Lf1/q;->n:I

    and-int v15, v15, p5

    if-eqz v15, :cond_18

    add-int/lit8 v14, v14, 0x1

    if-ne v14, v5, :cond_15

    move-object v11, v13

    goto :goto_10

    :cond_15
    if-nez v12, :cond_16

    new-instance v12, Lt0/b;

    new-array v15, v3, [Lf1/q;

    invoke-direct {v12, v15}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_16
    if-eqz v11, :cond_17

    invoke-virtual {v12, v11}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v11, 0x0

    :cond_17
    invoke-virtual {v12, v13}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_18
    :goto_10
    iget-object v13, v13, Lf1/q;->q:Lf1/q;

    goto :goto_f

    :cond_19
    if-ne v14, v5, :cond_1a

    goto :goto_e

    :cond_1a
    invoke-static {v12}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v11

    goto :goto_e

    :cond_1b
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_d

    :cond_1c
    invoke-virtual {v7}, Le2/g0;->v()Le2/g0;

    move-result-object v7

    if-eqz v7, :cond_1d

    iget-object v1, v7, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_1d

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto :goto_c

    :cond_1d
    const/4 v1, 0x0

    goto :goto_c

    :cond_1e
    const/4 v11, 0x0

    :goto_11
    check-cast v11, Lx1/i;

    move-object v3, v11

    goto :goto_12

    :cond_1f
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_21

    iput v4, v8, Lx1/b;->n:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lx1/i;->j(JJLy8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_20

    :goto_13
    return-object v2

    :cond_20
    :goto_14
    check-cast v1, Lb3/q;

    iget-wide v9, v1, Lb3/q;->a:J

    :cond_21
    :goto_15
    new-instance v0, Lb3/q;

    invoke-direct {v0, v9, v10}, Lb3/q;-><init>(J)V

    return-object v0
.end method

.method public final b(JLa9/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lx1/c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lx1/c;

    iget v1, v0, Lx1/c;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx1/c;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx1/c;

    invoke-direct {v0, p0, p3}, Lx1/c;-><init>(Lx1/d;La9/c;)V

    :goto_0
    iget-object p3, v0, Lx1/c;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx1/c;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lx1/d;->a:Lx1/i;

    const/4 p3, 0x0

    if-eqz p0, :cond_f

    iget-boolean v2, p0, Lf1/q;->y:Z

    if-eqz v2, :cond_f

    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_3

    const-string v2, "visitAncestors called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_e

    iget-object v5, v4, Le2/g0;->R:Le2/c1;

    iget-object v5, v5, Le2/c1;->f:Lf1/q;

    iget v5, v5, Lf1/q;->o:I

    const/high16 v6, 0x40000

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    :goto_2
    if-eqz v2, :cond_c

    iget v5, v2, Lf1/q;->n:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    move-object v7, p3

    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_b

    instance-of v8, v5, Le2/e2;

    if-eqz v8, :cond_4

    check-cast v5, Le2/e2;

    invoke-virtual {p0}, Lx1/i;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-class v8, Lx1/i;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v8, v9, :cond_a

    move-object p3, v5

    goto :goto_6

    :cond_4
    iget v8, v5, Lf1/q;->n:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_a

    instance-of v8, v5, Le2/k;

    if-eqz v8, :cond_a

    move-object v8, v5

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    const/4 v9, 0x0

    :goto_4
    if-eqz v8, :cond_9

    iget v10, v8, Lf1/q;->n:I

    and-int/2addr v10, v6

    if-eqz v10, :cond_8

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v3, :cond_5

    move-object v5, v8

    goto :goto_5

    :cond_5
    if-nez v7, :cond_6

    new-instance v7, Lt0/b;

    const/16 v10, 0x10

    new-array v10, v10, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v7, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, p3

    :cond_7
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_9
    if-ne v9, v3, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_3

    :cond_b
    iget-object v2, v2, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_c
    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v2, v4, Le2/g0;->R:Le2/c1;

    if-eqz v2, :cond_d

    iget-object v2, v2, Le2/c1;->e:Le2/b2;

    goto/16 :goto_1

    :cond_d
    move-object v2, p3

    goto/16 :goto_1

    :cond_e
    :goto_6
    check-cast p3, Lx1/i;

    :cond_f
    if-eqz p3, :cond_11

    iput v3, v0, Lx1/c;->n:I

    invoke-virtual {p3, p1, p2, v0}, Lx1/i;->y(JLy8/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_10

    return-object v1

    :cond_10
    :goto_7
    check-cast p3, Lb3/q;

    iget-wide p0, p3, Lb3/q;->a:J

    goto :goto_8

    :cond_11
    const-wide/16 p0, 0x0

    :goto_8
    new-instance p2, Lb3/q;

    invoke-direct {p2, p0, p1}, Lb3/q;-><init>(J)V

    return-object p2
.end method

.method public final c()Lu9/t;
    .locals 1

    iget-object p0, p0, Lx1/d;->c:Lj9/o;

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu9/t;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "in order to access nested coroutine scope you need to attach dispatcher to the `Modifier.nestedScroll` first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
