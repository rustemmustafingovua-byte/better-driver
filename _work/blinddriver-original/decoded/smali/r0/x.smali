.class public final Lr0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/t;


# instance fields
.field public A:Lr0/c2;

.field public B:Lr0/g1;

.field public C:Lr0/x;

.field public D:I

.field public final E:Lq3/k;

.field public final F:Lmb/x4;

.field public final G:Lr0/q;

.field public H:I

.field public final l:Lr0/u;

.field public final m:Le2/f2;

.field public final n:Ljava/util/concurrent/atomic/AtomicReference;

.field public final o:Ljava/lang/Object;

.field public final p:Lk/p0;

.field public final q:Lr0/e2;

.field public final r:Lk/m0;

.field public final s:Lk/n0;

.field public final t:Lk/n0;

.field public final u:Lk/m0;

.field public final v:Ls0/a;

.field public final w:Ls0/a;

.field public final x:Lk/m0;

.field public y:Lk/m0;

.field public z:Z


# direct methods
.method public constructor <init>(Lr0/u;Le2/f2;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/x;->l:Lr0/u;

    iput-object p2, p0, Lr0/x;->m:Le2/f2;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    new-instance v5, Lk/p0;

    invoke-direct {v5, v0}, Lk/p0;-><init>(Lk/n0;)V

    iput-object v5, p0, Lr0/x;->p:Lk/p0;

    new-instance v4, Lr0/e2;

    invoke-direct {v4}, Lr0/e2;-><init>()V

    invoke-virtual {p1}, Lr0/u;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    iput-object v0, v4, Lr0/e2;->v:Lk/x;

    :cond_0
    invoke-virtual {p1}, Lr0/u;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lr0/e2;->b()V

    :cond_1
    iput-object v4, p0, Lr0/x;->q:Lr0/e2;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v0

    iput-object v0, p0, Lr0/x;->r:Lk/m0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Lr0/x;->s:Lk/n0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Lr0/x;->t:Lk/n0;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v0

    iput-object v0, p0, Lr0/x;->u:Lk/m0;

    new-instance v6, Ls0/a;

    invoke-direct {v6}, Ls0/a;-><init>()V

    iput-object v6, p0, Lr0/x;->v:Ls0/a;

    new-instance v7, Ls0/a;

    invoke-direct {v7}, Ls0/a;-><init>()V

    iput-object v7, p0, Lr0/x;->w:Ls0/a;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v0

    iput-object v0, p0, Lr0/x;->x:Lk/m0;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v0

    iput-object v0, p0, Lr0/x;->y:Lk/m0;

    new-instance v8, Lq3/k;

    const/4 v0, 0x3

    invoke-direct {v8, v0, p1}, Lq3/k;-><init>(ILjava/lang/Object;)V

    iput-object v8, p0, Lr0/x;->E:Lq3/k;

    new-instance v0, Lmb/x4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmb/x4;-><init>(I)V

    iput-object v0, p0, Lr0/x;->F:Lmb/x4;

    new-instance v1, Lr0/q;

    move-object v9, p0

    move-object v3, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v9}, Lr0/q;-><init>(Le2/f2;Lr0/u;Lr0/e2;Lk/p0;Ls0/a;Ls0/a;Lq3/k;Lr0/x;)V

    invoke-virtual {v3, v1}, Lr0/u;->p(Lr0/q;)V

    iput-object v1, v9, Lr0/x;->G:Lr0/q;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lr0/x;->v(Ljava/lang/Object;)V

    iget-object v1, p0, Lr0/x;->u:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    instance-of v1, p1, Lk/n0;

    if-eqz v1, :cond_3

    check-cast p1, Lk/n0;

    iget-object v1, p1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object p1, p1, Lk/n0;->a:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Lr0/d0;

    invoke-virtual {p0, v10}, Lr0/x;->v(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, Lr0/d0;

    invoke-virtual {p0, p1}, Lr0/x;->v(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method public final B(Li9/e;)V
    .locals 3

    invoke-virtual {p0}, Lr0/x;->i()Z

    move-result v0

    invoke-virtual {p0}, Lr0/x;->q()V

    iget-object v1, p0, Lr0/x;->l:Lr0/u;

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    iget-object v2, p0, Lr0/x;->G:Lr0/q;

    iput v0, v2, Lr0/q;->z:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Lr0/q;->y:Z

    invoke-virtual {v1, p0, p1}, Lr0/u;->a(Lr0/x;Li9/e;)V

    invoke-virtual {v2}, Lr0/q;->v()V

    return-void

    :cond_0
    invoke-virtual {v1, p0, p1}, Lr0/u;->a(Lr0/x;Li9/e;)V

    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lr0/x;->v:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v0}, Ls0/m0;->C()V

    iget-object v0, p0, Lr0/x;->w:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v0}, Ls0/m0;->C()V

    iget-object v0, p0, Lr0/x;->p:Lk/p0;

    iget-object v1, v0, Lk/p0;->l:Lk/n0;

    invoke-virtual {v1}, Lk/n0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr0/x;->F:Lmb/x4;

    iget-object p0, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {p0}, Lr0/q;->D()Le1/e;

    move-result-object p0

    :try_start_0
    invoke-virtual {v1, v0, p0}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v1}, Lmb/x4;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lmb/x4;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lmb/x4;->a()V

    throw p0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr0/x;->r:Lk/m0;

    invoke-virtual {v2, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    instance-of v3, v2, Lk/n0;

    iget-object v4, v0, Lr0/x;->s:Lk/n0;

    iget-object v5, v0, Lr0/x;->t:Lk/n0;

    iget-object v0, v0, Lr0/x;->x:Lk/m0;

    if-eqz v3, :cond_4

    check-cast v2, Lk/n0;

    iget-object v3, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lk/n0;->a:[J

    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_6

    const/4 v8, 0x0

    :goto_0
    aget-wide v9, v2, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3

    sub-int v11, v8, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    const-wide/16 v16, 0x80

    cmp-long v14, v14, v16

    if-gez v14, :cond_1

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Lr0/n1;

    invoke-static {v0, v1, v14}, Lr5/u0;->r(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual {v14, v1}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    move-result-object v15

    sget-object v7, Lr0/n0;->l:Lr0/n0;

    if-eq v15, v7, :cond_1

    iget-object v7, v14, Lr0/n1;->g:Lk/m0;

    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {v5, v14}, Lk/n0;->a(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v14}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    shr-long/2addr v9, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    if-ne v11, v12, :cond_6

    :cond_3
    if-eq v8, v6, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    check-cast v2, Lr0/n1;

    invoke-static {v0, v1, v2}, Lr5/u0;->r(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2, v1}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    move-result-object v0

    sget-object v1, Lr0/n0;->l:Lr0/n0;

    if-eq v0, v1, :cond_6

    iget-object v0, v2, Lr0/n1;->g:Lk/m0;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    invoke-virtual {v5, v2}, Lk/n0;->a(Ljava/lang/Object;)Z

    return-void

    :cond_5
    invoke-virtual {v4, v2}, Lk/n0;->a(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final c(Ljava/util/Set;Z)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v1, Lt0/d;

    iget-object v4, v0, Lr0/x;->u:Lk/m0;

    const/4 v5, 0x0

    const/16 v14, 0x8

    if-eqz v3, :cond_b

    check-cast v1, Lt0/d;

    iget-object v1, v1, Lt0/d;->l:Lk/n0;

    iget-object v3, v1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v1, v1, Lk/n0;->a:[J

    array-length v15, v1

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_a

    const/4 v6, 0x0

    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    :goto_0
    aget-wide v8, v1, v6

    const/4 v7, 0x7

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v10, v8

    shl-long/2addr v10, v7

    and-long/2addr v10, v8

    and-long v10, v10, v20

    cmp-long v10, v10, v20

    if-eqz v10, :cond_9

    sub-int v10, v6, v15

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_8

    and-long v22, v8, v18

    cmp-long v12, v22, v16

    if-gez v12, :cond_7

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v12, v3, v12

    move/from16 v22, v7

    instance-of v7, v12, Lr0/n1;

    if-eqz v7, :cond_1

    check-cast v12, Lr0/n1;

    invoke-virtual {v12, v5}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    :cond_0
    move-object/from16 v29, v1

    move-wide/from16 v26, v8

    move/from16 p1, v15

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0, v12, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    invoke-virtual {v4, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    instance-of v12, v7, Lk/n0;

    if-eqz v12, :cond_5

    check-cast v7, Lk/n0;

    iget-object v12, v7, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v7, v7, Lk/n0;->a:[J

    array-length v13, v7

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_0

    move/from16 v25, v14

    move/from16 p1, v15

    const/4 v5, 0x0

    :goto_2
    aget-wide v14, v7, v5

    move-wide/from16 v26, v8

    move-object v9, v7

    not-long v7, v14

    shl-long v7, v7, v22

    and-long/2addr v7, v14

    and-long v7, v7, v20

    cmp-long v7, v7, v20

    if-eqz v7, :cond_4

    sub-int v7, v5, v13

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_3

    and-long v28, v14, v18

    cmp-long v28, v28, v16

    if-gez v28, :cond_2

    shl-int/lit8 v28, v5, 0x3

    add-int v28, v28, v8

    aget-object v28, v12, v28

    move-object/from16 v29, v1

    move-object/from16 v1, v28

    check-cast v1, Lr0/d0;

    invoke-virtual {v0, v1, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_2
    move-object/from16 v29, v1

    :goto_4
    shr-long v14, v14, v25

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v29

    goto :goto_3

    :cond_3
    move-object/from16 v29, v1

    move/from16 v1, v25

    if-ne v7, v1, :cond_6

    goto :goto_5

    :cond_4
    move-object/from16 v29, v1

    :goto_5
    if-eq v5, v13, :cond_6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v9

    move-wide/from16 v8, v26

    move-object/from16 v1, v29

    const/16 v25, 0x8

    goto :goto_2

    :cond_5
    move-object/from16 v29, v1

    move-wide/from16 v26, v8

    move/from16 p1, v15

    check-cast v7, Lr0/d0;

    invoke-virtual {v0, v7, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    :cond_6
    :goto_6
    const/16 v1, 0x8

    goto :goto_7

    :cond_7
    move-object/from16 v29, v1

    move/from16 v22, v7

    move-wide/from16 v26, v8

    move/from16 p1, v15

    move v1, v14

    :goto_7
    shr-long v8, v26, v1

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p1

    move v14, v1

    move/from16 v7, v22

    move-object/from16 v1, v29

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v29, v1

    move/from16 v22, v7

    move v1, v14

    move/from16 p1, v15

    if-ne v10, v1, :cond_12

    move/from16 v15, p1

    goto :goto_8

    :cond_9
    move-object/from16 v29, v1

    move/from16 v22, v7

    :goto_8
    if-eq v6, v15, :cond_12

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v29

    const/4 v5, 0x0

    const/16 v14, 0x8

    goto/16 :goto_0

    :cond_a
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    goto/16 :goto_c

    :cond_b
    const-wide/16 v16, 0x80

    const-wide/16 v18, 0xff

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v22, 0x7

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lr0/n1;

    if-eqz v5, :cond_d

    check-cast v3, Lr0/n1;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    goto :goto_9

    :cond_d
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    invoke-virtual {v4, v3}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    instance-of v6, v3, Lk/n0;

    if-eqz v6, :cond_11

    check-cast v3, Lk/n0;

    iget-object v6, v3, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v3, v3, Lk/n0;->a:[J

    array-length v7, v3

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_c

    const/4 v8, 0x0

    :goto_a
    aget-wide v9, v3, v8

    not-long v11, v9

    shl-long v11, v11, v22

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_10

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v11, 0x8

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v14, :cond_f

    and-long v12, v9, v18

    cmp-long v12, v12, v16

    if-gez v12, :cond_e

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    aget-object v12, v6, v12

    check-cast v12, Lr0/d0;

    invoke-virtual {v0, v12, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    :cond_e
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_f
    const/16 v12, 0x8

    if-ne v14, v12, :cond_c

    :cond_10
    if-eq v8, v7, :cond_c

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    check-cast v3, Lr0/d0;

    invoke-virtual {v0, v3, v2}, Lr0/x;->b(Ljava/lang/Object;Z)V

    goto :goto_9

    :cond_12
    :goto_c
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    iget-object v3, v0, Lr0/x;->r:Lk/m0;

    iget-object v5, v0, Lr0/x;->s:Lk/n0;

    if-eqz v2, :cond_22

    iget-object v2, v0, Lr0/x;->t:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->h()Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, v3, Lk/m0;->a:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_21

    const/4 v8, 0x0

    :goto_d
    aget-wide v9, v6, v8

    not-long v11, v9

    shl-long v11, v11, v22

    and-long/2addr v11, v9

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_20

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v11, 0x8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v14, :cond_1f

    and-long v12, v9, v18

    cmp-long v12, v12, v16

    if-gez v12, :cond_1e

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    iget-object v13, v3, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v13, v13, v12

    iget-object v13, v3, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v13, v13, v12

    instance-of v15, v13, Lk/n0;

    if-eqz v15, :cond_1a

    check-cast v13, Lk/n0;

    iget-object v15, v13, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v4, v13, Lk/n0;->a:[J

    array-length v0, v4

    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_18

    move-object/from16 v24, v4

    move-wide/from16 v26, v9

    const/4 v4, 0x0

    :goto_f
    aget-wide v9, v24, v4

    move-object/from16 v28, v6

    move/from16 p2, v7

    not-long v6, v9

    shl-long v6, v6, v22

    and-long/2addr v6, v9

    and-long v6, v6, v20

    cmp-long v6, v6, v20

    if-eqz v6, :cond_17

    sub-int v6, v4, v0

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_16

    and-long v29, v9, v18

    cmp-long v29, v29, v16

    if-gez v29, :cond_15

    shl-int/lit8 v29, v4, 0x3

    move/from16 v30, v7

    add-int v7, v29, v30

    aget-object v29, v15, v7

    move-wide/from16 v31, v9

    move-object/from16 v9, v29

    check-cast v9, Lr0/n1;

    invoke-virtual {v2, v9}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v5, v9}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    invoke-virtual {v13, v7}, Lk/n0;->m(I)V

    :cond_14
    :goto_11
    const/16 v7, 0x8

    goto :goto_12

    :cond_15
    move/from16 v30, v7

    move-wide/from16 v31, v9

    goto :goto_11

    :goto_12
    shr-long v9, v31, v7

    add-int/lit8 v25, v30, 0x1

    move/from16 v7, v25

    goto :goto_10

    :cond_16
    const/16 v7, 0x8

    if-ne v6, v7, :cond_19

    :cond_17
    if-eq v4, v0, :cond_19

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, p2

    move-object/from16 v6, v28

    goto :goto_f

    :cond_18
    move-object/from16 v28, v6

    move/from16 p2, v7

    move-wide/from16 v26, v9

    :cond_19
    invoke-virtual {v13}, Lk/n0;->g()Z

    move-result v0

    goto :goto_14

    :cond_1a
    move-object/from16 v28, v6

    move/from16 p2, v7

    move-wide/from16 v26, v9

    invoke-static {v13, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Lr0/n1;

    invoke-virtual {v2, v13}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v5, v13}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_13

    :cond_1b
    const/4 v0, 0x0

    goto :goto_14

    :cond_1c
    :goto_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_1d

    invoke-virtual {v3, v12}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_1d
    :goto_15
    const/16 v7, 0x8

    goto :goto_16

    :cond_1e
    move-object/from16 v28, v6

    move/from16 p2, v7

    move-wide/from16 v26, v9

    goto :goto_15

    :goto_16
    shr-long v9, v26, v7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v7, p2

    move-object/from16 v6, v28

    goto/16 :goto_e

    :cond_1f
    move-object/from16 v28, v6

    move/from16 p2, v7

    const/16 v7, 0x8

    if-ne v14, v7, :cond_21

    move/from16 v7, p2

    goto :goto_17

    :cond_20
    move-object/from16 v28, v6

    :goto_17
    if-eq v8, v7, :cond_21

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v28

    goto/16 :goto_d

    :cond_21
    invoke-virtual {v2}, Lk/n0;->b()V

    invoke-virtual/range {p0 .. p0}, Lr0/x;->h()V

    return-void

    :cond_22
    invoke-virtual {v5}, Lk/n0;->h()Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, v3, Lk/m0;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_30

    const/4 v4, 0x0

    :goto_18
    aget-wide v6, v0, v4

    not-long v8, v6

    shl-long v8, v8, v22

    and-long/2addr v8, v6

    and-long v8, v8, v20

    cmp-long v8, v8, v20

    if-eqz v8, :cond_2f

    sub-int v8, v4, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v14, v8, 0x8

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v14, :cond_2e

    and-long v9, v6, v18

    cmp-long v9, v9, v16

    if-gez v9, :cond_23

    const/4 v9, 0x1

    goto :goto_1a

    :cond_23
    const/4 v9, 0x0

    :goto_1a
    if-eqz v9, :cond_2d

    shl-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v8

    iget-object v10, v3, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v10, v10, v9

    iget-object v10, v3, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v10, v10, v9

    instance-of v11, v10, Lk/n0;

    if-eqz v11, :cond_2b

    check-cast v10, Lk/n0;

    iget-object v11, v10, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v12, v10, Lk/n0;->a:[J

    array-length v13, v12

    add-int/lit8 v13, v13, -0x2

    if-ltz v13, :cond_29

    move-wide/from16 v26, v6

    const/4 v15, 0x0

    :goto_1b
    aget-wide v6, v12, v15

    move-object/from16 v24, v11

    move-object/from16 v28, v12

    not-long v11, v6

    shl-long v11, v11, v22

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_28

    sub-int v11, v15, v13

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v11, :cond_27

    and-long v29, v6, v18

    cmp-long v29, v29, v16

    if-gez v29, :cond_24

    const/16 v29, 0x1

    goto :goto_1d

    :cond_24
    const/16 v29, 0x0

    :goto_1d
    if-eqz v29, :cond_26

    shl-int/lit8 v29, v15, 0x3

    move-object/from16 v30, v0

    add-int v0, v29, v12

    aget-object v29, v24, v0

    move-wide/from16 v31, v6

    move-object/from16 v6, v29

    check-cast v6, Lr0/n1;

    invoke-virtual {v5, v6}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v10, v0}, Lk/n0;->m(I)V

    :cond_25
    :goto_1e
    const/16 v7, 0x8

    goto :goto_1f

    :cond_26
    move-object/from16 v30, v0

    move-wide/from16 v31, v6

    goto :goto_1e

    :goto_1f
    shr-long v31, v31, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v30

    move-wide/from16 v6, v31

    goto :goto_1c

    :cond_27
    move-object/from16 v30, v0

    const/16 v7, 0x8

    if-ne v11, v7, :cond_2a

    goto :goto_20

    :cond_28
    move-object/from16 v30, v0

    :goto_20
    if-eq v15, v13, :cond_2a

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v24

    move-object/from16 v12, v28

    move-object/from16 v0, v30

    goto :goto_1b

    :cond_29
    move-object/from16 v30, v0

    move-wide/from16 v26, v6

    :cond_2a
    invoke-virtual {v10}, Lk/n0;->g()Z

    move-result v0

    goto :goto_21

    :cond_2b
    move-object/from16 v30, v0

    move-wide/from16 v26, v6

    invoke-static {v10, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lr0/n1;

    invoke-virtual {v5, v10}, Lk/n0;->c(Ljava/lang/Object;)Z

    move-result v0

    :goto_21
    if-eqz v0, :cond_2c

    invoke-virtual {v3, v9}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_2c
    :goto_22
    const/16 v7, 0x8

    goto :goto_23

    :cond_2d
    move-object/from16 v30, v0

    move-wide/from16 v26, v6

    goto :goto_22

    :goto_23
    shr-long v9, v26, v7

    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v30

    goto/16 :goto_19

    :cond_2e
    move-object/from16 v30, v0

    const/16 v7, 0x8

    if-ne v14, v7, :cond_30

    goto :goto_24

    :cond_2f
    move-object/from16 v30, v0

    const/16 v7, 0x8

    :goto_24
    if-eq v4, v2, :cond_30

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v30

    goto/16 :goto_18

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lr0/x;->h()V

    invoke-virtual {v5}, Lk/n0;->b()V

    :cond_31
    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->v:Ls0/a;

    invoke-virtual {p0, v1}, Lr0/x;->e(Ls0/a;)V

    invoke-virtual {p0}, Lr0/x;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lr0/x;->p:Lk/p0;

    iget-object v2, v2, Lk/p0;->l:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lr0/x;->F:Lmb/x4;

    iget-object v3, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v4}, Lr0/q;->D()Le1/e;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v3, v4}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v2}, Lmb/x4;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Lmb/x4;->a()V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v2}, Lmb/x4;->a()V

    throw v1

    :cond_0
    :goto_0
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {p0}, Lr0/x;->a()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final e(Ls0/a;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lr0/x;->w:Ls0/a;

    iget-object v3, v1, Lr0/x;->G:Lr0/q;

    invoke-virtual {v3}, Lr0/q;->D()Le1/e;

    move-result-object v4

    iget-object v5, v1, Lr0/x;->F:Lmb/x4;

    iget-object v6, v1, Lr0/x;->p:Lk/p0;

    invoke-virtual {v5, v6, v4}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    :try_start_0
    iget-object v4, v0, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v4}, Ls0/m0;->E()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_1

    :try_start_1
    iget-object v0, v2, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v0}, Ls0/m0;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lr0/x;->B:Lr0/g1;

    if-nez v0, :cond_0

    invoke-virtual {v5}, Lmb/x4;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v5}, Lmb/x4;->a()V

    return-void

    :goto_1
    invoke-virtual {v5}, Lmb/x4;->a()V

    throw v0

    :cond_1
    :try_start_2
    iget-object v4, v1, Lr0/x;->B:Lr0/g1;

    if-eqz v4, :cond_2

    iget-object v6, v4, Lr0/g1;->l:Lr0/v1;

    if-eqz v6, :cond_2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_13

    :cond_2
    iget-object v6, v1, Lr0/x;->m:Le2/f2;

    :goto_2
    if-eqz v4, :cond_3

    iget-object v4, v4, Lr0/g1;->l:Lr0/v1;

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Compose:recordChanges"

    goto :goto_4

    :cond_4
    const-string v4, "Compose:applyChanges"

    :goto_4
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, v1, Lr0/x;->B:Lr0/g1;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lr0/g1;->k:Lmb/x4;

    if-nez v4, :cond_6

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_12

    :cond_5
    :goto_5
    move-object v4, v5

    :cond_6
    iget-object v7, v1, Lr0/x;->q:Lr0/e2;

    invoke-virtual {v7}, Lr0/e2;->d()Lr0/h2;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v3}, Lr0/q;->D()Le1/e;

    move-result-object v3

    invoke-virtual {v0, v6, v7, v4, v3}, Ls0/a;->C(Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v0, 0x1

    :try_start_5
    invoke-virtual {v7, v0}, Lr0/h2;->e(Z)V

    invoke-interface {v6}, Lr0/c;->m()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-virtual {v5}, Lmb/x4;->c()V

    invoke-virtual {v5}, Lmb/x4;->d()V

    iget-boolean v3, v1, Lr0/x;->z:Z

    if-eqz v3, :cond_15

    const-string v3, "Compose:unobserve"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iput-boolean v8, v1, Lr0/x;->z:Z

    iget-object v3, v1, Lr0/x;->r:Lk/m0;

    iget-object v4, v3, Lk/m0;->a:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_13

    move v7, v8

    :goto_6
    aget-wide v9, v4, v7

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v14

    cmp-long v11, v11, v14

    if-eqz v11, :cond_12

    sub-int v11, v7, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move v0, v8

    :goto_7
    if-ge v0, v11, :cond_11

    const-wide/16 v16, 0xff

    and-long v18, v9, v16

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_10

    shl-int/lit8 v18, v7, 0x3

    move/from16 v19, v13

    add-int v13, v18, v0

    move-wide/from16 v22, v14

    iget-object v14, v3, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v14, v14, v13

    iget-object v14, v3, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v14, v14, v13

    instance-of v15, v14, Lk/n0;

    if-eqz v15, :cond_d

    check-cast v14, Lk/n0;

    iget-object v15, v14, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v8, v14, Lk/n0;->a:[J

    move/from16 v24, v12

    array-length v12, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    add-int/lit8 v12, v12, -0x2

    move/from16 v25, v0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    if-ltz v12, :cond_b

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    aget-wide v4, v8, v0

    move-wide/from16 v28, v9

    move-object v10, v8

    not-long v8, v4

    shl-long v8, v8, v19

    and-long/2addr v8, v4

    and-long v8, v8, v22

    cmp-long v8, v8, v22

    if-eqz v8, :cond_a

    sub-int v8, v0, v12

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_9

    and-long v30, v4, v16

    cmp-long v30, v30, v20

    if-gez v30, :cond_7

    shl-int/lit8 v30, v0, 0x3

    move-wide/from16 v31, v4

    add-int v4, v30, v9

    aget-object v5, v15, v4

    check-cast v5, Lr0/n1;

    invoke-virtual {v5}, Lr0/n1;->b()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v14, v4}, Lk/n0;->m(I)V

    goto :goto_a

    :catchall_3
    move-exception v0

    goto/16 :goto_e

    :cond_7
    move-wide/from16 v31, v4

    :cond_8
    :goto_a
    shr-long v4, v31, v24

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_9
    move/from16 v4, v24

    if-ne v8, v4, :cond_c

    :cond_a
    if-eq v0, v12, :cond_c

    add-int/lit8 v0, v0, 0x1

    move-object v8, v10

    move-wide/from16 v9, v28

    const/16 v24, 0x8

    goto :goto_8

    :cond_b
    move-wide/from16 v28, v9

    :cond_c
    invoke-virtual {v14}, Lk/n0;->g()Z

    move-result v0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v26, v5

    goto/16 :goto_e

    :cond_d
    move/from16 v25, v0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-wide/from16 v28, v9

    const-string v0, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v14, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Lr0/n1;

    invoke-virtual {v14}, Lr0/n1;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_b

    :cond_e
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_f

    invoke-virtual {v3, v13}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_f
    const/16 v4, 0x8

    goto :goto_c

    :cond_10
    move/from16 v25, v0

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-wide/from16 v28, v9

    move/from16 v19, v13

    move-wide/from16 v22, v14

    move v4, v12

    :goto_c
    shr-long v9, v28, v4

    add-int/lit8 v0, v25, 0x1

    move v12, v4

    move/from16 v13, v19

    move-wide/from16 v14, v22

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_11
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move v4, v12

    if-ne v11, v4, :cond_14

    goto :goto_d

    :cond_12
    move-object/from16 v27, v4

    move-object/from16 v26, v5

    :goto_d
    if-eq v7, v6, :cond_14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/4 v0, 0x1

    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_13
    move-object/from16 v26, v5

    :cond_14
    invoke-virtual {v1}, Lr0/x;->h()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_13

    :goto_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :cond_15
    move-object/from16 v26, v5

    :goto_f
    :try_start_a
    iget-object v0, v2, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v0}, Ls0/m0;->E()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lr0/x;->B:Lr0/g1;

    if-nez v0, :cond_16

    invoke-virtual/range {v26 .. v26}, Lmb/x4;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception v0

    goto :goto_11

    :cond_16
    :goto_10
    invoke-virtual/range {v26 .. v26}, Lmb/x4;->a()V

    return-void

    :goto_11
    invoke-virtual/range {v26 .. v26}, Lmb/x4;->a()V

    throw v0

    :catchall_7
    move-exception v0

    move-object/from16 v26, v5

    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v7, v3}, Lr0/h2;->e(Z)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    :goto_12
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_13
    :try_start_d
    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v2}, Ls0/m0;->E()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v1, v1, Lr0/x;->B:Lr0/g1;

    if-nez v1, :cond_17

    invoke-virtual/range {v26 .. v26}, Lmb/x4;->b()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto :goto_14

    :catchall_9
    move-exception v0

    goto :goto_15

    :cond_17
    :goto_14
    invoke-virtual/range {v26 .. v26}, Lmb/x4;->a()V

    throw v0

    :goto_15
    invoke-virtual/range {v26 .. v26}, Lmb/x4;->a()V

    throw v0
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->w:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v1}, Ls0/m0;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr0/x;->w:Ls0/a;

    invoke-virtual {p0, v1}, Lr0/x;->e(Ls0/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    iget-object v2, p0, Lr0/x;->p:Lk/p0;

    iget-object v2, v2, Lk/p0;->l:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->g()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lr0/x;->F:Lmb/x4;

    iget-object v3, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v4}, Lr0/q;->D()Le1/e;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, v3, v4}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v2}, Lmb/x4;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v2}, Lmb/x4;->a()V

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    invoke-virtual {v2}, Lmb/x4;->a()V

    throw v1

    :cond_1
    :goto_2
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lr0/x;->a()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final g()V
    .locals 5

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    const/4 v2, 0x0

    iput-object v2, v1, Lr0/q;->v:Lk/x;

    iget-object v1, p0, Lr0/x;->p:Lk/p0;

    iget-object v1, v1, Lk/p0;->l:Lk/n0;

    invoke-virtual {v1}, Lk/n0;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr0/x;->F:Lmb/x4;

    iget-object v2, p0, Lr0/x;->p:Lk/p0;

    iget-object v3, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v3}, Lr0/q;->D()Le1/e;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v1}, Lmb/x4;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Lmb/x4;->a()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Lmb/x4;->a()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    iget-object v2, p0, Lr0/x;->p:Lk/p0;

    iget-object v2, v2, Lk/p0;->l:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->g()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lr0/x;->F:Lmb/x4;

    iget-object v3, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v4}, Lr0/q;->D()Le1/e;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2, v3, v4}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v2}, Lmb/x4;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Lmb/x4;->a()V

    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :catchall_3
    move-exception v1

    invoke-virtual {v2}, Lmb/x4;->a()V

    throw v1

    :cond_1
    :goto_2
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    :try_start_6
    invoke-virtual {p0}, Lr0/x;->a()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final h()V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/x;->u:Lk/m0;

    iget-object v2, v1, Lk/m0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    const/4 v8, 0x7

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v12, 0x8

    if-ltz v3, :cond_c

    const/4 v14, 0x0

    const-wide/16 v15, 0x80

    :goto_0
    aget-wide v4, v2, v14

    const-wide/16 v17, 0xff

    not-long v6, v4

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    and-long/2addr v6, v9

    cmp-long v6, v6, v9

    if-eqz v6, :cond_b

    sub-int v6, v14, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_a

    and-long v19, v4, v17

    cmp-long v19, v19, v15

    if-gez v19, :cond_9

    shl-int/lit8 v19, v14, 0x3

    move/from16 v20, v8

    add-int v8, v19, v7

    move-wide/from16 v21, v9

    iget-object v9, v1, Lk/m0;->b:[Ljava/lang/Object;

    aget-object v9, v9, v8

    iget-object v9, v1, Lk/m0;->c:[Ljava/lang/Object;

    aget-object v9, v9, v8

    instance-of v10, v9, Lk/n0;

    iget-object v11, v0, Lr0/x;->r:Lk/m0;

    if-eqz v10, :cond_6

    check-cast v9, Lk/n0;

    iget-object v10, v9, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v13, v9, Lk/n0;->a:[J

    move-wide/from16 v23, v15

    array-length v15, v13

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_4

    move-wide/from16 v25, v4

    move/from16 v16, v12

    const/4 v12, 0x0

    :goto_2
    aget-wide v4, v13, v12

    move-object/from16 v27, v2

    move/from16 v28, v3

    not-long v2, v4

    shl-long v2, v2, v20

    and-long/2addr v2, v4

    and-long v2, v2, v21

    cmp-long v2, v2, v21

    if-eqz v2, :cond_3

    sub-int v2, v12, v15

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_2

    and-long v29, v4, v17

    cmp-long v29, v29, v23

    if-gez v29, :cond_0

    shl-int/lit8 v29, v12, 0x3

    move/from16 v30, v3

    add-int v3, v29, v30

    aget-object v29, v10, v3

    move-wide/from16 v31, v4

    move-object/from16 v4, v29

    check-cast v4, Lr0/d0;

    invoke-virtual {v11, v4}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v9, v3}, Lk/n0;->m(I)V

    goto :goto_4

    :cond_0
    move/from16 v30, v3

    move-wide/from16 v31, v4

    :cond_1
    :goto_4
    shr-long v4, v31, v16

    add-int/lit8 v3, v30, 0x1

    goto :goto_3

    :cond_2
    move/from16 v3, v16

    if-ne v2, v3, :cond_5

    :cond_3
    if-eq v12, v15, :cond_5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v27

    move/from16 v3, v28

    const/16 v16, 0x8

    goto :goto_2

    :cond_4
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    :cond_5
    invoke-virtual {v9}, Lk/n0;->g()Z

    move-result v2

    goto :goto_5

    :cond_6
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    move-wide/from16 v23, v15

    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    invoke-static {v9, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lr0/d0;

    invoke-virtual {v11, v9}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    invoke-virtual {v1, v8}, Lk/m0;->l(I)Ljava/lang/Object;

    :cond_8
    const/16 v3, 0x8

    goto :goto_6

    :cond_9
    move-object/from16 v27, v2

    move/from16 v28, v3

    move-wide/from16 v25, v4

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v15

    move v3, v12

    :goto_6
    shr-long v4, v25, v3

    add-int/lit8 v7, v7, 0x1

    move v12, v3

    move/from16 v8, v20

    move-wide/from16 v9, v21

    move-wide/from16 v15, v23

    move-object/from16 v2, v27

    move/from16 v3, v28

    goto/16 :goto_1

    :cond_a
    move-object/from16 v27, v2

    move/from16 v28, v3

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move v3, v12

    move-wide/from16 v23, v15

    if-ne v6, v3, :cond_d

    move/from16 v3, v28

    goto :goto_7

    :cond_b
    move-object/from16 v27, v2

    move/from16 v20, v8

    move-wide/from16 v21, v9

    move-wide/from16 v23, v15

    :goto_7
    if-eq v14, v3, :cond_d

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v20

    move-wide/from16 v9, v21

    move-wide/from16 v15, v23

    move-object/from16 v2, v27

    const/16 v12, 0x8

    goto/16 :goto_0

    :cond_c
    move/from16 v20, v8

    move-wide/from16 v21, v9

    const-wide/16 v17, 0xff

    const-wide/16 v23, 0x80

    :cond_d
    iget-object v0, v0, Lr0/x;->t:Lk/n0;

    invoke-virtual {v0}, Lk/n0;->h()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lk/n0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_13

    const/4 v4, 0x0

    :goto_8
    aget-wide v5, v2, v4

    not-long v7, v5

    shl-long v7, v7, v20

    and-long/2addr v7, v5

    and-long v7, v7, v21

    cmp-long v7, v7, v21

    if-eqz v7, :cond_12

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v16, 0x8

    rsub-int/lit8 v12, v7, 0x8

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v12, :cond_11

    and-long v8, v5, v17

    cmp-long v8, v8, v23

    if-gez v8, :cond_e

    const/4 v8, 0x1

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_10

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget-object v9, v1, v8

    check-cast v9, Lr0/n1;

    iget-object v9, v9, Lr0/n1;->g:Lk/m0;

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_b

    :cond_f
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_10

    invoke-virtual {v0, v8}, Lk/n0;->m(I)V

    :cond_10
    const/16 v8, 0x8

    shr-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_11
    const/16 v8, 0x8

    if-ne v12, v8, :cond_13

    goto :goto_c

    :cond_12
    const/16 v8, 0x8

    :goto_c
    if-eq v4, v3, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method

.method public final i()Z
    .locals 4

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr0/x;->H:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    iput v2, p0, Lr0/x;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    return v3

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final j(Li9/e;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lr0/x;->n()V

    iget-object v1, p0, Lr0/x;->y:Lk/m0;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v2

    iput-object v2, p0, Lr0/x;->y:Lk/m0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v2, p0, Lr0/x;->G:Lr0/q;

    iget-object v3, p0, Lr0/x;->A:Lr0/c2;

    iget-object v4, v2, Lr0/q;->e:Ls0/a;

    iget-object v4, v4, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v4}, Ls0/m0;->E()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Expected applyChanges() to have been called"

    invoke-static {v4}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    iput-object v3, v2, Lr0/q;->P:Lr0/c2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v2, v1, p1}, Lr0/q;->o(Lk/m0;Li9/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v3, v2, Lr0/q;->P:Lr0/c2;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    iput-object v3, v2, Lr0/q;->P:Lr0/c2;

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    iput-object v1, p0, Lr0/x;->y:Lk/m0;

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v0

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_0
    :try_start_9
    iget-object v0, p0, Lr0/x;->p:Lk/p0;

    iget-object v0, v0, Lk/p0;->l:Lk/n0;

    invoke-virtual {v0}, Lk/n0;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lr0/x;->F:Lmb/x4;

    iget-object v1, p0, Lr0/x;->p:Lk/p0;

    iget-object v2, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v2}, Lr0/q;->D()Le1/e;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v0, v1, v2}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v0}, Lmb/x4;->b()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v0}, Lmb/x4;->a()V

    goto :goto_1

    :catchall_4
    move-exception p1

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {v0}, Lmb/x4;->a()V

    throw p1

    :cond_1
    :goto_1
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_2
    invoke-virtual {p0}, Lr0/x;->a()V

    throw p1
.end method

.method public final k(ZLi9/e;)Lr0/g1;
    .locals 10

    iget-object v0, p0, Lr0/x;->B:Lr0/g1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "A pausable composition is in progress"

    invoke-static {v0}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lr0/g1;

    iget-object v3, p0, Lr0/x;->l:Lr0/u;

    iget-object v4, p0, Lr0/x;->G:Lr0/q;

    iget-object v5, p0, Lr0/x;->p:Lk/p0;

    iget-object v8, p0, Lr0/x;->m:Le2/f2;

    iget-object v9, p0, Lr0/x;->o:Ljava/lang/Object;

    move-object v2, p0

    move v7, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lr0/g1;-><init>(Lr0/x;Lr0/u;Lr0/q;Lk/p0;Li9/e;ZLe2/f2;Ljava/lang/Object;)V

    iput-object v1, v2, Lr0/x;->B:Lr0/g1;

    return-object v1
.end method

.method public final l()V
    .locals 9

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->B:Lr0/g1;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Deactivate is not supported while pausable composition is in progress"

    invoke-static {v1}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lr0/x;->q:Lr0/e2;

    iget v1, v1, Lr0/e2;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    iget-object v4, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, v4, Lk/p0;->l:Lk/n0;

    invoke-virtual {v4}, Lk/n0;->g()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    :goto_2
    const-string v4, "Compose:deactivate"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lr0/x;->F:Lmb/x4;

    iget-object v5, p0, Lr0/x;->p:Lk/p0;

    iget-object v6, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v6}, Lr0/q;->D()Le1/e;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v4, v5, v6}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    if-eqz v1, :cond_3

    iget-object v1, p0, Lr0/x;->q:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->d()Lr0/h2;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v5, p0, Lr0/x;->F:Lmb/x4;

    iget v6, v1, Lr0/h2;->t:I

    new-instance v7, Lg0/k;

    const/16 v8, 0x17

    invoke-direct {v7, v8, v5, v1}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v7}, Lr0/h2;->n(ILi9/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1, v3}, Lr0/h2;->e(Z)V

    iget-object v1, p0, Lr0/x;->m:Le2/f2;

    invoke-virtual {v1}, Le2/f2;->m()V

    invoke-virtual {v4}, Lmb/x4;->c()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Lr0/h2;->e(Z)V

    throw p0

    :cond_3
    :goto_3
    invoke-virtual {v4}, Lmb/x4;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v4}, Lmb/x4;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    iget-object v1, p0, Lr0/x;->r:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, p0, Lr0/x;->u:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, p0, Lr0/x;->y:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, p0, Lr0/x;->v:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v1}, Ls0/m0;->C()V

    iget-object v1, p0, Lr0/x;->w:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v1}, Ls0/m0;->C()V

    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    iget-object v2, v1, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lr0/q;->e:Ls0/a;

    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v2}, Ls0/m0;->C()V

    const/4 v2, 0x0

    iput-object v2, v1, Lr0/q;->v:Lk/x;

    iput v3, p0, Lr0/x;->H:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    goto :goto_5

    :goto_4
    :try_start_7
    invoke-virtual {v4}, Lmb/x4;->a()V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :goto_5
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    monitor-exit v0

    throw p0
.end method

.method public final m()V
    .locals 9

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    iget-boolean v1, v1, Lr0/q;->F:Z

    if-eqz v1, :cond_0

    const-string v1, "Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block."

    invoke-static {v1}, Lr0/k1;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget v1, p0, Lr0/x;->H:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iput v2, p0, Lr0/x;->H:I

    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    iget-object v1, v1, Lr0/q;->L:Ls0/a;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lr0/x;->e(Ls0/a;)V

    :cond_1
    iget-object v1, p0, Lr0/x;->q:Lr0/e2;

    iget v1, v1, Lr0/e2;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    iget-object v4, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, v4, Lk/p0;->l:Lk/n0;

    invoke-virtual {v4}, Lk/n0;->g()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    iget-object v4, p0, Lr0/x;->F:Lmb/x4;

    iget-object v5, p0, Lr0/x;->p:Lk/p0;

    iget-object v6, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v6}, Lr0/q;->D()Le1/e;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v5, v6}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    if-eqz v1, :cond_4

    iget-object v1, p0, Lr0/x;->q:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->d()Lr0/h2;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lr0/x;->F:Lmb/x4;

    iget v6, v1, Lr0/h2;->t:I

    new-instance v7, Lod/y6;

    const/4 v8, 0x6

    invoke-direct {v7, v8, v5}, Lod/y6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v6, v7}, Lr0/h2;->n(ILi9/e;)V

    invoke-virtual {v1}, Lr0/h2;->H()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1, v3}, Lr0/h2;->e(Z)V

    iget-object v1, p0, Lr0/x;->m:Le2/f2;

    invoke-virtual {v1}, Le2/f2;->a()V

    iget-object v1, p0, Lr0/x;->m:Le2/f2;

    invoke-virtual {v1}, Le2/f2;->m()V

    invoke-virtual {v4}, Lmb/x4;->c()V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {v1, v2}, Lr0/h2;->e(Z)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {v4}, Lmb/x4;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Lmb/x4;->a()V

    :cond_5
    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Compose:Composer.dispose"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, v1, Lr0/q;->b:Lr0/u;

    invoke-virtual {v2, v1}, Lr0/u;->u(Lr0/q;)V

    iget-object v2, v1, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v1, Lr0/q;->e:Ls0/a;

    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v2}, Ls0/m0;->C()V

    const/4 v2, 0x0

    iput-object v2, v1, Lr0/q;->v:Lk/x;

    iget-object v1, v1, Lr0/q;->a:Le2/f2;

    invoke-virtual {v1}, Le2/f2;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :catchall_3
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :goto_3
    invoke-virtual {v4}, Lmb/x4;->a()V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    :goto_4
    monitor-exit v0

    iget-object v0, p0, Lr0/x;->l:Lr0/u;

    invoke-virtual {v0, p0}, Lr0/u;->v(Lr0/x;)V

    return-void

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public final n()V
    .locals 5

    sget-object v0, Lr0/r;->b:Ljava/lang/Object;

    iget-object v1, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v2, Ljava/util/Set;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    check-cast v2, Ljava/util/Set;

    invoke-virtual {p0, v2, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    return-void

    :cond_0
    instance-of v0, v2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast v2, [Ljava/util/Set;

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, v2, v1

    invoke-virtual {p0, v4, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "pending composition has not been applied"

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lr0/r;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    return-void

    :cond_0
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lr0/x;->B:Lr0/g1;

    if-nez p0, :cond_3

    const-string p0, "calling recordModificationsOf and applyChanges concurrently is not supported"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method public final p()V
    .locals 5

    sget-object v0, Lu8/t;->l:Lu8/t;

    iget-object v1, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lr0/r;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v0, Ljava/util/Set;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p0, v0, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    return-void

    :cond_1
    instance-of v2, v0, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    check-cast v0, [Ljava/util/Set;

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4, v3}, Lr0/x;->c(Ljava/util/Set;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "corrupt pendingModifications drain: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public final q()V
    .locals 2

    iget v0, p0, Lr0/x;->H:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "The composition is disposed"

    goto :goto_0

    :cond_2
    const-string v0, "A previous pausable composition for this composition was cancelled. This composition must be disposed."

    goto :goto_0

    :cond_3
    const-string v0, "The composition should be activated before setting content."

    :goto_0
    invoke-static {v0}, Lr0/k1;->b(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lr0/x;->B:Lr0/g1;

    if-nez p0, :cond_4

    return-void

    :cond_4
    const-string p0, "A pausable composition is in progress"

    invoke-static {p0}, Lr0/k1;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final r(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lr0/x;->p:Lk/p0;

    iget-object v1, p0, Lr0/x;->G:Lr0/q;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Lr0/q;->G(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lr0/q;->j()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lr0/q;->a()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object v2, v0, Lk/p0;->l:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->g()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lr0/x;->F:Lmb/x4;

    invoke-virtual {v1}, Lr0/q;->D()Le1/e;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v2, v0, v1}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v2}, Lmb/x4;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v2}, Lmb/x4;->a()V

    goto :goto_0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {v2}, Lmb/x4;->a()V

    throw p1

    :cond_0
    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-virtual {p0}, Lr0/x;->a()V

    throw p1

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt8/j;

    iget-object p0, p0, Lt8/j;->l:Ljava/lang/Object;

    check-cast p0, Lr0/t0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;
    .locals 2

    iget v0, p1, Lr0/n1;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lr0/n1;->b:I

    :cond_0
    iget-object v0, p1, Lr0/n1;->c:Lr0/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lr0/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lr0/x;->q:Lr0/e2;

    invoke-virtual {v1, v0}, Lr0/e2;->e(Lr0/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lr0/x;->C:Lr0/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lr0/x;->G:Lr0/q;

    iget-boolean v0, p0, Lr0/q;->F:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lr0/q;->g0(Lr0/n1;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lr0/n0;->o:Lr0/n0;

    return-object p0

    :cond_2
    sget-object p0, Lr0/n0;->l:Lr0/n0;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_3
    iget-object v1, p1, Lr0/n1;->d:Li9/e;

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, v0, p2}, Lr0/x;->u(Lr0/n1;Lr0/a;Ljava/lang/Object;)Lr0/n0;

    move-result-object p1

    sget-object p2, Lr0/n0;->l:Lr0/n0;

    if-eq p1, p2, :cond_4

    iget-object p0, p0, Lr0/x;->E:Lq3/k;

    invoke-virtual {p0}, Lq3/k;->e()V

    :cond_4
    return-object p1

    :cond_5
    sget-object p0, Lr0/n0;->l:Lr0/n0;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lr0/n0;->l:Lr0/n0;

    return-object p0
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lr0/x;->q:Lr0/e2;

    iget-object p0, p0, Lr0/e2;->n:[Ljava/lang/Object;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Lr0/n1;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lr0/n1;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_1

    iget-object v4, v3, Lr0/n1;->a:Lr0/x;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, v5}, Lr0/x;->s(Lr0/n1;Ljava/lang/Object;)Lr0/n0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final u(Lr0/n1;Lr0/a;Ljava/lang/Object;)Lr0/n0;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lr0/x;->C:Lr0/x;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v7, v0, Lr0/x;->q:Lr0/e2;

    iget v8, v0, Lr0/x;->D:I

    iget-boolean v9, v7, Lr0/e2;->r:Z

    if-eqz v9, :cond_0

    const-string v9, "Writer is active"

    invoke-static {v9}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    if-ltz v8, :cond_1

    iget v9, v7, Lr0/e2;->m:I

    if-ge v8, v9, :cond_1

    goto :goto_0

    :cond_1
    const-string v9, "Invalid group index"

    invoke-static {v9}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v2}, Lr0/e2;->e(Lr0/a;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v7, v7, Lr0/e2;->l:[I

    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x3

    aget v7, v7, v9

    add-int/2addr v7, v8

    iget v9, v2, Lr0/a;->a:I

    if-gt v8, v9, :cond_2

    if-ge v9, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    move-object v6, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    :goto_2
    if-nez v6, :cond_e

    iget-object v5, v0, Lr0/x;->G:Lr0/q;

    iget-boolean v7, v5, Lr0/q;->F:Z

    if-eqz v7, :cond_4

    invoke-virtual {v5, v1, v3}, Lr0/q;->g0(Lr0/n1;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    sget-object v0, Lr0/n0;->o:Lr0/n0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v0

    :cond_5
    if-nez v3, :cond_6

    :try_start_1
    iget-object v5, v0, Lr0/x;->y:Lk/m0;

    sget-object v7, Lr0/e;->q:Lr0/e;

    invoke-virtual {v5, v1, v7}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    instance-of v5, v3, Lr0/d0;

    if-nez v5, :cond_7

    iget-object v5, v0, Lr0/x;->y:Lk/m0;

    sget-object v7, Lr0/e;->q:Lr0/e;

    invoke-virtual {v5, v1, v7}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_7
    iget-object v5, v0, Lr0/x;->y:Lk/m0;

    invoke-virtual {v5, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    instance-of v7, v5, Lk/n0;

    if-eqz v7, :cond_c

    check-cast v5, Lk/n0;

    iget-object v7, v5, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v5, v5, Lk/n0;->a:[J

    array-length v9, v5

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_d

    const/4 v10, 0x0

    :goto_4
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_b

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v13, :cond_a

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_8

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v8, v7, v16

    move/from16 v16, v14

    sget-object v14, Lr0/e;->q:Lr0/e;

    if-ne v8, v14, :cond_9

    goto :goto_6

    :cond_8
    move/from16 v16, v14

    :cond_9
    shr-long v11, v11, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v16

    goto :goto_5

    :cond_a
    move v8, v14

    if-ne v13, v8, :cond_d

    :cond_b
    if-eq v10, v9, :cond_d

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    sget-object v7, Lr0/e;->q:Lr0/e;

    if-ne v5, v7, :cond_d

    goto :goto_6

    :cond_d
    iget-object v5, v0, Lr0/x;->y:Lk/m0;

    invoke-static {v5, v1, v3}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_e
    :goto_6
    monitor-exit v4

    if-eqz v6, :cond_f

    invoke-virtual {v6, v1, v2, v3}, Lr0/x;->u(Lr0/n1;Lr0/a;Ljava/lang/Object;)Lr0/n0;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v1, v0, Lr0/x;->l:Lr0/u;

    invoke-virtual {v1, v0}, Lr0/u;->l(Lr0/x;)V

    iget-object v0, v0, Lr0/x;->G:Lr0/q;

    iget-boolean v0, v0, Lr0/q;->F:Z

    if-eqz v0, :cond_10

    sget-object v0, Lr0/n0;->n:Lr0/n0;

    return-object v0

    :cond_10
    sget-object v0, Lr0/n0;->m:Lr0/n0;

    return-object v0

    :goto_7
    monitor-exit v4

    throw v0
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 14

    iget-object v0, p0, Lr0/x;->r:Lk/m0;

    invoke-virtual {v0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v1, v0, Lk/n0;

    iget-object p0, p0, Lr0/x;->x:Lk/m0;

    if-eqz v1, :cond_3

    check-cast v0, Lk/n0;

    iget-object v1, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    check-cast v10, Lr0/n1;

    invoke-virtual {v10, p1}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    move-result-object v11

    sget-object v12, Lr0/n0;->o:Lr0/n0;

    if-ne v11, v12, :cond_0

    invoke-static {p0, p1, v10}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-ne v7, v8, :cond_4

    :cond_2
    if-eq v4, v2, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    check-cast v0, Lr0/n1;

    invoke-virtual {v0, p1}, Lr0/n1;->c(Ljava/lang/Object;)Lr0/n0;

    move-result-object v1

    sget-object v2, Lr0/n0;->o:Lr0/n0;

    if-ne v1, v2, :cond_4

    invoke-static {p0, p1, v0}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final w(Ljava/util/Set;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lt0/d;

    iget-object v3, v0, Lr0/x;->u:Lk/m0;

    iget-object v0, v0, Lr0/x;->r:Lk/m0;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    check-cast v1, Lt0/d;

    iget-object v1, v1, Lt0/d;->l:Lk/n0;

    iget-object v2, v1, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v1, v1, Lk/n0;->a:[J

    array-length v6, v1

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_7

    move v7, v4

    :goto_0
    aget-wide v8, v1, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v4

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v2, v13

    invoke-virtual {v0, v13}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3, v13}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    return v5

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_7

    :cond_3
    if-eq v7, v6, :cond_7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v3, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_6
    return v5

    :cond_7
    return v4
.end method

.method public final x()Z
    .locals 7

    iget-object v0, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/x;->B:Lr0/g1;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v3, v1, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/h1;->p:Lr0/h1;

    if-ne v3, v4, :cond_0

    iget-wide v3, v1, Lr0/g1;->i:J

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, v1, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lr0/h1;->q:Lr0/h1;

    sget-object v4, Lr0/h1;->o:Lr0/h1;

    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_1

    :goto_0
    iget-object p0, v1, Lr0/g1;->l:Lr0/v1;

    iget-object p0, p0, Lr0/v1;->l:Lk/w;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lk/w;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lr0/x;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lr0/x;->y:Lk/m0;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v3

    iput-object v3, p0, Lr0/x;->y:Lk/m0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v3, p0, Lr0/x;->G:Lr0/q;

    iget-object v4, p0, Lr0/x;->A:Lr0/c2;

    iget-object v5, v3, Lr0/q;->e:Ls0/a;

    iget-object v5, v5, Ls0/a;->c:Ls0/m0;

    invoke-virtual {v5}, Ls0/m0;->E()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Expected applyChanges() to have been called"

    invoke-static {v6}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_4
    iget v6, v1, Lk/m0;->e:I

    if-gtz v6, :cond_5

    iget-object v6, v3, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    iput-object v4, v3, Lr0/q;->P:Lr0/c2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v3, v1, v2}, Lr0/q;->o(Lk/m0;Li9/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput-object v2, v3, Lr0/q;->P:Lr0/c2;

    invoke-virtual {v5}, Ls0/m0;->F()Z

    move-result v2

    :goto_2
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lr0/x;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit v0

    return v2

    :catchall_2
    move-exception v4

    :try_start_6
    iput-object v2, v3, Lr0/q;->P:Lr0/c2;

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    iput-object v1, p0, Lr0/x;->y:Lk/m0;

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v1

    :try_start_8
    iget-object v2, p0, Lr0/x;->p:Lk/p0;

    iget-object v2, v2, Lk/p0;->l:Lk/n0;

    invoke-virtual {v2}, Lk/n0;->g()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lr0/x;->F:Lmb/x4;

    iget-object v3, p0, Lr0/x;->p:Lk/p0;

    iget-object v4, p0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v4}, Lr0/q;->D()Le1/e;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual {v2, v3, v4}, Lmb/x4;->g(Ljava/util/Set;Le1/e;)V

    invoke-virtual {v2}, Lmb/x4;->b()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-virtual {v2}, Lmb/x4;->a()V

    goto :goto_5

    :catchall_4
    move-exception v1

    goto :goto_6

    :catchall_5
    move-exception v1

    invoke-virtual {v2}, Lmb/x4;->a()V

    throw v1

    :cond_7
    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_6
    :try_start_b
    invoke-virtual {p0}, Lr0/x;->a()V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_7
    monitor-exit v0

    throw p0
.end method

.method public final y(Lt0/d;)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v1, Lr0/r;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/Set;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    goto :goto_2

    :cond_1
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, [Ljava/util/Set;

    array-length v2, v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    aput-object p1, v1, v2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "corrupt pendingModifications: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    move-object v1, p1

    :goto_2
    iget-object v2, p0, Lr0/x;->n:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_4
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    iget-object p1, p0, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lr0/x;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v0, :cond_4

    goto :goto_0
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lr0/x;->G:Lr0/q;

    iget v3, v2, Lr0/q;->A:I

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v2}, Lr0/q;->B()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_c

    iget v3, v2, Lr0/n1;->b:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v2, Lr0/n1;->b:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lr0/n1;->f:Lk/d0;

    if-nez v3, :cond_3

    new-instance v3, Lk/d0;

    invoke-direct {v3}, Lk/d0;-><init>()V

    iput-object v3, v2, Lr0/n1;->f:Lk/d0;

    :cond_3
    iget v6, v2, Lr0/n1;->e:I

    invoke-virtual {v3, v1}, Lk/d0;->c(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_4

    not-int v7, v7

    const/4 v8, -0x1

    goto :goto_0

    :cond_4
    iget-object v8, v3, Lk/d0;->c:[I

    aget v8, v8, v7

    :goto_0
    iget-object v9, v3, Lk/d0;->b:[Ljava/lang/Object;

    aput-object v1, v9, v7

    iget-object v3, v3, Lk/d0;->c:[I

    aput v6, v3, v7

    iget v3, v2, Lr0/n1;->e:I

    if-ne v8, v3, :cond_1

    move v3, v4

    :goto_1
    iget-object v6, v0, Lr0/x;->E:Lq3/k;

    invoke-virtual {v6}, Lq3/k;->e()V

    if-nez v3, :cond_c

    instance-of v3, v1, Ld1/i0;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Ld1/i0;

    invoke-virtual {v3, v4}, Ld1/i0;->f(I)V

    :cond_5
    iget-object v3, v0, Lr0/x;->r:Lk/m0;

    invoke-static {v3, v1, v2}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    instance-of v3, v1, Lr0/d0;

    if-eqz v3, :cond_c

    move-object v3, v1

    check-cast v3, Lr0/d0;

    invoke-virtual {v3}, Lr0/d0;->h()Lr0/c0;

    move-result-object v6

    iget-object v0, v0, Lr0/x;->u:Lk/m0;

    invoke-static {v0, v1}, Lr5/u0;->s(Lk/m0;Ljava/lang/Object;)V

    iget-object v7, v6, Lr0/c0;->e:Lk/d0;

    iget-object v8, v7, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v7, v7, Lk/d0;->a:[J

    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_a

    const/4 v10, 0x0

    :goto_2
    aget-wide v11, v7, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_9

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_8

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v8, v16

    move-object/from16 v5, v16

    check-cast v5, Ld1/h0;

    move/from16 p0, v14

    instance-of v14, v5, Ld1/i0;

    if-eqz v14, :cond_6

    move-object v14, v5

    check-cast v14, Ld1/i0;

    invoke-virtual {v14, v4}, Ld1/i0;->f(I)V

    :cond_6
    invoke-static {v0, v5, v1}, Lr5/u0;->e(Lk/m0;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move/from16 p0, v14

    :goto_4
    shr-long v11, v11, p0

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, p0

    goto :goto_3

    :cond_8
    move v5, v14

    if-ne v13, v5, :cond_a

    :cond_9
    if-eq v10, v9, :cond_a

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_a
    iget-object v0, v6, Lr0/c0;->f:Ljava/lang/Object;

    iget-object v1, v2, Lr0/n1;->g:Lk/m0;

    if-nez v1, :cond_b

    new-instance v1, Lk/m0;

    invoke-direct {v1}, Lk/m0;-><init>()V

    iput-object v1, v2, Lr0/n1;->g:Lk/m0;

    :cond_b
    invoke-virtual {v1, v3, v0}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void
.end method
