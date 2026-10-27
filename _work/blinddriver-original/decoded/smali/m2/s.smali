.class public abstract Lm2/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll1/c;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v1, v2, v2}, Ll1/c;-><init>(FFFF)V

    sput-object v0, Lm2/s;->a:Ll1/c;

    return-void
.end method

.method public static final a(Le2/g0;Z)Lm2/p;
    .locals 8

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->f:Lf1/q;

    iget v1, v0, Lf1/q;->o:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    :goto_0
    if-eqz v0, :cond_8

    iget v1, v0, Lf1/q;->n:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move-object v1, v0

    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_7

    instance-of v4, v1, Le2/z1;

    if-eqz v4, :cond_0

    move-object v2, v1

    goto :goto_4

    :cond_0
    iget v4, v1, Lf1/q;->n:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    instance-of v4, v1, Le2/k;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-eqz v4, :cond_5

    iget v7, v4, Lf1/q;->n:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_1

    move-object v1, v4

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Lt0/b;

    const/16 v6, 0x10

    new-array v6, v6, [Lf1/q;

    invoke-direct {v3, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v3, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_5
    if-ne v5, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget v1, v0, Lf1/q;->o:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_8
    :goto_4
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Le2/z1;

    check-cast v2, Lf1/q;

    iget-object v0, v2, Lf1/q;->l:Lf1/q;

    invoke-virtual {p0}, Le2/g0;->x()Lm2/m;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, Lm2/m;

    invoke-direct {v1}, Lm2/m;-><init>()V

    :cond_9
    new-instance v2, Lm2/p;

    invoke-direct {v2, v0, p1, p0, v1}, Lm2/p;-><init>(Lf1/q;ZLe2/g0;Lm2/m;)V

    return-object v2
.end method

.method public static final b(Lm2/r;Li9/c;)Lk/x;
    .locals 7

    const-string v0, "getAllUncoveredSemanticsNodesToIntObjectMap"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lm2/r;->a()Lm2/p;

    move-result-object v2

    iget-object p0, v2, Lm2/p;->c:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lk/x;

    const/16 p0, 0x30

    invoke-direct {v3, p0}, Lk/x;-><init>(I)V

    new-instance v1, Lm2/j;

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lm2/j;-><init>(I)V

    invoke-virtual {v2}, Lm2/p;->g()Ll1/c;

    move-result-object p0

    invoke-static {p0}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object p0

    iget-object v0, v1, Lm2/j;->m:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Region;

    iget v4, p0, Lb3/k;->a:I

    iget v5, p0, Lb3/k;->b:I

    iget v6, p0, Lb3/k;->c:I

    iget p0, p0, Lb3/k;->d:I

    invoke-virtual {v0, v4, v5, v6, p0}, Landroid/graphics/Region;->set(IIII)Z

    new-instance v6, Lm2/j;

    const/4 p0, 0x0

    invoke-direct {v6, p0}, Lm2/j;-><init>(I)V

    move-object v5, v2

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lm2/s;->c(Lm2/j;Lm2/p;Lk/x;Li9/c;Lm2/p;Lm2/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v3

    :cond_1
    :goto_0
    :try_start_1
    sget-object p0, Lk/l;->a:Lk/x;

    const-string p1, "null cannot be cast to non-null type androidx.collection.IntObjectMap<V of androidx.collection.IntObjectMapKt.emptyIntObjectMap>"

    invoke-static {p0, p1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static final c(Lm2/j;Lm2/p;Lk/x;Li9/c;Lm2/p;Lm2/j;)V
    .locals 16

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    move-object/from16 v1, p1

    iget v0, v1, Lm2/p;->g:I

    move-object/from16 v5, p5

    iget-object v3, v5, Lm2/j;->m:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Region;

    iget-object v4, v6, Lm2/p;->c:Le2/g0;

    iget v7, v6, Lm2/p;->g:I

    invoke-virtual {v4}, Le2/g0;->I()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Le2/g0;->H()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    move v11, v9

    :goto_0
    move-object/from16 v8, p0

    goto :goto_2

    :cond_1
    :goto_1
    move v11, v10

    goto :goto_0

    :goto_2
    iget-object v12, v8, Lm2/j;->m:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Region;

    invoke-virtual {v12}, Landroid/graphics/Region;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    if-ne v7, v0, :cond_f

    :cond_2
    if-eqz v11, :cond_3

    iget-boolean v11, v6, Lm2/p;->e:Z

    if-nez v11, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v6}, Lm2/p;->f()Le2/z1;

    move-result-object v11

    if-nez v11, :cond_4

    iget-object v4, v4, Le2/g0;->R:Le2/c1;

    iget-object v4, v4, Le2/c1;->c:Le2/s;

    invoke-virtual {v4}, Le2/h1;->p1()Ll1/c;

    move-result-object v4

    goto :goto_3

    :cond_4
    check-cast v11, Lf1/q;

    iget-object v4, v11, Lf1/q;->l:Lf1/q;

    iget-object v11, v6, Lm2/p;->d:Lm2/m;

    sget-object v13, Lm2/l;->b:Lm2/w;

    iget-object v11, v11, Lm2/m;->l:Lk/m0;

    invoke-virtual {v11, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    const/4 v11, 0x0

    :cond_5
    if-eqz v11, :cond_6

    move v9, v10

    :cond_6
    iget-object v11, v4, Lf1/q;->l:Lf1/q;

    iget-boolean v11, v11, Lf1/q;->y:Z

    if-nez v11, :cond_7

    sget-object v4, Ll1/c;->e:Ll1/c;

    goto :goto_3

    :cond_7
    const/16 v11, 0x8

    if-nez v9, :cond_8

    invoke-static {v4, v11}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v4

    invoke-static {v4}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v9

    invoke-interface {v9, v4, v10}, Lc2/u;->U(Lc2/u;Z)Ll1/c;

    move-result-object v4

    goto :goto_3

    :cond_8
    invoke-static {v4, v11}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v4

    invoke-virtual {v4}, Le2/h1;->p1()Ll1/c;

    move-result-object v4

    :goto_3
    invoke-static {v4}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object v9

    iget v4, v9, Lb3/k;->a:I

    iget v11, v9, Lb3/k;->b:I

    iget v13, v9, Lb3/k;->c:I

    iget v14, v9, Lb3/k;->d:I

    invoke-virtual {v3, v4, v11, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    const/4 v11, -0x1

    if-ne v7, v0, :cond_9

    move v7, v11

    :cond_9
    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v12, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lm2/q;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Lb3/k;

    iget v13, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->top:I

    iget v15, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v13, v14, v15, v3}, Lb3/k;-><init>(IIII)V

    invoke-direct {v0, v6, v4}, Lm2/q;-><init>(Lm2/p;Lb3/k;)V

    invoke-virtual {v2, v7, v0}, Lk/x;->h(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0, v6}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    move v10, v0

    :goto_4
    if-ge v11, v10, :cond_b

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-interface {v3, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lm2/p;

    move-object v0, v8

    invoke-static/range {v0 .. v5}, Lm2/s;->c(Lm2/j;Lm2/p;Lk/x;Li9/c;Lm2/p;Lm2/j;)V

    :goto_5
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    goto :goto_4

    :cond_b
    invoke-static {v6}, Lm2/s;->f(Lm2/p;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v9, Lb3/k;->a:I

    iget v1, v9, Lb3/k;->b:I

    iget v2, v9, Lb3/k;->c:I

    iget v3, v9, Lb3/k;->d:I

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p0, v12

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return-void

    :cond_c
    iget-boolean v0, v6, Lm2/p;->e:Z

    if-eqz v0, :cond_e

    invoke-virtual {v6}, Lm2/p;->l()Lm2/p;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, v0, Lm2/p;->c:Le2/g0;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Le2/g0;->I()Z

    move-result v1

    if-ne v1, v10, :cond_d

    invoke-virtual {v0}, Lm2/p;->g()Ll1/c;

    move-result-object v0

    goto :goto_6

    :cond_d
    sget-object v0, Lm2/s;->a:Ll1/c;

    :goto_6
    new-instance v1, Lm2/q;

    invoke-static {v0}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object v0

    invoke-direct {v1, v6, v0}, Lm2/q;-><init>(Lm2/p;Lb3/k;)V

    invoke-virtual {v2, v7, v1}, Lk/x;->h(ILjava/lang/Object;)V

    return-void

    :cond_e
    if-ne v7, v11, :cond_f

    new-instance v0, Lm2/q;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Lb3/k;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v4, v5, v8, v1}, Lb3/k;-><init>(IIII)V

    invoke-direct {v0, v6, v3}, Lm2/q;-><init>(Lm2/p;Lb3/k;)V

    invoke-virtual {v2, v7, v0}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_f
    :goto_7
    return-void
.end method

.method public static final d(Lm2/m;Lm2/w;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static final e(Lm2/p;)Z
    .locals 3

    invoke-virtual {p0}, Lm2/p;->d()Le2/h1;

    move-result-object v0

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le2/h1;->c1()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    sget-object v0, Lm2/t;->a:Lm2/w;

    sget-object v0, Lm2/t;->p:Lm2/w;

    iget-object v2, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v2, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lm2/t;->o:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final f(Lm2/p;)Z
    .locals 14

    invoke-static {p0}, Lm2/s;->e(Lm2/p;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    iget-boolean v0, p0, Lm2/m;->n:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    iget-object v0, p0, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v2, p0, Lk/m0;->c:[Ljava/lang/Object;

    iget-object p0, p0, Lk/m0;->a:[J

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    move v4, v1

    :goto_0
    aget-wide v5, p0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v1

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v11, v0, v10

    aget-object v10, v2, v10

    check-cast v11, Lm2/w;

    iget-boolean v10, v11, Lm2/w;->c:Z

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method
