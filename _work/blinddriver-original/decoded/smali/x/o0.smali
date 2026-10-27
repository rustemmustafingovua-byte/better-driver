.class public final Lx/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/e0;


# instance fields
.field public final a:I

.field public final b:Lg5/m;

.field public final c:Li9/c;

.field public d:Lb3/a;

.field public e:Lc2/p1;

.field public f:Lc2/o1;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Object;

.field public k:Z

.field public l:Lx/n0;

.field public m:Z

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public final synthetic r:Lk4/h;


# direct methods
.method public constructor <init>(Lk4/h;ILg5/m;Lsc/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/o0;->r:Lk4/h;

    iput p2, p0, Lx/o0;->a:I

    iput-object p3, p0, Lx/o0;->b:Lg5/m;

    iput-object p4, p0, Lx/o0;->c:Li9/c;

    sget p1, Ls9/i;->b:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sget-wide p3, Ls9/i;->a:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lx/o0;->p:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/o0;->m:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lx/o0;->f:Lc2/o1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc2/o1;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx/o0;->f:Lc2/o1;

    iget-object v1, p0, Lx/o0;->e:Lc2/p1;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lc2/p1;->a()V

    :cond_1
    iput-object v0, p0, Lx/o0;->e:Lc2/p1;

    iput-object v0, p0, Lx/o0;->l:Lx/n0;

    return-void
.end method

.method public final c(Lx/a;)Z
    .locals 2

    iget-object v0, p0, Lx/o0;->r:Lk4/h;

    iget-boolean v0, v0, Lk4/h;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v0, p0, Lx/o0;->m:Z

    if-eqz v0, :cond_1

    const-string v0, "compose:lazy:prefetch:execute:urgent"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lx/o0;->d(Lx/a;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lx/o0;->d(Lx/a;)Z

    move-result p0

    :goto_0
    const-string p1, "compose:lazy:prefetch:execute:item"

    const-wide/16 v0, -0x1

    invoke-static {p1, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return p0
.end method

.method public final cancel()V
    .locals 1

    iget-boolean v0, p0, Lx/o0;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/o0;->h:Z

    invoke-virtual {p0}, Lx/o0;->b()V

    :cond_0
    return-void
.end method

.method public final d(Lx/a;)Z
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Lx/o0;->a:I

    int-to-long v2, v1

    const-string v4, "compose:lazy:prefetch:execute:item"

    invoke-static {v4, v2, v3}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget-object v5, v0, Lx/o0;->r:Lk4/h;

    iget-object v5, v5, Lk4/h;->b:Ljava/lang/Object;

    check-cast v5, Lx/u;

    iget-object v5, v5, Lx/u;->b:Lod/a7;

    invoke-virtual {v5}, Lod/a7;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw/g;

    iget-boolean v6, v0, Lx/o0;->h:Z

    const/4 v7, 0x0

    if-nez v6, :cond_22

    invoke-virtual {v5}, Lw/g;->c()I

    move-result v6

    if-ltz v1, :cond_22

    if-ge v1, v6, :cond_22

    invoke-virtual {v5, v1}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, v0, Lx/o0;->j:Ljava/lang/Object;

    if-eqz v8, :cond_0

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lx/o0;->b()V

    return v7

    :cond_0
    invoke-virtual {v5, v1}, Lw/g;->b(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, v0, Lx/o0;->b:Lg5/m;

    iget-object v8, v5, Lg5/m;->o:Ljava/lang/Object;

    check-cast v8, Lx/c;

    iget-object v9, v5, Lg5/m;->n:Ljava/lang/Object;

    const/4 v10, -0x1

    if-ne v9, v1, :cond_1

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, v5, Lg5/m;->m:Ljava/lang/Object;

    check-cast v8, Lk/m0;

    invoke-virtual {v8, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    new-instance v9, Lx/c;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v10, v9, Lx/c;->e:I

    invoke-virtual {v8, v1, v9}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object v8, v9

    check-cast v8, Lx/c;

    iput-object v1, v5, Lg5/m;->n:Ljava/lang/Object;

    iput-object v8, v5, Lg5/m;->o:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lx/o0;->e()Z

    invoke-virtual/range {p1 .. p1}, Lx/a;->a()J

    move-result-wide v11

    iput-wide v11, v0, Lx/o0;->n:J

    sget v5, Ls9/i;->b:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sget-wide v15, Ls9/i;->a:J

    sub-long/2addr v13, v15

    iput-wide v13, v0, Lx/o0;->p:J

    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lx/o0;->o:J

    const-string v5, "compose:lazy:prefetch:available_time_nanos"

    invoke-static {v5, v11, v12}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lx/o0;->e()Z

    move-result v5

    if-nez v5, :cond_5

    iget-wide v11, v0, Lx/o0;->n:J

    move-wide v15, v13

    iget-wide v13, v8, Lx/c;->a:J

    iget-wide v9, v8, Lx/c;->b:J

    add-long/2addr v13, v9

    invoke-virtual {v0, v11, v12, v13, v14}, Lx/o0;->i(JJ)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "compose:lazy:prefetch:compose"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v6, v1, v8}, Lx/o0;->g(Ljava/lang/Object;Ljava/lang/Object;Lx/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lx/o0;->e()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_e

    :cond_5
    move-wide v15, v13

    :cond_6
    iget-object v1, v0, Lx/o0;->f:Lc2/o1;

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    iget-wide v9, v0, Lx/o0;->n:J

    iget-wide v11, v8, Lx/c;->c:J

    invoke-virtual {v0, v9, v10, v11, v12}, Lx/o0;->i(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "compose:lazy:prefetch:apply"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, v0, Lx/o0;->f:Lc2/o1;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lc2/o1;->apply()Lc2/p1;

    move-result-object v1

    iput-object v1, v0, Lx/o0;->e:Lc2/p1;

    iput-object v6, v0, Lx/o0;->f:Lc2/o1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/o0;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Lx/o0;->j()V

    iget-wide v9, v0, Lx/o0;->o:J

    iget-wide v11, v8, Lx/c;->c:J

    invoke-static {v9, v10, v11, v12}, Lx/c;->a(JJ)J

    move-result-wide v9

    iput-wide v9, v8, Lx/c;->c:J

    goto :goto_2

    :cond_7
    :try_start_2
    const-string v0, "Nothing to apply!"

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_8
    :goto_2
    iget-boolean v1, v0, Lx/o0;->k:Z

    if-nez v1, :cond_9

    iget-wide v9, v0, Lx/o0;->n:J

    cmp-long v1, v9, v15

    if-lez v1, :cond_4

    const-string v1, "compose:lazy:prefetch:resolve-nested"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v0}, Lx/o0;->h()Lx/n0;

    move-result-object v1

    iput-object v1, v0, Lx/o0;->l:Lx/n0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lx/o0;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_9
    :goto_3
    iget-object v1, v0, Lx/o0;->l:Lx/n0;

    if-eqz v1, :cond_19

    iget v9, v8, Lx/c;->e:I

    iget-boolean v10, v0, Lx/o0;->m:Z

    iget-object v11, v1, Lx/n0;->b:[Ljava/util/List;

    iget v12, v1, Lx/n0;->c:I

    iget-object v13, v1, Lx/n0;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    if-lt v12, v14, :cond_a

    goto/16 :goto_d

    :cond_a
    iget-object v12, v1, Lx/n0;->f:Lx/o0;

    iget-boolean v12, v12, Lx/o0;->h:Z

    if-eqz v12, :cond_b

    const-string v12, "Should not execute nested prefetch on canceled request"

    invoke-static {v12}, Lt/b;->c(Ljava/lang/String;)V

    :cond_b
    const-string v12, "compose:lazy:prefetch:update_nested_prefetch_count"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_4
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v12

    move v14, v7

    :goto_4
    if-ge v14, v12, :cond_c

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Lx/f0;

    iput v9, v5, Lx/f0;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v5, "compose:lazy:prefetch:nested"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_5
    :try_start_5
    iget v5, v1, Lx/n0;->c:I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_18

    iget v5, v1, Lx/n0;->c:I

    aget-object v5, v11, v5

    if-nez v5, :cond_13

    invoke-virtual/range {p1 .. p1}, Lx/a;->a()J

    move-result-wide v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    cmp-long v5, v19, v15

    if-gtz v5, :cond_d

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/16 v17, 0x1

    return v17

    :cond_d
    :try_start_6
    iget v9, v1, Lx/n0;->c:I

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lx/f0;

    iget-object v5, v12, Lx/f0;->a:Lw/m;

    if-nez v5, :cond_e

    sget-object v5, Lu8/r;->l:Lu8/r;

    move/from16 v23, v9

    move/from16 v24, v10

    move-object v10, v6

    goto :goto_8

    :cond_e
    iget v14, v12, Lx/f0;->d:I

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget v5, v5, Lw/m;->l:I

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Ld1/g;->e()Li9/c;

    move-result-object v18

    move-object/from16 v6, v18

    :cond_f
    move/from16 v21, v5

    invoke-static {v7}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v5

    invoke-static {v7, v5, v6}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    const/4 v5, -0x1

    if-ne v14, v5, :cond_10

    const/4 v14, 0x2

    :cond_10
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v14, :cond_12

    add-int v7, v21, v6

    iget-object v5, v12, Lx/f0;->c:Lk4/h;

    if-nez v5, :cond_11

    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v10

    const/4 v10, 0x0

    goto :goto_7

    :cond_11
    move/from16 v22, v6

    iget-object v6, v12, Lx/f0;->b:Lg5/m;

    move/from16 v23, v9

    new-instance v9, Lx/o0;

    move/from16 v24, v10

    const/4 v10, 0x0

    invoke-direct {v9, v5, v7, v6, v10}, Lx/o0;-><init>(Lk4/h;ILg5/m;Lsc/t0;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v6, v22, 0x1

    move/from16 v9, v23

    move/from16 v10, v24

    goto :goto_6

    :cond_12
    move/from16 v23, v9

    move/from16 v24, v10

    const/4 v10, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v12, Lx/f0;->f:I

    move-object v5, v15

    :goto_8
    aput-object v5, v11, v23

    goto :goto_9

    :cond_13
    move/from16 v24, v10

    move-object v10, v6

    :goto_9
    iget v5, v1, Lx/n0;->c:I

    aget-object v5, v11, v5

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_a
    iget v6, v1, Lx/n0;->d:I

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_17

    iget v6, v1, Lx/n0;->d:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx/o0;

    if-eqz v24, :cond_15

    if-eqz v6, :cond_14

    move-object v7, v6

    goto :goto_b

    :cond_14
    move-object v7, v10

    :goto_b
    if-eqz v7, :cond_15

    const/4 v9, 0x1

    iput-boolean v9, v7, Lx/o0;->m:Z

    goto :goto_c

    :cond_15
    const/4 v9, 0x1

    :goto_c
    iput-boolean v9, v1, Lx/n0;->e:Z

    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Lx/o0;->c(Lx/a;)Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v6, :cond_16

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v9

    :cond_16
    :try_start_7
    iget v6, v1, Lx/n0;->d:I

    add-int/2addr v6, v9

    iput v6, v1, Lx/n0;->d:I

    goto :goto_a

    :cond_17
    move-object/from16 v7, p1

    const/4 v5, 0x0

    iput v5, v1, Lx/n0;->d:I

    iget v5, v1, Lx/n0;->c:I

    const/16 v17, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lx/n0;->c:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v6, v10

    move/from16 v10, v24

    const/4 v7, 0x0

    const-wide/16 v15, 0x0

    goto/16 :goto_5

    :cond_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_d

    :catchall_3
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_4
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_19
    :goto_d
    iget-object v1, v0, Lx/o0;->l:Lx/n0;

    if-eqz v1, :cond_1a

    iget-boolean v1, v1, Lx/n0;->e:Z

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1a

    invoke-virtual {v0}, Lx/o0;->j()V

    invoke-static {v4, v2, v3}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    iget-object v1, v0, Lx/o0;->l:Lx/n0;

    if-eqz v1, :cond_1a

    const/4 v5, 0x0

    iput-boolean v5, v1, Lx/n0;->e:Z

    :cond_1a
    iget-object v1, v0, Lx/o0;->d:Lb3/a;

    iget-boolean v2, v0, Lx/o0;->g:Z

    if-nez v2, :cond_1b

    if-eqz v1, :cond_1b

    iget-wide v2, v0, Lx/o0;->n:J

    iget-wide v4, v8, Lx/c;->d:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lx/o0;->i(JJ)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "compose:lazy:prefetch:measure"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_8
    iget-wide v1, v1, Lb3/a;->a:J

    invoke-virtual {v0, v1, v2}, Lx/o0;->f(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v0}, Lx/o0;->j()V

    iget-wide v1, v0, Lx/o0;->o:J

    iget-wide v3, v8, Lx/c;->d:J

    invoke-static {v1, v2, v3, v4}, Lx/c;->a(JJ)J

    move-result-wide v1

    iput-wide v1, v8, Lx/c;->d:J

    iget-object v1, v0, Lx/o0;->c:Li9/c;

    if-eqz v1, :cond_1b

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catchall_5
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :goto_e
    return v17

    :cond_1b
    :goto_f
    iget-object v1, v0, Lx/o0;->l:Lx/n0;

    iget-boolean v2, v0, Lx/o0;->g:Z

    if-eqz v2, :cond_21

    iget-boolean v0, v0, Lx/o0;->k:Z

    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    iget-object v0, v1, Lx/n0;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const v2, 0x7fffffff

    move v3, v2

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v1, :cond_1c

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx/f0;

    iget v4, v4, Lx/f0;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1c
    if-ne v3, v2, :cond_1d

    const/4 v5, 0x0

    goto :goto_11

    :cond_1d
    move v5, v3

    :goto_11
    iget v1, v8, Lx/c;->e:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1e

    move v1, v5

    goto :goto_12

    :cond_1e
    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x4

    :goto_12
    iput v1, v8, Lx/c;->e:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    move v4, v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_1f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx/f0;

    iget v6, v6, Lx/f0;->f:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1f
    if-ne v4, v2, :cond_20

    const/4 v4, 0x0

    :cond_20
    if-ge v4, v5, :cond_21

    const-wide/16 v0, 0x0

    iput-wide v0, v8, Lx/c;->d:J

    const/16 v16, 0x0

    return v16

    :cond_21
    const/16 v16, 0x0

    return v16

    :cond_22
    move/from16 v16, v7

    invoke-virtual {v0}, Lx/o0;->b()V

    return v16
.end method

.method public final e()Z
    .locals 2

    iget-boolean v0, p0, Lx/o0;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lx/o0;->f:Lc2/o1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc2/o1;->e()Z

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f(J)V
    .locals 2

    iget-boolean v0, p0, Lx/o0;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "Callers should check whether the request is still valid before calling performMeasure()"

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lx/o0;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "Request was already measured!"

    invoke-static {v0}, Lt/b;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx/o0;->g:Z

    iget-object p0, p0, Lx/o0;->e:Lc2/p1;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lc2/p1;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1, p1, p2}, Lc2/p1;->c(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "performComposition() must be called before performMeasure()"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;Lx/c;)V
    .locals 3

    iget-object v0, p0, Lx/o0;->f:Lc2/o1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lx/o0;->r:Lk4/h;

    iget-object v1, v0, Lk4/h;->b:Ljava/lang/Object;

    check-cast v1, Lx/u;

    iget v2, p0, Lx/o0;->a:I

    invoke-virtual {v1, v2, p1, p2}, Lx/u;->a(ILjava/lang/Object;Ljava/lang/Object;)Li9/e;

    move-result-object p2

    iget-object v0, v0, Lk4/h;->c:Ljava/lang/Object;

    check-cast v0, Lc2/r1;

    invoke-virtual {v0}, Lc2/r1;->a()Lc2/n0;

    move-result-object v0

    iget-object v1, v0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->H()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p2, Lg5/e;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0, p1}, Lg5/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lc2/n0;->k(Ljava/lang/Object;Li9/e;Z)V

    new-instance p2, Lg5/l;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0, p1}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lx/o0;->f:Lc2/o1;

    iput-object p1, p0, Lx/o0;->j:Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lx/o0;->q:Z

    :goto_2
    invoke-interface {v0}, Lc2/o1;->e()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lx/o0;->q:Z

    if-nez p1, :cond_2

    new-instance p1, Lb0/b3;

    const/16 p2, 0x9

    invoke-direct {p1, p2, p0, p3}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lc2/o1;->a(Lb0/b3;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lx/o0;->j()V

    iget-boolean p1, p0, Lx/o0;->q:Z

    if-eqz p1, :cond_3

    iget-wide p0, p0, Lx/o0;->o:J

    iget-wide v0, p3, Lx/c;->b:J

    invoke-static {p0, p1, v0, v1}, Lx/c;->a(JJ)J

    move-result-wide p0

    iput-wide p0, p3, Lx/c;->b:J

    return-void

    :cond_3
    iget-wide p0, p0, Lx/o0;->o:J

    iget-wide v0, p3, Lx/c;->a:J

    invoke-static {p0, p1, v0, v1}, Lx/c;->a(JJ)J

    move-result-wide p0

    iput-wide p0, p3, Lx/c;->a:J

    return-void
.end method

.method public final h()Lx/n0;
    .locals 4

    iget-object v0, p0, Lx/o0;->e:Lc2/p1;

    if-eqz v0, :cond_1

    new-instance v1, Lj9/y;

    invoke-direct {v1}, Lj9/y;-><init>()V

    new-instance v2, Lr0/o1;

    const/16 v3, 0xd

    invoke-direct {v2, v3, v1}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lc2/p1;->d(Lr0/o1;)V

    iget-object v0, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Lx/n0;

    invoke-direct {v1, p0, v0}, Lx/n0;-><init>(Lx/o0;Ljava/util/List;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-string p0, "Should precompose before resolving nested prefetch states"

    invoke-static {p0}, Lt/b;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final i(JJ)Z
    .locals 0

    iget-boolean p0, p0, Lx/o0;->m:Z

    if-eqz p0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    cmp-long p0, p1, p3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final j()V
    .locals 16

    move-object/from16 v0, p0

    sget v1, Ls9/i;->b:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Ls9/i;->a:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Lx/o0;->p:J

    sget-object v5, Ls9/c;->m:Ls9/c;

    const-string v6, "unit"

    invoke-static {v5, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    sub-long v8, v3, v6

    or-long/2addr v8, v6

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    const-wide/16 v12, 0x0

    if-nez v8, :cond_2

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    sget-object v3, Ls9/a;->m:Lmb/q;

    goto :goto_3

    :cond_0
    cmp-long v3, v3, v12

    if-gez v3, :cond_1

    sget-wide v3, Ls9/a;->o:J

    goto :goto_0

    :cond_1
    sget-wide v3, Ls9/a;->n:J

    :goto_0
    invoke-static {v3, v4}, Ls9/a;->g(J)J

    move-result-wide v12

    goto :goto_3

    :cond_2
    sub-long v8, v1, v6

    or-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    cmp-long v3, v1, v12

    if-gez v3, :cond_3

    sget-wide v3, Ls9/a;->o:J

    :goto_1
    move-wide v12, v3

    goto :goto_3

    :cond_3
    sget-wide v3, Ls9/a;->n:J

    goto :goto_1

    :cond_4
    sub-long v8, v1, v3

    xor-long v14, v8, v1

    xor-long v10, v8, v3

    not-long v10, v10

    and-long/2addr v10, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    sget-object v10, Ls9/c;->n:Ls9/c;

    invoke-virtual {v5, v10}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_5

    invoke-static {v6, v7, v10, v5}, Ls9/e;->b(JLs9/c;Ls9/c;)J

    move-result-wide v6

    div-long v8, v1, v6

    div-long v11, v3, v6

    sub-long/2addr v8, v11

    rem-long v11, v1, v6

    rem-long/2addr v3, v6

    sub-long/2addr v11, v3

    sget-object v3, Ls9/a;->m:Lmb/q;

    invoke-static {v8, v9, v10}, Ls9/e;->k(JLs9/c;)J

    move-result-wide v3

    invoke-static {v11, v12, v5}, Ls9/e;->k(JLs9/c;)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ls9/a;->e(JJ)J

    move-result-wide v12

    goto :goto_3

    :cond_5
    cmp-long v3, v8, v12

    if-gez v3, :cond_6

    sget-wide v3, Ls9/a;->o:J

    goto :goto_2

    :cond_6
    sget-wide v3, Ls9/a;->n:J

    :goto_2
    invoke-static {v3, v4}, Ls9/a;->g(J)J

    move-result-wide v12

    goto :goto_3

    :cond_7
    invoke-static {v8, v9, v5}, Ls9/e;->k(JLs9/c;)J

    move-result-wide v12

    :goto_3
    const/4 v3, 0x1

    shr-long v4, v12, v3

    sget-object v6, Ls9/a;->m:Lmb/q;

    long-to-int v6, v12

    and-int/2addr v3, v6

    if-nez v3, :cond_8

    move-wide v10, v4

    goto :goto_4

    :cond_8
    const-wide v6, 0x8637bd05af6L

    cmp-long v3, v4, v6

    if-lez v3, :cond_9

    const-wide v10, 0x7fffffffffffffffL

    goto :goto_4

    :cond_9
    const-wide v6, -0x8637bd05af6L

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    const-wide/high16 v10, -0x8000000000000000L

    goto :goto_4

    :cond_a
    const v3, 0xf4240

    int-to-long v6, v3

    mul-long v10, v4, v6

    :goto_4
    iput-wide v10, v0, Lx/o0;->o:J

    iget-wide v3, v0, Lx/o0;->n:J

    sub-long/2addr v3, v10

    iput-wide v3, v0, Lx/o0;->n:J

    iput-wide v1, v0, Lx/o0;->p:J

    const-string v0, "compose:lazy:prefetch:available_time_nanos"

    invoke-static {v0, v3, v4}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HandleAndRequestImpl { index = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lx/o0;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx/o0;->d:Lb3/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isComposed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lx/o0;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMeasured = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lx/o0;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCanceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lx/o0;->h:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
