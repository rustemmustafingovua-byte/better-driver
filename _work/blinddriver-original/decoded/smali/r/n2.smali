.class public final Lr/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr/h2;

.field public b:Lp/j;

.field public c:Lr/k;

.field public d:Lr/m1;

.field public e:Z

.field public f:Lx1/d;

.field public final g:Lr/g2;

.field public final h:Lr/b2;

.field public i:Z

.field public j:I

.field public k:Lr/s1;

.field public final l:Lr/l2;

.field public final m:Lb0/a;


# direct methods
.method public constructor <init>(Lr/h2;Lp/j;Lr/k;Lr/m1;ZLx1/d;Lr/g2;Lr/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr/n2;->a:Lr/h2;

    iput-object p2, p0, Lr/n2;->b:Lp/j;

    iput-object p3, p0, Lr/n2;->c:Lr/k;

    iput-object p4, p0, Lr/n2;->d:Lr/m1;

    iput-boolean p5, p0, Lr/n2;->e:Z

    iput-object p6, p0, Lr/n2;->f:Lx1/d;

    iput-object p7, p0, Lr/n2;->g:Lr/g2;

    iput-object p8, p0, Lr/n2;->h:Lr/b2;

    const/4 p1, 0x1

    iput p1, p0, Lr/n2;->j:I

    sget-object p1, Lr/z1;->b:Lr/w1;

    iput-object p1, p0, Lr/n2;->k:Lr/s1;

    new-instance p1, Lr/l2;

    invoke-direct {p1, p0}, Lr/l2;-><init>(Lr/n2;)V

    iput-object p1, p0, Lr/n2;->l:Lr/l2;

    new-instance p1, Lb0/a;

    const/16 p2, 0x1d

    invoke-direct {p1, p2, p0}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lr/n2;->m:Lb0/a;

    return-void
.end method


# virtual methods
.method public final a(JLa9/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lr/i2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/i2;

    iget v1, v0, Lr/i2;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/i2;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/i2;

    invoke-direct {v0, p0, p3}, Lr/i2;-><init>(Lr/n2;La9/c;)V

    :goto_0
    iget-object p3, v0, Lr/i2;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/i2;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lr/i2;->l:Lj9/x;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    new-instance v7, Lj9/x;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v7, Lj9/x;->l:J

    iput-boolean v4, p0, Lr/n2;->i:Z

    :try_start_1
    sget-object p3, Lp/n1;->l:Lp/n1;

    new-instance v5, Lr/k2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v10, 0x0

    move-object v6, p0

    move-wide v8, p1

    :try_start_2
    invoke-direct/range {v5 .. v10}, Lr/k2;-><init>(Lr/n2;Lj9/x;JLy8/c;)V

    iput-object v7, v0, Lr/i2;->l:Lj9/x;

    iput v4, v0, Lr/i2;->o:I

    invoke-virtual {v6, p3, v5, v0}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, v7

    :goto_1
    iput-boolean v3, v6, Lr/n2;->i:Z

    iget-wide p0, p1, Lj9/x;->l:J

    new-instance p2, Lb3/q;

    invoke-direct {p2, p0, p1}, Lb3/q;-><init>(J)V

    return-object p2

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto :goto_2

    :goto_3
    iput-boolean v3, v6, Lr/n2;->i:Z

    throw p1
.end method

.method public final b(JZLa9/i;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lr/n2;->c:Lr/k;

    sget-object v1, Lr/z1;->a:Lp2/y;

    if-nez p3, :cond_4

    :cond_0
    iget-object p3, p0, Lr/n2;->d:Lr/m1;

    sget-object v1, Lr/m1;->m:Lr/m1;

    const/4 v2, 0x0

    if-ne p3, v1, :cond_1

    const/4 p3, 0x1

    :goto_0
    invoke-static {p1, p2, v2, v2, p3}, Lb3/q;->a(JFFI)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    const/4 p3, 0x2

    goto :goto_0

    :goto_1
    new-instance p3, Lr/m2;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    iget-object v1, p0, Lr/n2;->b:Lp/j;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lr/n2;->a:Lr/h2;

    invoke-interface {v2}, Lr/h2;->d()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lr/n2;->a:Lr/h2;

    invoke-interface {v2}, Lr/h2;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v1, p1, p2, p3, p4}, Lp/j;->b(JLr/m2;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_3
    new-instance p3, Lr/m2;

    invoke-direct {p3, p0, p4}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    iput-wide p1, p3, Lr/m2;->n:J

    invoke-virtual {p3, v0}, Lr/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    return-object v0
.end method

.method public final c(Lr/s1;JI)J
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget-object v3, v0, Lr/n2;->f:Lx1/d;

    iget-object v3, v3, Lx1/d;->a:Lx1/i;

    const/16 v4, 0x10

    const-class v5, Lx1/i;

    const-string v6, "visitAncestors called on an unattached node"

    const/high16 v7, 0x40000

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_c

    iget-boolean v11, v3, Lf1/q;->y:Z

    if-eqz v11, :cond_c

    iget-object v11, v3, Lf1/q;->l:Lf1/q;

    iget-boolean v11, v11, Lf1/q;->y:Z

    if-nez v11, :cond_0

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v11, v3, Lf1/q;->l:Lf1/q;

    iget-object v11, v11, Lf1/q;->p:Lf1/q;

    invoke-static {v3}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_b

    iget-object v13, v12, Le2/g0;->R:Le2/c1;

    iget-object v13, v13, Le2/c1;->f:Lf1/q;

    iget v13, v13, Lf1/q;->o:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_9

    :goto_1
    if-eqz v11, :cond_9

    iget v13, v11, Lf1/q;->n:I

    and-int/2addr v13, v7

    if-eqz v13, :cond_8

    move-object v14, v10

    move-object v13, v11

    :goto_2
    if-eqz v13, :cond_8

    instance-of v15, v13, Le2/e2;

    if-eqz v15, :cond_1

    check-cast v13, Le2/e2;

    invoke-virtual {v3}, Lx1/i;->i()Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v7

    invoke-interface {v13}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v15, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v5, v7, :cond_7

    goto/16 :goto_7

    :cond_1
    move/from16 v16, v7

    iget v7, v13, Lf1/q;->n:I

    and-int v7, v7, v16

    if-eqz v7, :cond_7

    instance-of v7, v13, Le2/k;

    if-eqz v7, :cond_7

    move-object v7, v13

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    const/4 v15, 0x0

    :goto_3
    if-eqz v7, :cond_6

    iget v8, v7, Lf1/q;->n:I

    and-int v8, v8, v16

    if-eqz v8, :cond_5

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v9, :cond_2

    move-object v13, v7

    goto :goto_4

    :cond_2
    if-nez v14, :cond_3

    new-instance v14, Lt0/b;

    new-array v8, v4, [Lf1/q;

    invoke-direct {v14, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v14, v13}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v13, v10

    :cond_4
    invoke-virtual {v14, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v15, v9, :cond_7

    :goto_5
    move/from16 v7, v16

    goto :goto_2

    :cond_7
    invoke-static {v14}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v13

    goto :goto_5

    :cond_8
    move/from16 v16, v7

    iget-object v11, v11, Lf1/q;->p:Lf1/q;

    move/from16 v7, v16

    goto :goto_1

    :cond_9
    move/from16 v16, v7

    invoke-virtual {v12}, Le2/g0;->v()Le2/g0;

    move-result-object v12

    if-eqz v12, :cond_a

    iget-object v7, v12, Le2/g0;->R:Le2/c1;

    if-eqz v7, :cond_a

    iget-object v7, v7, Le2/c1;->e:Le2/b2;

    move-object v11, v7

    goto :goto_6

    :cond_a
    move-object v11, v10

    :goto_6
    move/from16 v7, v16

    goto/16 :goto_0

    :cond_b
    move/from16 v16, v7

    move-object v13, v10

    :goto_7
    check-cast v13, Lx1/i;

    goto :goto_8

    :cond_c
    move/from16 v16, v7

    move-object v13, v10

    :goto_8
    move/from16 v3, p4

    if-eqz v13, :cond_d

    invoke-virtual {v13, v3, v1, v2}, Lx1/i;->J(IJ)J

    move-result-wide v11

    goto :goto_9

    :cond_d
    const-wide/16 v11, 0x0

    :goto_9
    invoke-static {v1, v2, v11, v12}, Ll1/b;->d(JJ)J

    move-result-wide v1

    iget-object v13, v0, Lr/n2;->d:Lr/m1;

    sget-object v14, Lr/m1;->m:Lr/m1;

    const/4 v15, 0x0

    if-ne v13, v14, :cond_e

    invoke-static {v1, v2, v15, v9}, Ll1/b;->a(JFI)J

    move-result-wide v13

    goto :goto_a

    :cond_e
    const/4 v13, 0x2

    invoke-static {v1, v2, v15, v13}, Ll1/b;->a(JFI)J

    move-result-wide v13

    :goto_a
    invoke-virtual {v0, v13, v14}, Lr/n2;->e(J)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lr/n2;->g(J)F

    move-result v13

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Lr/s1;->a(F)F

    move-result v13

    invoke-virtual {v0, v13}, Lr/n2;->h(F)J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Lr/n2;->e(J)J

    move-result-wide v13

    iget-object v15, v0, Lr/n2;->g:Lr/g2;

    iget-boolean v7, v15, Lf1/q;->y:Z

    if-nez v7, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v15}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v7

    check-cast v7, Lf2/y;

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    :try_start_0
    sget-object v8, Lf2/y;->a1:Ljava/lang/reflect/Method;

    if-nez v8, :cond_10

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v15, "dispatchOnScrollChanged"

    invoke-virtual {v8, v15, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-object v8, Lf2/y;->a1:Ljava/lang/reflect/Method;

    :cond_10
    sget-object v8, Lf2/y;->a1:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_11

    invoke-virtual {v8, v7, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_11
    :goto_b
    invoke-static {v1, v2, v13, v14}, Ll1/b;->d(JJ)J

    move-result-wide v21

    iget-object v0, v0, Lr/n2;->f:Lx1/d;

    iget-object v0, v0, Lx1/d;->a:Lx1/i;

    if-eqz v0, :cond_1e

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v1, v1, Lf1/q;->y:Z

    if-nez v1, :cond_12

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v1, v0, Lf1/q;->l:Lf1/q;

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v2

    :goto_c
    if-eqz v2, :cond_1d

    iget-object v6, v2, Le2/g0;->R:Le2/c1;

    iget-object v6, v6, Le2/c1;->f:Lf1/q;

    iget v6, v6, Lf1/q;->o:I

    and-int v6, v6, v16

    if-eqz v6, :cond_1b

    :goto_d
    if-eqz v1, :cond_1b

    iget v6, v1, Lf1/q;->n:I

    and-int v6, v6, v16

    if-eqz v6, :cond_1a

    move-object v6, v1

    move-object v7, v10

    :goto_e
    if-eqz v6, :cond_1a

    instance-of v8, v6, Le2/e2;

    if-eqz v8, :cond_13

    check-cast v6, Le2/e2;

    invoke-virtual {v0}, Lx1/i;->i()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Le2/e2;->i()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v8, v15}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v5, v8, :cond_19

    move-object v10, v6

    goto :goto_13

    :cond_13
    iget v8, v6, Lf1/q;->n:I

    and-int v8, v8, v16

    if-eqz v8, :cond_19

    instance-of v8, v6, Le2/k;

    if-eqz v8, :cond_19

    move-object v8, v6

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    const/4 v15, 0x0

    :goto_f
    if-eqz v8, :cond_18

    iget v10, v8, Lf1/q;->n:I

    and-int v10, v10, v16

    if-eqz v10, :cond_17

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v9, :cond_14

    move-object v6, v8

    goto :goto_10

    :cond_14
    if-nez v7, :cond_15

    new-instance v7, Lt0/b;

    new-array v10, v4, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_15
    if-eqz v6, :cond_16

    invoke-virtual {v7, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v6, 0x0

    :cond_16
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_17
    :goto_10
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    const/4 v10, 0x0

    goto :goto_f

    :cond_18
    if-ne v15, v9, :cond_19

    :goto_11
    const/4 v10, 0x0

    goto :goto_e

    :cond_19
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v6

    goto :goto_11

    :cond_1a
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    const/4 v10, 0x0

    goto :goto_d

    :cond_1b
    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v1, v2, Le2/g0;->R:Le2/c1;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Le2/c1;->e:Le2/b2;

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    :goto_12
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_1d
    const/4 v10, 0x0

    :goto_13
    check-cast v10, Lx1/i;

    move-object/from16 v17, v10

    goto :goto_14

    :cond_1e
    const/16 v17, 0x0

    :goto_14
    if-eqz v17, :cond_1f

    move/from16 v18, v3

    move-wide/from16 v19, v13

    invoke-virtual/range {v17 .. v22}, Lx1/i;->f0(IJJ)J

    move-result-wide v7

    move-wide/from16 v0, v19

    goto :goto_15

    :cond_1f
    move-wide v0, v13

    const-wide/16 v7, 0x0

    :goto_15
    invoke-static {v11, v12, v0, v1}, Ll1/b;->e(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, v7, v8}, Ll1/b;->e(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(F)F
    .locals 0

    iget-boolean p0, p0, Lr/n2;->e:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final e(J)J
    .locals 0

    iget-boolean p0, p0, Lr/n2;->e:Z

    if-eqz p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    invoke-static {p0, p1, p2}, Ll1/b;->f(FJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public final f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr/n2;->a:Lr/h2;

    new-instance v1, Landroidx/lifecycle/m0;

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v1, p0, p2, v2, v3}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-interface {v0, p1, v1, p3}, Lr/h2;->b(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final g(J)F
    .locals 2

    iget-object p0, p0, Lr/n2;->d:Lr/m1;

    sget-object v0, Lr/m1;->m:Lr/m1;

    if-ne p0, v0, :cond_0

    const/16 p0, 0x20

    shr-long p0, p1, p0

    :goto_0
    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    goto :goto_0
.end method

.method public final h(F)J
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lr/n2;->d:Lr/m1;

    sget-object v1, Lr/m1;->m:Lr/m1;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-ne p0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p0, v4

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long/2addr v0, v4

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final i(J)F
    .locals 5

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v2, 0x20

    shr-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v1, v1

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float p2, v1

    float-to-double v1, p2

    const-wide v3, 0x3fe921fb54442d18L    # 0.7853981633974483

    cmpl-double p2, v1, v3

    const/4 v1, 0x0

    if-ltz p2, :cond_1

    iget-object p0, p0, Lr/n2;->d:Lr/m1;

    sget-object p1, Lr/m1;->l:Lr/m1;

    if-ne p0, p1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lr/n2;->d:Lr/m1;

    sget-object p2, Lr/m1;->m:Lr/m1;

    if-ne p0, p2, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :cond_2
    return v1
.end method
