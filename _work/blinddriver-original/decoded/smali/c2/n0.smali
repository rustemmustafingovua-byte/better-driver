.class public final Lc2/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/h;


# instance fields
.field public final A:Ljava/lang/String;

.field public final l:Le2/g0;

.field public m:Lr0/u;

.field public n:Lc2/u1;

.field public o:I

.field public p:I

.field public final q:Lk/m0;

.field public final r:Lk/m0;

.field public final s:Lc2/g0;

.field public final t:Lc2/d0;

.field public final u:Lk/m0;

.field public final v:Lc2/t1;

.field public final w:Lk/m0;

.field public final x:Lt0/b;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Le2/g0;Lc2/u1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/n0;->l:Le2/g0;

    iput-object p2, p0, Lc2/n0;->n:Lc2/u1;

    sget-object p1, Lk/t0;->a:[J

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lc2/n0;->q:Lk/m0;

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lc2/n0;->r:Lk/m0;

    new-instance p1, Lc2/g0;

    invoke-direct {p1, p0}, Lc2/g0;-><init>(Lc2/n0;)V

    iput-object p1, p0, Lc2/n0;->s:Lc2/g0;

    new-instance p1, Lc2/d0;

    invoke-direct {p1, p0}, Lc2/d0;-><init>(Lc2/n0;)V

    iput-object p1, p0, Lc2/n0;->t:Lc2/d0;

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lc2/n0;->u:Lk/m0;

    new-instance p1, Lc2/t1;

    invoke-direct {p1}, Lc2/t1;-><init>()V

    iput-object p1, p0, Lc2/n0;->v:Lc2/t1;

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lc2/n0;->w:Lk/m0;

    new-instance p1, Lt0/b;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lc2/n0;->x:Lt0/b;

    const-string p1, "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve \'match parent\' sizing, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement."

    iput-object p1, p0, Lc2/n0;->A:Ljava/lang/String;

    return-void
.end method

.method public static final c(Lc2/n0;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {p0}, Lc2/n0;->h()V

    iget-object v1, p0, Lc2/n0;->u:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/g0;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget v3, p0, Lc2/n0;->z:I

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "No pre-composed items to dispose"

    invoke-static {v3}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v3

    check-cast v3, Lk/f0;

    iget-object v3, v3, Lk/f0;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    invoke-virtual {v3, v1}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lk/f0;

    iget-object v4, v4, Lk/f0;->m:Ljava/lang/Object;

    check-cast v4, Lt0/b;

    iget v4, v4, Lt0/b;->n:I

    iget v5, p0, Lc2/n0;->z:I

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Item is not in pre-composed item range"

    invoke-static {v4}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_1
    iget v4, p0, Lc2/n0;->y:I

    add-int/2addr v4, v2

    iput v4, p0, Lc2/n0;->y:I

    iget v4, p0, Lc2/n0;->z:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc2/n0;->z:I

    iget-object v4, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v4, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/e0;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lc2/n0;->e(Lc2/e0;)V

    :cond_2
    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    iget-object v1, v1, Lk/f0;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    iget v4, p0, Lc2/n0;->z:I

    sub-int/2addr v1, v4

    iget v4, p0, Lc2/n0;->y:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v3, v1}, Lc2/n0;->j(II)V

    invoke-virtual {p0, v1}, Lc2/n0;->g(I)V

    :cond_3
    iget-object p0, p0, Lc2/n0;->x:Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->h(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x6

    invoke-static {v0, v2, p0}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_4
    return-void
.end method

.method public static e(Lc2/e0;)V
    .locals 5

    iget-object v0, p0, Lc2/e0;->f:Lr0/g1;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lr0/g1;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lr0/h1;->m:Lr0/h1;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v0, Lr0/g1;->k:Lmb/x4;

    iget-object v2, v1, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v2, Lk/n0;

    invoke-virtual {v2}, Lk/n0;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lmb/x4;->d:Ljava/lang/Object;

    check-cast v2, Lk/n0;

    sget-object v4, Lk/u0;->a:Lk/n0;

    new-instance v4, Lk/n0;

    invoke-direct {v4}, Lk/n0;-><init>()V

    iput-object v4, v1, Lmb/x4;->d:Ljava/lang/Object;

    iget-object v4, v1, Lmb/x4;->c:Ljava/lang/Object;

    check-cast v4, Lt0/b;

    invoke-virtual {v4}, Lt0/b;->g()V

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1}, Lmb/x4;->b()V

    iget-object v0, v0, Lr0/g1;->a:Lr0/x;

    iput-object v3, v0, Lr0/x;->B:Lr0/g1;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lr0/x;->F:Lmb/x4;

    iput-object v2, v1, Lmb/x4;->k:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Lr0/x;->H:I

    :cond_1
    iput-object v3, p0, Lc2/e0;->f:Lr0/g1;

    iget-object v0, p0, Lc2/e0;->c:Lr0/x;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lr0/x;->m()V

    :cond_2
    iput-object v3, p0, Lc2/e0;->c:Lr0/x;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget-object v2, v0, Lc2/n0;->l:Le2/g0;

    iput-boolean v1, v2, Le2/g0;->C:Z

    iget-object v1, v0, Lc2/n0;->q:Lk/m0;

    iget-object v3, v1, Lk/m0;->c:[Ljava/lang/Object;

    iget-object v4, v1, Lk/m0;->a:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    if-ltz v5, :cond_3

    move v7, v6

    :goto_0
    aget-wide v8, v4, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_2

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_1

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_0

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v13, v3, v13

    check-cast v13, Lc2/e0;

    iget-object v13, v13, Lc2/e0;->c:Lr0/x;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lr0/x;->m()V

    :cond_0
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    if-ne v10, v11, :cond_3

    :cond_2
    if-eq v7, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Le2/g0;->R()V

    iput-boolean v6, v2, Le2/g0;->C:Z

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, v0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iput v6, v0, Lc2/n0;->z:I

    iput v6, v0, Lc2/n0;->y:I

    iget-object v1, v0, Lc2/n0;->u:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    invoke-virtual {v0}, Lc2/n0;->h()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc2/n0;->i(Z)V

    return-void
.end method

.method public final d(Lc2/e0;Z)V
    .locals 6

    iget-object v0, p1, Lc2/e0;->f:Lr0/g1;

    if-eqz v0, :cond_2

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ld1/g;->e()Li9/c;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-static {v1}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v4

    :try_start_0
    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    const/4 v5, 0x1

    iput-boolean v5, p0, Le2/g0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_1

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lr0/g1;->c()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lc2/c0;

    const/4 v5, 0x0

    invoke-direct {p2, v5}, Lc2/c0;-><init>(I)V

    invoke-virtual {v0, p2}, Lr0/g1;->e(Lr0/c2;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lr0/g1;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v2, p1, Lc2/e0;->f:Lr0/g1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Le2/g0;->C:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v1, v4, v3}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final f(Ljava/lang/Object;)Lc2/p1;
    .locals 1

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->H()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lc2/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lc2/k0;

    invoke-direct {v0, p0, p1}, Lc2/k0;-><init>(Lc2/n0;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(I)V
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lc2/n0;->y:I

    iget-object v1, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->o()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lk/f0;

    iget-object v3, v2, Lk/f0;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    iget v3, v3, Lt0/b;->n:I

    iget v4, p0, Lc2/n0;->z:I

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gt p1, v3, :cond_7

    iget-object v5, p0, Lc2/n0;->v:Lc2/t1;

    invoke-virtual {v5}, Lc2/t1;->clear()V

    if-gt p1, v3, :cond_0

    move v5, p1

    :goto_0
    invoke-virtual {v2, v5}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/g0;

    iget-object v7, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v7, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v6, Lc2/e0;

    iget-object v6, v6, Lc2/e0;->a:Ljava/lang/Object;

    iget-object v7, p0, Lc2/n0;->v:Lc2/t1;

    iget-object v7, v7, Lc2/t1;->m:Ljava/lang/Object;

    check-cast v7, Lk/i0;

    invoke-virtual {v7, v6}, Lk/i0;->a(Ljava/lang/Object;)Z

    if-eq v5, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lc2/n0;->n:Lc2/u1;

    iget-object v5, p0, Lc2/n0;->v:Lc2/t1;

    invoke-interface {v2, v5}, Lc2/u1;->c(Lc2/t1;)V

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ld1/g;->e()Li9/c;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v2}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v6

    move v7, v0

    :goto_2
    if-lt v3, p1, :cond_6

    :try_start_0
    move-object v8, v1

    check-cast v8, Lk/f0;

    invoke-virtual {v8, v3}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le2/g0;

    iget-object v9, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v9, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v9, Lc2/e0;

    iget-object v10, v9, Lc2/e0;->a:Ljava/lang/Object;

    iget-object v11, p0, Lc2/n0;->v:Lc2/t1;

    iget-object v11, v11, Lc2/t1;->m:Ljava/lang/Object;

    check-cast v11, Lk/i0;

    invoke-virtual {v11, v10}, Lk/i0;->c(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget v11, p0, Lc2/n0;->y:I

    add-int/2addr v11, v4

    iput v11, p0, Lc2/n0;->y:I

    iget-object v11, v9, Lc2/e0;->g:Lr0/e1;

    invoke-virtual {v11}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v8, v8, Le2/g0;->S:Le2/l0;

    iget-object v11, v8, Le2/l0;->p:Le2/x0;

    sget-object v12, Le2/e0;->n:Le2/e0;

    iput-object v12, v11, Le2/x0;->w:Le2/e0;

    iget-object v8, v8, Le2/l0;->q:Le2/t0;

    if-eqz v8, :cond_2

    iput-object v12, v8, Le2/t0;->u:Le2/e0;

    :cond_2
    invoke-virtual {p0, v9, v0}, Lc2/n0;->l(Lc2/e0;Z)V

    iget-boolean v8, v9, Lc2/e0;->h:Z

    if-eqz v8, :cond_5

    move v7, v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    iget-object v11, p0, Lc2/n0;->l:Le2/g0;

    iput-boolean v4, v11, Le2/g0;->C:Z

    iget-object v12, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v12, v8}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v9, Lc2/e0;->c:Lr0/x;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lr0/x;->m()V

    :cond_4
    iget-object v8, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v8, v3, v4}, Le2/g0;->S(II)V

    iput-boolean v0, v11, Le2/g0;->C:Z

    :cond_5
    :goto_3
    iget-object v8, p0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {v8, v10}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :goto_4
    invoke-static {v2, v6, v5}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_6
    invoke-static {v2, v6, v5}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    goto :goto_5

    :cond_7
    move v7, v0

    :goto_5
    if-eqz v7, :cond_9

    sget-object p1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    sget-object v1, Ld1/p;->j:Ld1/b;

    iget-object v1, v1, Ld1/c;->h:Lk/n0;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lk/n0;->h()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v4, :cond_8

    move v0, v4

    :cond_8
    monitor-exit p1

    if-eqz v0, :cond_9

    invoke-static {}, Ld1/p;->a()V

    goto :goto_6

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_9
    :goto_6
    invoke-virtual {p0}, Lc2/n0;->h()V

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lk/f0;

    iget-object v0, v0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    iget v0, v0, Lt0/b;->n:I

    iget-object v1, p0, Lc2/n0;->q:Lk/m0;

    iget v2, v1, Lk/m0;->e:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency between the count of nodes tracked by the state ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lk/m0;->e:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lc2/n0;->y:I

    sub-int v1, v0, v1

    iget v2, p0, Lc2/n0;->z:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Incorrect state. Total children "

    const-string v2, ". Reusable children "

    invoke-static {v0, v1, v2}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc2/n0;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Precomposed children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc2/n0;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lc2/n0;->u:Lk/m0;

    iget v1, v0, Lk/m0;->e:I

    iget v2, p0, Lc2/n0;->z:I

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect state. Precomposed children "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lc2/n0;->z:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Map size "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lk/m0;->e:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Z)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lc2/n0;->z:I

    iget-object v1, p0, Lc2/n0;->u:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->o()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lk/f0;

    iget-object v2, v2, Lk/f0;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v2, v2, Lt0/b;->n:I

    iget v3, p0, Lc2/n0;->y:I

    if-eq v3, v2, :cond_4

    iput v2, p0, Lc2/n0;->y:I

    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ld1/g;->e()Li9/c;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v3}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object v5

    :goto_1
    if-ge v0, v2, :cond_3

    :try_start_0
    move-object v6, v1

    check-cast v6, Lk/f0;

    invoke-virtual {v6, v0}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le2/g0;

    iget-object v7, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v7, v6}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc2/e0;

    if-eqz v7, :cond_2

    iget-object v8, v7, Lc2/e0;->g:Lr0/e1;

    invoke-virtual {v8}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v8, v6, Le2/l0;->p:Le2/x0;

    sget-object v9, Le2/e0;->n:Le2/e0;

    iput-object v9, v8, Le2/x0;->w:Le2/e0;

    iget-object v6, v6, Le2/l0;->q:Le2/t0;

    if-eqz v6, :cond_1

    iput-object v9, v6, Le2/t0;->u:Le2/e0;

    :cond_1
    invoke-virtual {p0, v7, p1}, Lc2/n0;->l(Lc2/e0;Z)V

    sget-object v6, Lc2/x;->a:Lc2/x0;

    iput-object v6, v7, Lc2/e0;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_3
    invoke-static {v3, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0

    :cond_3
    invoke-static {v3, v5, v4}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iget-object p1, p0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {p1}, Lk/m0;->a()V

    :cond_4
    invoke-virtual {p0}, Lc2/n0;->h()V

    return-void
.end method

.method public final j(II)V
    .locals 1

    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g0;->C:Z

    invoke-virtual {p0, p1, p2, v0}, Le2/g0;->L(III)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le2/g0;->C:Z

    return-void
.end method

.method public final k(Ljava/lang/Object;Li9/e;Z)V
    .locals 6

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->H()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lc2/n0;->h()V

    iget-object v1, p0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lc2/n0;->w:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc2/n0;->u:Lk/m0;

    invoke-virtual {v1, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lc2/n0;->n(Ljava/lang/Object;)Le2/g0;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v4

    check-cast v4, Lk/f0;

    iget-object v4, v4, Lk/f0;->m:Ljava/lang/Object;

    check-cast v4, Lt0/b;

    invoke-virtual {v4, v2}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lk/f0;

    iget-object v0, v0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    iget v0, v0, Lt0/b;->n:I

    invoke-virtual {p0, v4, v0}, Lc2/n0;->j(II)V

    iget v0, p0, Lc2/n0;->z:I

    add-int/2addr v0, v3

    iput v0, p0, Lc2/n0;->z:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lk/f0;

    iget-object v2, v2, Lk/f0;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v2, v2, Lt0/b;->n:I

    new-instance v4, Le2/g0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Le2/g0;-><init>(I)V

    iput-boolean v3, v0, Le2/g0;->C:Z

    invoke-virtual {v0, v2, v4}, Le2/g0;->B(ILe2/g0;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Le2/g0;->C:Z

    iget v0, p0, Lc2/n0;->z:I

    add-int/2addr v0, v3

    iput v0, p0, Lc2/n0;->z:I

    move-object v2, v4

    :goto_0
    invoke-virtual {v1, p1, v2}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Le2/g0;

    invoke-virtual {p0, v2, p1, p3, p2}, Lc2/n0;->m(Le2/g0;Ljava/lang/Object;ZLi9/e;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final l(Lc2/e0;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-boolean v0, p1, Lc2/e0;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc2/e0;->g:Lr0/e1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p1, Lc2/e0;->g:Lr0/e1;

    :goto_0
    iget-object v0, p1, Lc2/e0;->f:Lr0/g1;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lc2/n0;->e(Lc2/e0;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p0, p1, Lc2/e0;->c:Lr0/x;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lr0/x;->l()V

    return-void

    :cond_2
    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getOutOfFrameExecutor()Le2/o1;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p2, Lc2/l0;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    check-cast p0, Lf2/y;

    iget-object p1, p0, Lf2/y;->s:Lu8/k;

    invoke-virtual {p1}, Lu8/k;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, p2}, Lu8/k;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lf2/y;->t:Lf2/k;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "schedule is called when outOfFrameExecutor is not available (view is detached)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-boolean p0, p1, Lc2/e0;->h:Z

    if-nez p0, :cond_5

    iget-object p0, p1, Lc2/e0;->c:Lr0/x;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lr0/x;->l()V

    :cond_5
    return-void
.end method

.method public final m(Le2/g0;Ljava/lang/Object;ZLi9/e;)V
    .locals 9

    iget-object v0, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lc2/e0;

    sget-object v3, Lc2/g;->a:Lz0/d;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lc2/e0;->a:Ljava/lang/Object;

    iput-object v3, v1, Lc2/e0;->b:Li9/e;

    iput-object v2, v1, Lc2/e0;->c:Lr0/x;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p2

    iput-object p2, v1, Lc2/e0;->g:Lr0/e1;

    invoke-virtual {v0, p1, v1}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    check-cast v1, Lc2/e0;

    iget-object p2, v1, Lc2/e0;->b:Li9/e;

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eq p2, p4, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iget-object v4, v1, Lc2/e0;->f:Lr0/g1;

    if-eqz v4, :cond_4

    if-eqz p2, :cond_2

    invoke-static {v1}, Lc2/n0;->e(Lc2/e0;)V

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v1, v3}, Lc2/n0;->d(Lc2/e0;Z)V

    :cond_4
    :goto_1
    iget-object v4, v1, Lc2/e0;->c:Lr0/x;

    if-eqz v4, :cond_6

    iget-object v5, v4, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, v4, Lr0/x;->y:Lk/m0;

    iget v4, v4, Lk/m0;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_5

    move v4, v3

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_6
    move v4, v3

    :goto_3
    if-nez p2, :cond_8

    if-nez v4, :cond_8

    iget-boolean p2, v1, Lc2/e0;->d:Z

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    return-void

    :cond_8
    :goto_5
    iput-object p4, v1, Lc2/e0;->b:Li9/e;

    iget-object p2, v1, Lc2/e0;->f:Lr0/g1;

    if-nez p2, :cond_9

    goto :goto_6

    :cond_9
    const-string p2, "new subcompose call while paused composition is still active"

    invoke-static {p2}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Ld1/w;->e()Ld1/g;

    move-result-object p2

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ld1/g;->e()Li9/c;

    move-result-object v2

    :cond_a
    invoke-static {p2}, Ld1/w;->h(Ld1/g;)Ld1/g;

    move-result-object p4

    :try_start_1
    iget-object v4, p0, Lc2/n0;->l:Le2/g0;

    iput-boolean v3, v4, Le2/g0;->C:Z

    iget-object v5, v1, Lc2/e0;->c:Lr0/x;

    iget-object v6, p0, Lc2/n0;->m:Lr0/u;

    if-eqz v6, :cond_13

    if-eqz v5, :cond_c

    iget v7, v5, Lr0/x;->H:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    move v7, v3

    goto :goto_7

    :cond_b
    move v7, v0

    :goto_7
    if-eqz v7, :cond_e

    goto :goto_8

    :catchall_1
    move-exception p0

    goto/16 :goto_d

    :cond_c
    :goto_8
    if-eqz p3, :cond_d

    sget-object v5, Lf2/i3;->a:Landroid/view/ViewGroup$LayoutParams;

    new-instance v5, Le2/f2;

    invoke-direct {v5, p1}, Le2/f2;-><init>(Le2/g0;)V

    new-instance p1, Lr0/x;

    invoke-direct {p1, v6, v5}, Lr0/x;-><init>(Lr0/u;Le2/f2;)V

    :goto_9
    move-object v5, p1

    goto :goto_a

    :cond_d
    sget-object v5, Lf2/i3;->a:Landroid/view/ViewGroup$LayoutParams;

    new-instance v5, Le2/f2;

    invoke-direct {v5, p1}, Le2/f2;-><init>(Le2/g0;)V

    new-instance p1, Lr0/x;

    invoke-direct {p1, v6, v5}, Lr0/x;-><init>(Lr0/u;Le2/f2;)V

    goto :goto_9

    :cond_e
    :goto_a
    iput-object v5, v1, Lc2/e0;->c:Lr0/x;

    iget-object p1, v1, Lc2/e0;->b:Li9/e;

    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getOutOfFrameExecutor()Le2/o1;

    move-result-object p0

    if-eqz p0, :cond_f

    iput-boolean v0, v1, Lc2/e0;->h:Z

    goto :goto_b

    :cond_f
    iput-boolean v3, v1, Lc2/e0;->h:Z

    new-instance p0, Lc2/m0;

    invoke-direct {p0, v0, v1, p1}, Lc2/m0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lz0/d;

    const v6, 0x5ad8c84e

    invoke-direct {p1, v6, v3, p0}, Lz0/d;-><init>(IZLt8/e;)V

    :goto_b
    if-eqz p3, :cond_11

    iget-boolean p0, v1, Lc2/e0;->e:Z

    if-eqz p0, :cond_10

    invoke-virtual {v5}, Lr0/x;->i()Z

    invoke-virtual {v5}, Lr0/x;->q()V

    invoke-virtual {v5, v3, p1}, Lr0/x;->k(ZLi9/e;)Lr0/g1;

    move-result-object p0

    iput-object p0, v1, Lc2/e0;->f:Lr0/g1;

    goto :goto_c

    :cond_10
    invoke-virtual {v5}, Lr0/x;->i()Z

    move-result p0

    invoke-virtual {v5, p0, p1}, Lr0/x;->k(ZLi9/e;)Lr0/g1;

    move-result-object p0

    iput-object p0, v1, Lc2/e0;->f:Lr0/g1;

    goto :goto_c

    :cond_11
    iget-boolean p0, v1, Lc2/e0;->e:Z

    if-eqz p0, :cond_12

    invoke-virtual {v5}, Lr0/x;->i()Z

    invoke-virtual {v5}, Lr0/x;->q()V

    iget-object p0, v5, Lr0/x;->G:Lr0/q;

    const/16 p3, 0x64

    iput p3, p0, Lr0/q;->z:I

    iput-boolean v3, p0, Lr0/q;->y:Z

    iget-object p3, v5, Lr0/x;->l:Lr0/u;

    invoke-virtual {p3, v5, p1}, Lr0/u;->a(Lr0/x;Li9/e;)V

    invoke-virtual {p0}, Lr0/q;->v()V

    goto :goto_c

    :cond_12
    invoke-virtual {v5, p1}, Lr0/x;->B(Li9/e;)V

    :goto_c
    iput-boolean v0, v1, Lc2/e0;->e:Z

    iput-boolean v0, v4, Le2/g0;->C:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p2, p4, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    iput-boolean v0, v1, Lc2/e0;->d:Z

    return-void

    :cond_13
    :try_start_2
    const-string p0, "parent composition reference not set"

    invoke-static {p0}, Lb2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_d
    invoke-static {p2, p4, v2}, Ld1/w;->k(Ld1/g;Ld1/g;Li9/c;)V

    throw p0
.end method

.method public final n(Ljava/lang/Object;)Le2/g0;
    .locals 10

    iget v0, p0, Lc2/n0;->y:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lk/f0;

    iget-object v1, v0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    iget v2, p0, Lc2/n0;->z:I

    sub-int/2addr v1, v2

    iget v2, p0, Lc2/n0;->y:I

    sub-int v2, v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v4, v1

    :goto_0
    iget-object v5, p0, Lc2/n0;->q:Lk/m0;

    const/4 v6, -0x1

    if-lt v4, v2, :cond_2

    invoke-virtual {v0, v4}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le2/g0;

    invoke-virtual {v5, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v7, Lc2/e0;

    iget-object v7, v7, Lc2/e0;->a:Ljava/lang/Object;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_1
    if-ne v7, v6, :cond_6

    :goto_2
    if-lt v1, v2, :cond_5

    invoke-virtual {v0, v1}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/g0;

    invoke-virtual {v5, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v4, Lc2/e0;

    iget-object v8, v4, Lc2/e0;->a:Ljava/lang/Object;

    sget-object v9, Lc2/x;->a:Lc2/x0;

    if-eq v8, v9, :cond_4

    iget-object v9, p0, Lc2/n0;->n:Lc2/u1;

    invoke-interface {v9, p1, v8}, Lc2/u1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    iput-object p1, v4, Lc2/e0;->a:Ljava/lang/Object;

    move v4, v1

    move v7, v4

    goto :goto_4

    :cond_5
    move v4, v1

    :cond_6
    :goto_4
    if-ne v7, v6, :cond_7

    :goto_5
    const/4 p0, 0x0

    return-object p0

    :cond_7
    if-eq v4, v2, :cond_8

    invoke-virtual {p0, v4, v2}, Lc2/n0;->j(II)V

    :cond_8
    iget p1, p0, Lc2/n0;->y:I

    add-int/2addr p1, v6

    iput p1, p0, Lc2/n0;->y:I

    invoke-virtual {v0, v2}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/g0;

    invoke-virtual {v5, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast p1, Lc2/e0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    iput-object v0, p1, Lc2/e0;->g:Lr0/e1;

    iput-boolean v3, p1, Lc2/e0;->e:Z

    iput-boolean v3, p1, Lc2/e0;->d:Z

    return-object p0
.end method
