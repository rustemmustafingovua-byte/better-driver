.class public final Ly4/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg5/o;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Li5/a;

.field public final e:Lx4/a;

.field public final f:Lx4/j;

.field public final g:Ly4/e;

.field public final h:Landroidx/work/impl/WorkDatabase;

.field public final i:Lg5/q;

.field public final j:Lg5/c;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/lang/String;

.field public final m:Lu9/x0;


# direct methods
.method public constructor <init>(Lf8/u3;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lf8/u3;->e:Ljava/lang/Object;

    check-cast v0, Lg5/o;

    iput-object v0, p0, Ly4/c0;->a:Lg5/o;

    iget-object v1, p1, Lf8/u3;->g:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Ly4/c0;->b:Landroid/content/Context;

    iget-object v0, v0, Lg5/o;->a:Ljava/lang/String;

    iput-object v0, p0, Ly4/c0;->c:Ljava/lang/String;

    iget-object v1, p1, Lf8/u3;->b:Ljava/lang/Object;

    check-cast v1, Li5/a;

    iput-object v1, p0, Ly4/c0;->d:Li5/a;

    iget-object v1, p1, Lf8/u3;->a:Ljava/lang/Object;

    check-cast v1, Lx4/a;

    iput-object v1, p0, Ly4/c0;->e:Lx4/a;

    iget-object v1, v1, Lx4/a;->d:Lx4/j;

    iput-object v1, p0, Ly4/c0;->f:Lx4/j;

    iget-object v1, p1, Lf8/u3;->c:Ljava/lang/Object;

    check-cast v1, Ly4/e;

    iput-object v1, p0, Ly4/c0;->g:Ly4/e;

    iget-object v1, p1, Lf8/u3;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/work/impl/WorkDatabase;

    iput-object v1, p0, Ly4/c0;->h:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v2

    iput-object v2, p0, Ly4/c0;->i:Lg5/q;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->f()Lg5/c;

    move-result-object v1

    iput-object v1, p0, Ly4/c0;->j:Lg5/c;

    iget-object p1, p1, Lf8/u3;->f:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ly4/c0;->k:Ljava/util/ArrayList;

    const-string p1, "Work [ id="

    const-string v2, ", tags={ "

    invoke-static {p1, v0, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " } ]"

    invoke-static {p1, v0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly4/c0;->l:Ljava/lang/String;

    invoke-static {}, Lu9/v;->b()Lu9/x0;

    move-result-object p1

    iput-object p1, p0, Ly4/c0;->m:Lu9/x0;

    return-void
.end method

.method public static final a(Ly4/c0;La9/c;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Ly4/c0;->c:Ljava/lang/String;

    iget-object v3, v1, Ly4/c0;->d:Li5/a;

    iget-object v4, v1, Ly4/c0;->h:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v1, Ly4/c0;->e:Lx4/a;

    iget-object v6, v5, Lx4/a;->m:Lx4/j;

    iget-object v7, v1, Ly4/c0;->a:Lg5/o;

    instance-of v8, v0, Ly4/b0;

    if-eqz v8, :cond_0

    move-object v8, v0

    check-cast v8, Ly4/b0;

    iget v9, v8, Ly4/b0;->o:I

    const/high16 v10, -0x80000000

    and-int v11, v9, v10

    if-eqz v11, :cond_0

    sub-int/2addr v9, v10

    iput v9, v8, Ly4/b0;->o:I

    goto :goto_0

    :cond_0
    new-instance v8, Ly4/b0;

    invoke-direct {v8, v1, v0}, Ly4/b0;-><init>(Ly4/c0;La9/c;)V

    :goto_0
    iget-object v0, v8, Ly4/b0;->m:Ljava/lang/Object;

    sget-object v9, Lz8/a;->l:Lz8/a;

    iget v10, v8, Ly4/b0;->o:I

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    if-ne v10, v11, :cond_1

    iget-object v1, v8, Ly4/b0;->l:Ly4/c0;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    iget-object v10, v5, Lx4/a;->e:Lx4/j;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu4/a;->a()Z

    move-result v6

    iget-object v12, v7, Lg5/o;->x:Ljava/lang/String;

    iget-object v13, v7, Lg5/o;->c:Ljava/lang/String;

    iget-object v14, v7, Lg5/o;->d:Ljava/lang/String;

    iget-object v15, v7, Lg5/o;->e:Lx4/h;

    if-eqz v6, :cond_3

    if-eqz v12, :cond_3

    invoke-virtual {v7}, Lg5/o;->hashCode()I

    move-result v0

    invoke-static {v12}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v0}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    :cond_3
    new-instance v0, Ly4/u;

    const/4 v11, 0x0

    invoke-direct {v0, v11, v1}, Ly4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v11, "shouldExit"

    invoke-static {v0, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ly4/x;

    invoke-direct {v0}, Ly4/x;-><init>()V

    return-object v0

    :cond_4
    invoke-virtual {v7}, Lg5/o;->c()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    move-object/from16 v16, v2

    goto/16 :goto_4

    :cond_5
    iget-object v0, v5, Lx4/a;->f:Lx4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "className"

    invoke-static {v14, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx4/m;->a:Ljava/lang/String;

    :try_start_1
    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v11, "null cannot be cast to non-null type androidx.work.InputMerger"

    invoke-static {v0, v11}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/OverwritingInputMerger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v15

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v11

    sget-object v7, Lx4/m;->a:Ljava/lang/String;

    move-object/from16 v17, v15

    const-string v15, "Trouble instantiating "

    invoke-virtual {v15, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v7, v15, v0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    const-string v2, "Could not create Input Merger "

    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ly4/v;

    invoke-direct {v9}, Ly4/v;-><init>()V

    goto/16 :goto_8

    :cond_6
    invoke-static/range {v17 .. v17}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v7, v1, Ly4/c0;->i:Lg5/q;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    const/4 v14, 0x1

    invoke-static {v14, v11}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v11

    invoke-virtual {v11, v14, v2}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object v7, v7, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v7, v11}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lx4/h;->a([B)Lx4/h;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lk4/n;->c()V

    invoke-static {v0, v14}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v7, Lia/z;

    const/4 v11, 0x3

    invoke-direct {v7, v11}, Lia/z;-><init>(I)V

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_8

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Lx4/h;

    iget-object v0, v0, Lx4/h;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v16, v2

    const-string v2, "unmodifiableMap(values)"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_3

    :cond_8
    move-object/from16 v16, v2

    invoke-virtual {v7, v11}, Lia/z;->d(Ljava/util/HashMap;)V

    new-instance v0, Lx4/h;

    iget-object v2, v7, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v2}, Lx4/h;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-static {v0}, Lg6/c1;->E(Lx4/h;)[B

    :goto_4
    new-instance v0, Landroidx/work/WorkerParameters;

    invoke-static/range {v16 .. v16}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v7, v1, Ly4/c0;->k:Ljava/util/ArrayList;

    iget-object v11, v5, Lx4/a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v5, v5, Lx4/a;->b:Lba/e;

    new-instance v14, Lh5/o;

    new-instance v14, Lh5/n;

    iget-object v15, v1, Ly4/c0;->g:Ly4/e;

    invoke-direct {v14, v4, v15, v3}, Lh5/n;-><init>(Landroidx/work/impl/WorkDatabase;Ly4/e;Li5/a;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Landroidx/work/WorkerParameters;->b:Ljava/util/concurrent/ExecutorService;

    iput-object v5, v0, Landroidx/work/WorkerParameters;->c:Ly8/h;

    :try_start_3
    iget-object v2, v1, Ly4/c0;->b:Landroid/content/Context;

    invoke-virtual {v10, v2, v13, v0}, Lx4/j;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Lx4/s;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v5, 0x1

    iput-boolean v5, v2, Lx4/s;->d:Z

    invoke-interface {v8}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    sget-object v7, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v7}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v0, Lu9/v0;

    new-instance v7, Lp8/b;

    invoke-direct {v7, v2, v6, v12, v1}, Lp8/b;-><init>(Lx4/s;ZLjava/lang/String;Ly4/c0;)V

    invoke-interface {v0, v7}, Lu9/v0;->P(Li9/c;)Lu9/g0;

    new-instance v6, Ly4/u;

    invoke-direct {v6, v5, v1}, Ly4/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "workDatabase.runInTransa\u2026e\n            }\n        )"

    invoke-static {v4, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v9, Ly4/x;

    invoke-direct {v9}, Ly4/x;-><init>()V

    goto/16 :goto_8

    :cond_9
    invoke-interface {v0}, Lu9/v0;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v9, Ly4/x;

    invoke-direct {v9}, Ly4/x;-><init>()V

    goto/16 :goto_8

    :cond_a
    iget-object v0, v3, Li5/a;->d:Lf7/l;

    const-string v3, "workTaskExecutor.getMainThreadExecutor()"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lu9/v;->k(Ljava/util/concurrent/Executor;)Lu9/p;

    move-result-object v6

    :try_start_4
    new-instance v0, Landroidx/lifecycle/m0;

    const/16 v5, 0x1c

    move-object v3, v14

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v1, v8, Ly4/b0;->l:Ly4/c0;

    const/4 v14, 0x1

    iput v14, v8, Ly4/b0;->o:I

    invoke-static {v6, v0, v8}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_b

    goto :goto_8

    :cond_b
    :goto_5
    check-cast v0, Lx4/r;

    new-instance v9, Ly4/w;

    const-string v2, "result"

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ly4/w;-><init>(Lx4/r;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    :goto_6
    sget-object v2, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Ly4/c0;->l:Ljava/lang/String;

    const-string v5, " failed because it threw an exception/error"

    invoke-static {v4, v1, v5}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1, v0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v9, Ly4/v;

    invoke-direct {v9}, Ly4/v;-><init>()V

    goto :goto_8

    :goto_7
    sget-object v2, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Ly4/c0;->l:Ljava/lang/String;

    const-string v5, " was cancelled"

    invoke-static {v4, v1, v5}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v3, v3, Lx4/t;->a:I

    const/4 v4, 0x4

    if-gt v3, v4, :cond_c

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    throw v0

    :catchall_2
    sget-object v0, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ly4/v;

    invoke-direct {v9}, Ly4/v;-><init>()V

    :goto_8
    return-object v9

    :goto_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {v11}, Lk4/n;->c()V

    throw v0
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    iget-object v0, p0, Ly4/c0;->i:Lg5/q;

    const/4 v1, 0x1

    iget-object v2, p0, Ly4/c0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lg5/q;->n(ILjava/lang/String;)V

    iget-object v1, p0, Ly4/c0;->f:Lx4/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lg5/q;->l(JLjava/lang/String;)V

    iget-object p0, p0, Ly4/c0;->a:Lg5/o;

    iget p0, p0, Lg5/o;->v:I

    invoke-virtual {v0, p0, v2}, Lg5/q;->k(ILjava/lang/String;)V

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4, v2}, Lg5/q;->j(JLjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Lg5/q;->o(ILjava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Ly4/c0;->f:Lx4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ly4/c0;->i:Lg5/q;

    iget-object v3, p0, Ly4/c0;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v3}, Lg5/q;->l(JLjava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v3}, Lg5/q;->n(ILjava/lang/String;)V

    iget-object v1, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v4, v2, Lg5/q;->j:Lg5/h;

    invoke-virtual {v4}, Lk4/p;->a()Lr4/i;

    move-result-object v5

    invoke-interface {v5, v0, v3}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5}, Lr4/i;->b()I

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v4, v5}, Lk4/p;->f(Lr4/i;)V

    iget-object p0, p0, Ly4/c0;->a:Lg5/o;

    iget p0, p0, Lg5/o;->v:I

    invoke-virtual {v2, p0, v3}, Lg5/q;->k(ILjava/lang/String;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, v2, Lg5/q;->f:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_3
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Lr4/i;->b()I

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p0, v4}, Lk4/p;->f(Lr4/i;)V

    const-wide/16 v0, -0x1

    invoke-virtual {v2, v0, v1, v3}, Lg5/q;->j(JLjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    invoke-virtual {p0, v4}, Lk4/p;->f(Lr4/i;)V

    throw v0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_1
    invoke-virtual {v4, v5}, Lk4/p;->f(Lr4/i;)V

    throw p0
.end method

.method public final d(Lx4/r;)V
    .locals 6

    const-string v0, "result"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ly4/c0;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Ly4/c0;->i:Lg5/q;

    if-nez v2, :cond_1

    invoke-static {v1}, Lu8/m;->s0(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v2}, Lg5/q;->n(ILjava/lang/String;)V

    :cond_0
    iget-object v3, p0, Ly4/c0;->j:Lg5/c;

    invoke-virtual {v3, v2}, Lg5/c;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    check-cast p1, Lx4/o;

    iget-object p1, p1, Lx4/o;->a:Lx4/h;

    const-string v1, "failure.outputData"

    invoke-static {p1, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ly4/c0;->a:Lg5/o;

    iget p0, p0, Lg5/o;->v:I

    invoke-virtual {v3, p0, v0}, Lg5/q;->k(ILjava/lang/String;)V

    invoke-virtual {v3, v0, p1}, Lg5/q;->m(Ljava/lang/String;Lx4/h;)V

    return-void
.end method
