.class public final Lx9/l0;
.super Ly9/b;
.source "SourceFile"

# interfaces
.implements Lx9/x;
.implements Lx9/g;
.implements Ly9/q;


# static fields
.field public static final synthetic q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public p:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_state$volatile"

    const-class v2, Lx9/l0;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lx9/l0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/l0;->_state$volatile:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lx9/k0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/k0;

    iget v1, v0, Lx9/k0;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/k0;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/k0;

    invoke-direct {v0, p0, p2}, Lx9/k0;-><init>(Lx9/l0;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/k0;->q:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/k0;->s:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lx9/k0;->p:Ljava/lang/Object;

    iget-object p1, v0, Lx9/k0;->o:Lu9/v0;

    iget-object v2, v0, Lx9/k0;->n:Lx9/m0;

    iget-object v7, v0, Lx9/k0;->m:Lx9/h;

    iget-object v8, v0, Lx9/k0;->l:Lx9/l0;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lx9/k0;->p:Ljava/lang/Object;

    iget-object p1, v0, Lx9/k0;->o:Lu9/v0;

    iget-object v2, v0, Lx9/k0;->n:Lx9/m0;

    iget-object v7, v0, Lx9/k0;->m:Lx9/h;

    iget-object v8, v0, Lx9/k0;->l:Lx9/l0;

    :try_start_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :cond_3
    iget-object v2, v0, Lx9/k0;->n:Lx9/m0;

    iget-object p1, v0, Lx9/k0;->m:Lx9/h;

    iget-object p0, v0, Lx9/k0;->l:Lx9/l0;

    :try_start_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v8, p0

    move-object p0, p1

    goto/16 :goto_8

    :cond_4
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ly9/b;->c()Ly9/d;

    move-result-object p2

    check-cast p2, Lx9/m0;

    move-object v2, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p2

    sget-object v7, Lu9/q;->m:Lu9/q;

    invoke-interface {p2, v7}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p2

    check-cast p2, Lu9/v0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, p0

    move-object v7, p1

    move-object p1, p2

    move-object p0, v3

    :cond_5
    :goto_2
    :try_start_4
    sget-object p2, Lx9/l0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lu9/v0;->b()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_7
    :goto_3
    if-eqz p0, :cond_8

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_8
    sget-object p0, Ly9/c;->b:Lmb/s2;

    if-ne p2, p0, :cond_9

    move-object p0, v3

    goto :goto_4

    :cond_9
    move-object p0, p2

    :goto_4
    iput-object v8, v0, Lx9/k0;->l:Lx9/l0;

    iput-object v7, v0, Lx9/k0;->m:Lx9/h;

    iput-object v2, v0, Lx9/k0;->n:Lx9/m0;

    iput-object p1, v0, Lx9/k0;->o:Lu9/v0;

    iput-object p2, v0, Lx9/k0;->p:Ljava/lang/Object;

    iput v5, v0, Lx9/k0;->s:I

    invoke-interface {v7, p0, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    goto :goto_7

    :cond_a
    move-object p0, p2

    :cond_b
    :goto_5
    iget-object p2, v2, Lx9/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v9, Lx9/c0;->b:Lmb/s2;

    invoke-virtual {p2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v10, Lx9/c0;->c:Lmb/s2;

    if-ne p2, v10, :cond_c

    goto :goto_2

    :cond_c
    iput-object v8, v0, Lx9/k0;->l:Lx9/l0;

    iput-object v7, v0, Lx9/k0;->m:Lx9/h;

    iput-object v2, v0, Lx9/k0;->n:Lx9/m0;

    iput-object p1, v0, Lx9/k0;->o:Lu9/v0;

    iput-object p0, v0, Lx9/k0;->p:Ljava/lang/Object;

    iput v4, v0, Lx9/k0;->s:I

    sget-object p2, Lt8/z;->a:Lt8/z;

    new-instance v10, Lu9/g;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v11

    invoke-direct {v10, v6, v11}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v10}, Lu9/g;->r()V

    iget-object v11, v2, Lx9/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_d
    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eq v12, v9, :cond_d

    invoke-virtual {v10, p2}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v10}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lz8/a;->l:Lz8/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v9, v10, :cond_f

    move-object p2, v9

    :cond_f
    if-ne p2, v1, :cond_5

    :goto_7
    return-object v1

    :goto_8
    invoke-virtual {v8, v2}, Ly9/b;->g(Ly9/d;)V

    throw p0
.end method

.method public final b(Ly8/h;ILw9/a;)Lx9/g;
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    :goto_0
    sget-object v0, Lw9/a;->m:Lw9/a;

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    :cond_2
    sget-object v0, Lw9/a;->l:Lw9/a;

    if-ne p3, v0, :cond_3

    :goto_1
    return-object p0

    :cond_3
    new-instance v0, Ly9/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lx9/l0;->j(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final e()Ly9/d;
    .locals 0

    new-instance p0, Lx9/m0;

    invoke-direct {p0}, Lx9/m0;-><init>()V

    return-object p0
.end method

.method public final f()[Ly9/d;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lx9/m0;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2

    sget-object v0, Ly9/c;->b:Lmb/s2;

    sget-object v1, Lx9/l0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Ly9/c;->b:Lmb/s2;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Ly9/c;->b:Lmb/s2;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lx9/l0;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lx9/l0;->p:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_b

    add-int/2addr p1, v1

    iput p1, p0, Lx9/l0;->p:I

    iget-object p2, p0, Ly9/b;->l:[Ly9/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    :goto_0
    check-cast p2, [Lx9/m0;

    if-eqz p2, :cond_9

    array-length v0, p2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_9

    aget-object v4, p2, v3

    if-eqz v4, :cond_8

    iget-object v4, v4, Lx9/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lx9/c0;->c:Lmb/s2;

    if-ne v5, v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v7, Lx9/c0;->b:Lmb/s2;

    if-ne v5, v7, :cond_6

    :cond_4
    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v5, :cond_4

    goto :goto_2

    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    check-cast v5, Lu9/g;

    sget-object v4, Lt8/z;->a:Lt8/z;

    invoke-virtual {v5, v4}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_6

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lx9/l0;->p:I

    if-ne p2, p1, :cond_a

    add-int/2addr p1, v1

    iput p1, p0, Lx9/l0;->p:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_a
    :try_start_4
    iget-object p1, p0, Ly9/b;->l:[Ly9/d;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    move v8, p2

    move-object p2, p1

    move p1, v8

    goto :goto_0

    :goto_4
    monitor-exit p0

    throw p1

    :cond_b
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lx9/l0;->p:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_5
    monitor-exit p0

    throw p1
.end method
