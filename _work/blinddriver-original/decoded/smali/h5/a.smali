.class public abstract Lh5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh5/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ly4/n;)V
    .locals 5

    iget-object v0, p0, Ly4/n;->a:Ly4/q;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Ly4/n;->e:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Ly4/n;->x(Ly4/n;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ly4/n;->e:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, v0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v0, Ly4/q;->m:Lx4/a;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-static {v1, v2, p0}, Lpc/h;->f(Landroidx/work/impl/WorkDatabase;Lx4/a;Ly4/n;)V

    invoke-static {p0}, Lh5/a;->b(Ly4/n;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    if-eqz p0, :cond_2

    iget-object p0, v0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Ly4/q;->p:Ljava/util/List;

    invoke-static {v2, p0, v0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkContinuation has cycles ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ly4/n;)Z
    .locals 63

    move-object/from16 v0, p0

    invoke-static {v0}, Ly4/n;->x(Ly4/n;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, v0, Ly4/n;->a:Ly4/q;

    iget-object v3, v0, Ly4/n;->d:Ljava/util/List;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v5, v0, Ly4/n;->b:Ljava/lang/String;

    iget v6, v0, Ly4/n;->c:I

    iget-object v7, v2, Ly4/q;->m:Lx4/a;

    iget-object v7, v7, Lx4/a;->d:Lx4/j;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v2, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_0

    array-length v11, v1

    if-lez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    const/4 v12, 0x4

    const/4 v13, 0x3

    if-eqz v11, :cond_6

    array-length v15, v1

    move/from16 v18, v4

    move/from16 v19, v18

    const/16 v17, 0x1

    :goto_1
    if-ge v4, v15, :cond_7

    aget-object v10, v1, v4

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v14

    invoke-virtual {v14, v10}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object v14

    if-nez v14, :cond_2

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lh5/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v4, 0x0

    const/4 v9, 0x1

    goto/16 :goto_26

    :cond_2
    iget v10, v14, Lg5/o;->b:I

    if-ne v10, v13, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    :goto_3
    and-int v17, v17, v14

    if-ne v10, v12, :cond_4

    const/16 v19, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x6

    if-ne v10, v14, :cond_5

    const/16 v18, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    if-nez v11, :cond_18

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v10

    invoke-virtual {v10, v5}, Lg5/q;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_18

    if-eq v6, v13, :cond_c

    if-ne v6, v12, :cond_8

    goto :goto_7

    :cond_8
    const/4 v13, 0x2

    if-ne v6, v13, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v6, :cond_a

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lg5/n;

    iget v15, v15, Lg5/n;->b:I

    const/4 v12, 0x1

    if-eq v15, v12, :cond_1

    if-ne v15, v13, :cond_9

    goto :goto_2

    :cond_9
    const/4 v12, 0x4

    goto :goto_5

    :cond_a
    const-string v6, "workManagerImpl.workDatabase"

    invoke-static {v9, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroidx/fragment/app/e;

    const/4 v12, 0x4

    invoke-direct {v6, v9, v5, v2, v12}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v6}, Landroidx/work/impl/WorkDatabase;->o(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_b

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lg5/n;

    iget-object v14, v14, Lg5/n;->a:Ljava/lang/String;

    invoke-virtual {v6, v14}, Lg5/q;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object/from16 v24, v9

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_c
    :goto_7
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->f()Lg5/c;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_13

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v21

    check-cast v13, Lg5/n;

    move-object/from16 v21, v3

    iget-object v3, v13, Lg5/n;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v23, v4

    const-string v4, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v24, v9

    const/4 v9, 0x1

    invoke-static {v9, v4}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object v3, v11, Lg5/c;->m:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v3, v4}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_e

    const/16 v16, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    :cond_e
    move/from16 v16, v9

    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lk4/n;->c()V

    if-nez v16, :cond_12

    iget v3, v13, Lg5/n;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    const/16 v16, 0x1

    goto :goto_a

    :cond_f
    move/from16 v16, v9

    :goto_a
    and-int v16, v17, v16

    const/4 v4, 0x4

    if-ne v3, v4, :cond_10

    const/16 v19, 0x1

    goto :goto_b

    :cond_10
    const/4 v4, 0x6

    if-ne v3, v4, :cond_11

    const/16 v18, 0x1

    :cond_11
    :goto_b
    iget-object v3, v13, Lg5/n;->a:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v16

    :cond_12
    move-object/from16 v3, v21

    move/from16 v4, v23

    move-object/from16 v9, v24

    const/4 v13, 0x3

    goto :goto_8

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lk4/n;->c()V

    throw v0

    :cond_13
    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object/from16 v24, v9

    const/4 v4, 0x4

    const/4 v9, 0x0

    if-ne v6, v4, :cond_16

    if-nez v18, :cond_14

    if-eqz v19, :cond_16

    :cond_14
    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v3

    invoke-virtual {v3, v5}, Lg5/q;->i(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v10, v9

    :goto_d
    if-ge v10, v6, :cond_15

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lg5/n;

    iget-object v11, v11, Lg5/n;->a:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lg5/q;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move/from16 v18, v9

    move/from16 v19, v18

    :cond_16
    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    if-lez v3, :cond_17

    const/4 v11, 0x1

    goto :goto_e

    :cond_17
    move v11, v9

    :goto_e
    move v3, v9

    goto :goto_f

    :cond_18
    move-object/from16 v21, v3

    move/from16 v23, v4

    move-object/from16 v24, v9

    const/4 v9, 0x0

    goto :goto_e

    :goto_f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v12, v3

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4/z;

    iget-object v6, v3, Lx4/z;->b:Lg5/o;

    iget-object v10, v3, Lx4/z;->a:Ljava/util/UUID;

    if-eqz v11, :cond_1b

    if-nez v17, :cond_1b

    if-eqz v19, :cond_19

    const/4 v13, 0x4

    iput v13, v6, Lg5/o;->b:I

    const/4 v14, 0x6

    goto :goto_11

    :cond_19
    const/4 v13, 0x4

    if-eqz v18, :cond_1a

    const/4 v14, 0x6

    iput v14, v6, Lg5/o;->b:I

    goto :goto_11

    :cond_1a
    const/4 v14, 0x6

    const/4 v15, 0x5

    iput v15, v6, Lg5/o;->b:I

    goto :goto_11

    :cond_1b
    const/4 v13, 0x4

    const/4 v14, 0x6

    iput-wide v7, v6, Lg5/o;->n:J

    :goto_11
    iget v15, v6, Lg5/o;->b:I

    const/4 v9, 0x1

    if-ne v15, v9, :cond_1c

    const/4 v12, 0x1

    :cond_1c
    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v9

    iget-object v15, v2, Ly4/q;->p:Ljava/util/List;

    const-string v13, "schedulers"

    invoke-static {v15, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "workSpec"

    invoke-static {v6, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v6, Lg5/o;->e:Lx4/h;

    const-string v15, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    invoke-virtual {v13, v15}, Lx4/h;->b(Ljava/lang/String;)Z

    move-result v20

    const-string v14, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME"

    invoke-virtual {v13, v14}, Lx4/h;->b(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v22, v2

    const-string v2, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v13, v2}, Lx4/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v20, :cond_27

    if-eqz v14, :cond_27

    if-eqz v2, :cond_27

    iget-object v2, v6, Lg5/o;->c:Ljava/lang/String;

    new-instance v14, Lia/z;

    move-object/from16 v20, v4

    const/4 v4, 0x3

    invoke-direct {v14, v4}, Lia/z;-><init>(I)V

    iget-object v4, v13, Lx4/h;->a:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Lia/z;->d(Ljava/util/HashMap;)V

    iget-object v4, v14, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v4, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lx4/h;

    invoke-direct {v2, v4}, Lx4/h;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v2}, Lg6/c1;->E(Lx4/h;)[B

    const v4, 0xffffeb

    and-int/lit8 v13, v4, 0x1

    if-eqz v13, :cond_1d

    iget-object v13, v6, Lg5/o;->a:Ljava/lang/String;

    goto :goto_12

    :cond_1d
    const/4 v13, 0x0

    :goto_12
    and-int/lit8 v14, v4, 0x2

    if-eqz v14, :cond_1e

    iget v14, v6, Lg5/o;->b:I

    goto :goto_13

    :cond_1e
    const/4 v14, 0x0

    :goto_13
    and-int/lit8 v15, v4, 0x4

    if-eqz v15, :cond_1f

    iget-object v15, v6, Lg5/o;->c:Ljava/lang/String;

    :goto_14
    move/from16 v25, v4

    goto :goto_15

    :cond_1f
    const-string v15, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    goto :goto_14

    :goto_15
    iget-object v4, v6, Lg5/o;->d:Ljava/lang/String;

    and-int/lit8 v26, v25, 0x10

    if-eqz v26, :cond_20

    iget-object v2, v6, Lg5/o;->e:Lx4/h;

    :cond_20
    move-wide/from16 v58, v7

    iget-object v7, v6, Lg5/o;->f:Lx4/h;

    move-object/from16 v60, v10

    move v8, v11

    iget-wide v10, v6, Lg5/o;->g:J

    move-wide/from16 v32, v10

    iget-wide v10, v6, Lg5/o;->h:J

    move-wide/from16 v34, v10

    iget-wide v10, v6, Lg5/o;->i:J

    move/from16 v61, v8

    iget-object v8, v6, Lg5/o;->j:Lx4/d;

    move-wide/from16 v36, v10

    move/from16 v10, v25

    and-int/lit16 v11, v10, 0x400

    if-eqz v11, :cond_21

    iget v11, v6, Lg5/o;->k:I

    :goto_16
    move/from16 v39, v11

    goto :goto_17

    :cond_21
    const/4 v11, 0x0

    goto :goto_16

    :goto_17
    iget v11, v6, Lg5/o;->l:I

    move-object/from16 v62, v1

    iget-wide v0, v6, Lg5/o;->m:J

    move-wide/from16 v41, v0

    and-int/lit16 v0, v10, 0x2000

    if-eqz v0, :cond_22

    iget-wide v0, v6, Lg5/o;->n:J

    :goto_18
    move-wide/from16 v43, v0

    goto :goto_19

    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_18

    :goto_19
    iget-wide v0, v6, Lg5/o;->o:J

    move/from16 v25, v10

    move/from16 v40, v11

    iget-wide v10, v6, Lg5/o;->p:J

    move-wide/from16 v45, v0

    iget-boolean v0, v6, Lg5/o;->q:Z

    iget v1, v6, Lg5/o;->r:I

    const/high16 v26, 0x40000

    and-int v26, v25, v26

    move/from16 v49, v0

    if-eqz v26, :cond_23

    iget v0, v6, Lg5/o;->s:I

    :goto_1a
    move/from16 v51, v0

    goto :goto_1b

    :cond_23
    const/4 v0, 0x0

    goto :goto_1a

    :goto_1b
    const/high16 v0, 0x80000

    and-int v0, v25, v0

    if-eqz v0, :cond_24

    iget v0, v6, Lg5/o;->t:I

    :goto_1c
    move/from16 v52, v0

    goto :goto_1d

    :cond_24
    const/4 v0, 0x0

    goto :goto_1c

    :goto_1d
    const/high16 v0, 0x100000

    and-int v0, v25, v0

    move-wide/from16 v47, v10

    if-eqz v0, :cond_25

    iget-wide v10, v6, Lg5/o;->u:J

    :goto_1e
    move-wide/from16 v53, v10

    goto :goto_1f

    :cond_25
    const-wide/16 v10, 0x0

    goto :goto_1e

    :goto_1f
    const/high16 v0, 0x200000

    and-int v0, v25, v0

    if-eqz v0, :cond_26

    iget v0, v6, Lg5/o;->v:I

    :goto_20
    move/from16 v55, v0

    goto :goto_21

    :cond_26
    const/4 v0, 0x0

    goto :goto_20

    :goto_21
    iget v0, v6, Lg5/o;->w:I

    iget-object v10, v6, Lg5/o;->x:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "id"

    invoke-static {v13, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "state"

    invoke-static {v14, v6}, La6/q;->r(ILjava/lang/String;)V

    const-string v6, "workerClassName"

    invoke-static {v15, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "inputMergerClassName"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "input"

    invoke-static {v2, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "output"

    invoke-static {v7, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "constraints"

    invoke-static {v8, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "backoffPolicy"

    move/from16 v11, v40

    invoke-static {v11, v6}, La6/q;->r(ILjava/lang/String;)V

    const-string v6, "outOfQuotaPolicy"

    invoke-static {v1, v6}, La6/q;->r(ILjava/lang/String;)V

    new-instance v25, Lg5/o;

    move/from16 v56, v0

    move/from16 v50, v1

    move-object/from16 v30, v2

    move-object/from16 v29, v4

    move-object/from16 v31, v7

    move-object/from16 v38, v8

    move-object/from16 v57, v10

    move-object/from16 v26, v13

    move/from16 v27, v14

    move-object/from16 v28, v15

    invoke-direct/range {v25 .. v57}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move-object/from16 v6, v25

    goto :goto_22

    :cond_27
    move-object/from16 v62, v1

    move-object/from16 v20, v4

    move-wide/from16 v58, v7

    move-object/from16 v60, v10

    move/from16 v61, v11

    :goto_22
    iget-object v1, v9, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_1
    iget-object v0, v9, Lg5/q;->b:Lg5/b;

    invoke-virtual {v0, v6}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    const-string v0, "id.toString()"

    move-object/from16 v2, v62

    if-eqz v61, :cond_28

    array-length v1, v2

    const/4 v4, 0x0

    :goto_23
    if-ge v4, v1, :cond_28

    aget-object v6, v2, v4

    new-instance v7, Lg5/a;

    invoke-virtual/range {v60 .. v60}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v8, v6}, Lg5/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->f()Lg5/c;

    move-result-object v6

    iget-object v8, v6, Lg5/c;->m:Ljava/lang/Object;

    check-cast v8, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_2
    iget-object v6, v6, Lg5/c;->n:Ljava/lang/Object;

    check-cast v6, Lg5/b;

    invoke-virtual {v6, v7}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :catchall_1
    move-exception v0

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_28
    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->v()Lg5/s;

    move-result-object v1

    invoke-virtual/range {v60 .. v60}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, Lx4/z;->c:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "id"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tags"

    invoke-static {v3, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lg5/r;

    invoke-direct {v7, v6, v4}, Lg5/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast v6, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_3
    iget-object v8, v1, Lg5/s;->m:Ljava/lang/Object;

    check-cast v8, Lg5/b;

    invoke-virtual {v8, v7}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_24

    :catchall_2
    move-exception v0

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_29
    if-nez v23, :cond_2a

    invoke-virtual/range {v24 .. v24}, Landroidx/work/impl/WorkDatabase;->s()Lg5/l;

    move-result-object v1

    new-instance v3, Lg5/k;

    invoke-virtual/range {v60 .. v60}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v5, v4}, Lg5/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lg5/l;->m:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_4
    iget-object v0, v1, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lg5/b;

    invoke-virtual {v0, v3}, Lg5/b;->h(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_25

    :catchall_3
    move-exception v0

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_2a
    :goto_25
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v4, v20

    move-object/from16 v2, v22

    move-wide/from16 v7, v58

    move/from16 v11, v61

    goto/16 :goto_10

    :catchall_4
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_2b
    const/4 v9, 0x1

    move-object/from16 v0, p0

    move v4, v12

    :goto_26
    iput-boolean v9, v0, Ly4/n;->g:Z

    return v4
.end method
