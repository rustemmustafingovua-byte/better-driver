.class public final Lr0/u1;
.super Lr0/u;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final z:Lx9/l0;


# instance fields
.field public final a:Lf2/x0;

.field public final b:Lg5/m;

.field public final c:Ljava/lang/Object;

.field public d:Lu9/v0;

.field public e:Ljava/lang/Throwable;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/lang/Object;

.field public h:Lk/n0;

.field public final i:Lt0/b;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Lk/m0;

.field public final m:Lg5/c;

.field public final n:Lk/m0;

.field public final o:Lk/m0;

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/util/LinkedHashSet;

.field public r:Lu9/g;

.field public s:Lq3/k;

.field public t:Z

.field public final u:Lx9/l0;

.field public final v:Lx2/k;

.field public final w:Lu9/x0;

.field public final x:Ly8/h;

.field public final y:Lr0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lx0/b;->o:Lx0/b;

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    sput-object v0, Lr0/u1;->z:Lx9/l0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lr0/u1;->A:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ly8/h;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf2/x0;

    new-instance v1, Lr0/p1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lr0/p1;-><init>(Lr0/u1;I)V

    invoke-direct {v0, v1}, Lf2/x0;-><init>(Lr0/p1;)V

    iput-object v0, p0, Lr0/u1;->a:Lf2/x0;

    new-instance v1, Lg5/m;

    new-instance v2, Lr0/p1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lr0/p1;-><init>(Lr0/u1;I)V

    invoke-direct {v1, v2}, Lg5/m;-><init>(Lr0/p1;)V

    iput-object v1, p0, Lr0/u1;->b:Lg5/m;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lr0/u1;->c:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    new-instance v1, Lk/n0;

    invoke-direct {v1}, Lk/n0;-><init>()V

    iput-object v1, p0, Lr0/u1;->h:Lk/n0;

    new-instance v1, Lt0/b;

    const/16 v2, 0x10

    new-array v2, v2, [Lr0/x;

    invoke-direct {v1, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lr0/u1;->i:Lt0/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr0/u1;->j:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr0/u1;->k:Ljava/util/ArrayList;

    new-instance v1, Lk/m0;

    invoke-direct {v1}, Lk/m0;-><init>()V

    iput-object v1, p0, Lr0/u1;->l:Lk/m0;

    new-instance v1, Lg5/c;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg5/c;-><init>(I)V

    iput-object v1, p0, Lr0/u1;->m:Lg5/c;

    new-instance v1, Lk/m0;

    invoke-direct {v1}, Lk/m0;-><init>()V

    iput-object v1, p0, Lr0/u1;->n:Lk/m0;

    new-instance v1, Lk/m0;

    invoke-direct {v1}, Lk/m0;-><init>()V

    iput-object v1, p0, Lr0/u1;->o:Lk/m0;

    sget-object v1, Lr0/q1;->n:Lr0/q1;

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v1

    iput-object v1, p0, Lr0/u1;->u:Lx9/l0;

    new-instance v1, Lx2/k;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lx2/k;-><init>(I)V

    iput-object v1, p0, Lr0/u1;->v:Lx2/k;

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-interface {p1, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    check-cast v1, Lu9/v0;

    new-instance v2, Lu9/x0;

    invoke-direct {v2, v1}, Lu9/x0;-><init>(Lu9/v0;)V

    new-instance v1, Lr0/o1;

    invoke-direct {v1, v3, p0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Lu9/c1;->P(Li9/c;)Lu9/g0;

    iput-object v2, p0, Lr0/u1;->w:Lu9/x0;

    invoke-interface {p1, v0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p1

    invoke-interface {p1, v2}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p1

    iput-object p1, p0, Lr0/u1;->x:Ly8/h;

    new-instance p1, Lr0/e;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lr0/e;-><init>(I)V

    iput-object p1, p0, Lr0/u1;->y:Lr0/e;

    return-void
.end method

.method public static final G(Ljava/util/ArrayList;Lr0/u1;Lr0/x;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p1, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr0/t0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static w(Ld1/c;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ld1/c;->w()Ld1/w;

    move-result-object v0

    instance-of v0, v0, Ld1/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ld1/c;->c()V

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ld1/c;->c()V

    throw v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Lr0/u1;->i:Lt0/b;

    iget v0, v0, Lt0/b;->n:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr0/u1;->z()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lr0/u1;->B()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lr0/u1;->l:Lk/m0;

    invoke-virtual {p0}, Lk/m0;->j()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Lr0/u1;->t:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lr0/u1;->b:Lg5/m;

    iget-object p0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/a1;

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p0, Lz0/a;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const v0, 0x7ffffff

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {v1}, Lk/n0;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lr0/u1;->i:Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lr0/u1;->z()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lr0/u1;->B()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final D()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lr0/u1;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lu8/r;->l:Lu8/r;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lr0/u1;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lr0/u1;->y()Lu9/f;

    move-result-object v1

    iget-object v2, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/q1;

    sget-object v3, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    monitor-exit v0

    if-eqz v1, :cond_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    check-cast v1, Lu9/g;

    invoke-virtual {v1, p0}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v1, "Recomposer shutdown; frame clock awaiter will never resume"

    iget-object p0, p0, Lr0/u1;->e:Ljava/lang/Throwable;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final F(Lr0/x;)V
    .locals 1

    iget-object p1, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/t0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final H(Ljava/util/List;Lk/n0;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lr0/t0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/x;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v6, v5, Lr0/x;->G:Lr0/q;

    iget-boolean v6, v6, Lr0/q;->F:Z

    if-eqz v6, :cond_2

    const-string v6, "Check failed"

    invoke-static {v6}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v6, Lr0/o1;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v5}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    new-instance v7, Lp/o0;

    const/16 v8, 0x8

    move-object/from16 v9, p2

    invoke-direct {v7, v8, v5, v9}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v8

    instance-of v10, v8, Ld1/c;

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    check-cast v8, Ld1/c;

    goto :goto_2

    :cond_3
    move-object v8, v11

    :goto_2
    if-eqz v8, :cond_10

    invoke-virtual {v8, v6, v7}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object v6

    if-eqz v6, :cond_10

    :try_start_0
    invoke-virtual {v6}, Ld1/g;->j()Ld1/g;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v8, v0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_4

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lr0/t0;

    iget-object v15, v0, Lr0/u1;->l:Lk/m0;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lt0/a;->a(Lk/m0;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lr0/t0;

    new-instance v3, Lt8/j;

    invoke-direct {v3, v14, v15}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_8

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt8/j;

    iget-object v13, v12, Lt8/j;->m:Ljava/lang/Object;

    if-nez v13, :cond_7

    iget-object v13, v0, Lr0/u1;->m:Lg5/c;

    iget-object v12, v12, Lt8/j;->l:Ljava/lang/Object;

    check-cast v12, Lr0/t0;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v13, Lg5/c;->m:Ljava/lang/Object;

    check-cast v12, Lk/m0;

    invoke-virtual {v12, v11}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v4, :cond_6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt8/j;

    iget-object v13, v12, Lt8/j;->m:Ljava/lang/Object;

    if-nez v13, :cond_5

    iget-object v13, v0, Lr0/u1;->m:Lg5/c;

    iget-object v14, v12, Lt8/j;->l:Ljava/lang/Object;

    check-cast v14, Lr0/t0;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lg5/c;->m:Ljava/lang/Object;

    check-cast v14, Lk/m0;

    invoke-static {v14}, Lt0/a;->a(Lk/m0;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lr0/v0;

    invoke-virtual {v14}, Lk/m0;->i()Z

    move-result v14

    if-eqz v14, :cond_5

    iget-object v13, v13, Lg5/c;->n:Ljava/lang/Object;

    check-cast v13, Lk/m0;

    invoke-virtual {v13}, Lk/m0;->a()V

    :cond_5
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_6
    move-object v10, v3

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    :try_start_3
    monitor-exit v8

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_f

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt8/j;

    iget-object v8, v8, Lt8/j;->m:Ljava/lang/Object;

    if-nez v8, :cond_9

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_f

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt8/j;

    iget-object v8, v8, Lt8/j;->m:Ljava/lang/Object;

    if-eqz v8, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v4, :cond_c

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lt8/j;

    iget-object v12, v11, Lt8/j;->m:Ljava/lang/Object;

    if-nez v12, :cond_b

    iget-object v11, v11, Lt8/j;->l:Ljava/lang/Object;

    check-cast v11, Lr0/t0;

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_b
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_c
    iget-object v4, v0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, v0, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-static {v3, v8}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v4, :cond_e

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lt8/j;

    iget-object v12, v12, Lt8/j;->m:Ljava/lang/Object;

    if-eqz v12, :cond_d

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_e
    move-object v10, v3

    goto :goto_c

    :catchall_2
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_f
    :goto_c
    invoke-virtual {v5, v10}, Lr0/x;->r(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v7}, Ld1/g;->q(Ld1/g;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v6}, Lr0/u1;->w(Ld1/c;)V

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    goto :goto_f

    :goto_d
    :try_start_7
    monitor-exit v8

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_e
    :try_start_8
    invoke-static {v7}, Ld1/g;->q(Ld1/g;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_f
    invoke-static {v6}, Lr0/u1;->w(Ld1/c;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final I(Lr0/x;Lk/n0;)Lr0/x;
    .locals 5

    iget-object v0, p1, Lr0/x;->G:Lr0/q;

    iget-boolean v0, v0, Lr0/q;->F:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget v0, p1, Lr0/x;->H:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lr0/u1;->q:Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance p0, Lr0/o1;

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lp/o0;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p1, p2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v3

    instance-of v4, v3, Ld1/c;

    if-eqz v4, :cond_2

    check-cast v3, Ld1/c;

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_5

    invoke-virtual {v3, p0, v2}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ld1/g;->j()Ld1/g;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p2}, Lk/n0;->h()Z

    move-result v3

    if-ne v3, v0, :cond_4

    new-instance v3, Lr0/w0;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p2, p1}, Lr0/w0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lr0/x;->G:Lr0/q;

    iget-boolean v4, p2, Lr0/q;->F:Z

    if-eqz v4, :cond_3

    const-string v4, "Preparing a composition while composing is not supported"

    invoke-static {v4}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_3
    iput-boolean v0, p2, Lr0/q;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v3}, Lr0/w0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-boolean v0, p2, Lr0/q;->F:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v0, p2, Lr0/q;->F:Z

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lr0/x;->x()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {p0}, Lr0/u1;->w(Ld1/c;)V

    if-eqz p2, :cond_6

    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_3

    :goto_2
    :try_start_5
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-static {p0}, Lr0/u1;->w(Ld1/c;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    return-object v1
.end method

.method public final J(Ljava/lang/Throwable;Lr0/x;)V
    .locals 3

    sget-object v0, Lr0/u1;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lr0/l;

    if-nez v0, :cond_1

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Error was captured in composition while live edit was enabled."

    const-string v2, "ComposeInternal"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lr0/u1;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lr0/u1;->i:Lt0/b;

    invoke-virtual {v1}, Lt0/b;->g()V

    new-instance v1, Lk/n0;

    invoke-direct {v1}, Lk/n0;-><init>()V

    iput-object v1, p0, Lr0/u1;->h:Lk/n0;

    iget-object v1, p0, Lr0/u1;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lr0/u1;->l:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    iget-object v1, p0, Lr0/u1;->n:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->a()V

    new-instance v1, Lq3/k;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p1}, Lq3/k;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lr0/u1;->s:Lq3/k;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lr0/u1;->L(Lr0/x;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lr0/u1;->y()Lu9/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    iget-object p2, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    const-string v0, "Error was captured in composition."

    const-string v1, "ComposeInternal"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lr0/u1;->s:Lq3/k;

    if-nez v0, :cond_2

    new-instance v0, Lq3/k;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lq3/k;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lr0/u1;->s:Lq3/k;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_2
    iget-object p0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    monitor-exit p2

    throw p0
.end method

.method public final K()Z
    .locals 6

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {v1}, Lk/n0;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lr0/u1;->A()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lr0/u1;->h:Lk/n0;

    new-instance v3, Lt0/d;

    invoke-direct {v3, v2}, Lt0/d;-><init>(Lk/n0;)V

    new-instance v2, Lk/n0;

    invoke-direct {v2}, Lk/n0;-><init>()V

    iput-object v2, p0, Lr0/u1;->h:Lk/n0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    :try_start_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/x;

    invoke-virtual {v4, v3}, Lr0/x;->y(Lt0/d;)V

    iget-object v4, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr0/q1;

    sget-object v5, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lr0/u1;->y()Lu9/f;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lr0/u1;->A()Z

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "called outside of runRecomposeAndApplyChanges"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    monitor-exit v0

    throw p0

    :goto_2
    iget-object v1, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object p0, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lk/n0;->j(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :cond_3
    monitor-exit v1

    throw v0

    :catchall_3
    move-exception p0

    monitor-exit v1

    throw p0

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final L(Lr0/x;)V
    .locals 2

    iget-object v0, p0, Lr0/u1;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr0/u1;->p:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lr0/u1;->g:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final a(Lr0/x;Li9/e;)V
    .locals 8

    iget-object v0, p1, Lr0/x;->G:Lr0/q;

    iget-boolean v0, v0, Lr0/q;->F:Z

    iget-object v1, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/q1;

    sget-object v3, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v4, 0x1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v4, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    :goto_0
    monitor-exit v1

    :try_start_1
    new-instance v1, Lr0/o1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lp/o0;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-direct {v2, v5, p1, v6}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    instance-of v7, v5, Ld1/c;

    if-eqz v7, :cond_1

    check-cast v5, Ld1/c;

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v5, v1, v2}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ld1/g;->j()Ld1/g;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {p1, p2}, Lr0/x;->j(Li9/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v1}, Lr0/u1;->w(Ld1/c;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    iget-object p2, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_6
    iget-object v1, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/q1;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, p0, Lr0/u1;->g:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    monitor-exit p2

    if-nez v0, :cond_3

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object p2

    invoke-virtual {p2}, Ld1/g;->m()V

    :cond_3
    :try_start_7
    invoke-virtual {p0, p1}, Lr0/u1;->F(Lr0/x;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {p1}, Lr0/x;->d()V

    invoke-virtual {p1}, Lr0/x;->f()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v0, :cond_4

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->m()V

    :cond_4
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1, v6}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    return-void

    :catchall_3
    move-exception p2

    invoke-virtual {p0, p2, p1}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    return-void

    :goto_3
    monitor-exit p2

    throw p0

    :catchall_4
    move-exception p2

    goto :goto_5

    :catchall_5
    move-exception p2

    goto :goto_4

    :catchall_6
    move-exception p2

    :try_start_9
    invoke-static {v2}, Ld1/g;->q(Ld1/g;)V

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :goto_4
    :try_start_a
    invoke-static {v1}, Lr0/u1;->w(Ld1/c;)V

    throw p2

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_5
    if-eqz v4, :cond_6

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    :cond_6
    invoke-virtual {p0, p2, p1}, Lr0/u1;->J(Ljava/lang/Throwable;Lr0/x;)V

    return-void

    :goto_6
    monitor-exit v1

    throw p0
.end method

.method public final b(Lr0/x;Lr0/c2;Li9/e;)Lk/n0;
    .locals 3

    iget-object v0, p0, Lr0/u1;->v:Lx2/k;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lr0/x;->A:Lr0/c2;

    iput-object p2, p1, Lr0/x;->A:Lr0/c2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1, p3}, Lr0/u1;->a(Lr0/x;Li9/e;)V

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/n0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lk/u0;->a:Lk/n0;

    const-string p2, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>"

    invoke-static {p0, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    iput-object v2, p1, Lr0/x;->A:Lr0/c2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0, v1}, Lx2/k;->d(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    iput-object v2, p1, Lr0/x;->A:Lr0/c2;

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v0, v1}, Lx2/k;->d(Ljava/lang/Object;)V

    throw p0
.end method

.method public final d()Z
    .locals 0

    sget-object p0, Lr0/u1;->A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()J
    .locals 2

    const/16 p0, 0x3e8

    int-to-long v0, p0

    return-wide v0
.end method

.method public final h()Lr0/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final j()Ly8/h;
    .locals 0

    iget-object p0, p0, Lr0/u1;->x:Ly8/h;

    return-object p0
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Lr0/x;)V
    .locals 2

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->i:Lt0/b;

    invoke-virtual {v1, p1}, Lt0/b;->h(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lr0/u1;->i:Lt0/b;

    invoke-virtual {v1, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr0/u1;->y()Lu9/f;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    if-eqz p0, :cond_1

    sget-object p1, Lt8/z;->a:Lt8/z;

    check-cast p0, Lu9/g;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final m(Lr0/t0;)Lr0/s0;
    .locals 1

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lr0/u1;->n:Lk/m0;

    invoke-virtual {p0, p1}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/s0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final n(Lr0/x;Lr0/c2;Lk/n0;)Lk/n0;
    .locals 3

    iget-object v0, p0, Lr0/u1;->v:Lx2/k;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lr0/u1;->K()Z

    new-instance v2, Lt0/d;

    invoke-direct {v2, p3}, Lt0/d;-><init>(Lk/n0;)V

    invoke-virtual {p1, v2}, Lr0/x;->y(Lt0/d;)V

    iget-object p3, p1, Lr0/x;->A:Lr0/c2;

    iput-object p2, p1, Lr0/x;->A:Lr0/c2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lr0/u1;->I(Lr0/x;Lk/n0;)Lr0/x;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lr0/u1;->F(Lr0/x;)V

    invoke-virtual {p2}, Lr0/x;->d()V

    invoke-virtual {p2}, Lr0/x;->f()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk/n0;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lk/u0;->a:Lk/n0;

    const-string p2, "null cannot be cast to non-null type androidx.collection.ScatterSet<E of androidx.collection.ScatterSetKt.emptyScatterSet>"

    invoke-static {p0, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iput-object p3, p1, Lr0/x;->A:Lr0/c2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, Lx2/k;->d(Ljava/lang/Object;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_3
    iput-object p3, p1, Lr0/x;->A:Lr0/c2;

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-virtual {v0, v1}, Lx2/k;->d(Ljava/lang/Object;)V

    throw p0
.end method

.method public final o(Ljava/util/Set;)V
    .locals 0

    return-void
.end method

.method public final q(Lr0/n1;)V
    .locals 1

    iget-object p0, p0, Lr0/u1;->v:Lx2/k;

    invoke-virtual {p0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk/n0;

    if-nez v0, :cond_0

    sget-object v0, Lk/u0;->a:Lk/n0;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    invoke-virtual {p0, v0}, Lx2/k;->d(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Lk/n0;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Lr0/x;)V
    .locals 2

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->q:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lr0/u1;->q:Ljava/util/LinkedHashSet;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final s(Lc2/l0;)Lr0/f;
    .locals 2

    iget-object p0, p0, Lr0/u1;->b:Lg5/m;

    iget-object v0, p0, Lg5/m;->n:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/a1;

    new-instance v1, Lr0/x0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lr0/x0;->a:Lc2/l0;

    iget-object p0, p0, Lg5/m;->o:Ljava/lang/Object;

    check-cast p0, Lr0/w0;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/a1;->g(Lz0/b;Li9/a;)Lr0/f;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lr0/x;)V
    .locals 2

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lr0/u1;->g:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lr0/u1;->i:Lt0/b;

    invoke-virtual {v1, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    iget-object p0, p0, Lr0/u1;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final x()V
    .locals 4

    iget-object v0, p0, Lr0/u1;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/q1;

    sget-object v2, Lr0/q1;->p:Lr0/q1;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lr0/u1;->u:Lx9/l0;

    sget-object v3, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    iget-object p0, p0, Lr0/u1;->w:Lu9/x0;

    invoke-virtual {p0, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final y()Lu9/f;
    .locals 8

    iget-object v0, p0, Lr0/u1;->u:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr0/q1;

    sget-object v2, Lr0/q1;->m:Lr0/q1;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    iget-object v2, p0, Lr0/u1;->k:Ljava/util/ArrayList;

    iget-object v3, p0, Lr0/u1;->j:Ljava/util/ArrayList;

    iget-object v4, p0, Lr0/u1;->i:Lt0/b;

    const/4 v5, 0x0

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Lr0/u1;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lr0/x;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr0/u1;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lu8/r;->l:Lu8/r;

    iput-object v0, p0, Lr0/u1;->g:Ljava/lang/Object;

    new-instance v0, Lk/n0;

    invoke-direct {v0}, Lk/n0;-><init>()V

    iput-object v0, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {v4}, Lt0/b;->g()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v5, p0, Lr0/u1;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lr0/u1;->r:Lu9/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    :cond_1
    iput-object v5, p0, Lr0/u1;->r:Lu9/g;

    iput-object v5, p0, Lr0/u1;->s:Lq3/k;

    return-object v5

    :cond_2
    iget-object v1, p0, Lr0/u1;->s:Lq3/k;

    if-eqz v1, :cond_3

    sget-object v1, Lr0/q1;->n:Lr0/q1;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lr0/u1;->d:Lu9/v0;

    if-nez v1, :cond_6

    new-instance v1, Lk/n0;

    invoke-direct {v1}, Lk/n0;-><init>()V

    iput-object v1, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {v4}, Lt0/b;->g()V

    invoke-virtual {p0}, Lr0/u1;->z()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lr0/u1;->B()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object v1, Lr0/q1;->n:Lr0/q1;

    goto :goto_3

    :cond_5
    :goto_1
    sget-object v1, Lr0/q1;->o:Lr0/q1;

    goto :goto_3

    :cond_6
    iget v1, v4, Lt0/b;->n:I

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lr0/u1;->h:Lk/n0;

    invoke-virtual {v1}, Lk/n0;->h()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lr0/u1;->z()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0}, Lr0/u1;->B()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lr0/u1;->l:Lk/m0;

    invoke-virtual {v1}, Lk/m0;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    :cond_8
    sget-object v1, Lr0/q1;->p:Lr0/q1;

    goto :goto_3

    :cond_9
    :goto_2
    sget-object v1, Lr0/q1;->q:Lr0/q1;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object v0, Lr0/q1;->q:Lr0/q1;

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lr0/u1;->r:Lu9/g;

    iput-object v5, p0, Lr0/u1;->r:Lu9/g;

    return-object v0

    :cond_a
    return-object v5
.end method

.method public final z()Z
    .locals 1

    iget-boolean v0, p0, Lr0/u1;->t:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lr0/u1;->a:Lf2/x0;

    iget-object p0, p0, Lf2/x0;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/a1;

    iget-object p0, p0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast p0, Lz0/a;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const v0, 0x7ffffff

    and-int/2addr p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
