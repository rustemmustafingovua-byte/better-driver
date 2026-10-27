.class public final synthetic Ly4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic l:Ly4/y;

.field public final synthetic m:Ly4/c0;


# direct methods
.method public synthetic constructor <init>(Ly4/y;Ly4/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/z;->l:Ly4/y;

    iput-object p2, p0, Ly4/z;->m:Ly4/c0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Ly4/z;->m:Ly4/c0;

    iget-object v1, v0, Ly4/c0;->c:Ljava/lang/String;

    iget-object v2, v0, Ly4/c0;->i:Lg5/q;

    iget-object p0, p0, Ly4/z;->l:Ly4/y;

    instance-of v3, p0, Ly4/w;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    check-cast p0, Ly4/w;

    iget-object p0, p0, Ly4/w;->a:Lx4/r;

    invoke-virtual {v2, v1}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v3

    iget-object v6, v0, Ly4/c0;->h:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->t()Lg5/m;

    move-result-object v6

    iget-object v7, v6, Lg5/m;->m:Ljava/lang/Object;

    check-cast v7, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v6, v6, Lg5/m;->n:Ljava/lang/Object;

    check-cast v6, Lg5/h;

    invoke-virtual {v6}, Lk4/p;->a()Lr4/i;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9, v1}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Lr4/i;->b()I

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v6, v8}, Lk4/p;->f(Lr4/i;)V

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    iget-object v3, v0, Ly4/c0;->a:Lg5/o;

    iget-object v6, v0, Ly4/c0;->l:Ljava/lang/String;

    instance-of v7, p0, Lx4/q;

    if-eqz v7, :cond_5

    sget-object v7, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Worker result SUCCESS for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lg5/o;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ly4/c0;->c()V

    :cond_1
    :goto_0
    move v4, v5

    goto/16 :goto_4

    :cond_2
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lg5/q;->n(ILjava/lang/String;)V

    check-cast p0, Lx4/q;

    iget-object p0, p0, Lx4/q;->a:Lx4/h;

    const-string v3, "success.outputData"

    invoke-static {p0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, p0}, Lg5/q;->m(Ljava/lang/String;Lx4/h;)V

    iget-object p0, v0, Ly4/c0;->f:Lx4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object p0, v0, Ly4/c0;->j:Lg5/c;

    invoke-virtual {p0, v1}, Lg5/c;->h(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :cond_3
    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v3, v3, 0x1

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_3

    const-string v9, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    invoke-static {v4, v9}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object v10, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v10, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v10, v9}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_4

    move v11, v4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lk4/n;->c()V

    if-eqz v11, :cond_3

    sget-object v9, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v10

    const-string v11, "Setting status to enqueued for "

    invoke-virtual {v11, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v8}, Lg5/q;->n(ILjava/lang/String;)V

    invoke-virtual {v2, v6, v7, v8}, Lg5/q;->l(JLjava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lk4/n;->c()V

    throw p0

    :cond_5
    instance-of v1, p0, Lx4/p;

    if-eqz v1, :cond_6

    sget-object p0, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Worker result RETRY for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x100

    invoke-virtual {v0, p0}, Ly4/c0;->b(I)V

    goto :goto_4

    :cond_6
    sget-object v1, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Worker result FAILURE for "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lg5/o;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ly4/c0;->c()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0, p0}, Ly4/c0;->d(Lx4/r;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {v3}, Lr0/i;->c(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, -0x200

    invoke-virtual {v0, p0}, Ly4/c0;->b(I)V

    :goto_4
    move v5, v4

    goto/16 :goto_6

    :catchall_1
    move-exception p0

    goto :goto_5

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    invoke-virtual {v6, v8}, Lk4/p;->f(Lr4/i;)V

    throw p0

    :cond_9
    instance-of v3, p0, Ly4/v;

    if-eqz v3, :cond_a

    check-cast p0, Ly4/v;

    iget-object p0, p0, Ly4/v;->a:Lx4/r;

    invoke-virtual {v0, p0}, Ly4/c0;->d(Lx4/r;)V

    goto :goto_6

    :cond_a
    instance-of v0, p0, Ly4/x;

    if-eqz v0, :cond_c

    check-cast p0, Ly4/x;

    iget p0, p0, Ly4/x;->a:I

    invoke-virtual {v2, v1}, Lg5/q;->g(Ljava/lang/String;)I

    move-result v0

    const-string v3, " is "

    const-string v6, "Status for "

    if-eqz v0, :cond_b

    invoke-static {v0}, Lr0/i;->c(I)Z

    move-result v7

    if-nez v7, :cond_b

    sget-object v5, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v7

    invoke-static {v6, v1, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lr0/i;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; not doing any work and rescheduling for later execution"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v5, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v1}, Lg5/q;->n(ILjava/lang/String;)V

    invoke-virtual {v2, p0, v1}, Lg5/q;->o(ILjava/lang/String;)V

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v5, v6, v1}, Lg5/q;->j(JLjava/lang/String;)V

    goto :goto_4

    :cond_b
    sget-object p0, Ly4/d0;->a:Ljava/lang/String;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v2

    invoke-static {v6, v1, v3}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lr0/i;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ; not doing any work"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
