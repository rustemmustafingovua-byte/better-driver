.class public final synthetic Lr0/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:Lr0/u1;

.field public final synthetic m:Lk/n0;

.field public final synthetic n:Lk/n0;

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Lk/n0;

.field public final synthetic r:Ljava/util/List;

.field public final synthetic s:Lk/n0;

.field public final synthetic t:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lr0/u1;Lk/n0;Lk/n0;Ljava/util/List;Ljava/util/List;Lk/n0;Ljava/util/List;Lk/n0;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/s1;->l:Lr0/u1;

    iput-object p2, p0, Lr0/s1;->m:Lk/n0;

    iput-object p3, p0, Lr0/s1;->n:Lk/n0;

    iput-object p4, p0, Lr0/s1;->o:Ljava/util/List;

    iput-object p5, p0, Lr0/s1;->p:Ljava/util/List;

    iput-object p6, p0, Lr0/s1;->q:Lk/n0;

    iput-object p7, p0, Lr0/s1;->r:Ljava/util/List;

    iput-object p8, p0, Lr0/s1;->s:Lk/n0;

    iput-object p9, p0, Lr0/s1;->t:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/s1;->l:Lr0/u1;

    iget-object v7, v0, Lr0/s1;->m:Lk/n0;

    iget-object v8, v0, Lr0/s1;->n:Lk/n0;

    iget-object v2, v0, Lr0/s1;->o:Ljava/util/List;

    iget-object v3, v0, Lr0/s1;->p:Ljava/util/List;

    iget-object v5, v0, Lr0/s1;->q:Lk/n0;

    iget-object v4, v0, Lr0/s1;->r:Ljava/util/List;

    iget-object v6, v0, Lr0/s1;->s:Lk/n0;

    iget-object v0, v0, Lr0/s1;->t:Ljava/util/Set;

    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-virtual {v1}, Lr0/u1;->z()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_14

    monitor-exit v11

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    const-string v12, "Recomposer:animation"

    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v12, v1, Lr0/u1;->a:Lf2/x0;

    iget-object v12, v12, Lf2/x0;->n:Ljava/lang/Object;

    check-cast v12, Landroidx/lifecycle/a1;

    new-instance v14, Lad/c;

    const/16 v15, 0xc

    invoke-direct {v14, v15, v9, v10}, Lad/c;-><init>(IJ)V

    invoke-virtual {v12, v14}, Landroidx/lifecycle/a1;->o(Li9/c;)V

    sget-object v9, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v10, Ld1/p;->j:Ld1/b;

    iget-object v10, v10, Ld1/c;->h:Lk/n0;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lk/n0;->h()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v10, v11, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v13

    :goto_0
    :try_start_3
    monitor-exit v9

    if-eqz v10, :cond_1

    invoke-static {}, Ld1/p;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2
    :goto_1
    const-string v9, "Recomposer:recompose"

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v1}, Lr0/u1;->K()Z

    iget-object v9, v1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_13

    :try_start_6
    iget-object v10, v1, Lr0/u1;->i:Lt0/b;

    iget-object v12, v10, Lt0/b;->l:[Ljava/lang/Object;

    iget v10, v10, Lt0/b;->n:I

    move v14, v13

    :goto_2
    if-ge v14, v10, :cond_3

    aget-object v15, v12, v14

    check-cast v15, Lr0/x;

    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_28

    :cond_3
    iget-object v10, v1, Lr0/u1;->i:Lt0/b;

    invoke-virtual {v10}, Lt0/b;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v9

    invoke-virtual {v7}, Lk/n0;->b()V

    invoke-virtual {v8}, Lk/n0;->b()V

    :goto_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_14

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_1b

    :cond_4
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    instance-of v9, v0, Ld1/c;

    if-eqz v9, :cond_5

    new-instance v14, Ld1/m0;

    move-object v15, v0

    check-cast v15, Ld1/c;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Ld1/m0;-><init>(Ld1/c;Li9/c;Li9/c;ZZ)V

    goto :goto_4

    :cond_5
    new-instance v14, Ld1/n0;

    invoke-direct {v14, v0, v10, v11, v13}, Ld1/n0;-><init>(Ld1/g;Li9/c;ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_13

    :goto_4
    :try_start_8
    invoke-virtual {v14}, Ld1/g;->j()Ld1/g;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-nez v0, :cond_8

    :try_start_a
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    move v11, v13

    :goto_5
    if-ge v11, v0, :cond_6

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/x;

    invoke-virtual {v6, v12}, Lk/n0;->a(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    move v11, v13

    :goto_6
    if-ge v11, v0, :cond_7

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/x;

    invoke-virtual {v12}, Lr0/x;->d()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    :try_start_b
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    goto/16 :goto_19

    :goto_7
    :try_start_c
    invoke-virtual {v1, v0, v10}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    invoke-static/range {v1 .. v8}, Lr0/t1;->f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    goto/16 :goto_1a

    :catchall_6
    move-exception v0

    :try_start_f
    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v0

    :cond_8
    :goto_8
    invoke-virtual {v5}, Lk/n0;->h()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/16 v17, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const-wide/16 p0, 0x80

    if-eqz v0, :cond_e

    :try_start_10
    invoke-virtual {v6, v5}, Lk/n0;->k(Lk/n0;)V

    iget-object v0, v5, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v12, v5, Lk/n0;->a:[J

    array-length v13, v12

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_c

    const/4 v15, 0x0

    const-wide/16 v20, 0xff

    :goto_9
    const/16 v22, 0x8

    aget-wide v10, v12, v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    not-long v2, v10

    shl-long v2, v2, v17

    and-long/2addr v2, v10

    and-long v2, v2, v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_b

    sub-int v2, v15, v13

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_a

    and-long v25, v10, v20

    cmp-long v25, v25, p0

    if-gez v25, :cond_9

    shl-int/lit8 v25, v15, 0x3

    add-int v25, v25, v3

    :try_start_11
    aget-object v25, v0, v25

    check-cast v25, Lr0/x;

    invoke-virtual/range {v25 .. v25}, Lr0/x;->f()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    :goto_b
    const/4 v2, 0x0

    goto :goto_d

    :cond_9
    :goto_c
    shr-long v10, v10, v22

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_a
    move/from16 v3, v22

    if-ne v2, v3, :cond_d

    :cond_b
    if-eq v15, v13, :cond_d

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_b

    :cond_c
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const-wide/16 v20, 0xff

    :cond_d
    :try_start_12
    invoke-virtual {v5}, Lk/n0;->b()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    goto :goto_e

    :goto_d
    :try_start_13
    invoke-virtual {v1, v0, v2}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static/range {v1 .. v8}, Lr0/t1;->f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :try_start_14
    invoke-virtual {v5}, Lk/n0;->b()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto/16 :goto_16

    :catchall_9
    move-exception v0

    :try_start_16
    invoke-virtual {v5}, Lk/n0;->b()V

    throw v0

    :cond_e
    const-wide/16 v20, 0xff

    :goto_e
    invoke-virtual {v6}, Lk/n0;->h()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v0, :cond_13

    :try_start_17
    iget-object v0, v6, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v10, v6, Lk/n0;->a:[J

    array-length v11, v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_12

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/4 v12, 0x0

    :goto_f
    :try_start_18
    aget-wide v2, v10, v12
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    move-object v15, v4

    move-object v13, v5

    not-long v4, v2

    shl-long v4, v4, v17

    and-long/2addr v4, v2

    and-long v4, v4, v18

    cmp-long v4, v4, v18

    if-eqz v4, :cond_11

    sub-int v4, v12, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v22, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v4, :cond_10

    and-long v25, v2, v20

    cmp-long v25, v25, p0

    if-gez v25, :cond_f

    shl-int/lit8 v25, v12, 0x3

    add-int v25, v25, v5

    :try_start_19
    aget-object v25, v0, v25

    check-cast v25, Lr0/x;

    invoke-virtual/range {v25 .. v25}, Lr0/x;->g()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :cond_f
    move-object/from16 v25, v0

    const/16 v0, 0x8

    goto :goto_12

    :catchall_a
    move-exception v0

    :goto_11
    const/4 v2, 0x0

    goto :goto_15

    :goto_12
    shr-long/2addr v2, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v25

    goto :goto_10

    :cond_10
    move-object/from16 v25, v0

    const/16 v0, 0x8

    if-ne v4, v0, :cond_12

    goto :goto_13

    :cond_11
    move-object/from16 v25, v0

    const/16 v0, 0x8

    :goto_13
    if-eq v12, v11, :cond_12

    add-int/lit8 v12, v12, 0x1

    move-object v5, v13

    move-object v4, v15

    move-object/from16 v0, v25

    goto :goto_f

    :catchall_b
    move-exception v0

    :goto_14
    move-object v15, v4

    move-object v13, v5

    goto :goto_11

    :cond_12
    :try_start_1a
    invoke-virtual {v6}, Lk/n0;->b()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    goto :goto_17

    :catchall_c
    move-exception v0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    goto :goto_14

    :goto_15
    :try_start_1b
    invoke-virtual {v1, v0, v2}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    move-object v5, v13

    move-object v4, v15

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static/range {v1 .. v8}, Lr0/t1;->f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    :try_start_1c
    invoke-virtual {v6}, Lk/n0;->b()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    :goto_16
    :try_start_1e
    invoke-virtual {v14}, Ld1/g;->c()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    goto :goto_18

    :catchall_d
    move-exception v0

    :try_start_1f
    invoke-virtual {v6}, Lk/n0;->b()V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :cond_13
    :goto_17
    :try_start_20
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    :try_start_21
    invoke-virtual {v14}, Ld1/g;->c()V

    iget-object v2, v1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    :try_start_22
    invoke-virtual {v1}, Lr0/u1;->y()Lu9/f;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :try_start_23
    monitor-exit v2

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    invoke-virtual {v0}, Ld1/g;->m()V

    invoke-virtual {v8}, Lk/n0;->b()V

    invoke-virtual {v7}, Lk/n0;->b()V

    const/4 v2, 0x0

    iput-object v2, v1, Lr0/u1;->q:Ljava/util/LinkedHashSet;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    :goto_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_27

    :catchall_e
    move-exception v0

    :try_start_24
    monitor-exit v2

    throw v0
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_13

    :goto_19
    :try_start_25
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V

    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    :goto_1a
    :try_start_26
    invoke-virtual {v14}, Ld1/g;->c()V

    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    :cond_14
    :goto_1b
    :try_start_27
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1c
    if-ge v10, v9, :cond_16

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/x;

    invoke-virtual {v1, v12, v7}, Lr0/u1;->I(Lr0/x;Lk/n0;)Lr0/x;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :catchall_f
    move-exception v0

    const/4 v15, 0x0

    goto/16 :goto_26

    :cond_15
    :goto_1d
    invoke-virtual {v8, v12}, Lk/n0;->a(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_16
    :try_start_28
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v7}, Lk/n0;->h()Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, v1, Lr0/u1;->i:Lt0/b;

    iget v9, v9, Lt0/b;->n:I

    if-eqz v9, :cond_1d

    :cond_17
    iget-object v9, v1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v9
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    :try_start_29
    invoke-virtual {v1}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1e
    if-ge v13, v12, :cond_19

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr0/x;

    invoke-virtual {v8, v14}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    invoke-virtual {v14, v0}, Lr0/x;->w(Ljava/util/Set;)Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :catchall_10
    move-exception v0

    goto/16 :goto_25

    :cond_18
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    goto :goto_1e

    :cond_19
    iget-object v10, v1, Lr0/u1;->i:Lt0/b;

    iget v12, v10, Lt0/b;->n:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_20
    if-ge v13, v12, :cond_1c

    iget-object v15, v10, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v15, v15, v13

    check-cast v15, Lr0/x;

    invoke-virtual {v8, v15}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1a

    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_21

    :cond_1a
    if-lez v14, :cond_1b

    iget-object v15, v10, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v17, v13, v14

    aget-object v18, v15, v13

    aput-object v18, v15, v17

    :cond_1b
    :goto_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_20

    :cond_1c
    iget-object v13, v10, Lt0/b;->l:[Ljava/lang/Object;

    sub-int v14, v12, v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v12, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v14, v10, Lt0/b;->n:I
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    :try_start_2a
    monitor-exit v9

    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_13

    if-eqz v9, :cond_1f

    :try_start_2b
    invoke-static {v3, v1}, Lr0/t1;->h(Ljava/util/List;Lr0/u1;)V

    :goto_22
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v1, v3, v7}, Lr0/u1;->H(Ljava/util/List;Lk/n0;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lk/n0;->j(Ljava/lang/Object;)V

    goto :goto_23

    :cond_1e
    invoke-static {v3, v1}, Lr0/t1;->h(Ljava/util/List;Lr0/u1;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    goto :goto_22

    :catchall_11
    move-exception v0

    const/4 v15, 0x0

    goto :goto_24

    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_3

    :goto_24
    :try_start_2c
    invoke-virtual {v1, v0, v15}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    invoke-static/range {v1 .. v8}, Lr0/t1;->f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V

    goto/16 :goto_18

    :goto_25
    monitor-exit v9

    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    :goto_26
    :try_start_2d
    invoke-virtual {v1, v0, v15}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    invoke-static/range {v1 .. v8}, Lr0/t1;->f(Lr0/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lk/n0;Lk/n0;Lk/n0;Lk/n0;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    :try_start_2e
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_13

    goto/16 :goto_18

    :goto_27
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :catchall_12
    move-exception v0

    :try_start_2f
    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0

    :goto_28
    monitor-exit v9

    throw v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_13

    :catchall_13
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_14
    move-exception v0

    monitor-exit v11

    throw v0
.end method
