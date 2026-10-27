.class public final Lr0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:I

.field public C:Z

.field public final D:Ld1/z;

.field public final E:Ljava/util/ArrayList;

.field public F:Z

.field public G:Lr0/d2;

.field public H:Lr0/e2;

.field public I:Lr0/h2;

.field public J:Z

.field public K:Lr0/j1;

.field public L:Ls0/a;

.field public final M:Ls0/b;

.field public N:Lr0/a;

.field public O:Ls0/c;

.field public P:Lr0/c2;

.field public final Q:Le1/e;

.field public final R:Ly8/h;

.field public S:Z

.field public T:J

.field public U:Lr0/w;

.field public final a:Le2/f2;

.field public final b:Lr0/u;

.field public final c:Lr0/e2;

.field public final d:Lk/p0;

.field public final e:Ls0/a;

.field public final f:Ls0/a;

.field public final g:Lq3/k;

.field public final h:Lr0/x;

.field public final i:Ljava/util/ArrayList;

.field public j:Lr0/i1;

.field public k:I

.field public l:I

.field public m:I

.field public final n:Le2/t;

.field public o:[I

.field public p:Lk/v;

.field public q:Z

.field public r:Z

.field public final s:Ljava/util/ArrayList;

.field public final t:Le2/t;

.field public u:Lr0/j1;

.field public v:Lk/x;

.field public w:Z

.field public final x:Le2/t;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Le2/f2;Lr0/u;Lr0/e2;Lk/p0;Ls0/a;Ls0/a;Lq3/k;Lr0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/q;->a:Le2/f2;

    iput-object p2, p0, Lr0/q;->b:Lr0/u;

    iput-object p3, p0, Lr0/q;->c:Lr0/e2;

    iput-object p4, p0, Lr0/q;->d:Lk/p0;

    iput-object p5, p0, Lr0/q;->e:Ls0/a;

    iput-object p6, p0, Lr0/q;->f:Ls0/a;

    iput-object p7, p0, Lr0/q;->g:Lq3/k;

    iput-object p8, p0, Lr0/q;->h:Lr0/x;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr0/q;->i:Ljava/util/ArrayList;

    new-instance p1, Le2/t;

    invoke-direct {p1}, Le2/t;-><init>()V

    iput-object p1, p0, Lr0/q;->n:Le2/t;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr0/q;->s:Ljava/util/ArrayList;

    new-instance p1, Le2/t;

    invoke-direct {p1}, Le2/t;-><init>()V

    iput-object p1, p0, Lr0/q;->t:Le2/t;

    sget-object p1, Lz0/h;->o:Lz0/h;

    iput-object p1, p0, Lr0/q;->u:Lr0/j1;

    new-instance p1, Le2/t;

    invoke-direct {p1}, Le2/t;-><init>()V

    iput-object p1, p0, Lr0/q;->x:Le2/t;

    const/4 p1, -0x1

    iput p1, p0, Lr0/q;->z:I

    invoke-virtual {p2}, Lr0/u;->f()Z

    move-result p1

    const/4 p4, 0x0

    const/4 p6, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lr0/u;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p6

    :goto_1
    iput-boolean p1, p0, Lr0/q;->C:Z

    new-instance p1, Ld1/z;

    const/4 p7, 0x1

    invoke-direct {p1, p7, p0}, Ld1/z;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lr0/q;->D:Ld1/z;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {p3}, Lr0/e2;->c()Lr0/d2;

    move-result-object p1

    invoke-virtual {p1}, Lr0/d2;->c()V

    iput-object p1, p0, Lr0/q;->G:Lr0/d2;

    new-instance p1, Lr0/e2;

    invoke-direct {p1}, Lr0/e2;-><init>()V

    invoke-virtual {p2}, Lr0/u;->f()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lr0/e2;->b()V

    :cond_2
    invoke-virtual {p2}, Lr0/u;->d()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Lk/x;

    invoke-direct {p3}, Lk/x;-><init>()V

    iput-object p3, p1, Lr0/e2;->v:Lk/x;

    :cond_3
    iput-object p1, p0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {p1}, Lr0/e2;->d()Lr0/h2;

    move-result-object p1

    invoke-virtual {p1, p6}, Lr0/h2;->e(Z)V

    iput-object p1, p0, Lr0/q;->I:Lr0/h2;

    new-instance p1, Ls0/b;

    invoke-direct {p1, p0, p5}, Ls0/b;-><init>(Lr0/q;Ls0/a;)V

    iput-object p1, p0, Lr0/q;->M:Ls0/b;

    iget-object p1, p0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {p1}, Lr0/e2;->c()Lr0/d2;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p4}, Lr0/d2;->a(I)Lr0/a;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lr0/d2;->c()V

    iput-object p3, p0, Lr0/q;->N:Lr0/a;

    new-instance p1, Ls0/c;

    invoke-direct {p1}, Ls0/c;-><init>()V

    iput-object p1, p0, Lr0/q;->O:Ls0/c;

    new-instance p1, Le1/e;

    invoke-direct {p1, p0}, Le1/e;-><init>(Lr0/q;)V

    iput-object p1, p0, Lr0/q;->Q:Le1/e;

    invoke-virtual {p2}, Lr0/u;->j()Ly8/h;

    move-result-object p1

    invoke-virtual {p0}, Lr0/q;->D()Le1/e;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    sget-object p2, Ly8/i;->l:Ly8/i;

    :goto_2
    invoke-interface {p1, p2}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p1

    iput-object p1, p0, Lr0/q;->R:Ly8/h;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lr0/d2;->c()V

    throw p0
.end method

.method public static final S(Lr0/q;IZI)I
    .locals 9

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0, p1}, Lr0/d2;->j(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v0, p1}, Lr0/d2;->i(I)I

    move-result p2

    iget-object p3, v0, Lr0/d2;->b:[I

    invoke-virtual {v0, p3, p1}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object p3

    const/16 v1, 0xce

    if-ne p2, v1, :cond_6

    sget-object p2, Lr0/s;->e:Lr0/y0;

    invoke-static {p3, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v0, p1, v2}, Lr0/d2;->h(II)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Lr0/y1;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    check-cast p2, Lr0/y1;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-object p2, p2, Lr0/y1;->a:Lr0/x1;

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    instance-of p3, p2, Lr0/o;

    if-eqz p3, :cond_2

    move-object v1, p2

    check-cast v1, Lr0/o;

    :cond_2
    if-eqz v1, :cond_5

    iget-object p2, v1, Lr0/o;->l:Lr0/p;

    iget-object p2, p2, Lr0/p;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr0/q;

    iget-object v1, p3, Lr0/q;->c:Lr0/e2;

    iget v4, v1, Lr0/e2;->m:I

    if-lez v4, :cond_4

    iget-object v1, v1, Lr0/e2;->l:[I

    aget v1, v1, v3

    const/high16 v4, 0x4000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_4

    iget-object v1, p3, Lr0/q;->h:Lr0/x;

    iget-object v4, v1, Lr0/x;->o:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v1}, Lr0/x;->p()V

    iget-object v5, v1, Lr0/x;->y:Lk/m0;

    invoke-static {}, Lr5/u0;->i()Lk/m0;

    move-result-object v6

    iput-object v6, v1, Lr0/x;->y:Lk/m0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v6, v1, Lr0/x;->G:Lr0/q;

    invoke-virtual {v6, v5}, Lr0/q;->h0(Lk/m0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v4

    new-instance v1, Ls0/a;

    invoke-direct {v1}, Ls0/a;-><init>()V

    iput-object v1, p3, Lr0/q;->L:Ls0/a;

    iget-object v4, p3, Lr0/q;->c:Lr0/e2;

    invoke-virtual {v4}, Lr0/e2;->c()Lr0/d2;

    move-result-object v4

    :try_start_2
    iput-object v4, p3, Lr0/q;->G:Lr0/d2;

    iget-object v5, p3, Lr0/q;->M:Ls0/b;

    iget-object v6, v5, Ls0/b;->b:Ls0/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v1, v5, Ls0/b;->b:Ls0/a;

    invoke-virtual {p3, v2}, Lr0/q;->R(I)V

    iget-object v1, p3, Lr0/q;->M:Ls0/b;

    invoke-virtual {v1}, Ls0/b;->b()V

    iget-boolean v7, v1, Ls0/b;->c:Z

    if-eqz v7, :cond_3

    iget-object v7, v1, Ls0/b;->b:Ls0/a;

    iget-object v7, v7, Ls0/a;->c:Ls0/m0;

    sget-object v8, Ls0/c0;->c:Ls0/c0;

    invoke-virtual {v7, v8}, Ls0/m0;->G(Ls0/j0;)V

    iget-boolean v7, v1, Ls0/b;->c:Z

    if-eqz v7, :cond_3

    invoke-virtual {v1, v2}, Ls0/b;->d(Z)V

    invoke-virtual {v1, v2}, Ls0/b;->d(Z)V

    iget-object v7, v1, Ls0/b;->b:Ls0/a;

    iget-object v7, v7, Ls0/a;->c:Ls0/m0;

    sget-object v8, Ls0/m;->c:Ls0/m;

    invoke-virtual {v7, v8}, Ls0/m0;->G(Ls0/j0;)V

    iput-boolean v2, v1, Ls0/b;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    iput-object v6, v5, Ls0/b;->b:Ls0/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v4}, Lr0/d2;->c()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_5
    iput-object v6, v5, Ls0/b;->b:Ls0/a;

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    invoke-virtual {v4}, Lr0/d2;->c()V

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    iput-object v5, v1, Lr0/x;->y:Lk/m0;

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_4
    :goto_4
    iget-object v1, p0, Lr0/q;->b:Lr0/u;

    iget-object p3, p3, Lr0/q;->h:Lr0/x;

    invoke-virtual {v1, p3}, Lr0/u;->r(Lr0/x;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0, p1}, Lr0/d2;->o(I)I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {v0, p1}, Lr0/d2;->l(I)Z

    move-result p0

    if-eqz p0, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-virtual {v0, p1}, Lr0/d2;->o(I)I

    move-result p0

    return p0

    :cond_8
    invoke-virtual {v0, p1}, Lr0/d2;->d(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lr0/d2;->b:[I

    mul-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x3

    aget v1, v1, v4

    add-int/2addr v1, p1

    add-int/lit8 v4, p1, 0x1

    move v5, v2

    :goto_5
    if-ge v4, v1, :cond_e

    invoke-virtual {v0, v4}, Lr0/d2;->l(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v7, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v7}, Ls0/b;->c()V

    iget-object v7, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v0, v4}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, Ls0/b;->c()V

    iget-object v7, v7, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-nez v6, :cond_b

    if-eqz p2, :cond_a

    goto :goto_6

    :cond_a
    move v7, v2

    goto :goto_7

    :cond_b
    :goto_6
    move v7, v3

    :goto_7
    if-eqz v6, :cond_c

    move v8, v2

    goto :goto_8

    :cond_c
    add-int v8, p3, v5

    :goto_8
    invoke-static {p0, v4, v7, v8}, Lr0/q;->S(Lr0/q;IZI)I

    move-result v7

    add-int/2addr v5, v7

    if-eqz v6, :cond_d

    iget-object v6, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v6}, Ls0/b;->c()V

    iget-object v6, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v6}, Ls0/b;->a()V

    :cond_d
    iget-object v6, v0, Lr0/d2;->b:[I

    mul-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x3

    aget v6, v6, v7

    add-int/2addr v4, v6

    goto :goto_5

    :cond_e
    invoke-virtual {v0, p1}, Lr0/d2;->l(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_9

    :cond_f
    return v5

    :cond_10
    invoke-virtual {v0, p1}, Lr0/d2;->l(I)Z

    move-result p0

    if-eqz p0, :cond_11

    :goto_9
    return v3

    :cond_11
    invoke-virtual {v0, p1}, Lr0/d2;->o(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final A()Lr0/j1;
    .locals 0

    invoke-virtual {p0}, Lr0/q;->m()Lr0/j1;

    move-result-object p0

    return-object p0
.end method

.method public final B()Lr0/n1;
    .locals 1

    iget v0, p0, Lr0/q;->A:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/n1;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final C()Z
    .locals 1

    invoke-virtual {p0}, Lr0/q;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr0/q;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr0/q;->B()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Lr0/n1;->b:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final D()Le1/e;
    .locals 1

    iget-object v0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {v0}, Lr0/u;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr0/q;->Q:Le1/e;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final E()Z
    .locals 0

    iget-boolean p0, p0, Lr0/q;->S:Z

    return p0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lr0/q;->S:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr0/q;->y:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lr0/q;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr0/q;->B()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_1

    iget p0, p0, Lr0/n1;->b:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G(Ljava/util/ArrayList;)V
    .locals 3

    iget-object v0, p0, Lr0/q;->f:Ls0/a;

    iget-object p0, p0, Lr0/q;->M:Ls0/b;

    iget-object v1, p0, Ls0/b;->b:Ls0/a;

    :try_start_0
    iput-object v0, p0, Ls0/b;->b:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/a0;->c:Ls0/a0;

    invoke-virtual {v0, v2}, Ls0/m0;->G(Ls0/j0;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ls0/b;->b()V

    iget-object p1, p0, Ls0/b;->b:Ls0/a;

    iget-object p1, p1, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/n;->c:Ls0/n;

    invoke-virtual {p1, v0}, Ls0/m0;->G(Ls0/j0;)V

    iput v2, p0, Ls0/b;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Ls0/b;->b:Ls0/a;

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt8/j;

    iget-object v0, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Lr0/t0;

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Lr0/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v1, p0, Ls0/b;->b:Ls0/a;

    throw p1
.end method

.method public final H(Lr0/j1;Ljava/lang/Object;)V
    .locals 7

    const v0, 0x78cc281

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lr0/q;->m0(Ljava/lang/Object;)V

    iget-wide v3, p0, Lr0/q;->T:J

    int-to-long v5, v0

    :try_start_0
    iput-wide v5, p0, Lr0/q;->T:J

    iget-boolean p2, p0, Lr0/q;->S:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr0/q;->I:Lr0/h2;

    invoke-static {p2}, Lr0/h2;->z(Lr0/h2;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean p2, p0, Lr0/q;->S:Z

    if-eqz p2, :cond_2

    :cond_1
    move p2, v1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p2}, Lr0/d2;->f()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lr0/q;->O(Lr0/j1;)V

    :cond_3
    sget-object v0, Lr0/s;->c:Lr0/y0;

    const/16 v5, 0xca

    invoke-virtual {p0, v5, v1, v0, p1}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lr0/q;->K:Lr0/j1;

    iput-boolean p2, p0, Lr0/q;->w:Z

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    :try_start_1
    new-instance p2, Lr0/n;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lr0/n;-><init>(Lr0/q;I)V

    invoke-static {p1, p2}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    iput-object v2, p0, Lr0/q;->K:Lr0/j1;

    iput-wide v3, p0, Lr0/q;->T:J

    invoke-virtual {p0, v1}, Lr0/q;->q(Z)V

    throw p1
.end method

.method public final I()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lr0/q;->S:Z

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lr0/q;->r:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0}, Lr0/d2;->m()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Lr0/q;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Lr0/b2;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    return-object v0
.end method

.method public final J()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0}, Lr0/u;->h()Lr0/t;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lr0/x;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lr0/x;->q:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->c()Lr0/d2;

    move-result-object v2

    :try_start_0
    iget v3, v2, Lr0/d2;->c:I

    const/4 v4, 0x0

    invoke-static {v2, p0, v4, v3}, Ll7/a;->m(Lr0/d2;Lr0/u;II)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v2}, Lr0/d2;->c()V

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lr0/e2;->c()Lr0/d2;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, v2}, Ll7/a;->A(Lr0/d2;ILjava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lr0/d2;->c()V

    iget-object v0, v0, Lr0/x;->G:Lr0/q;

    invoke-virtual {v0}, Lr0/q;->J()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lr0/d2;->c()V

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lu8/r;->l:Lu8/r;

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Lr0/d2;->c()V

    throw p0
.end method

.method public final K(I)I
    .locals 3

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, v0}, Lr0/d2;->k(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v2, p0, Lr0/q;->G:Lr0/d2;

    iget-object v2, v2, Lr0/d2;->b:[I

    invoke-static {v2, v0}, Lr0/g2;->a([II)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final L(Lr0/x;Lr0/x;Ljava/lang/Integer;Ljava/util/List;Li9/a;)Ljava/lang/Object;
    .locals 8

    iget-boolean v0, p0, Lr0/q;->F:Z

    iget v1, p0, Lr0/q;->k:I

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lr0/q;->F:Z

    const/4 v2, 0x0

    iput v2, p0, Lr0/q;->k:I

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_1

    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    iget-object v7, v6, Lt8/j;->l:Ljava/lang/Object;

    check-cast v7, Lr0/n1;

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v7, v6}, Lr0/q;->g0(Lr0/n1;Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v7, v5}, Lr0/q;->g0(Lr0/n1;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    const/4 p3, -0x1

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    if-ltz p3, :cond_3

    iput-object p2, p1, Lr0/x;->C:Lr0/x;

    iput p3, p1, Lr0/x;->D:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p5}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v5, p1, Lr0/x;->C:Lr0/x;

    iput v2, p1, Lr0/x;->D:I

    goto :goto_3

    :catchall_1
    move-exception p2

    iput-object v5, p1, Lr0/x;->C:Lr0/x;

    iput v2, p1, Lr0/x;->D:I

    throw p2

    :cond_3
    invoke-interface {p5}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    :goto_3
    if-nez p2, :cond_5

    :cond_4
    invoke-interface {p5}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    iput-boolean v0, p0, Lr0/q;->F:Z

    iput v1, p0, Lr0/q;->k:I

    return-object p2

    :goto_4
    iput-boolean v0, p0, Lr0/q;->F:Z

    iput v1, p0, Lr0/q;->k:I

    throw p1
.end method

.method public final M()V
    .locals 38

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lr0/q;->F:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lr0/q;->F:Z

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    iget v4, v3, Lr0/d2;->i:I

    iget-object v5, v3, Lr0/d2;->b:[I

    mul-int/lit8 v6, v4, 0x5

    const/4 v7, 0x3

    add-int/2addr v6, v7

    aget v5, v5, v6

    add-int/2addr v5, v4

    iget v8, v0, Lr0/q;->k:I

    iget-wide v9, v0, Lr0/q;->T:J

    iget v11, v0, Lr0/q;->l:I

    iget v12, v0, Lr0/q;->m:I

    iget v3, v3, Lr0/d2;->g:I

    iget-object v13, v0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-static {v3, v13}, Lr0/r;->s(ILjava/util/List;)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v3, v14, :cond_1

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/m0;

    iget v14, v3, Lr0/m0;->b:I

    if-ge v14, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move/from16 v17, v7

    const/16 v16, 0x0

    move v7, v4

    :goto_1
    if-eqz v3, :cond_28

    move/from16 v18, v2

    iget-object v2, v3, Lr0/m0;->a:Lr0/n1;

    iget v15, v3, Lr0/m0;->b:I

    invoke-static {v15, v13}, Lr0/r;->s(ILjava/util/List;)I

    move-result v14

    if-ltz v14, :cond_2

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr0/m0;

    :cond_2
    iget-object v3, v3, Lr0/m0;->c:Ljava/lang/Object;

    const-wide/16 v19, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v27, v6

    :goto_2
    move/from16 v34, v8

    move/from16 v30, v11

    move/from16 v31, v12

    :cond_3
    :goto_3
    move/from16 v3, v18

    goto/16 :goto_7

    :cond_4
    const/16 v26, 0x8

    iget-object v14, v2, Lr0/n1;->g:Lk/m0;

    if-nez v14, :cond_5

    move/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v27, v6

    goto :goto_2

    :cond_5
    move/from16 v27, v6

    instance-of v6, v3, Lr0/d0;

    if-eqz v6, :cond_6

    check-cast v3, Lr0/d0;

    invoke-static {v3, v14}, Lr0/n1;->a(Lr0/d0;Lk/m0;)Z

    move-result v3

    move/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v34, v8

    move/from16 v30, v11

    move/from16 v31, v12

    goto/16 :goto_7

    :cond_6
    instance-of v6, v3, Lk/n0;

    if-eqz v6, :cond_d

    check-cast v3, Lk/n0;

    invoke-virtual {v3}, Lk/n0;->h()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v3, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v3, v3, Lk/n0;->a:[J

    move-object/from16 v28, v6

    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_b

    move-object/from16 v29, v3

    move/from16 v30, v11

    move/from16 v31, v12

    const/4 v3, 0x0

    :goto_4
    aget-wide v11, v29, v3

    move/from16 v32, v1

    move-object/from16 v33, v2

    not-long v1, v11

    shl-long v1, v1, v23

    and-long/2addr v1, v11

    and-long v1, v1, v24

    cmp-long v1, v1, v24

    if-eqz v1, :cond_a

    sub-int v1, v3, v6

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_9

    and-long v34, v11, v21

    cmp-long v34, v34, v19

    if-gez v34, :cond_7

    shl-int/lit8 v34, v3, 0x3

    add-int v34, v34, v2

    move/from16 v35, v2

    aget-object v2, v28, v34

    move/from16 v34, v8

    instance-of v8, v2, Lr0/d0;

    if-eqz v8, :cond_3

    check-cast v2, Lr0/d0;

    invoke-static {v2, v14}, Lr0/n1;->a(Lr0/d0;Lk/m0;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_7
    move/from16 v35, v2

    move/from16 v34, v8

    :cond_8
    shr-long v11, v11, v26

    add-int/lit8 v2, v35, 0x1

    move/from16 v8, v34

    goto :goto_5

    :cond_9
    move/from16 v34, v8

    move/from16 v2, v26

    if-ne v1, v2, :cond_c

    goto :goto_6

    :cond_a
    move/from16 v34, v8

    :goto_6
    if-eq v3, v6, :cond_c

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v8, v34

    const/16 v26, 0x8

    goto :goto_4

    :cond_b
    move/from16 v32, v1

    move-object/from16 v33, v2

    move/from16 v34, v8

    move/from16 v30, v11

    move/from16 v31, v12

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    move/from16 v32, v1

    move-object/from16 v33, v2

    goto/16 :goto_2

    :goto_7
    if-eqz v3, :cond_20

    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1, v15}, Lr0/d2;->r(I)V

    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    iget v1, v1, Lr0/d2;->g:I

    invoke-virtual {v0, v7, v1, v4}, Lr0/q;->P(III)V

    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, v1}, Lr0/d2;->q(I)I

    move-result v2

    :goto_8
    if-eq v2, v4, :cond_e

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3, v2}, Lr0/d2;->l(I)Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3, v2}, Lr0/d2;->q(I)I

    move-result v2

    goto :goto_8

    :cond_e
    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3, v2}, Lr0/d2;->l(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    move/from16 v3, v34

    :goto_9
    if-ne v2, v1, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v0, v2}, Lr0/q;->n0(I)I

    move-result v6

    iget-object v7, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v7, v1}, Lr0/d2;->o(I)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v3

    :cond_11
    if-ge v3, v6, :cond_13

    if-eq v2, v15, :cond_13

    add-int/lit8 v2, v2, 0x1

    :goto_a
    if-ge v2, v15, :cond_13

    iget-object v7, v0, Lr0/q;->G:Lr0/d2;

    iget-object v8, v7, Lr0/d2;->b:[I

    mul-int/lit8 v11, v2, 0x5

    add-int/lit8 v11, v11, 0x3

    aget v8, v8, v11

    add-int/2addr v8, v2

    if-lt v15, v8, :cond_11

    invoke-virtual {v7, v2}, Lr0/d2;->l(I)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v2, v18

    goto :goto_b

    :cond_12
    invoke-virtual {v0, v2}, Lr0/q;->n0(I)I

    move-result v2

    :goto_b
    add-int/2addr v3, v2

    move v2, v8

    goto :goto_a

    :cond_13
    :goto_c
    iput v3, v0, Lr0/q;->k:I

    invoke-virtual {v0, v1}, Lr0/q;->K(I)I

    move-result v2

    iput v2, v0, Lr0/q;->m:I

    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, v1}, Lr0/d2;->q(I)I

    move-result v2

    const/4 v3, 0x0

    int-to-long v6, v3

    move/from16 v8, v17

    const/4 v3, 0x0

    :goto_d
    if-ltz v2, :cond_1c

    if-ne v2, v4, :cond_14

    invoke-static {v9, v10, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    :goto_e
    xor-long/2addr v6, v2

    goto/16 :goto_12

    :cond_14
    iget-object v11, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v11, v2}, Lr0/d2;->k(I)Z

    move-result v12

    iget-object v14, v11, Lr0/d2;->b:[I

    if-eqz v12, :cond_17

    invoke-virtual {v11, v14, v2}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_16

    instance-of v12, v11, Ljava/lang/Enum;

    if-eqz v12, :cond_15

    check-cast v11, Ljava/lang/Enum;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    goto :goto_10

    :cond_15
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_10

    :cond_16
    const/4 v11, 0x0

    goto :goto_10

    :cond_17
    invoke-virtual {v11, v2}, Lr0/d2;->i(I)I

    move-result v12

    const/16 v15, 0xcf

    if-ne v12, v15, :cond_19

    invoke-virtual {v11, v14, v2}, Lr0/d2;->b([II)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_19

    sget-object v14, Lr0/m;->a:Lr0/e;

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    goto :goto_f

    :cond_18
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    goto :goto_10

    :cond_19
    :goto_f
    move v11, v12

    :goto_10
    const v12, 0x78cc281

    if-ne v11, v12, :cond_1a

    int-to-long v11, v11

    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    goto :goto_e

    :cond_1a
    iget-object v12, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v12, v2}, Lr0/d2;->k(I)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x0

    goto :goto_11

    :cond_1b
    invoke-virtual {v0, v2}, Lr0/q;->K(I)I

    move-result v12

    :goto_11
    int-to-long v14, v11

    invoke-static {v14, v15, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v14

    xor-long/2addr v6, v14

    int-to-long v11, v12

    invoke-static {v11, v12, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    xor-long/2addr v6, v11

    add-int/lit8 v8, v8, 0x6

    rem-int/lit8 v8, v8, 0x40

    add-int/lit8 v3, v3, 0x6

    rem-int/lit8 v3, v3, 0x40

    iget-object v11, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v11, v2}, Lr0/d2;->q(I)I

    move-result v2

    goto :goto_d

    :cond_1c
    :goto_12
    iput-wide v6, v0, Lr0/q;->T:J

    const/4 v2, 0x0

    iput-object v2, v0, Lr0/q;->K:Lr0/j1;

    move-object/from16 v3, v33

    iget-object v3, v3, Lr0/n1;->d:Li9/e;

    if-eqz v3, :cond_1f

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lr0/q;->K:Lr0/j1;

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    iget-object v6, v3, Lr0/d2;->b:[I

    aget v6, v6, v27

    add-int/2addr v6, v4

    iget v7, v3, Lr0/d2;->g:I

    if-lt v7, v4, :cond_1d

    if-gt v7, v6, :cond_1d

    move/from16 v8, v18

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    :goto_13
    if-nez v8, :cond_1e

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "Index "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " is not a parent of "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1e
    iput v4, v3, Lr0/d2;->i:I

    iput v6, v3, Lr0/d2;->h:I

    const/4 v6, 0x0

    iput v6, v3, Lr0/d2;->l:I

    iput v6, v3, Lr0/d2;->m:I

    move v7, v1

    move/from16 v16, v18

    goto/16 :goto_1d

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid restart scope"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    move-object/from16 v3, v33

    const/4 v2, 0x0

    iget-object v1, v0, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lr0/q;->g:Lq3/k;

    invoke-virtual {v6}, Lq3/k;->e()V

    iget-object v6, v3, Lr0/n1;->a:Lr0/x;

    if-eqz v6, :cond_25

    iget-object v8, v3, Lr0/n1;->f:Lk/d0;

    if-eqz v8, :cond_25

    move/from16 v11, v18

    invoke-virtual {v3, v11}, Lr0/n1;->e(Z)V

    :try_start_0
    iget-object v11, v8, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v12, v8, Lk/d0;->c:[I

    iget-object v8, v8, Lk/d0;->a:[J

    array-length v14, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v14, v14, -0x2

    move-object/from16 v33, v3

    if-ltz v14, :cond_23

    const/4 v15, 0x0

    :goto_14
    :try_start_1
    aget-wide v2, v8, v15

    move-object/from16 v28, v11

    move-object/from16 v29, v12

    not-long v11, v2

    shl-long v11, v11, v23

    and-long/2addr v11, v2

    and-long v11, v11, v24

    cmp-long v11, v11, v24

    if-eqz v11, :cond_24

    sub-int v11, v15, v14

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v26, 0x8

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_15
    if-ge v12, v11, :cond_22

    and-long v35, v2, v21

    cmp-long v35, v35, v19

    if-gez v35, :cond_21

    shl-int/lit8 v35, v15, 0x3

    add-int v35, v35, v12

    move-wide/from16 v36, v2

    aget-object v2, v28, v35

    aget v3, v29, v35

    invoke-virtual {v6, v2}, Lr0/x;->z(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_16
    const/16 v2, 0x8

    goto :goto_18

    :catchall_0
    move-exception v0

    move-object/from16 v3, v33

    :goto_17
    const/4 v6, 0x0

    goto :goto_1b

    :cond_21
    move-wide/from16 v36, v2

    goto :goto_16

    :goto_18
    shr-long v35, v36, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v35

    goto :goto_15

    :cond_22
    const/16 v2, 0x8

    if-ne v11, v2, :cond_23

    goto :goto_19

    :cond_23
    move-object/from16 v3, v33

    const/4 v6, 0x0

    goto :goto_1a

    :cond_24
    const/16 v2, 0x8

    :goto_19
    if-eq v15, v14, :cond_23

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v28

    move-object/from16 v12, v29

    goto :goto_14

    :goto_1a
    invoke-virtual {v3, v6}, Lr0/n1;->e(Z)V

    goto :goto_1c

    :catchall_1
    move-exception v0

    goto :goto_17

    :goto_1b
    invoke-virtual {v3, v6}, Lr0/n1;->e(Z)V

    throw v0

    :cond_25
    const/4 v6, 0x0

    :goto_1c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1d
    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    iget v1, v1, Lr0/d2;->g:I

    invoke-static {v1, v13}, Lr0/r;->s(ILjava/util/List;)I

    move-result v1

    if-gez v1, :cond_26

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    :cond_26
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/m0;

    iget v2, v1, Lr0/m0;->b:I

    if-ge v2, v5, :cond_27

    move-object v3, v1

    goto :goto_1e

    :cond_27
    const/4 v3, 0x0

    :goto_1e
    move/from16 v2, v18

    move/from16 v6, v27

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v1, v32

    move/from16 v8, v34

    goto/16 :goto_1

    :cond_28
    move/from16 v32, v1

    move/from16 v34, v8

    move/from16 v30, v11

    move/from16 v31, v12

    if-eqz v16, :cond_29

    invoke-virtual {v0, v7, v4, v4}, Lr0/q;->P(III)V

    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1}, Lr0/d2;->t()V

    invoke-virtual {v0, v4}, Lr0/q;->n0(I)I

    move-result v1

    add-int v8, v34, v1

    iput v8, v0, Lr0/q;->k:I

    add-int v11, v30, v1

    iput v11, v0, Lr0/q;->l:I

    move/from16 v1, v31

    iput v1, v0, Lr0/q;->m:I

    goto :goto_1f

    :cond_29
    invoke-virtual {v0}, Lr0/q;->V()V

    :goto_1f
    iput-wide v9, v0, Lr0/q;->T:J

    move/from16 v1, v32

    iput-boolean v1, v0, Lr0/q;->F:Z

    return-void
.end method

.method public final N()V
    .locals 8

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->g:I

    invoke-virtual {p0, v0}, Lr0/q;->R(I)V

    iget-object p0, p0, Lr0/q;->M:Ls0/b;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls0/b;->d(Z)V

    iget-object v1, p0, Ls0/b;->d:Le2/t;

    iget-object v2, p0, Ls0/b;->a:Lr0/q;

    iget-object v3, v2, Lr0/q;->G:Lr0/d2;

    iget v4, v3, Lr0/d2;->c:I

    if-lez v4, :cond_1

    iget v4, v3, Lr0/d2;->i:I

    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Le2/t;->a(I)I

    move-result v5

    if-eq v5, v4, :cond_1

    iget-boolean v5, p0, Ls0/b;->c:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, p0, Ls0/b;->e:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v0}, Ls0/b;->d(Z)V

    iget-object v5, p0, Ls0/b;->b:Ls0/a;

    iget-object v5, v5, Ls0/a;->c:Ls0/m0;

    sget-object v7, Ls0/q;->c:Ls0/q;

    invoke-virtual {v5, v7}, Ls0/m0;->G(Ls0/j0;)V

    iput-boolean v6, p0, Ls0/b;->c:Z

    :cond_0
    if-lez v4, :cond_1

    invoke-virtual {v3, v4}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v3

    invoke-virtual {v1, v4}, Le2/t;->c(I)V

    invoke-virtual {p0, v0}, Ls0/b;->d(Z)V

    iget-object v1, p0, Ls0/b;->b:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    sget-object v4, Ls0/p;->c:Ls0/p;

    invoke-virtual {v1, v4}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v1, v0, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iput-boolean v6, p0, Ls0/b;->c:Z

    :cond_1
    iget-object v0, p0, Ls0/b;->b:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    sget-object v1, Ls0/y;->c:Ls0/y;

    invoke-virtual {v0, v1}, Ls0/m0;->G(Ls0/j0;)V

    iget v0, p0, Ls0/b;->f:I

    iget-object v1, v2, Lr0/q;->G:Lr0/d2;

    iget-object v2, v1, Lr0/d2;->b:[I

    iget v1, v1, Lr0/d2;->g:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    aget v1, v2, v1

    add-int/2addr v1, v0

    iput v1, p0, Ls0/b;->f:I

    return-void
.end method

.method public final O(Lr0/j1;)V
    .locals 1

    iget-object v0, p0, Lr0/q;->v:Lk/x;

    if-nez v0, :cond_0

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    iput-object v0, p0, Lr0/q;->v:Lk/x;

    :cond_0
    iget-object p0, p0, Lr0/q;->G:Lr0/d2;

    iget p0, p0, Lr0/d2;->g:I

    invoke-virtual {v0, p0, p1}, Lk/x;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public final P(III)V
    .locals 6

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, p3, :cond_9

    if-ne p2, p3, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result v1

    if-ne v1, p2, :cond_2

    move p3, p2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v0, p2}, Lr0/d2;->q(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    :goto_0
    move p3, p1

    goto :goto_6

    :cond_3
    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result v1

    invoke-virtual {v0, p2}, Lr0/d2;->q(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result p3

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    move v2, p1

    move v3, v1

    :goto_1
    if-lez v2, :cond_5

    if-eq v2, p3, :cond_5

    invoke-virtual {v0, v2}, Lr0/d2;->q(I)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v2, p2

    move v4, v1

    :goto_2
    if-lez v2, :cond_6

    if-eq v2, p3, :cond_6

    invoke-virtual {v0, v2}, Lr0/d2;->q(I)I

    move-result v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    sub-int p3, v3, v4

    move v5, p1

    move v2, v1

    :goto_3
    if-ge v2, p3, :cond_7

    invoke-virtual {v0, v5}, Lr0/d2;->q(I)I

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    sub-int/2addr v4, v3

    move p3, p2

    :goto_4
    if-ge v1, v4, :cond_8

    invoke-virtual {v0, p3}, Lr0/d2;->q(I)I

    move-result p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, p3

    move p3, v5

    :goto_5
    if-eq p3, v1, :cond_9

    invoke-virtual {v0, p3}, Lr0/d2;->q(I)I

    move-result p3

    invoke-virtual {v0, v1}, Lr0/d2;->q(I)I

    move-result v1

    goto :goto_5

    :cond_9
    :goto_6
    if-lez p1, :cond_b

    if-eq p1, p3, :cond_b

    invoke-virtual {v0, p1}, Lr0/d2;->l(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v1}, Ls0/b;->a()V

    :cond_a
    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result p1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2, p3}, Lr0/q;->p(II)V

    return-void
.end method

.method public final Q()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lr0/q;->S:Z

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lr0/q;->r:Z

    if-eqz p0, :cond_1

    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0}, Lr0/d2;->m()Ljava/lang/Object;

    move-result-object v0

    iget-boolean p0, p0, Lr0/q;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Lr0/b2;

    if-nez p0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    instance-of p0, v0, Lr0/y1;

    if-eqz p0, :cond_3

    check-cast v0, Lr0/y1;

    iget-object p0, v0, Lr0/y1;->a:Lr0/x1;

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final R(I)V
    .locals 4

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0, p1}, Lr0/d2;->l(I)Z

    move-result v0

    iget-object v1, p0, Lr0/q;->M:Ls0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ls0/b;->c()V

    iget-object v2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, p1}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ls0/b;->c()V

    iget-object v3, v1, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2}, Lr0/q;->S(Lr0/q;IZI)I

    invoke-virtual {v1}, Ls0/b;->c()V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ls0/b;->a()V

    :cond_1
    return-void
.end method

.method public final T(IZ)Z
    .locals 3

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lr0/q;->S:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lr0/q;->y:Z

    if-eqz p1, :cond_5

    :cond_0
    iget-object p1, p0, Lr0/q;->P:Lr0/c2;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lr0/q;->B()Lr0/n1;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lr0/c2;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p2, Lr0/n1;->b:I

    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_3

    return v0

    :cond_3
    or-int/lit8 v0, p1, 0x1

    iput v0, p2, Lr0/n1;->b:I

    iget-boolean v2, p0, Lr0/q;->y:Z

    if-eqz v2, :cond_4

    or-int/lit16 p1, p1, 0x81

    goto :goto_0

    :cond_4
    and-int/lit16 p1, v0, -0x81

    :goto_0
    or-int/lit16 p1, p1, 0x100

    iput p1, p2, Lr0/n1;->b:I

    iget-object p1, p0, Lr0/q;->M:Ls0/b;

    iget-object p1, p1, Ls0/b;->b:Ls0/a;

    iget-object p1, p1, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/x;->c:Ls0/x;

    invoke-virtual {p1, v0}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p1, v1, p2}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget-object p0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {p0, p2}, Lr0/u;->q(Lr0/n1;)V

    return v1

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lr0/q;->F()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v0
.end method

.method public final U()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lr0/q;->l:I

    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2}, Lr0/d2;->s()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Lr0/q;->l:I

    return-void

    :cond_0
    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1}, Lr0/d2;->g()I

    move-result v2

    iget-object v3, v1, Lr0/d2;->b:[I

    iget v4, v1, Lr0/d2;->g:I

    iget v5, v1, Lr0/d2;->h:I

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    invoke-virtual {v1, v3, v4}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    invoke-virtual {v1}, Lr0/d2;->f()Ljava/lang/Object;

    move-result-object v5

    iget v7, v0, Lr0/q;->m:I

    sget-object v8, Lr0/m;->a:Lr0/e;

    const/16 v9, 0xcf

    const/4 v11, 0x3

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    if-ne v2, v9, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v12

    iget-wide v13, v0, Lr0/q;->T:J

    invoke-static {v13, v14, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    int-to-long v9, v12

    xor-long/2addr v9, v13

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v12, v7

    xor-long/2addr v9, v12

    iput-wide v9, v0, Lr0/q;->T:J

    goto :goto_3

    :cond_2
    iget-wide v9, v0, Lr0/q;->T:J

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v12, v2

    xor-long/2addr v9, v12

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    int-to-long v12, v7

    xor-long/2addr v9, v12

    :goto_1
    iput-wide v9, v0, Lr0/q;->T:J

    goto :goto_3

    :cond_3
    instance-of v9, v4, Ljava/lang/Enum;

    if-eqz v9, :cond_4

    move-object v9, v4

    check-cast v9, Ljava/lang/Enum;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    iget-wide v12, v0, Lr0/q;->T:J

    invoke-static {v12, v13, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    int-to-long v9, v9

    xor-long/2addr v9, v12

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    const/4 v12, 0x0

    :goto_2
    int-to-long v13, v12

    xor-long/2addr v9, v13

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    iget-wide v13, v0, Lr0/q;->T:J

    invoke-static {v13, v14, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v13

    int-to-long v9, v9

    xor-long/2addr v9, v13

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    goto :goto_2

    :goto_3
    iget v9, v1, Lr0/d2;->g:I

    mul-int/lit8 v9, v9, 0x5

    const/4 v12, 0x1

    add-int/2addr v9, v12

    aget v3, v3, v9

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v3, v9

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v0, v6, v12}, Lr0/q;->a0(Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lr0/q;->M()V

    invoke-virtual {v1}, Lr0/d2;->e()V

    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    const/16 v15, 0xcf

    if-ne v2, v15, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-wide v2, v0, Lr0/q;->T:J

    int-to-long v4, v7

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    int-to-long v4, v1

    xor-long v1, v2, v4

    invoke-static {v1, v2, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lr0/q;->T:J

    return-void

    :cond_6
    iget-wide v3, v0, Lr0/q;->T:J

    int-to-long v5, v7

    xor-long/2addr v3, v5

    invoke-static {v3, v4, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    int-to-long v1, v2

    xor-long/2addr v1, v3

    invoke-static {v1, v2, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lr0/q;->T:J

    return-void

    :cond_7
    instance-of v1, v4, Ljava/lang/Enum;

    if-eqz v1, :cond_8

    check-cast v4, Ljava/lang/Enum;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-wide v2, v0, Lr0/q;->T:J

    const/4 v12, 0x0

    int-to-long v4, v12

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    int-to-long v4, v1

    xor-long v1, v2, v4

    invoke-static {v1, v2, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lr0/q;->T:J

    return-void

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-wide v2, v0, Lr0/q;->T:J

    int-to-long v4, v12

    xor-long/2addr v2, v4

    invoke-static {v2, v3, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    int-to-long v4, v1

    xor-long v1, v2, v4

    invoke-static {v1, v2, v11}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lr0/q;->T:J

    return-void
.end method

.method public final V()V
    .locals 3

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v1, v0, Lr0/d2;->i:I

    if-ltz v1, :cond_0

    iget-object v2, v0, Lr0/d2;->b:[I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v2, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lr0/q;->l:I

    invoke-virtual {v0}, Lr0/d2;->t()V

    return-void
.end method

.method public final W()V
    .locals 3

    iget v0, p0, Lr0/q;->l:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lr0/q;->S:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lr0/q;->B()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, v0, Lr0/n1;->b:I

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lr0/n1;->b:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lr0/q;->V()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lr0/q;->M()V

    :cond_4
    return-void
.end method

.method public final X(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, v0, Lr0/q;->r:Z

    if-eqz v7, :cond_0

    const-string v7, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v7}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    iget v7, v0, Lr0/q;->m:I

    sget-object v8, Lr0/m;->a:Lr0/e;

    const/4 v9, 0x3

    const/4 v10, 0x0

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    const/16 v11, 0xcf

    if-ne v1, v11, :cond_1

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v11

    iget-wide v12, v0, Lr0/q;->T:J

    invoke-static {v12, v13, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v12

    int-to-long v14, v11

    xor-long v11, v12, v14

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v7

    xor-long/2addr v11, v13

    iput-wide v11, v0, Lr0/q;->T:J

    goto :goto_2

    :cond_1
    iget-wide v11, v0, Lr0/q;->T:J

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v1

    xor-long/2addr v11, v13

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v7

    :goto_0
    xor-long/2addr v11, v13

    iput-wide v11, v0, Lr0/q;->T:J

    goto :goto_2

    :cond_2
    instance-of v7, v3, Ljava/lang/Enum;

    if-eqz v7, :cond_3

    move-object v7, v3

    check-cast v7, Ljava/lang/Enum;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    :goto_1
    iget-wide v11, v0, Lr0/q;->T:J

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v7

    xor-long/2addr v11, v13

    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v11

    int-to-long v13, v10

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :goto_2
    const/4 v7, 0x1

    if-nez v3, :cond_4

    iget v9, v0, Lr0/q;->m:I

    add-int/2addr v9, v7

    iput v9, v0, Lr0/q;->m:I

    :cond_4
    if-eqz v2, :cond_5

    move v9, v7

    goto :goto_3

    :cond_5
    move v9, v10

    :goto_3
    iget-boolean v11, v0, Lr0/q;->S:Z

    const/4 v12, -0x2

    const/4 v13, 0x0

    if-eqz v11, :cond_b

    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    iget v11, v2, Lr0/d2;->k:I

    add-int/2addr v11, v7

    iput v11, v2, Lr0/d2;->k:I

    iget-object v2, v0, Lr0/q;->I:Lr0/h2;

    iget v11, v2, Lr0/h2;->t:I

    if-eqz v9, :cond_6

    invoke-virtual {v2, v1, v8, v8, v7}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_8

    if-nez v3, :cond_7

    move-object v3, v8

    :cond_7
    invoke-virtual {v2, v1, v3, v4, v10}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    move-object v3, v8

    :cond_9
    invoke-virtual {v2, v1, v3, v8, v10}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_4
    iget-object v2, v0, Lr0/q;->j:Lr0/i1;

    if-eqz v2, :cond_a

    new-instance v3, Lr0/p0;

    sub-int/2addr v12, v11

    invoke-direct {v3, v6, v1, v12, v5}, Lr0/p0;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Lr0/q;->k:I

    iget v4, v2, Lr0/i1;->b:I

    sub-int/2addr v1, v4

    iget-object v4, v2, Lr0/i1;->e:Lk/x;

    new-instance v6, Lr0/j0;

    invoke-direct {v6, v5, v1, v10}, Lr0/j0;-><init>(III)V

    invoke-virtual {v4, v12, v6}, Lk/x;->h(ILjava/lang/Object;)V

    iget-object v1, v2, Lr0/i1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-virtual {v0, v9, v13}, Lr0/q;->x(ZLr0/i1;)V

    return-void

    :cond_b
    if-eq v2, v7, :cond_c

    goto :goto_5

    :cond_c
    iget-boolean v2, v0, Lr0/q;->y:Z

    if-eqz v2, :cond_d

    move v2, v7

    goto :goto_6

    :cond_d
    :goto_5
    move v2, v10

    :goto_6
    iget-object v11, v0, Lr0/q;->j:Lr0/i1;

    if-nez v11, :cond_f

    iget-object v11, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v11}, Lr0/d2;->g()I

    move-result v11

    if-nez v2, :cond_10

    if-ne v11, v1, :cond_10

    iget-object v11, v0, Lr0/q;->G:Lr0/d2;

    iget v14, v11, Lr0/d2;->g:I

    iget v15, v11, Lr0/d2;->h:I

    if-ge v14, v15, :cond_e

    iget-object v15, v11, Lr0/d2;->b:[I

    invoke-virtual {v11, v15, v14}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v11

    goto :goto_7

    :cond_e
    move-object v11, v13

    :goto_7
    invoke-static {v3, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v0, v4, v9}, Lr0/q;->a0(Ljava/lang/Object;Z)V

    :cond_f
    move/from16 p2, v2

    goto :goto_b

    :cond_10
    new-instance v11, Lr0/i1;

    iget-object v14, v0, Lr0/q;->G:Lr0/d2;

    iget-object v15, v14, Lr0/d2;->b:[I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v13, v14, Lr0/d2;->k:I

    if-lez v13, :cond_12

    :cond_11
    move/from16 p2, v2

    goto :goto_a

    :cond_12
    iget v13, v14, Lr0/d2;->g:I

    :goto_8
    iget v12, v14, Lr0/d2;->h:I

    if-ge v13, v12, :cond_11

    new-instance v12, Lr0/p0;

    mul-int/lit8 v18, v13, 0x5

    aget v7, v15, v18

    invoke-virtual {v14, v15, v13}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v20, v18, 0x1

    aget v20, v15, v20

    const/high16 v21, 0x40000000    # 2.0f

    and-int v21, v20, v21

    if-eqz v21, :cond_13

    move/from16 p2, v2

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const v21, 0x3ffffff

    and-int v20, v20, v21

    move/from16 p2, v2

    move/from16 v2, v20

    :goto_9
    invoke-direct {v12, v10, v7, v13, v2}, Lr0/p0;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x3

    aget v2, v15, v18

    add-int/2addr v13, v2

    move/from16 v2, p2

    const/4 v7, 0x1

    const/4 v10, 0x0

    goto :goto_8

    :goto_a
    iget v2, v0, Lr0/q;->k:I

    invoke-direct {v11, v2, v5}, Lr0/i1;-><init>(ILjava/util/ArrayList;)V

    iput-object v11, v0, Lr0/q;->j:Lr0/i1;

    :goto_b
    iget-object v2, v0, Lr0/q;->j:Lr0/i1;

    if-eqz v2, :cond_2b

    iget-object v5, v2, Lr0/i1;->d:Ljava/util/ArrayList;

    iget-object v7, v2, Lr0/i1;->e:Lk/x;

    iget v10, v2, Lr0/i1;->b:I

    if-eqz v3, :cond_14

    new-instance v11, Lr0/o0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v12, v3}, Lr0/o0;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_c
    iget-object v12, v2, Lr0/i1;->f:Lt8/o;

    invoke-virtual {v12}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt0/a;

    iget-object v12, v12, Lt0/a;->a:Lk/m0;

    invoke-virtual {v12, v11}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_15

    const/4 v13, 0x0

    goto :goto_d

    :cond_15
    instance-of v14, v13, Lk/h0;

    if-eqz v14, :cond_18

    check-cast v13, Lk/h0;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13}, Lk/h0;->h()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual {v12, v11}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iget v14, v13, Lk/h0;->b:I

    const/4 v3, 0x1

    if-ne v14, v3, :cond_17

    invoke-virtual {v13}, Lk/h0;->e()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v11, v3}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    move-object v13, v15

    goto :goto_d

    :cond_18
    invoke-virtual {v12, v11}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    check-cast v13, Lr0/p0;

    if-nez p2, :cond_2c

    if-eqz v13, :cond_2c

    iget v1, v13, Lr0/p0;->c:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/j0;

    if-eqz v3, :cond_19

    iget v3, v3, Lr0/j0;->b:I

    goto :goto_e

    :cond_19
    const/4 v3, -0x1

    :goto_e
    add-int/2addr v3, v10

    iput v3, v0, Lr0/q;->k:I

    invoke-virtual {v7, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/j0;

    if-eqz v3, :cond_1a

    iget v5, v3, Lr0/j0;->a:I

    goto :goto_f

    :cond_1a
    const/4 v5, -0x1

    :goto_f
    iget v2, v2, Lr0/i1;->c:I

    sub-int v3, v5, v2

    const/16 v8, 0x8

    if-le v5, v2, :cond_21

    const/16 p1, 0x7

    iget-object v6, v7, Lk/k;->c:[Ljava/lang/Object;

    iget-object v7, v7, Lk/k;->a:[J

    const-wide/16 p2, 0x80

    array-length v10, v7

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_20

    const/4 v11, 0x0

    const-wide/16 v20, 0xff

    :goto_10
    aget-wide v12, v7, v11

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v14, v12

    shl-long v14, v14, p1

    and-long/2addr v14, v12

    and-long v14, v14, v22

    cmp-long v14, v14, v22

    if-eqz v14, :cond_1f

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v14, v14, 0x8

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v14, :cond_1e

    and-long v24, v12, v20

    cmp-long v16, v24, p2

    if-gez v16, :cond_1c

    shl-int/lit8 v16, v11, 0x3

    add-int v16, v16, v15

    aget-object v16, v6, v16

    move/from16 v18, v8

    move-object/from16 v8, v16

    check-cast v8, Lr0/j0;

    move/from16 v16, v3

    iget v3, v8, Lr0/j0;->a:I

    if-ne v3, v5, :cond_1b

    iput v2, v8, Lr0/j0;->a:I

    goto :goto_12

    :cond_1b
    if-gt v2, v3, :cond_1d

    if-ge v3, v5, :cond_1d

    add-int/lit8 v3, v3, 0x1

    iput v3, v8, Lr0/j0;->a:I

    goto :goto_12

    :cond_1c
    move/from16 v16, v3

    move/from16 v18, v8

    :cond_1d
    :goto_12
    shr-long v12, v12, v18

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v16

    move/from16 v8, v18

    goto :goto_11

    :cond_1e
    move/from16 v16, v3

    move v3, v8

    if-ne v14, v3, :cond_27

    goto :goto_13

    :cond_1f
    move/from16 v16, v3

    :goto_13
    if-eq v11, v10, :cond_27

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    const/16 v8, 0x8

    goto :goto_10

    :cond_20
    move/from16 v16, v3

    goto/16 :goto_1a

    :cond_21
    move/from16 v16, v3

    const/16 p1, 0x7

    const-wide/16 p2, 0x80

    const-wide/16 v20, 0xff

    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v2, v5, :cond_27

    iget-object v3, v7, Lk/k;->c:[Ljava/lang/Object;

    iget-object v6, v7, Lk/k;->a:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_27

    const/4 v8, 0x0

    :goto_14
    aget-wide v10, v6, v8

    not-long v12, v10

    shl-long v12, v12, p1

    and-long/2addr v12, v10

    and-long v12, v12, v22

    cmp-long v12, v12, v22

    if-eqz v12, :cond_26

    sub-int v12, v8, v7

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v18, 0x8

    rsub-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    :goto_15
    if-ge v13, v12, :cond_25

    and-long v14, v10, v20

    cmp-long v14, v14, p2

    if-gez v14, :cond_24

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Lr0/j0;

    iget v15, v14, Lr0/j0;->a:I

    if-ne v15, v5, :cond_22

    iput v2, v14, Lr0/j0;->a:I

    goto :goto_17

    :cond_22
    move-object/from16 v24, v3

    add-int/lit8 v3, v5, 0x1

    if-gt v3, v15, :cond_23

    if-ge v15, v2, :cond_23

    add-int/lit8 v15, v15, -0x1

    iput v15, v14, Lr0/j0;->a:I

    :cond_23
    :goto_16
    const/16 v3, 0x8

    goto :goto_18

    :cond_24
    :goto_17
    move-object/from16 v24, v3

    goto :goto_16

    :goto_18
    shr-long/2addr v10, v3

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v24

    goto :goto_15

    :cond_25
    move-object/from16 v24, v3

    const/16 v3, 0x8

    if-ne v12, v3, :cond_27

    goto :goto_19

    :cond_26
    move-object/from16 v24, v3

    const/16 v3, 0x8

    :goto_19
    if-eq v8, v7, :cond_27

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v24

    goto :goto_14

    :cond_27
    :goto_1a
    iget-object v2, v0, Lr0/q;->M:Ls0/b;

    iget v3, v2, Ls0/b;->f:I

    iget-object v5, v2, Ls0/b;->a:Lr0/q;

    iget-object v6, v5, Lr0/q;->G:Lr0/d2;

    iget v6, v6, Lr0/d2;->g:I

    sub-int v6, v1, v6

    add-int/2addr v6, v3

    iput v6, v2, Ls0/b;->f:I

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3, v1}, Lr0/d2;->r(I)V

    if-lez v16, :cond_2a

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ls0/b;->d(Z)V

    iget-object v1, v2, Ls0/b;->d:Le2/t;

    iget-object v3, v5, Lr0/q;->G:Lr0/d2;

    iget v5, v3, Lr0/d2;->c:I

    if-lez v5, :cond_29

    iget v5, v3, Lr0/d2;->i:I

    const/4 v6, -0x2

    invoke-virtual {v1, v6}, Le2/t;->a(I)I

    move-result v6

    if-eq v6, v5, :cond_29

    iget-boolean v6, v2, Ls0/b;->c:Z

    if-nez v6, :cond_28

    iget-boolean v6, v2, Ls0/b;->e:Z

    if-eqz v6, :cond_28

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ls0/b;->d(Z)V

    iget-object v6, v2, Ls0/b;->b:Ls0/a;

    iget-object v6, v6, Ls0/a;->c:Ls0/m0;

    sget-object v7, Ls0/q;->c:Ls0/q;

    invoke-virtual {v6, v7}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v6, 0x1

    iput-boolean v6, v2, Ls0/b;->c:Z

    :cond_28
    if-lez v5, :cond_29

    invoke-virtual {v3, v5}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v3

    invoke-virtual {v1, v5}, Le2/t;->c(I)V

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ls0/b;->d(Z)V

    iget-object v1, v2, Ls0/b;->b:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    sget-object v5, Ls0/p;->c:Ls0/p;

    invoke-virtual {v1, v5}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v1, v14, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls0/b;->c:Z

    :cond_29
    iget-object v1, v2, Ls0/b;->b:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/u;->c:Ls0/u;

    invoke-virtual {v1, v2}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v2, v1, Ls0/m0;->e:[I

    iget v3, v1, Ls0/m0;->f:I

    iget-object v5, v1, Ls0/m0;->c:[Ls0/j0;

    iget v1, v1, Ls0/m0;->d:I

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v5, v1

    iget v1, v1, Ls0/j0;->a:I

    sub-int/2addr v3, v1

    aput v16, v2, v3

    :cond_2a
    invoke-virtual {v0, v4, v9}, Lr0/q;->a0(Ljava/lang/Object;Z)V

    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_20

    :cond_2c
    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    iget v3, v2, Lr0/d2;->k:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v2, Lr0/d2;->k:I

    iput-boolean v11, v0, Lr0/q;->S:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lr0/q;->K:Lr0/j1;

    iget-object v3, v0, Lr0/q;->I:Lr0/h2;

    iget-boolean v3, v3, Lr0/h2;->w:Z

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {v3}, Lr0/e2;->d()Lr0/h2;

    move-result-object v3

    iput-object v3, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v3}, Lr0/h2;->M()V

    const/4 v14, 0x0

    iput-boolean v14, v0, Lr0/q;->J:Z

    iput-object v2, v0, Lr0/q;->K:Lr0/j1;

    :cond_2d
    iget-object v2, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v2}, Lr0/h2;->d()V

    iget-object v2, v0, Lr0/q;->I:Lr0/h2;

    iget v3, v2, Lr0/h2;->t:I

    if-eqz v9, :cond_2e

    const/4 v11, 0x1

    invoke-virtual {v2, v1, v8, v8, v11}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    const/4 v14, 0x0

    goto :goto_1e

    :cond_2e
    if-eqz v4, :cond_30

    if-nez p3, :cond_2f

    :goto_1b
    const/4 v14, 0x0

    goto :goto_1c

    :cond_2f
    move-object/from16 v8, p3

    goto :goto_1b

    :goto_1c
    invoke-virtual {v2, v1, v8, v4, v14}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_1e

    :cond_30
    const/4 v14, 0x0

    if-nez p3, :cond_31

    move-object v4, v8

    goto :goto_1d

    :cond_31
    move-object/from16 v4, p3

    :goto_1d
    invoke-virtual {v2, v1, v4, v8, v14}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    :goto_1e
    iget-object v2, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v2, v3}, Lr0/h2;->b(I)Lr0/a;

    move-result-object v2

    iput-object v2, v0, Lr0/q;->N:Lr0/a;

    new-instance v2, Lr0/p0;

    const/16 v17, -0x2

    rsub-int/lit8 v12, v3, -0x2

    const/4 v3, -0x1

    invoke-direct {v2, v6, v1, v12, v3}, Lr0/p0;-><init>(Ljava/lang/Object;III)V

    iget v1, v0, Lr0/q;->k:I

    sub-int/2addr v1, v10

    new-instance v4, Lr0/j0;

    invoke-direct {v4, v3, v1, v14}, Lr0/j0;-><init>(III)V

    invoke-virtual {v7, v12, v4}, Lk/x;->h(ILjava/lang/Object;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v13, Lr0/i1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v9, :cond_32

    move v10, v14

    goto :goto_1f

    :cond_32
    iget v10, v0, Lr0/q;->k:I

    :goto_1f
    invoke-direct {v13, v10, v1}, Lr0/i1;-><init>(ILjava/util/ArrayList;)V

    goto :goto_21

    :goto_20
    move-object v13, v2

    :goto_21
    invoke-virtual {v0, v9, v13}, Lr0/q;->x(ZLr0/i1;)V

    return-void
.end method

.method public final Y()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x7f

    invoke-virtual {p0, v2, v1, v0, v0}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final Z(ILr0/y0;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final a()V
    .locals 4

    invoke-virtual {p0}, Lr0/q;->j()V

    iget-object v0, p0, Lr0/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lr0/q;->n:Le2/t;

    const/4 v1, 0x0

    iput v1, v0, Le2/t;->b:I

    iget-object v0, p0, Lr0/q;->t:Le2/t;

    iput v1, v0, Le2/t;->b:I

    iget-object v0, p0, Lr0/q;->x:Le2/t;

    iput v1, v0, Le2/t;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/q;->v:Lk/x;

    iget-object v0, p0, Lr0/q;->O:Ls0/c;

    iget-object v2, v0, Ls0/c;->d:Ls0/m0;

    invoke-virtual {v2}, Ls0/m0;->C()V

    iget-object v0, v0, Ls0/c;->c:Ls0/m0;

    invoke-virtual {v0}, Ls0/m0;->C()V

    int-to-long v2, v1

    iput-wide v2, p0, Lr0/q;->T:J

    iput v1, p0, Lr0/q;->A:I

    iput-boolean v1, p0, Lr0/q;->r:Z

    iput-boolean v1, p0, Lr0/q;->S:Z

    iput-boolean v1, p0, Lr0/q;->y:Z

    iput-boolean v1, p0, Lr0/q;->F:Z

    const/4 v0, -0x1

    iput v0, p0, Lr0/q;->z:I

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget-boolean v1, v0, Lr0/d2;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lr0/d2;->c()V

    :cond_0
    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    iget-boolean v0, v0, Lr0/h2;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lr0/q;->y()V

    :cond_1
    return-void
.end method

.method public final a0(Ljava/lang/Object;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lr0/q;->G:Lr0/d2;

    iget p1, p0, Lr0/d2;->k:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Lr0/d2;->b:[I

    iget p2, p0, Lr0/d2;->g:I

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Expected a node group"

    invoke-static {p1}, Lr0/k1;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lr0/d2;->u()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p2}, Lr0/d2;->f()Ljava/lang/Object;

    move-result-object p2

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ls0/b;->d(Z)V

    iget-object p2, p2, Ls0/b;->b:Ls0/a;

    iget-object p2, p2, Ls0/a;->c:Ls0/m0;

    sget-object v1, Ls0/f0;->c:Ls0/f0;

    invoke-virtual {p2, v1}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p2, v0, p1}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p0}, Lr0/d2;->u()V

    return-void
.end method

.method public final b(Li9/e;Ljava/lang/Object;)V
    .locals 5

    iget-boolean v0, p0, Lr0/q;->S:Z

    const/4 v1, 0x2

    const-string v2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lr0/q;->O:Ls0/c;

    iget-object p0, p0, Ls0/c;->c:Ls0/m0;

    sget-object v0, Ls0/g0;->c:Ls0/g0;

    invoke-virtual {p0, v0}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p0, v4, p2}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    invoke-static {p1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-static {p0, v3, p1}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {p0}, Ls0/b;->b()V

    iget-object p0, p0, Ls0/b;->b:Ls0/a;

    iget-object p0, p0, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/g0;->c:Ls0/g0;

    invoke-virtual {p0, v0}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-static {p0, v4, p2, v3, p1}, Lg6/c1;->B(Ls0/m0;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final b0(I)V
    .locals 9

    iget-object v0, p0, Lr0/q;->j:Lr0/i1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1, v2, v2}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lr0/q;->r:Z

    if-eqz v0, :cond_1

    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lr0/q;->m:I

    iget-wide v3, p0, Lr0/q;->T:J

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    int-to-long v6, p1

    xor-long/2addr v3, v6

    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v3

    int-to-long v5, v0

    xor-long/2addr v3, v5

    iput-wide v3, p0, Lr0/q;->T:J

    iget v0, p0, Lr0/q;->m:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Lr0/q;->m:I

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget-boolean v4, p0, Lr0/q;->S:Z

    sget-object v5, Lr0/m;->a:Lr0/e;

    if-eqz v4, :cond_2

    iget v4, v0, Lr0/d2;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Lr0/d2;->k:I

    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v0, p1, v5, v5, v1}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v1, v2}, Lr0/q;->x(ZLr0/i1;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lr0/d2;->g()I

    move-result v4

    if-ne v4, p1, :cond_4

    iget v4, v0, Lr0/d2;->g:I

    iget v6, v0, Lr0/d2;->h:I

    if-ge v4, v6, :cond_3

    iget-object v6, v0, Lr0/d2;->b:[I

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v3

    aget v4, v6, v4

    const/high16 v6, 0x20000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lr0/d2;->u()V

    invoke-virtual {p0, v1, v2}, Lr0/q;->x(ZLr0/i1;)V

    return-void

    :cond_4
    :goto_0
    iget v4, v0, Lr0/d2;->k:I

    if-lez v4, :cond_5

    goto :goto_1

    :cond_5
    iget v4, v0, Lr0/d2;->g:I

    iget v6, v0, Lr0/d2;->h:I

    if-ne v4, v6, :cond_6

    goto :goto_1

    :cond_6
    iget v6, p0, Lr0/q;->k:I

    invoke-virtual {p0}, Lr0/q;->N()V

    invoke-virtual {v0}, Lr0/d2;->s()I

    move-result v7

    iget-object v8, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v8, v6, v7}, Ls0/b;->e(II)V

    iget-object v6, p0, Lr0/q;->s:Ljava/util/ArrayList;

    iget v7, v0, Lr0/d2;->g:I

    invoke-static {v6, v4, v7}, Lr0/r;->k(Ljava/util/List;II)V

    :goto_1
    iget v4, v0, Lr0/d2;->k:I

    add-int/2addr v4, v3

    iput v4, v0, Lr0/d2;->k:I

    iput-boolean v3, p0, Lr0/q;->S:Z

    iput-object v2, p0, Lr0/q;->K:Lr0/j1;

    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    iget-boolean v0, v0, Lr0/h2;->w:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {v0}, Lr0/e2;->d()Lr0/h2;

    move-result-object v0

    iput-object v0, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v0}, Lr0/h2;->M()V

    iput-boolean v1, p0, Lr0/q;->J:Z

    iput-object v2, p0, Lr0/q;->K:Lr0/j1;

    :cond_7
    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v0}, Lr0/h2;->d()V

    iget v3, v0, Lr0/h2;->t:I

    invoke-virtual {v0, p1, v5, v5, v1}, Lr0/h2;->Q(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Lr0/h2;->b(I)Lr0/a;

    move-result-object p1

    iput-object p1, p0, Lr0/q;->N:Lr0/a;

    invoke-virtual {p0, v1, v2}, Lr0/q;->x(ZLr0/i1;)V

    return-void
.end method

.method public final c(D)Z
    .locals 2

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c0(I)Lr0/q;
    .locals 6

    invoke-virtual {p0, p1}, Lr0/q;->b0(I)V

    iget-boolean p1, p0, Lr0/q;->S:Z

    iget-object v0, p0, Lr0/q;->g:Lq3/k;

    iget-object v1, p0, Lr0/q;->E:Ljava/util/ArrayList;

    iget-object v2, p0, Lr0/q;->h:Lr0/x;

    if-eqz p1, :cond_0

    new-instance p1, Lr0/n1;

    invoke-direct {p1, v2}, Lr0/n1;-><init>(Lr0/x;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    iget v1, p0, Lr0/q;->B:I

    iput v1, p1, Lr0/n1;->e:I

    iget v1, p1, Lr0/n1;->b:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p1, Lr0/n1;->b:I

    invoke-virtual {v0}, Lq3/k;->e()V

    return-object p0

    :cond_0
    iget-object p1, p0, Lr0/q;->G:Lr0/d2;

    iget p1, p1, Lr0/d2;->i:I

    iget-object v3, p0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lr0/r;->s(ILjava/util/List;)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/m0;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3}, Lr0/d2;->m()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v3, Lr0/n1;

    invoke-direct {v3, v2}, Lr0/n1;-><init>(Lr0/x;)V

    invoke-virtual {p0, v3}, Lr0/q;->m0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v3, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lr0/n1;

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_6

    iget p1, v3, Lr0/n1;->b:I

    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    and-int/lit8 p1, p1, -0x41

    iput p1, v3, Lr0/n1;->b:I

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    move p1, v2

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v4

    :goto_4
    iget v5, v3, Lr0/n1;->b:I

    if-eqz p1, :cond_7

    or-int/lit8 p1, v5, 0x8

    goto :goto_5

    :cond_7
    and-int/lit8 p1, v5, -0x9

    :goto_5
    iput p1, v3, Lr0/n1;->b:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lr0/q;->B:I

    iput p1, v3, Lr0/n1;->e:I

    iget p1, v3, Lr0/n1;->b:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v3, Lr0/n1;->b:I

    invoke-virtual {v0}, Lq3/k;->e()V

    iget p1, v3, Lr0/n1;->b:I

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_8

    and-int/lit16 p1, p1, -0x101

    or-int/lit16 p1, p1, 0x200

    iput p1, v3, Lr0/n1;->b:I

    iget-object p1, p0, Lr0/q;->M:Ls0/b;

    iget-object p1, p1, Ls0/b;->b:Ls0/a;

    iget-object p1, p1, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/d0;->c:Ls0/d0;

    invoke-virtual {p1, v0}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p1, v2, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget-boolean p1, p0, Lr0/q;->y:Z

    if-nez p1, :cond_8

    iget p1, v3, Lr0/n1;->b:I

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lr0/q;->y:Z

    or-int/lit16 p1, p1, 0x400

    iput p1, v3, Lr0/n1;->b:I

    :cond_8
    return-object p0
.end method

.method public final d(F)Z
    .locals 2

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final d0(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lr0/q;->S:Z

    const/16 v1, 0xcf

    if-nez v0, :cond_0

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0}, Lr0/d2;->g()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0}, Lr0/d2;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lr0/q;->z:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->g:I

    iput v0, p0, Lr0/q;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/q;->y:Z

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0, p1}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final e(I)Z
    .locals 2

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final e0()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x7d

    invoke-virtual {p0, v2, v1, v0, v0}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr0/q;->r:Z

    return-void
.end method

.method public final f(J)Z
    .locals 2

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final f0()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lr0/q;->m:I

    iget-object v1, p0, Lr0/q;->c:Lr0/e2;

    invoke-virtual {v1}, Lr0/e2;->c()Lr0/d2;

    move-result-object v1

    iput-object v1, p0, Lr0/q;->G:Lr0/d2;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {v1}, Lr0/u;->t()V

    invoke-virtual {v1}, Lr0/u;->i()Lr0/j1;

    move-result-object v3

    iget-object v4, p0, Lr0/q;->x:Le2/t;

    iget-boolean v5, p0, Lr0/q;->w:Z

    invoke-virtual {v4, v5}, Le2/t;->c(I)V

    invoke-virtual {p0, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lr0/q;->w:Z

    iput-object v2, p0, Lr0/q;->K:Lr0/j1;

    iget-boolean v4, p0, Lr0/q;->q:Z

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lr0/u;->e()Z

    move-result v4

    iput-boolean v4, p0, Lr0/q;->q:Z

    :cond_0
    iget-boolean v4, p0, Lr0/q;->C:Z

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lr0/u;->f()Z

    move-result v4

    iput-boolean v4, p0, Lr0/q;->C:Z

    :cond_1
    iget-boolean v4, p0, Lr0/q;->C:Z

    if-eqz v4, :cond_2

    sget-object v4, Le1/f;->a:Lr0/s2;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {v4, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lr0/t2;

    invoke-virtual {p0}, Lr0/q;->D()Le1/e;

    move-result-object v6

    invoke-direct {v5, v6}, Lr0/t2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lz0/h;

    invoke-virtual {v3, v4, v5}, Lz0/h;->c(Lr0/m1;Lr0/u2;)Lz0/h;

    move-result-object v3

    :cond_2
    iput-object v3, p0, Lr0/q;->u:Lr0/j1;

    sget-object v4, Le1/h;->a:Lr0/s2;

    invoke-static {v3, v4}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lr0/q;->z()Le1/d;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lr0/u;->o(Ljava/util/Set;)V

    :cond_3
    invoke-virtual {v1}, Lr0/u;->g()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    invoke-virtual {p0, v1, v0, v2, v2}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g0(Lr0/n1;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p1, Lr0/n1;->c:Lr0/a;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget-object v1, v1, Lr0/d2;->a:Lr0/e2;

    invoke-virtual {v1, v0}, Lr0/e2;->a(Lr0/a;)I

    move-result v0

    iget-boolean v1, p0, Lr0/q;->F:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget v1, v1, Lr0/d2;->g:I

    if-lt v0, v1, :cond_6

    iget-object p0, p0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lr0/r;->s(ILjava/util/List;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    add-int/2addr v1, v2

    neg-int v1, v1

    instance-of v4, p2, Lr0/d0;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v3

    :goto_0
    new-instance v3, Lr0/m0;

    invoke-direct {v3, p1, v0, p2}, Lr0/m0;-><init>(Lr0/n1;ILjava/lang/Object;)V

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v2

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/m0;

    instance-of p1, p2, Lr0/d0;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lr0/m0;->c:Ljava/lang/Object;

    if-nez p1, :cond_3

    iput-object p2, p0, Lr0/m0;->c:Ljava/lang/Object;

    return v2

    :cond_3
    instance-of v0, p1, Lk/n0;

    if-eqz v0, :cond_4

    check-cast p1, Lk/n0;

    invoke-virtual {p1, p2}, Lk/n0;->a(Ljava/lang/Object;)Z

    return v2

    :cond_4
    sget-object v0, Lk/u0;->a:Lk/n0;

    new-instance v0, Lk/n0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/n0;-><init>(I)V

    invoke-virtual {v0, p1}, Lk/n0;->j(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lk/n0;->j(Ljava/lang/Object;)V

    iput-object v0, p0, Lr0/m0;->c:Ljava/lang/Object;

    return v2

    :cond_5
    iput-object v3, p0, Lr0/m0;->c:Ljava/lang/Object;

    return v2

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final h(Z)Z
    .locals 2

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final h0(Lk/m0;)V
    .locals 14

    iget-object p0, p0, Lr0/q;->s:Ljava/util/ArrayList;

    invoke-static {p0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/m0;

    iget-object v2, v1, Lr0/m0;->a:Lr0/n1;

    iget-object v2, v2, Lr0/n1;->c:Lr0/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lr0/a;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v1, Lr0/m0;->b:I

    iget v2, v2, Lr0/a;->a:I

    if-eq v3, v2, :cond_1

    iput v2, v1, Lr0/m0;->b:I

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lk/m0;->b:[Ljava/lang/Object;

    iget-object v1, p1, Lk/m0;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lk/m0;->a:[J

    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_7

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    aget-wide v5, p1, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_3
    if-ge v9, v7, :cond_5

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v11, v0, v10

    aget-object v10, v1, v10

    const-string v12, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl"

    invoke-static {v11, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lr0/n1;

    iget-object v12, v11, Lr0/n1;->c:Lr0/a;

    if-eqz v12, :cond_4

    iget v12, v12, Lr0/a;->a:I

    sget-object v13, Lr0/e;->q:Lr0/e;

    if-ne v10, v13, :cond_3

    const/4 v10, 0x0

    :cond_3
    new-instance v13, Lr0/m0;

    invoke-direct {v13, v11, v12, v10}, Lr0/m0;-><init>(Lr0/n1;ILjava/lang/Object;)V

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-ne v7, v8, :cond_7

    :cond_6
    if-eq v4, v2, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sget-object p1, Lr0/r;->a:Lcom/graphhopper/isochrone/algorithm/b;

    invoke-static {p0, p1}, Lu8/p;->S(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i0(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lr0/q;->n0(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    if-gez p1, :cond_1

    iget-object v0, p0, Lr0/q;->p:Lk/v;

    if-nez v0, :cond_0

    new-instance v0, Lk/v;

    invoke-direct {v0}, Lk/v;-><init>()V

    iput-object v0, p0, Lr0/q;->p:Lk/v;

    :cond_0
    invoke-virtual {v0, p1, p2}, Lk/v;->f(II)V

    return-void

    :cond_1
    iget-object v0, p0, Lr0/q;->o:[I

    if-nez v0, :cond_2

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->c:I

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput-object v1, p0, Lr0/q;->o:[I

    move-object v0, v1

    :cond_2
    aput p2, v0, p1

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lr0/q;->j:Lr0/i1;

    const/4 v1, 0x0

    iput v1, p0, Lr0/q;->k:I

    iput v1, p0, Lr0/q;->l:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lr0/q;->T:J

    iput-boolean v1, p0, Lr0/q;->r:Z

    iget-object v2, p0, Lr0/q;->M:Ls0/b;

    iput-boolean v1, v2, Ls0/b;->c:Z

    iget-object v3, v2, Ls0/b;->d:Le2/t;

    iput v1, v3, Le2/t;->b:I

    iput v1, v2, Ls0/b;->f:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Ls0/b;->e:Z

    iput v1, v2, Ls0/b;->g:I

    iget-object v3, v2, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, -0x1

    iput v3, v2, Ls0/b;->i:I

    iput v3, v2, Ls0/b;->j:I

    iput v3, v2, Ls0/b;->k:I

    iput v1, v2, Ls0/b;->l:I

    iget-object v1, p0, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lr0/q;->o:[I

    iput-object v0, p0, Lr0/q;->p:Lk/v;

    return-void
.end method

.method public final j0(II)V
    .locals 6

    invoke-virtual {p0, p1}, Lr0/q;->n0(I)I

    move-result v0

    if-eq v0, p2, :cond_3

    sub-int/2addr p2, v0

    iget-object v0, p0, Lr0/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {p0, p1}, Lr0/q;->n0(I)I

    move-result v3

    add-int/2addr v3, p2

    invoke-virtual {p0, p1, v3}, Lr0/q;->i0(II)V

    move v4, v1

    :goto_1
    if-ge v2, v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/i1;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1, v3}, Lr0/i1;->a(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, -0x1

    move v1, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez p1, :cond_2

    iget-object p1, p0, Lr0/q;->G:Lr0/d2;

    iget p1, p1, Lr0/d2;->i:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, p1}, Lr0/d2;->l(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v2, p1}, Lr0/d2;->q(I)I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final k(Lr0/m1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lr0/q;->m()Lr0/j1;

    move-result-object p0

    invoke-static {p0, p1}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k0(Lr0/j1;Lz0/h;)Lz0/h;
    .locals 2

    check-cast p1, Lz0/h;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz0/g;

    invoke-direct {v0, p1}, Lw0/d;-><init>(Lw0/b;)V

    iput-object p1, v0, Lz0/g;->r:Lz0/h;

    invoke-virtual {v0, p2}, Lw0/d;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lz0/g;->c()Lz0/h;

    move-result-object p1

    const/16 v0, 0xcc

    sget-object v1, Lr0/s;->d:Lr0/y0;

    invoke-virtual {p0, v0, v1}, Lr0/q;->Z(ILr0/y0;)V

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lr0/q;->m0(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lr0/q;->q(Z)V

    return-object p1
.end method

.method public final l(Li9/a;)V
    .locals 8

    iget-boolean v0, p0, Lr0/q;->r:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/q;->r:Z

    iget-boolean v1, p0, Lr0/q;->S:Z

    if-nez v1, :cond_1

    const-string v1, "createNode() can only be called when inserting"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lr0/q;->n:Le2/t;

    iget-object v2, v1, Le2/t;->a:[I

    iget v1, v1, Le2/t;->b:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v2, v1

    iget-object v2, p0, Lr0/q;->I:Lr0/h2;

    iget v4, v2, Lr0/h2;->v:I

    invoke-virtual {v2, v4}, Lr0/h2;->b(I)Lr0/a;

    move-result-object v2

    iget v4, p0, Lr0/q;->l:I

    add-int/2addr v4, v3

    iput v4, p0, Lr0/q;->l:I

    iget-object p0, p0, Lr0/q;->O:Ls0/c;

    iget-object v4, p0, Ls0/c;->c:Ls0/m0;

    sget-object v5, Ls0/r;->d:Ls0/r;

    invoke-virtual {v4, v5}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v4, v0, p1}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget-object p1, v4, Ls0/m0;->e:[I

    iget v5, v4, Ls0/m0;->f:I

    iget-object v6, v4, Ls0/m0;->c:[Ls0/j0;

    iget v7, v4, Ls0/m0;->d:I

    sub-int/2addr v7, v3

    aget-object v6, v6, v7

    iget v6, v6, Ls0/j0;->a:I

    sub-int/2addr v5, v6

    aput v1, p1, v5

    invoke-static {v4, v3, v2}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget-object p0, p0, Ls0/c;->d:Ls0/m0;

    sget-object p1, Ls0/r;->e:Ls0/r;

    invoke-virtual {p0, p1}, Ls0/m0;->G(Ls0/j0;)V

    iget-object p1, p0, Ls0/m0;->e:[I

    iget v4, p0, Ls0/m0;->f:I

    iget-object v5, p0, Ls0/m0;->c:[Ls0/j0;

    iget v6, p0, Ls0/m0;->d:I

    sub-int/2addr v6, v3

    aget-object v3, v5, v6

    iget v3, v3, Ls0/j0;->a:I

    sub-int/2addr v4, v3

    aput v1, p1, v4

    invoke-static {p0, v0, v2}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lr0/x1;

    if-eqz v0, :cond_1

    new-instance v0, Lr0/y1;

    move-object v1, p1

    check-cast v1, Lr0/x1;

    iget v2, p0, Lr0/q;->m:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lr0/y1;-><init>(Lr0/x1;I)V

    iget-boolean v1, p0, Lr0/q;->S:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lr0/q;->M:Ls0/b;

    iget-object v1, v1, Ls0/b;->b:Ls0/a;

    iget-object v1, v1, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/w;->c:Ls0/w;

    invoke-virtual {v1, v2}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lr0/q;->d:Lk/p0;

    invoke-virtual {v1, p1}, Lk/p0;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1}, Lr0/q;->m0(Ljava/lang/Object;)V

    return-void
.end method

.method public final m()Lr0/j1;
    .locals 7

    iget-object v0, p0, Lr0/q;->K:Lr0/j1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->i:I

    iget-boolean v1, p0, Lr0/q;->S:Z

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    sget-object v3, Lr0/s;->c:Lr0/y0;

    const/16 v4, 0xca

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lr0/q;->J:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lr0/q;->I:Lr0/h2;

    iget v1, v1, Lr0/h2;->v:I

    :goto_0
    if-lez v1, :cond_2

    iget-object v5, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v5, v1}, Lr0/h2;->s(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v5, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v5, v1}, Lr0/h2;->t(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v0, v1}, Lr0/h2;->q(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lr0/j1;

    iput-object v0, p0, Lr0/q;->K:Lr0/j1;

    return-object v0

    :cond_1
    iget-object v5, p0, Lr0/q;->I:Lr0/h2;

    iget-object v6, v5, Lr0/h2;->b:[I

    invoke-virtual {v5, v6, v1}, Lr0/h2;->E([II)I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget v1, v1, Lr0/d2;->c:I

    if-lez v1, :cond_6

    :goto_1
    if-lez v0, :cond_6

    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1, v0}, Lr0/d2;->i(I)I

    move-result v1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget-object v5, v1, Lr0/d2;->b:[I

    invoke-virtual {v1, v5, v0}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lr0/q;->v:Lk/x;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/j1;

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget-object v3, v1, Lr0/d2;->b:[I

    invoke-virtual {v1, v3, v0}, Lr0/d2;->b([II)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lr0/j1;

    :cond_4
    iput-object v1, p0, Lr0/q;->K:Lr0/j1;

    return-object v1

    :cond_5
    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1, v0}, Lr0/d2;->q(I)I

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lr0/q;->u:Lr0/j1;

    iput-object v0, p0, Lr0/q;->K:Lr0/j1;

    return-object v0
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 6

    iget-boolean v0, p0, Lr0/q;->S:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lr0/q;->I:Lr0/h2;

    iget v0, p0, Lr0/h2;->n:I

    if-lez v0, :cond_2

    iget v0, p0, Lr0/h2;->i:I

    iget v1, p0, Lr0/h2;->k:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lr0/h2;->s:Lk/x;

    if-nez v0, :cond_0

    new-instance v0, Lk/x;

    invoke-direct {v0}, Lk/x;-><init>()V

    :cond_0
    iput-object v0, p0, Lr0/h2;->s:Lk/x;

    iget p0, p0, Lr0/h2;->v:I

    invoke-virtual {v0, p0}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lk/h0;

    invoke-direct {v1}, Lk/h0;-><init>()V

    invoke-virtual {v0, p0, v1}, Lk/x;->h(ILjava/lang/Object;)V

    :cond_1
    check-cast v1, Lk/h0;

    invoke-virtual {v1, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lr0/h2;->F(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget-boolean v1, v0, Lr0/d2;->n:Z

    iget-object v2, p0, Lr0/q;->M:Ls0/b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget v1, v0, Lr0/d2;->l:I

    iget-object v5, v0, Lr0/d2;->b:[I

    iget v0, v0, Lr0/d2;->i:I

    invoke-static {v5, v0}, Lr0/g2;->c([II)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    iget-object v0, v2, Ls0/b;->a:Lr0/q;

    iget-object v0, v0, Lr0/q;->G:Lr0/d2;

    iget v0, v0, Lr0/d2;->i:I

    iget v5, v2, Ls0/b;->f:I

    sub-int/2addr v0, v5

    if-gez v0, :cond_4

    iget-object p0, p0, Lr0/q;->G:Lr0/d2;

    iget v0, p0, Lr0/d2;->i:I

    invoke-virtual {p0, v0}, Lr0/d2;->a(I)Lr0/a;

    move-result-object p0

    iget-object v0, v2, Ls0/b;->b:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    sget-object v2, Ls0/r;->f:Ls0/r;

    invoke-virtual {v0, v2}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v0, v3, p1, v4, p0}, Lg6/c1;->B(Ls0/m0;ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object p0, v0, Ls0/m0;->e:[I

    iget p1, v0, Ls0/m0;->f:I

    iget-object v2, v0, Ls0/m0;->c:[Ls0/j0;

    iget v0, v0, Ls0/m0;->d:I

    sub-int/2addr v0, v4

    aget-object v0, v2, v0

    iget v0, v0, Ls0/j0;->a:I

    sub-int/2addr p1, v0

    aput v1, p0, p1

    return-void

    :cond_4
    invoke-virtual {v2, v4}, Ls0/b;->d(Z)V

    iget-object p0, v2, Ls0/b;->b:Ls0/a;

    iget-object p0, p0, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/r;->g:Ls0/r;

    invoke-virtual {p0, v0}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {p0, v3, p1}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget-object p1, p0, Ls0/m0;->e:[I

    iget v0, p0, Ls0/m0;->f:I

    iget-object v2, p0, Ls0/m0;->c:[Ls0/j0;

    iget p0, p0, Ls0/m0;->d:I

    sub-int/2addr p0, v4

    aget-object p0, v2, p0

    iget p0, p0, Ls0/j0;->a:I

    sub-int/2addr v0, p0

    aput v1, p1, v0

    return-void

    :cond_5
    iget p0, v0, Lr0/d2;->i:I

    invoke-virtual {v0, p0}, Lr0/d2;->a(I)Lr0/a;

    move-result-object p0

    iget-object v0, v2, Ls0/b;->b:Ls0/a;

    iget-object v0, v0, Ls0/a;->c:Ls0/m0;

    sget-object v1, Ls0/e;->c:Ls0/e;

    invoke-virtual {v0, v1}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v0, v3, p0, v4, p1}, Lg6/c1;->B(Ls0/m0;ILjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final n()Le1/a;
    .locals 9

    iget-object v0, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {v0}, Lr0/u;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v0

    iget-object v2, p0, Lr0/q;->I:Lr0/h2;

    iget v3, v2, Lr0/h2;->t:I

    invoke-static {v2, v1, v3, v1}, Ll7/a;->e(Lr0/h2;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv8/b;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    iget-boolean v2, v1, Lr0/d2;->f:Z

    iget-object v3, v1, Lr0/d2;->b:[I

    if-nez v2, :cond_2

    iget v2, v1, Lr0/d2;->c:I

    if-eqz v2, :cond_2

    new-instance v2, Le1/k;

    invoke-direct {v2, v1}, Le1/k;-><init>(Ljava/lang/Object;)V

    iget v4, v1, Lr0/d2;->i:I

    iget v5, v1, Lr0/d2;->l:I

    invoke-static {v3, v4}, Lr0/g2;->c([II)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v1, v4}, Lr0/d2;->k(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v3, v4}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_0
    sget-object v6, Lr0/m;->a:Lr0/e;

    :goto_1
    invoke-virtual {v1, v4}, Lr0/d2;->i(I)I

    move-result v7

    iget-object v8, v1, Lr0/d2;->a:Lr0/e2;

    invoke-virtual {v8, v4}, Lr0/e2;->g(I)Lr0/l0;

    move-result-object v8

    invoke-virtual {v2, v7, v6, v8, v5}, Le1/b;->d(ILjava/lang/Object;Lr0/l0;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v5

    invoke-virtual {v1, v4}, Lr0/d2;->q(I)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v1, v2, Le1/b;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    sget-object v1, Lu8/r;->l:Lu8/r;

    :goto_2
    invoke-virtual {v0, v1}, Lv8/b;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lr0/q;->J()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lv8/b;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object p0

    new-instance v0, Le1/a;

    invoke-direct {v0, p0}, Le1/a;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_3
    return-object v1
.end method

.method public final n0(I)I
    .locals 2

    if-gez p1, :cond_2

    iget-object p0, p0, Lr0/q;->p:Lk/v;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lk/v;->c(I)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, p1}, Lk/v;->c(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lk/v;->c:[I

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find value for key "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ll/a;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lr0/q;->o:[I

    if-eqz v0, :cond_3

    aget v0, v0, p1

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object p0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p0, p1}, Lr0/d2;->o(I)I

    move-result p0

    return p0
.end method

.method public final o(Lk/m0;Li9/e;)V
    .locals 9

    const-string v0, "Check failed"

    iget-object v1, p0, Lr0/q;->s:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lr0/q;->F:Z

    if-eqz v4, :cond_0

    const-string v4, "Reentrant composition is not supported"

    invoke-static {v4}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v4, p0, Lr0/q;->g:Lq3/k;

    invoke-virtual {v4}, Lq3/k;->e()V

    const-string v4, "Compose:recompose"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    invoke-virtual {v4}, Ld1/g;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    iput v4, p0, Lr0/q;->B:I

    const/4 v4, 0x0

    iput-object v4, p0, Lr0/q;->v:Lk/x;

    invoke-virtual {p0, p1}, Lr0/q;->h0(Lk/m0;)V

    const/4 p1, 0x0

    iput p1, p0, Lr0/q;->k:I

    iput-boolean v2, p0, Lr0/q;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {p0}, Lr0/q;->f0()V

    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lr0/q;->m0(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    :goto_0
    iget-object v5, p0, Lr0/q;->D:Ld1/z;

    invoke-static {}, Lr0/r;->q()Lt0/b;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x2

    sget-object v7, Lr0/s;->a:Lr0/y0;

    const/16 v8, 0xc8

    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p0, v8, v7}, Lr0/q;->Z(ILr0/y0;)V

    invoke-static {v5, p2}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-interface {p2, p0, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lr0/q;->q(Z)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, Lr0/q;->w:Z

    if-eqz p2, :cond_3

    if-eqz v4, :cond_3

    sget-object p2, Lr0/m;->a:Lr0/e;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0, v8, v7}, Lr0/q;->Z(ILr0/y0;)V

    invoke-static {v5, v4}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v4, Li9/e;

    invoke-static {v5, v4}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-interface {v4, p0, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lr0/q;->q(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lr0/q;->U()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    iget p2, v6, Lt0/b;->n:I

    sub-int/2addr p2, v2

    invoke-virtual {v6, p2}, Lt0/b;->k(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lr0/q;->w()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iput-boolean p1, p0, Lr0/q;->F:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lr0/q;->I:Lr0/h2;

    iget-boolean p1, p1, Lr0/h2;->w:Z

    if-nez p1, :cond_4

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Lr0/q;->y()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_6
    iget v3, v6, Lt0/b;->n:I

    sub-int/2addr v3, v2

    invoke-virtual {v6, v3}, Lt0/b;->k(I)Ljava/lang/Object;

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    new-instance v2, Lr0/n;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lr0/n;-><init>(Lr0/q;I)V

    invoke-static {p2, v2}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_8
    iput-boolean p1, p0, Lr0/q;->F:Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lr0/q;->a()V

    iget-object p1, p0, Lr0/q;->I:Lr0/h2;

    iget-boolean p1, p1, Lr0/h2;->w:Z

    if-nez p1, :cond_5

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lr0/q;->y()V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final o0()V
    .locals 3

    iget-boolean v0, p0, Lr0/q;->r:Z

    if-nez v0, :cond_0

    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/q;->r:Z

    iget-boolean v0, p0, Lr0/q;->S:Z

    if-eqz v0, :cond_1

    const-string v0, "useNode() called while inserting"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    iget v1, v0, Lr0/d2;->i:I

    invoke-virtual {v0, v1}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {v1}, Ls0/b;->c()V

    iget-object v2, v1, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lr0/q;->y:Z

    if-eqz p0, :cond_2

    instance-of p0, v0, Lr0/h;

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ls0/b;->b()V

    iget-object p0, v1, Ls0/b;->b:Ls0/a;

    iget-object p0, p0, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/i0;->c:Ls0/i0;

    invoke-virtual {p0, v0}, Ls0/m0;->G(Ls0/j0;)V

    :cond_2
    return-void
.end method

.method public final p(II)V
    .locals 1

    if-lez p1, :cond_0

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v0, p1}, Lr0/d2;->q(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lr0/q;->p(II)V

    iget-object p2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p2, p1}, Lr0/d2;->l(I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {p2, p1}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lr0/q;->M:Ls0/b;

    invoke-virtual {p0}, Ls0/b;->c()V

    iget-object p0, p0, Ls0/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final q(Z)V
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/q;->n:Le2/t;

    iget-object v2, v1, Le2/t;->a:[I

    iget v3, v1, Le2/t;->b:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-boolean v4, v0, Lr0/q;->S:Z

    sget-object v5, Lr0/m;->a:Lr0/e;

    const/16 v6, 0xcf

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v4, :cond_3

    iget-object v4, v0, Lr0/q;->I:Lr0/h2;

    iget v9, v4, Lr0/h2;->v:I

    invoke-virtual {v4, v9}, Lr0/h2;->s(I)I

    move-result v4

    iget-object v10, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v10, v9}, Lr0/h2;->t(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v11, v9}, Lr0/h2;->q(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v10, :cond_1

    if-eqz v9, :cond_0

    if-ne v4, v6, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-wide v5, v0, Lr0/q;->T:J

    int-to-long v9, v2

    xor-long/2addr v5, v9

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v9, v4

    xor-long v4, v5, v9

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Lr0/q;->T:J

    goto/16 :goto_4

    :cond_0
    iget-wide v5, v0, Lr0/q;->T:J

    int-to-long v9, v2

    xor-long/2addr v5, v9

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v9, v4

    xor-long v4, v5, v9

    :goto_0
    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Lr0/q;->T:J

    goto/16 :goto_4

    :cond_1
    instance-of v2, v10, Ljava/lang/Enum;

    if-eqz v2, :cond_2

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_1
    iget-wide v4, v0, Lr0/q;->T:J

    int-to-long v9, v7

    xor-long/2addr v4, v9

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    int-to-long v9, v2

    xor-long/2addr v4, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lr0/q;->G:Lr0/d2;

    iget v9, v4, Lr0/d2;->i:I

    invoke-virtual {v4, v9}, Lr0/d2;->i(I)I

    move-result v4

    iget-object v10, v0, Lr0/q;->G:Lr0/d2;

    iget-object v11, v10, Lr0/d2;->b:[I

    invoke-virtual {v10, v11, v9}, Lr0/d2;->p([II)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Lr0/q;->G:Lr0/d2;

    iget-object v12, v11, Lr0/d2;->b:[I

    invoke-virtual {v11, v12, v9}, Lr0/d2;->b([II)Ljava/lang/Object;

    move-result-object v9

    if-nez v10, :cond_5

    if-eqz v9, :cond_4

    if-ne v4, v6, :cond_4

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v4

    iget-wide v5, v0, Lr0/q;->T:J

    int-to-long v9, v2

    xor-long/2addr v5, v9

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v9, v4

    xor-long v4, v5, v9

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Lr0/q;->T:J

    goto :goto_4

    :cond_4
    iget-wide v5, v0, Lr0/q;->T:J

    int-to-long v9, v2

    xor-long/2addr v5, v9

    invoke-static {v5, v6, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    int-to-long v9, v4

    xor-long v4, v5, v9

    :goto_2
    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    iput-wide v4, v0, Lr0/q;->T:J

    goto :goto_4

    :cond_5
    instance-of v2, v10, Ljava/lang/Enum;

    if-eqz v2, :cond_6

    check-cast v10, Ljava/lang/Enum;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    :goto_3
    iget-wide v4, v0, Lr0/q;->T:J

    int-to-long v9, v7

    xor-long/2addr v4, v9

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    int-to-long v9, v2

    xor-long/2addr v4, v9

    goto :goto_2

    :cond_6
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :goto_4
    iget v2, v0, Lr0/q;->l:I

    iget-object v4, v0, Lr0/q;->j:Lr0/i1;

    iget-object v5, v0, Lr0/q;->s:Ljava/util/ArrayList;

    iget-object v9, v0, Lr0/q;->M:Ls0/b;

    if-eqz v4, :cond_22

    iget-object v10, v4, Lr0/i1;->e:Lk/x;

    iget v11, v4, Lr0/i1;->b:I

    iget-object v12, v4, Lr0/i1;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_22

    iget-object v13, v4, Lr0/i1;->d:Ljava/util/ArrayList;

    new-instance v14, Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v13}, Ljava/util/Collection;->size()I

    move-result v15

    move/from16 v16, v8

    move v8, v7

    :goto_5
    if-ge v8, v15, :cond_7

    const/16 v17, -0x1

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    const/16 v17, -0x1

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v3, v7

    move/from16 v19, v3

    move/from16 v20, v19

    :goto_6
    if-ge v3, v15, :cond_21

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Lr0/p0;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    move-object/from16 v21, v1

    iget v1, v7, Lr0/p0;->c:I

    invoke-virtual {v10, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/j0;

    if-eqz v1, :cond_8

    iget v1, v1, Lr0/j0;->b:I

    move/from16 v22, v1

    goto :goto_7

    :cond_8
    move/from16 v22, v17

    :goto_7
    iget v1, v7, Lr0/p0;->c:I

    move/from16 v23, v3

    add-int v3, v22, v11

    iget v7, v7, Lr0/p0;->d:I

    invoke-virtual {v9, v3, v7}, Ls0/b;->e(II)V

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Lr0/i1;->a(II)Z

    iget v3, v9, Ls0/b;->f:I

    iget-object v7, v9, Ls0/b;->a:Lr0/q;

    iget-object v7, v7, Lr0/q;->G:Lr0/d2;

    iget v7, v7, Lr0/d2;->g:I

    sub-int v7, v1, v7

    add-int/2addr v7, v3

    iput v7, v9, Ls0/b;->f:I

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3, v1}, Lr0/d2;->r(I)V

    invoke-virtual {v0}, Lr0/q;->N()V

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3}, Lr0/d2;->s()I

    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    iget-object v3, v3, Lr0/d2;->b:[I

    mul-int/lit8 v7, v1, 0x5

    add-int/lit8 v7, v7, 0x3

    aget v3, v3, v7

    add-int/2addr v3, v1

    invoke-static {v5, v1, v3}, Lr0/r;->k(Ljava/util/List;II)V

    :goto_8
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v1, v21

    :goto_9
    const/4 v7, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v21, v1

    move/from16 v23, v3

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v1, v19

    if-ge v1, v8, :cond_20

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/p0;

    if-eq v3, v7, :cond_1e

    iget v7, v3, Lr0/p0;->c:I

    invoke-virtual {v10, v7}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr0/j0;

    if-eqz v7, :cond_b

    iget v7, v7, Lr0/j0;->b:I

    goto :goto_a

    :cond_b
    move/from16 v7, v17

    :goto_a
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v19, v1

    move/from16 v1, v20

    move-object/from16 v20, v4

    if-eq v7, v1, :cond_1c

    iget v4, v3, Lr0/p0;->c:I

    invoke-virtual {v10, v4}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/j0;

    if-eqz v4, :cond_c

    iget v4, v4, Lr0/j0;->c:I

    :goto_b
    move-object/from16 v22, v6

    goto :goto_c

    :cond_c
    iget v4, v3, Lr0/p0;->d:I

    goto :goto_b

    :goto_c
    add-int v6, v7, v11

    move/from16 v24, v8

    add-int v8, v1, v11

    if-lez v4, :cond_f

    move/from16 v25, v11

    iget v11, v9, Ls0/b;->l:I

    if-lez v11, :cond_d

    move/from16 v26, v11

    iget v11, v9, Ls0/b;->j:I

    move-object/from16 v27, v12

    sub-int v12, v6, v26

    if-ne v11, v12, :cond_e

    iget v11, v9, Ls0/b;->k:I

    sub-int v12, v8, v26

    if-ne v11, v12, :cond_e

    add-int v11, v26, v4

    iput v11, v9, Ls0/b;->l:I

    goto :goto_d

    :cond_d
    move-object/from16 v27, v12

    :cond_e
    invoke-virtual {v9}, Ls0/b;->c()V

    iput v6, v9, Ls0/b;->j:I

    iput v8, v9, Ls0/b;->k:I

    iput v4, v9, Ls0/b;->l:I

    goto :goto_d

    :cond_f
    move/from16 v25, v11

    move-object/from16 v27, v12

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_d
    const-wide/16 v28, 0xff

    const-wide v30, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-le v7, v1, :cond_16

    const/16 v26, 0x7

    iget-object v6, v10, Lk/k;->c:[Ljava/lang/Object;

    const-wide/16 v32, 0x80

    iget-object v11, v10, Lk/k;->a:[J

    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_15

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const/4 v8, 0x0

    :goto_e
    const/16 v34, 0x8

    aget-wide v13, v11, v8

    move/from16 v38, v4

    move-object/from16 v37, v5

    not-long v4, v13

    shl-long v4, v4, v26

    and-long/2addr v4, v13

    and-long v4, v4, v30

    cmp-long v4, v4, v30

    if-eqz v4, :cond_14

    sub-int v4, v8, v12

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_13

    and-long v39, v13, v28

    cmp-long v39, v39, v32

    if-gez v39, :cond_11

    shl-int/lit8 v39, v8, 0x3

    add-int v39, v39, v5

    aget-object v39, v6, v39

    move/from16 v40, v5

    move-object/from16 v5, v39

    check-cast v5, Lr0/j0;

    move-object/from16 v39, v6

    iget v6, v5, Lr0/j0;->b:I

    move-object/from16 v41, v11

    if-gt v7, v6, :cond_10

    add-int v11, v7, v38

    if-ge v6, v11, :cond_10

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iput v6, v5, Lr0/j0;->b:I

    goto :goto_10

    :cond_10
    if-gt v1, v6, :cond_12

    if-ge v6, v7, :cond_12

    add-int v6, v6, v38

    iput v6, v5, Lr0/j0;->b:I

    goto :goto_10

    :cond_11
    move/from16 v40, v5

    move-object/from16 v39, v6

    move-object/from16 v41, v11

    :cond_12
    :goto_10
    shr-long v13, v13, v34

    add-int/lit8 v5, v40, 0x1

    move-object/from16 v6, v39

    move-object/from16 v11, v41

    goto :goto_f

    :cond_13
    move-object/from16 v39, v6

    move-object/from16 v41, v11

    move/from16 v5, v34

    if-ne v4, v5, :cond_1d

    goto :goto_11

    :cond_14
    move-object/from16 v39, v6

    move-object/from16 v41, v11

    :goto_11
    if-eq v8, v12, :cond_1d

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v37

    move/from16 v4, v38

    move-object/from16 v6, v39

    move-object/from16 v11, v41

    goto :goto_e

    :cond_15
    move-object/from16 v37, v5

    goto/16 :goto_17

    :cond_16
    move/from16 v38, v4

    move-object/from16 v37, v5

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    const/16 v26, 0x7

    const-wide/16 v32, 0x80

    if-le v1, v7, :cond_1d

    iget-object v4, v10, Lk/k;->c:[Ljava/lang/Object;

    iget-object v5, v10, Lk/k;->a:[J

    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_1d

    const/4 v8, 0x0

    :goto_12
    aget-wide v11, v5, v8

    not-long v13, v11

    shl-long v13, v13, v26

    and-long/2addr v13, v11

    and-long v13, v13, v30

    cmp-long v13, v13, v30

    if-eqz v13, :cond_1b

    sub-int v13, v8, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v34, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v13, :cond_1a

    and-long v39, v11, v28

    cmp-long v39, v39, v32

    if-gez v39, :cond_19

    shl-int/lit8 v39, v8, 0x3

    add-int v39, v39, v14

    aget-object v39, v4, v39

    move-object/from16 v40, v4

    move-object/from16 v4, v39

    check-cast v4, Lr0/j0;

    move-object/from16 v39, v5

    iget v5, v4, Lr0/j0;->b:I

    move/from16 v41, v7

    if-gt v7, v5, :cond_17

    add-int v7, v41, v38

    if-ge v5, v7, :cond_17

    sub-int v5, v5, v41

    add-int/2addr v5, v1

    iput v5, v4, Lr0/j0;->b:I

    goto :goto_14

    :cond_17
    add-int/lit8 v7, v41, 0x1

    if-gt v7, v5, :cond_18

    if-ge v5, v1, :cond_18

    sub-int v5, v5, v38

    iput v5, v4, Lr0/j0;->b:I

    :cond_18
    :goto_14
    const/16 v5, 0x8

    goto :goto_15

    :cond_19
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v7

    goto :goto_14

    :goto_15
    shr-long/2addr v11, v5

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    move/from16 v7, v41

    goto :goto_13

    :cond_1a
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v7

    const/16 v5, 0x8

    if-ne v13, v5, :cond_1d

    goto :goto_16

    :cond_1b
    move-object/from16 v40, v4

    move-object/from16 v39, v5

    move/from16 v41, v7

    const/16 v5, 0x8

    :goto_16
    if-eq v8, v6, :cond_1d

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v39

    move-object/from16 v4, v40

    move/from16 v7, v41

    goto :goto_12

    :cond_1c
    move-object/from16 v37, v5

    move-object/from16 v22, v6

    move/from16 v24, v8

    move/from16 v25, v11

    move-object/from16 v27, v12

    :goto_17
    move-object/from16 v35, v13

    move-object/from16 v36, v14

    :cond_1d
    move/from16 v4, v23

    goto :goto_18

    :cond_1e
    move/from16 v19, v1

    move-object/from16 v37, v5

    move-object/from16 v22, v6

    move/from16 v24, v8

    move/from16 v25, v11

    move-object/from16 v27, v12

    move-object/from16 v35, v13

    move-object/from16 v36, v14

    move/from16 v1, v20

    move-object/from16 v20, v4

    add-int/lit8 v4, v23, 0x1

    :goto_18
    add-int/lit8 v19, v19, 0x1

    iget v5, v3, Lr0/p0;->c:I

    invoke-virtual {v10, v5}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/j0;

    if-eqz v5, :cond_1f

    iget v3, v5, Lr0/j0;->c:I

    goto :goto_19

    :cond_1f
    iget v3, v3, Lr0/p0;->d:I

    :goto_19
    add-int/2addr v1, v3

    move v3, v4

    move-object/from16 v4, v20

    move-object/from16 v6, v22

    move/from16 v8, v24

    move/from16 v11, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v35

    move-object/from16 v14, v36

    move-object/from16 v5, v37

    const/4 v7, 0x0

    move/from16 v20, v1

    move-object/from16 v1, v21

    goto/16 :goto_6

    :cond_20
    move/from16 v19, v1

    move/from16 v1, v20

    move-object/from16 v1, v21

    move/from16 v3, v23

    goto/16 :goto_9

    :cond_21
    move-object/from16 v21, v1

    move-object/from16 v37, v5

    move-object/from16 v27, v12

    invoke-virtual {v9}, Ls0/b;->c()V

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v0, Lr0/q;->G:Lr0/d2;

    iget v3, v1, Lr0/d2;->h:I

    iget v4, v9, Ls0/b;->f:I

    iget-object v5, v9, Ls0/b;->a:Lr0/q;

    iget-object v5, v5, Lr0/q;->G:Lr0/d2;

    iget v5, v5, Lr0/d2;->g:I

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, v9, Ls0/b;->f:I

    invoke-virtual {v1}, Lr0/d2;->t()V

    goto :goto_1a

    :cond_22
    move-object/from16 v21, v1

    move-object/from16 v37, v5

    const/16 v17, -0x1

    :cond_23
    :goto_1a
    iget-boolean v1, v0, Lr0/q;->S:Z

    const/4 v3, -0x2

    if-nez v1, :cond_27

    iget-object v4, v0, Lr0/q;->G:Lr0/d2;

    iget v5, v4, Lr0/d2;->m:I

    iget v4, v4, Lr0/d2;->l:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_27

    if-lez v5, :cond_26

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ls0/b;->d(Z)V

    iget-object v4, v9, Ls0/b;->d:Le2/t;

    iget-object v6, v9, Ls0/b;->a:Lr0/q;

    iget-object v6, v6, Lr0/q;->G:Lr0/d2;

    iget v7, v6, Lr0/d2;->c:I

    if-lez v7, :cond_25

    iget v7, v6, Lr0/d2;->i:I

    invoke-virtual {v4, v3}, Le2/t;->a(I)I

    move-result v8

    if-eq v8, v7, :cond_25

    iget-boolean v8, v9, Ls0/b;->c:Z

    if-nez v8, :cond_24

    iget-boolean v8, v9, Ls0/b;->e:Z

    if-eqz v8, :cond_24

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ls0/b;->d(Z)V

    iget-object v8, v9, Ls0/b;->b:Ls0/a;

    iget-object v8, v8, Ls0/a;->c:Ls0/m0;

    sget-object v10, Ls0/q;->c:Ls0/q;

    invoke-virtual {v8, v10}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Ls0/b;->c:Z

    :cond_24
    if-lez v7, :cond_25

    invoke-virtual {v6, v7}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v6

    invoke-virtual {v4, v7}, Le2/t;->c(I)V

    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ls0/b;->d(Z)V

    iget-object v7, v9, Ls0/b;->b:Ls0/a;

    iget-object v7, v7, Ls0/a;->c:Ls0/m0;

    sget-object v8, Ls0/p;->c:Ls0/p;

    invoke-virtual {v7, v8}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v7, v4, v6}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Ls0/b;->c:Z

    :cond_25
    iget-object v4, v9, Ls0/b;->b:Ls0/a;

    iget-object v4, v4, Ls0/a;->c:Ls0/m0;

    sget-object v6, Ls0/e0;->c:Ls0/e0;

    invoke-virtual {v4, v6}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v6, v4, Ls0/m0;->e:[I

    iget v7, v4, Ls0/m0;->f:I

    iget-object v8, v4, Ls0/m0;->c:[Ls0/j0;

    iget v4, v4, Ls0/m0;->d:I

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v8, v4

    iget v4, v4, Ls0/j0;->a:I

    sub-int/2addr v7, v4

    aput v5, v6, v7

    goto :goto_1b

    :cond_26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_27
    :goto_1b
    iget v4, v0, Lr0/q;->k:I

    :goto_1c
    iget-object v5, v0, Lr0/q;->G:Lr0/d2;

    iget v6, v5, Lr0/d2;->k:I

    if-lez v6, :cond_28

    goto :goto_1d

    :cond_28
    iget v6, v5, Lr0/d2;->g:I

    iget v5, v5, Lr0/d2;->h:I

    if-ne v6, v5, :cond_3a

    :goto_1d
    if-eqz v1, :cond_33

    if-eqz p1, :cond_2a

    iget-object v2, v0, Lr0/q;->O:Ls0/c;

    iget-object v4, v2, Ls0/c;->d:Ls0/m0;

    invoke-virtual {v4}, Ls0/m0;->F()Z

    move-result v5

    if-nez v5, :cond_29

    const-string v5, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v5}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_29
    iget-object v2, v2, Ls0/c;->c:Ls0/m0;

    iget-object v5, v4, Ls0/m0;->c:[Ls0/j0;

    iget v6, v4, Ls0/m0;->d:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Ls0/m0;->d:I

    aget-object v7, v5, v6

    const/4 v8, 0x0

    aput-object v8, v5, v6

    invoke-virtual {v2, v7}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v5, v4, Ls0/m0;->g:[Ljava/lang/Object;

    iget-object v6, v2, Ls0/m0;->g:[Ljava/lang/Object;

    iget v10, v2, Ls0/m0;->h:I

    iget v11, v7, Ls0/j0;->b:I

    sub-int/2addr v10, v11

    iget v12, v4, Ls0/m0;->h:I

    sub-int v13, v12, v11

    sub-int/2addr v12, v13

    invoke-static {v5, v13, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v4, Ls0/m0;->g:[Ljava/lang/Object;

    iget v6, v4, Ls0/m0;->h:I

    sub-int v10, v6, v11

    invoke-static {v5, v10, v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v5, v4, Ls0/m0;->e:[I

    iget-object v6, v2, Ls0/m0;->e:[I

    iget v2, v2, Ls0/m0;->f:I

    iget v7, v7, Ls0/j0;->a:I

    sub-int/2addr v2, v7

    iget v8, v4, Ls0/m0;->f:I

    sub-int v10, v8, v7

    invoke-static {v5, v6, v2, v10, v8}, Lu8/l;->i0([I[IIII)V

    iget v2, v4, Ls0/m0;->h:I

    sub-int/2addr v2, v11

    iput v2, v4, Ls0/m0;->h:I

    iget v2, v4, Ls0/m0;->f:I

    sub-int/2addr v2, v7

    iput v2, v4, Ls0/m0;->f:I

    const/4 v2, 0x1

    :cond_2a
    iget-object v4, v0, Lr0/q;->G:Lr0/d2;

    iget v5, v4, Lr0/d2;->k:I

    if-lez v5, :cond_2b

    goto :goto_1e

    :cond_2b
    const-string v5, "Unbalanced begin/end empty"

    invoke-static {v5}, Lr0/k1;->a(Ljava/lang/String;)V

    :goto_1e
    iget v5, v4, Lr0/d2;->k:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lr0/d2;->k:I

    iget-object v4, v0, Lr0/q;->I:Lr0/h2;

    iget v5, v4, Lr0/h2;->v:I

    invoke-virtual {v4}, Lr0/h2;->j()V

    iget-object v4, v0, Lr0/q;->G:Lr0/d2;

    iget v4, v4, Lr0/d2;->k:I

    if-lez v4, :cond_2c

    goto/16 :goto_22

    :cond_2c
    rsub-int/lit8 v4, v5, -0x2

    iget-object v5, v0, Lr0/q;->I:Lr0/h2;

    invoke-virtual {v5}, Lr0/h2;->k()V

    iget-object v5, v0, Lr0/q;->I:Lr0/h2;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lr0/h2;->e(Z)V

    iget-object v5, v0, Lr0/q;->N:Lr0/a;

    iget-object v6, v0, Lr0/q;->O:Ls0/c;

    iget-object v6, v6, Ls0/c;->c:Ls0/m0;

    invoke-virtual {v6}, Ls0/m0;->E()Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {v9}, Ls0/b;->b()V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ls0/b;->d(Z)V

    iget-object v7, v9, Ls0/b;->d:Le2/t;

    iget-object v8, v9, Ls0/b;->a:Lr0/q;

    iget-object v8, v8, Lr0/q;->G:Lr0/d2;

    iget v10, v8, Lr0/d2;->c:I

    if-lez v10, :cond_2e

    iget v10, v8, Lr0/d2;->i:I

    invoke-virtual {v7, v3}, Le2/t;->a(I)I

    move-result v3

    if-eq v3, v10, :cond_2e

    iget-boolean v3, v9, Ls0/b;->c:Z

    if-nez v3, :cond_2d

    iget-boolean v3, v9, Ls0/b;->e:Z

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ls0/b;->d(Z)V

    iget-object v3, v9, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v11, Ls0/q;->c:Ls0/q;

    invoke-virtual {v3, v11}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Ls0/b;->c:Z

    :cond_2d
    if-lez v10, :cond_2e

    invoke-virtual {v8, v10}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v3

    invoke-virtual {v7, v10}, Le2/t;->c(I)V

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ls0/b;->d(Z)V

    iget-object v7, v9, Ls0/b;->b:Ls0/a;

    iget-object v7, v7, Ls0/a;->c:Ls0/m0;

    sget-object v10, Ls0/p;->c:Ls0/p;

    invoke-virtual {v7, v10}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v7, v8, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    const/4 v8, 0x1

    iput-boolean v8, v9, Ls0/b;->c:Z

    goto :goto_1f

    :cond_2e
    const/4 v8, 0x1

    :goto_1f
    invoke-virtual {v9}, Ls0/b;->c()V

    iget-object v3, v9, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v7, Ls0/s;->c:Ls0/s;

    invoke-virtual {v3, v7}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v7, 0x0

    invoke-static {v3, v7, v5, v8, v6}, Lg6/c1;->B(Ls0/m0;ILjava/lang/Object;ILjava/lang/Object;)V

    move v3, v7

    goto/16 :goto_20

    :cond_2f
    const/4 v7, 0x0

    iget-object v6, v0, Lr0/q;->H:Lr0/e2;

    iget-object v8, v0, Lr0/q;->O:Ls0/c;

    invoke-virtual {v9}, Ls0/b;->b()V

    invoke-virtual {v9, v7}, Ls0/b;->d(Z)V

    iget-object v7, v9, Ls0/b;->d:Le2/t;

    iget-object v10, v9, Ls0/b;->a:Lr0/q;

    iget-object v10, v10, Lr0/q;->G:Lr0/d2;

    iget v11, v10, Lr0/d2;->c:I

    if-lez v11, :cond_31

    iget v11, v10, Lr0/d2;->i:I

    invoke-virtual {v7, v3}, Le2/t;->a(I)I

    move-result v3

    if-eq v3, v11, :cond_31

    iget-boolean v3, v9, Ls0/b;->c:Z

    if-nez v3, :cond_30

    iget-boolean v3, v9, Ls0/b;->e:Z

    if-eqz v3, :cond_30

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ls0/b;->d(Z)V

    iget-object v3, v9, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v12, Ls0/q;->c:Ls0/q;

    invoke-virtual {v3, v12}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Ls0/b;->c:Z

    :cond_30
    if-lez v11, :cond_31

    invoke-virtual {v10, v11}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v3

    invoke-virtual {v7, v11}, Le2/t;->c(I)V

    const/4 v7, 0x0

    invoke-virtual {v9, v7}, Ls0/b;->d(Z)V

    iget-object v10, v9, Ls0/b;->b:Ls0/a;

    iget-object v10, v10, Ls0/a;->c:Ls0/m0;

    sget-object v11, Ls0/p;->c:Ls0/p;

    invoke-virtual {v10, v11}, Ls0/m0;->G(Ls0/j0;)V

    invoke-static {v10, v7, v3}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, v9, Ls0/b;->c:Z

    :cond_31
    invoke-virtual {v9}, Ls0/b;->c()V

    iget-object v3, v9, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v7, Ls0/t;->c:Ls0/t;

    invoke-virtual {v3, v7}, Ls0/m0;->G(Ls0/j0;)V

    iget v7, v3, Ls0/m0;->h:I

    iget-object v9, v3, Ls0/m0;->c:[Ls0/j0;

    iget v10, v3, Ls0/m0;->d:I

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    iget v9, v9, Ls0/j0;->b:I

    sub-int/2addr v7, v9

    iget-object v3, v3, Ls0/m0;->g:[Ljava/lang/Object;

    aput-object v5, v3, v7

    add-int/lit8 v5, v7, 0x1

    aput-object v6, v3, v5

    add-int/lit8 v7, v7, 0x2

    aput-object v8, v3, v7

    new-instance v3, Ls0/c;

    invoke-direct {v3}, Ls0/c;-><init>()V

    iput-object v3, v0, Lr0/q;->O:Ls0/c;

    const/4 v3, 0x0

    :goto_20
    iput-boolean v3, v0, Lr0/q;->S:Z

    iget-object v5, v0, Lr0/q;->c:Lr0/e2;

    iget v5, v5, Lr0/e2;->m:I

    if-nez v5, :cond_32

    goto :goto_22

    :cond_32
    invoke-virtual {v0, v4, v3}, Lr0/q;->i0(II)V

    invoke-virtual {v0, v4, v2}, Lr0/q;->j0(II)V

    goto :goto_22

    :cond_33
    if-eqz p1, :cond_34

    invoke-virtual {v9}, Ls0/b;->a()V

    :cond_34
    iget-object v3, v9, Ls0/b;->a:Lr0/q;

    iget-object v3, v3, Lr0/q;->G:Lr0/d2;

    iget v3, v3, Lr0/d2;->i:I

    iget-object v4, v9, Ls0/b;->d:Le2/t;

    move/from16 v5, v17

    invoke-virtual {v4, v5}, Le2/t;->a(I)I

    move-result v6

    if-gt v6, v3, :cond_35

    goto :goto_21

    :cond_35
    const-string v6, "Missed recording an endGroup"

    invoke-static {v6}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_21
    invoke-virtual {v4, v5}, Le2/t;->a(I)I

    move-result v5

    if-ne v5, v3, :cond_36

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Ls0/b;->d(Z)V

    invoke-virtual {v4}, Le2/t;->b()I

    iget-object v3, v9, Ls0/b;->b:Ls0/a;

    iget-object v3, v3, Ls0/a;->c:Ls0/m0;

    sget-object v4, Ls0/m;->c:Ls0/m;

    invoke-virtual {v3, v4}, Ls0/m0;->G(Ls0/j0;)V

    :cond_36
    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    iget v3, v3, Lr0/d2;->i:I

    invoke-virtual {v0, v3}, Lr0/q;->n0(I)I

    move-result v4

    if-eq v2, v4, :cond_37

    invoke-virtual {v0, v3, v2}, Lr0/q;->j0(II)V

    :cond_37
    if-eqz p1, :cond_38

    const/4 v2, 0x1

    :cond_38
    iget-object v3, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v3}, Lr0/d2;->e()V

    invoke-virtual {v9}, Ls0/b;->c()V

    :goto_22
    iget-object v3, v0, Lr0/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v18, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/i1;

    if-eqz v3, :cond_39

    if-nez v1, :cond_39

    iget v1, v3, Lr0/i1;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Lr0/i1;->c:I

    :cond_39
    iput-object v3, v0, Lr0/q;->j:Lr0/i1;

    invoke-virtual/range {v21 .. v21}, Le2/t;->b()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lr0/q;->k:I

    invoke-virtual/range {v21 .. v21}, Le2/t;->b()I

    move-result v1

    iput v1, v0, Lr0/q;->m:I

    invoke-virtual/range {v21 .. v21}, Le2/t;->b()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Lr0/q;->l:I

    return-void

    :cond_3a
    move/from16 v5, v17

    const/4 v8, 0x0

    const/16 v18, 0x1

    invoke-virtual {v0}, Lr0/q;->N()V

    iget-object v7, v0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v7}, Lr0/d2;->s()I

    move-result v7

    invoke-virtual {v9, v4, v7}, Ls0/b;->e(II)V

    iget-object v7, v0, Lr0/q;->G:Lr0/d2;

    iget v7, v7, Lr0/d2;->g:I

    move-object/from16 v10, v37

    invoke-static {v10, v6, v7}, Lr0/r;->k(Ljava/util/List;II)V

    goto/16 :goto_1c
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/q;->q(Z)V

    invoke-virtual {p0}, Lr0/q;->B()Lr0/n1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Lr0/n1;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr0/n1;->b:I

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lr0/q;->q(Z)V

    return-void
.end method

.method public final t()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/q;->q(Z)V

    return-void
.end method

.method public final u()Lr0/n1;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lr0/q;->E:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/n1;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    iget v5, v1, Lr0/n1;->b:I

    and-int/lit8 v5, v5, -0x9

    iput v5, v1, Lr0/n1;->b:I

    iget-object v5, v0, Lr0/q;->g:Lq3/k;

    invoke-virtual {v5}, Lq3/k;->e()V

    iget v5, v0, Lr0/q;->B:I

    iget-object v6, v1, Lr0/n1;->f:Lk/d0;

    if-eqz v6, :cond_5

    iget v7, v1, Lr0/n1;->b:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, Lk/d0;->b:[Ljava/lang/Object;

    iget-object v8, v6, Lk/d0;->c:[I

    iget-object v9, v6, Lk/d0;->a:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_5

    const/4 v11, 0x0

    :goto_1
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v14, :cond_3

    const-wide/16 v17, 0xff

    and-long v17, v12, v17

    const-wide/16 v19, 0x80

    cmp-long v17, v17, v19

    if-gez v17, :cond_2

    shl-int/lit8 v17, v11, 0x3

    add-int v17, v17, v4

    aget-object v18, v7, v17

    aget v2, v8, v17

    if-eq v2, v5, :cond_2

    new-instance v2, Lb0/j3;

    const/4 v4, 0x3

    invoke-direct {v2, v5, v4, v1, v6}, Lb0/j3;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    shr-long/2addr v12, v15

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-ne v14, v15, :cond_5

    :cond_4
    if-eq v11, v10, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v2, 0x0

    :goto_4
    iget-object v4, v0, Lr0/q;->M:Ls0/b;

    if-eqz v2, :cond_6

    iget-object v5, v4, Ls0/b;->b:Ls0/a;

    iget-object v5, v5, Ls0/a;->c:Ls0/m0;

    sget-object v6, Ls0/l;->c:Ls0/l;

    invoke-virtual {v5, v6}, Ls0/m0;->G(Ls0/j0;)V

    iget-object v6, v0, Lr0/q;->h:Lr0/x;

    const/4 v7, 0x0

    invoke-static {v5, v7, v2, v3, v6}, Lg6/c1;->B(Ls0/m0;ILjava/lang/Object;ILjava/lang/Object;)V

    :cond_6
    iget v2, v1, Lr0/n1;->b:I

    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_7

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Lr0/n1;->b:I

    iget-object v2, v4, Ls0/b;->b:Ls0/a;

    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    sget-object v4, Ls0/o;->c:Ls0/o;

    invoke-virtual {v2, v4}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v7, 0x0

    invoke-static {v2, v7, v1}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    iget v2, v1, Lr0/n1;->b:I

    and-int/lit16 v4, v2, -0x81

    iput v4, v1, Lr0/n1;->b:I

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_7

    and-int/lit16 v2, v2, -0x481

    iput v2, v1, Lr0/n1;->b:I

    iput-boolean v7, v0, Lr0/q;->y:Z

    :cond_7
    if-eqz v1, :cond_c

    iget v2, v1, Lr0/n1;->b:I

    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    and-int/2addr v2, v3

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    iget-boolean v2, v0, Lr0/q;->q:Z

    if-eqz v2, :cond_c

    :goto_5
    iget-object v2, v1, Lr0/n1;->c:Lr0/a;

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lr0/q;->S:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lr0/q;->I:Lr0/h2;

    iget v3, v2, Lr0/h2;->v:I

    invoke-virtual {v2, v3}, Lr0/h2;->b(I)Lr0/a;

    move-result-object v2

    goto :goto_6

    :cond_a
    iget-object v2, v0, Lr0/q;->G:Lr0/d2;

    iget v3, v2, Lr0/d2;->i:I

    invoke-virtual {v2, v3}, Lr0/d2;->a(I)Lr0/a;

    move-result-object v2

    :goto_6
    iput-object v2, v1, Lr0/n1;->c:Lr0/a;

    :cond_b
    iget v2, v1, Lr0/n1;->b:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lr0/n1;->b:I

    move-object v4, v1

    :goto_7
    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v4, 0x0

    goto :goto_7

    :goto_9
    invoke-virtual {v0, v7}, Lr0/q;->q(Z)V

    return-object v4
.end method

.method public final v()V
    .locals 2

    iget-boolean v0, p0, Lr0/q;->F:Z

    if-nez v0, :cond_0

    iget v0, p0, Lr0/q;->z:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Cannot disable reuse from root if it was caused by other groups"

    invoke-static {v0}, Lr0/k1;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lr0/q;->z:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr0/q;->y:Z

    return-void
.end method

.method public final w()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr0/q;->q(Z)V

    iget-object v1, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {v1}, Lr0/u;->c()V

    invoke-virtual {p0, v0}, Lr0/q;->q(Z)V

    iget-object v1, p0, Lr0/q;->M:Ls0/b;

    iget-boolean v2, v1, Ls0/b;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ls0/b;->d(Z)V

    invoke-virtual {v1, v0}, Ls0/b;->d(Z)V

    iget-object v2, v1, Ls0/b;->b:Ls0/a;

    iget-object v2, v2, Ls0/a;->c:Ls0/m0;

    sget-object v3, Ls0/m;->c:Ls0/m;

    invoke-virtual {v2, v3}, Ls0/m0;->G(Ls0/j0;)V

    iput-boolean v0, v1, Ls0/b;->c:Z

    :cond_0
    invoke-virtual {v1}, Ls0/b;->b()V

    iget-object v1, v1, Ls0/b;->d:Le2/t;

    iget v1, v1, Le2/t;->b:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Missed recording an endGroup()"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lr0/q;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Start/end imbalance"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lr0/q;->j()V

    iget-object v1, p0, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v1}, Lr0/d2;->c()V

    iget-object v1, p0, Lr0/q;->x:Le2/t;

    invoke-virtual {v1}, Le2/t;->b()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lr0/q;->w:Z

    return-void
.end method

.method public final x(ZLr0/i1;)V
    .locals 2

    iget-object v0, p0, Lr0/q;->i:Ljava/util/ArrayList;

    iget-object v1, p0, Lr0/q;->j:Lr0/i1;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lr0/q;->j:Lr0/i1;

    iget p2, p0, Lr0/q;->l:I

    iget-object v0, p0, Lr0/q;->n:Le2/t;

    invoke-virtual {v0, p2}, Le2/t;->c(I)V

    iget p2, p0, Lr0/q;->m:I

    invoke-virtual {v0, p2}, Le2/t;->c(I)V

    iget p2, p0, Lr0/q;->k:I

    invoke-virtual {v0, p2}, Le2/t;->c(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iput p2, p0, Lr0/q;->k:I

    :cond_0
    iput p2, p0, Lr0/q;->l:I

    iput p2, p0, Lr0/q;->m:I

    return-void
.end method

.method public final y()V
    .locals 2

    new-instance v0, Lr0/e2;

    invoke-direct {v0}, Lr0/e2;-><init>()V

    iget-boolean v1, p0, Lr0/q;->C:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr0/e2;->b()V

    :cond_0
    iget-object v1, p0, Lr0/q;->b:Lr0/u;

    invoke-virtual {v1}, Lr0/u;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lk/x;

    invoke-direct {v1}, Lk/x;-><init>()V

    iput-object v1, v0, Lr0/e2;->v:Lk/x;

    :cond_1
    iput-object v0, p0, Lr0/q;->H:Lr0/e2;

    invoke-virtual {v0}, Lr0/e2;->d()Lr0/h2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lr0/h2;->e(Z)V

    iput-object v0, p0, Lr0/q;->I:Lr0/h2;

    return-void
.end method

.method public final z()Le1/d;
    .locals 2

    iget-object v0, p0, Lr0/q;->U:Lr0/w;

    if-nez v0, :cond_0

    new-instance v0, Lr0/w;

    iget-object v1, p0, Lr0/q;->h:Lr0/x;

    invoke-direct {v0, v1}, Lr0/w;-><init>(Lr0/t;)V

    iput-object v0, p0, Lr0/q;->U:Lr0/w;

    :cond_0
    return-object v0
.end method
