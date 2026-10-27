.class public final synthetic Lb0/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Li9/a;Lr0/u0;Lu9/t;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    iput p2, p0, Lb0/c3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lb0/c3;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/c3;->n:Ljava/lang/Object;

    iput-object p1, p0, Lb0/c3;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lb0/c3;->l:I

    iput-object p1, p0, Lb0/c3;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/c3;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/c3;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lr0/q;Ls0/a;Lr0/d2;Lr0/t0;)V
    .locals 0

    .line 3
    const/16 p4, 0xf

    iput p4, p0, Lb0/c3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/c3;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/c3;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/c3;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 95

    move-object/from16 v0, p0

    iget v1, v0, Lb0/c3;->l:I

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v8, Lt8/z;->a:Lt8/z;

    iget-object v9, v0, Lb0/c3;->o:Ljava/lang/Object;

    iget-object v10, v0, Lb0/c3;->n:Ljava/lang/Object;

    iget-object v0, v0, Lb0/c3;->m:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lz0/b;

    check-cast v10, Landroidx/lifecycle/a1;

    check-cast v9, La6/k;

    invoke-virtual {v0}, Lz0/b;->a()V

    iget-object v0, v10, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lz0/a;

    iget v2, v9, La6/k;->m:I

    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    ushr-int/lit8 v3, v0, 0x1b

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    :pswitch_0
    check-cast v0, Ly/g;

    check-cast v10, Le2/h1;

    check-cast v9, Ld5/a;

    invoke-static {v0, v10, v9}, Ly/g;->M0(Ly/g;Le2/h1;Ld5/a;)Ll1/c;

    move-result-object v12

    if-eqz v12, :cond_3

    iget-object v11, v0, Ly/g;->z:Lr/i;

    iget-wide v0, v11, Lr/i;->F:J

    invoke-static {v0, v1, v3, v4}, Lb3/l;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    invoke-static {v0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_2
    iget-wide v13, v11, Lr/i;->F:J

    const-wide/16 v15, 0x0

    invoke-virtual/range {v11 .. v16}, Lr/i;->P0(Ll1/c;JJ)J

    move-result-wide v0

    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr v0, v2

    invoke-virtual {v12, v0, v1}, Ll1/c;->j(J)Ll1/c;

    move-result-object v7

    :cond_3
    return-object v7

    :pswitch_1
    check-cast v0, Lr0/d0;

    check-cast v10, Lw/p;

    check-cast v9, Lw/b;

    invoke-virtual {v0}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/e;

    new-instance v1, Ld1/c0;

    iget-object v2, v10, Lw/p;->e:Lf8/p2;

    iget-object v2, v2, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v2, Lx/z;

    invoke-virtual {v2}, Lx/z;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo9/d;

    invoke-direct {v1, v2, v0}, Ld1/c0;-><init>(Lo9/d;Lw/e;)V

    new-instance v2, Lw/g;

    invoke-direct {v2, v10, v0, v9, v1}, Lw/g;-><init>(Lw/p;Lw/e;Lw/b;Ld1/c0;)V

    return-object v2

    :pswitch_2
    check-cast v0, Lr0/a;

    check-cast v10, Lr0/h2;

    check-cast v9, Ls0/k0;

    if-eqz v0, :cond_4

    invoke-virtual {v10, v0}, Lr0/h2;->c(Lr0/a;)I

    move-result v0

    iget v1, v10, Lr0/h2;->t:I

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Lr0/h2;->a(I)V

    :cond_4
    iget v0, v10, Lr0/h2;->t:I

    invoke-static {v10, v7, v0, v7}, Ll7/a;->e(Lr0/h2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le1/c;

    if-eqz v1, :cond_5

    iget-object v1, v1, Le1/c;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_5
    move-object v1, v7

    :goto_1
    invoke-interface {v9, v1}, Ls0/k0;->f(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/c;

    invoke-static {v2, v6}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    iget v3, v3, Le1/c;->a:I

    new-instance v4, Le1/c;

    invoke-direct {v4, v3, v7, v1}, Le1/c;-><init>(ILpc/h;Ljava/lang/Integer;)V

    invoke-static {v4}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_7
    :goto_2
    new-instance v1, Le1/a;

    invoke-static {v0, v2}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Le1/a;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_3
    move-object v1, v0

    check-cast v1, Lr0/q;

    check-cast v10, Ls0/a;

    check-cast v9, Lr0/d2;

    iget-object v2, v1, Lr0/q;->M:Ls0/b;

    iget-object v3, v2, Ls0/b;->b:Ls0/a;

    :try_start_0
    iput-object v10, v2, Ls0/b;->b:Ls0/a;

    iget-object v4, v1, Lr0/q;->G:Lr0/d2;

    iget-object v6, v1, Lr0/q;->o:[I

    iget-object v8, v1, Lr0/q;->v:Lk/x;

    iput-object v7, v1, Lr0/q;->o:[I

    iput-object v7, v1, Lr0/q;->v:Lk/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v9, v1, Lr0/q;->G:Lr0/d2;

    iget-boolean v9, v2, Ls0/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v5, v2, Ls0/b;->e:Z

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    iput-boolean v9, v2, Ls0/b;->e:Z

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    iput-object v4, v1, Lr0/q;->G:Lr0/d2;

    iput-object v6, v1, Lr0/q;->o:[I

    iput-object v8, v1, Lr0/q;->v:Lk/x;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    iput-object v3, v2, Ls0/b;->b:Ls0/a;

    throw v0

    :pswitch_4
    check-cast v0, Lr/i;

    move-object v1, v10

    check-cast v1, Lr/a3;

    move-object v2, v9

    check-cast v2, Lr/d;

    iget-object v7, v0, Lr/i;->D:Lr/a;

    :goto_3
    iget-object v9, v7, Lr/a;->a:Lt0/b;

    iget v10, v9, Lt0/b;->n:I

    if-eqz v10, :cond_a

    if-eqz v10, :cond_9

    add-int/lit8 v10, v10, -0x1

    iget-object v9, v9, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v9, v9, v10

    check-cast v9, Lr/g;

    iget-object v9, v9, Lr/g;->a:Ly/f;

    invoke-virtual {v9}, Ly/f;->invoke()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ll1/c;

    if-nez v10, :cond_8

    move-object v9, v0

    move v0, v6

    goto :goto_4

    :cond_8
    const-wide/16 v13, 0x0

    const/4 v15, 0x3

    const-wide/16 v11, 0x0

    move-object v9, v0

    invoke-static/range {v9 .. v15}, Lr/i;->N0(Lr/i;Ll1/c;JJI)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_b

    iget-object v0, v7, Lr/a;->a:Lt0/b;

    iget v10, v0, Lt0/b;->n:I

    sub-int/2addr v10, v6

    invoke-virtual {v0, v10}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/g;

    iget-object v0, v0, Lr/g;->b:Lu9/g;

    invoke-virtual {v0, v8}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    move-object v0, v9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "MutableVector is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v9, v0

    :cond_b
    iget-boolean v0, v9, Lr/i;->E:Z

    if-eqz v0, :cond_d

    iget-object v0, v9, Lr/i;->C:Lr/b2;

    invoke-virtual {v0}, Lr/b2;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ll1/c;

    if-eqz v10, :cond_c

    const-wide/16 v13, 0x0

    const/4 v15, 0x3

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v15}, Lr/i;->N0(Lr/i;Ll1/c;JJI)Z

    move-result v0

    if-ne v0, v6, :cond_c

    goto :goto_5

    :cond_c
    move v6, v5

    :goto_5
    if-eqz v6, :cond_d

    iput-boolean v5, v9, Lr/i;->E:Z

    :cond_d
    invoke-static {v9, v2, v3, v4}, Lr/i;->M0(Lr/i;Lr/d;J)F

    move-result v0

    iput v0, v1, Lr/a3;->e:F

    return-object v8

    :pswitch_5
    check-cast v0, Lla/g;

    check-cast v10, Lla/o;

    check-cast v9, Lla/a;

    iget-object v0, v0, Lla/g;->b:Ll7/a;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lla/o;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, v9, Lla/a;->h:Lla/r;

    iget-object v2, v2, Lla/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ll7/a;->j(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_6
    check-cast v0, Lu9/t;

    check-cast v10, Lr0/u0;

    check-cast v9, Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v3, 0x1c

    invoke-direct {v1, v9, v7, v3}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v7, v7, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v8

    :pswitch_7
    check-cast v0, Lld/j;

    check-cast v10, Ljava/lang/Double;

    check-cast v9, Li9/a;

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->u()Lua/nav/stats/a;

    move-result-object v1

    invoke-virtual {v1, v0, v10}, Lua/nav/stats/a;->e(Lld/j;Ljava/lang/Double;)V

    invoke-interface {v9}, Li9/a;->invoke()Ljava/lang/Object;

    return-object v8

    :pswitch_8
    check-cast v0, Lld/l;

    check-cast v10, Lr0/u0;

    check-cast v9, Lr0/b1;

    invoke-interface {v10, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v9, v5}, Lr0/b1;->h(I)V

    return-object v8

    :pswitch_9
    check-cast v0, Li9/c;

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    check-cast v9, Lr0/r2;

    sget-object v1, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lua/nav/Tuning;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "current"

    invoke-static {v11, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    invoke-static {v12, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "careful"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v13, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    const/16 v93, -0x43e

    const/16 v94, 0x3fff

    const-string v14, "careful"

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x9c4

    const-wide v19, 0x3fc70a3d70a3d70aL    # 0.18

    const-wide v21, 0x3fcc28f5c28f5c29L    # 0.22

    const-wide v23, 0x3f947ae147ae147bL    # 0.02

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x1f4

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const/16 v88, 0x0

    const-wide/16 v89, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    invoke-static/range {v13 .. v94}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v1

    goto/16 :goto_6

    :cond_e
    const-string v1, "sensitive"

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v13, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    const/16 v93, -0x43e

    const/16 v94, 0x3fff

    const-string v14, "sensitive"

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x3e8

    const-wide v19, 0x3fd6666666666666L    # 0.35

    const-wide v21, 0x3fdccccccccccccdL    # 0.45

    const-wide v23, 0x3fa999999999999aL    # 0.05

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x384

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const-wide/16 v86, 0x0

    const/16 v88, 0x0

    const-wide/16 v89, 0x0

    const/16 v91, 0x0

    const/16 v92, 0x0

    invoke-static/range {v13 .. v94}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v1

    goto :goto_6

    :cond_f
    sget-object v1, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    :goto_6
    iget-wide v13, v1, Lua/nav/Tuning;->b:J

    iget-wide v2, v1, Lua/nav/Tuning;->c:J

    iget-wide v4, v1, Lua/nav/Tuning;->d:D

    iget-wide v6, v1, Lua/nav/Tuning;->e:D

    iget-wide v9, v1, Lua/nav/Tuning;->f:D

    move-wide v15, v2

    iget-wide v2, v1, Lua/nav/Tuning;->g:D

    move-wide/from16 v23, v2

    iget-wide v2, v1, Lua/nav/Tuning;->h:D

    move-wide/from16 v25, v2

    iget-wide v2, v1, Lua/nav/Tuning;->i:D

    move-wide/from16 v27, v2

    iget-wide v2, v1, Lua/nav/Tuning;->j:D

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lua/nav/Tuning;->k:J

    move-wide/from16 v31, v2

    iget-wide v2, v1, Lua/nav/Tuning;->l:J

    move-wide/from16 v33, v2

    iget-wide v2, v1, Lua/nav/Tuning;->m:J

    move-wide/from16 v35, v2

    iget-wide v1, v1, Lua/nav/Tuning;->n:D

    const/16 v91, -0x4000

    const/16 v92, 0x3fff

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    const-wide/16 v65, 0x0

    const-wide/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const-wide/16 v72, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const-wide/16 v76, 0x0

    const-wide/16 v78, 0x0

    const-wide/16 v80, 0x0

    const-wide/16 v82, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const-wide/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    move-wide/from16 v37, v1

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    move-wide/from16 v21, v9

    invoke-static/range {v11 .. v92}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :pswitch_a
    check-cast v0, Landroid/content/Context;

    check-cast v10, Lc/i;

    check-cast v9, Lua/nav/c;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_10

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lc/i;->a(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual {v9}, Lua/nav/c;->V()V

    return-object v8

    :pswitch_b
    check-cast v0, Lorg/maplibre/android/maps/MapView;

    check-cast v10, Lr0/u0;

    check-cast v9, Lua/nav/c;

    invoke-static {v0, v10}, Lod/g3;->f(Lorg/maplibre/android/maps/MapView;Lr0/u0;)Lua/nav/routing/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, v9, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->g:Lsc/d;

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lsc/q0;

    const/16 v26, 0x0

    const v27, 0xffbf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v10 .. v27}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v9, v2, v0, v7}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_12
    :goto_7
    return-object v8

    :pswitch_c
    check-cast v0, Lr0/u0;

    check-cast v10, Lr0/u0;

    check-cast v9, Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v10, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v8

    :pswitch_d
    check-cast v0, Lua/nav/c;

    check-cast v10, Lsc/d;

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v0, v10}, Lua/nav/c;->O(Lsc/d;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    sget-object v1, Lcd/d;->D0:Lcd/c;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_13
    sget-object v0, Lcd/d;->C0:Lcd/c;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v9, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v8

    :pswitch_e
    check-cast v0, Landroid/content/SharedPreferences;

    check-cast v10, Landroid/content/Context;

    check-cast v9, Lr0/u0;

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lod/h3;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_16

    if-eq v1, v6, :cond_15

    if-ne v1, v2, :cond_14

    sget-object v1, Lod/h3;->l:Lod/h3;

    goto :goto_9

    :cond_14
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_15
    sget-object v1, Lod/h3;->n:Lod/h3;

    goto :goto_9

    :cond_16
    sget-object v1, Lod/h3;->m:Lod/h3;

    :goto_9
    invoke-interface {v9, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lod/h3;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v3, "theme"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lod/h3;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_19

    if-eq v0, v6, :cond_18

    if-ne v0, v2, :cond_17

    sget-object v0, Lcd/d;->a1:Lcd/c;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_17
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_18
    sget-object v0, Lcd/d;->Z0:Lcd/c;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_19
    sget-object v0, Lcd/d;->Y0:Lcd/c;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-static {v10, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v8

    :pswitch_f
    check-cast v0, Lu9/t;

    check-cast v10, Lr0/u0;

    check-cast v9, Landroid/content/Context;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lad/w;

    const/16 v3, 0xc

    invoke-direct {v1, v9, v7, v3}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v7, v7, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v8

    :pswitch_10
    check-cast v0, Li9/c;

    check-cast v10, Li9/a;

    check-cast v9, Lr0/b1;

    invoke-virtual {v9}, Lr0/b1;->g()I

    move-result v1

    if-lez v1, :cond_1a

    invoke-virtual {v9}, Lr0/b1;->g()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1a
    invoke-interface {v10}, Li9/a;->invoke()Ljava/lang/Object;

    :goto_b
    return-object v8

    :pswitch_11
    check-cast v0, Landroid/content/Context;

    check-cast v10, Li9/a;

    check-cast v9, Lr0/u0;

    const-string v1, "ctx"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rationale_shown"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v10}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object v0, Lnd/g;->m:Lnd/g;

    invoke-interface {v9, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v8

    :pswitch_12
    check-cast v0, Lb0/e3;

    check-cast v10, Lp2/e;

    check-cast v9, Lf2/y0;

    iget-object v1, v10, Lp2/e;->a:Ljava/lang/Object;

    check-cast v1, Lp2/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v1, Lp2/l;

    if-eqz v0, :cond_1b

    :try_start_5
    check-cast v1, Lp2/l;

    iget-object v0, v1, Lp2/l;->a:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lf2/y0;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    :cond_1b
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
