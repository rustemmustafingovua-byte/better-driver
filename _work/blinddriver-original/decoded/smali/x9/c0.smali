.class public abstract Lx9/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/s2;

.field public static final b:Lmb/s2;

.field public static final c:Lmb/s2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lmb/s2;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx9/c0;->a:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx9/c0;->b:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx9/c0;->c:Lmb/s2;

    return-void
.end method

.method public static a(IILw9/a;)Lx9/b0;
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move p0, v1

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    sget-object p2, Lw9/a;->l:Lw9/a;

    :cond_2
    if-ltz p0, :cond_6

    if-gtz v0, :cond_4

    if-gtz p0, :cond_4

    sget-object p1, Lw9/a;->l:Lw9/a;

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "replay or extraBufferCapacity must be positive with non-default onBufferOverflow strategy "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    add-int/2addr p0, v0

    if-gez p0, :cond_5

    const p0, 0x7fffffff

    :cond_5
    new-instance p1, Lx9/b0;

    invoke-direct {p1, v0, p0, p2}, Lx9/b0;-><init>(IILw9/a;)V

    return-object p1

    :cond_6
    const-string p1, "extraBufferCapacity cannot be negative, but was "

    invoke-static {p0, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final b(Ljava/lang/Object;)Lx9/l0;
    .locals 1

    new-instance v0, Lx9/l0;

    if-nez p0, :cond_0

    sget-object p0, Ly9/c;->b:Lmb/s2;

    :cond_0
    invoke-direct {v0, p0}, Lx9/l0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final c([Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0

    long-to-int p1, p1

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    aput-object p3, p0, p1

    return-void
.end method

.method public static d(Lx9/g;I)Lx9/g;
    .locals 3

    sget-object v0, Lw9/a;->l:Lw9/a;

    const/4 v1, -0x1

    if-gez p1, :cond_1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Buffer size should be non-negative, BUFFERED, or CONFLATED, but was "

    invoke-static {p1, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    sget-object v0, Lw9/a;->m:Lw9/a;

    const/4 p1, 0x0

    :cond_2
    instance-of v1, p0, Ly9/q;

    sget-object v2, Ly8/i;->l:Ly8/i;

    if-eqz v1, :cond_3

    check-cast p0, Ly9/q;

    invoke-interface {p0, v2, p1, v0}, Ly9/q;->b(Ly8/h;ILw9/a;)Lx9/g;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v1, Ly9/g;

    invoke-direct {v1, p0, v2, p1, v0}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    return-object v1
.end method

.method public static final e(Lc5/n;Lx9/h;La9/c;)Ljava/io/Serializable;
    .locals 4

    instance-of v0, p2, Lx9/j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/j;

    iget v1, v0, Lx9/j;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/j;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/j;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/j;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/j;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lx9/j;->l:Lj9/y;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lj9/y;

    invoke-direct {p2}, Lj9/y;-><init>()V

    :try_start_1
    new-instance v2, Lx9/e;

    invoke-direct {v2, p1, p2}, Lx9/e;-><init>(Lx9/h;Lj9/y;)V

    iput-object p2, v0, Lx9/j;->l:Lj9/y;

    iput v3, v0, Lx9/j;->n:I

    invoke-virtual {p0, v2, v0}, Lc5/n;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :catchall_1
    move-exception p1

    move-object p0, p2

    :goto_2
    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :cond_4
    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p2

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p2, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p2

    check-cast p2, Lu9/v0;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lu9/v0;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {p2}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    throw p1

    :cond_7
    :goto_3
    if-nez p0, :cond_8

    return-object p1

    :cond_8
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    invoke-static {p1, p0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;
    .locals 7

    sget v0, Lx9/p;->a:I

    new-instance v2, Lx9/o;

    const/4 v0, 0x0

    invoke-direct {v2, p1, v0}, Lx9/o;-><init>(Li9/e;Ly8/c;)V

    new-instance v1, Ly9/j;

    const/4 v5, -0x2

    sget-object v6, Lw9/a;->l:Lw9/a;

    sget-object v4, Ly8/i;->l:Ly8/i;

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Ly9/j;-><init>(Li9/f;Lx9/g;Ly8/h;ILw9/a;)V

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lx9/c0;->d(Lx9/g;I)Lx9/g;

    move-result-object p0

    sget-object p1, Ly9/s;->l:Ly9/s;

    invoke-interface {p0, p1, p2}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    sget-object p2, Lt8/z;->a:Lt8/z;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static final g(Lx9/l0;Lod/s2;Lx9/l0;Lsc/x;)Lx9/m;
    .locals 3

    const/4 v0, 0x3

    new-array v1, v0, [Lx9/g;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    new-instance p0, Lx9/m;

    invoke-direct {p0, v1, p3, v0}, Lx9/m;-><init>(Ljava/lang/Object;La9/i;I)V

    return-object p0
.end method

.method public static final h(Lx9/g;)Lx9/g;
    .locals 1

    instance-of v0, p0, Lx9/j0;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Lx9/f;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lx9/f;

    invoke-direct {v0, p0}, Lx9/f;-><init>(Lx9/g;)V

    return-object v0
.end method

.method public static final i(Lx9/h;Lw9/i;ZLa9/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lx9/i;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lx9/i;

    iget v1, v0, Lx9/i;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/i;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/i;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lx9/i;->p:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/i;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    iget-boolean p2, v0, Lx9/i;->o:Z

    iget-object p0, v0, Lx9/i;->n:Lw9/b;

    iget-object p1, v0, Lx9/i;->m:Lw9/t;

    iget-object v2, v0, Lx9/i;->l:Lx9/h;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lx9/i;->o:Z

    iget-object p0, v0, Lx9/i;->n:Lw9/b;

    iget-object p1, v0, Lx9/i;->m:Lw9/t;

    iget-object v2, v0, Lx9/i;->l:Lx9/h;

    :try_start_1
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    :try_start_2
    invoke-interface {p1}, Lw9/t;->iterator()Lw9/b;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lx9/i;->l:Lx9/h;

    iput-object p1, v0, Lx9/i;->m:Lw9/t;

    iput-object p3, v0, Lx9/i;->n:Lw9/b;

    iput-boolean p2, v0, Lx9/i;->o:Z

    iput v5, v0, Lx9/i;->q:I

    invoke-virtual {p3, v0}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v6

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lw9/b;->c()Ljava/lang/Object;

    move-result-object p3

    iput-object v2, v0, Lx9/i;->l:Lx9/h;

    iput-object p1, v0, Lx9/i;->m:Lw9/t;

    iput-object p0, v0, Lx9/i;->n:Lw9/b;

    iput-boolean p2, v0, Lx9/i;->o:Z

    iput v4, v0, Lx9/i;->q:I

    invoke-interface {v2, p3, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    :goto_3
    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p1, v3}, Lw9/t;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_a

    instance-of p2, p0, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_8

    move-object v3, p0

    check-cast v3, Ljava/util/concurrent/CancellationException;

    :cond_8
    if-nez v3, :cond_9

    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string p2, "Channel was consumed, consumer had failed"

    invoke-direct {v3, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_9
    invoke-interface {p1, v3}, Lw9/t;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_a
    throw p3
.end method

.method public static final j(Lx9/g;Li9/e;La9/c;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ly9/c;->b:Lmb/s2;

    instance-of v1, p2, Lx9/r;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lx9/r;

    iget v2, v1, Lx9/r;->o:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lx9/r;->o:I

    goto :goto_0

    :cond_0
    new-instance v1, Lx9/r;

    invoke-direct {v1, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v1, Lx9/r;->n:Ljava/lang/Object;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v1, Lx9/r;->o:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lx9/r;->m:Lb0/s1;

    iget-object p1, v1, Lx9/r;->l:Lj9/y;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ly9/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lj9/y;

    invoke-direct {p2}, Lj9/y;-><init>()V

    iput-object v0, p2, Lj9/y;->m:Ljava/lang/Object;

    new-instance v3, Lb0/s1;

    const/4 v5, 0x6

    invoke-direct {v3, v5, p1, p2}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_1
    iput-object p2, v1, Lx9/r;->l:Lj9/y;

    iput-object v3, v1, Lx9/r;->m:Lb0/s1;

    iput v4, v1, Lx9/r;->o:I

    invoke-interface {p0, v3, v1}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ly9/a; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object p1, p2

    goto :goto_2

    :catch_1
    move-exception p0

    move-object p1, p2

    move-object p2, p0

    move-object p0, v3

    :goto_1
    iget-object v2, p2, Ly9/a;->l:Ljava/lang/Object;

    if-ne v2, p0, :cond_5

    invoke-interface {v1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    invoke-static {p0}, Lu9/v;->i(Ly8/h;)V

    :goto_2
    iget-object p0, p1, Lj9/y;->m:Ljava/lang/Object;

    if-eq p0, v0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Expected at least one element matching the predicate"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    throw p2
.end method

.method public static final k(Lc5/n;Lz9/d;Lx9/i0;Ljava/lang/Float;)Lx9/y;
    .locals 10

    sget-object v0, Lw9/i;->k:Lw9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lw9/h;->a:Lw9/h;

    const/16 v0, 0xe

    new-instance v1, Lg5/l;

    sget-object v2, Lw9/a;->l:Lw9/a;

    sget-object v2, Ly8/i;->l:Ly8/i;

    invoke-direct {v1, v0, p0, v2}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v6

    iget-object p0, v1, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ly8/h;

    iget-object v0, v1, Lg5/l;->m:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lx9/g;

    sget-object v0, Lx9/f0;->a:Lx9/g0;

    invoke-virtual {p2, v0}, Lx9/i0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu9/u;->l:Lu9/u;

    goto :goto_0

    :cond_0
    sget-object v0, Lu9/u;->o:Lu9/u;

    :goto_0
    new-instance v3, Landroidx/lifecycle/j0;

    const/4 v8, 0x0

    const/16 v9, 0x12

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {p1}, Lz9/d;->C()Ly8/h;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object p0

    sget-object p1, Lu9/e0;->a:Lba/e;

    if-eq p0, p1, :cond_1

    sget-object p3, Ly8/d;->l:Ly8/d;

    invoke-interface {p0, p3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p3

    if-nez p3, :cond_1

    invoke-interface {p0, p1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    :cond_1
    sget-object p1, Lu9/u;->m:Lu9/u;

    if-ne v0, p1, :cond_2

    new-instance p1, Lu9/d1;

    invoke-direct {p1, p0, v3}, Lu9/d1;-><init>(Ly8/h;Li9/e;)V

    goto :goto_1

    :cond_2
    new-instance p1, Lu9/j1;

    invoke-direct {p1, p0, p2}, Lu9/a;-><init>(Ly8/h;Z)V

    :goto_1
    invoke-virtual {p1, v0, p1, v3}, Lu9/a;->e0(Lu9/u;Lu9/a;Li9/e;)V

    new-instance p0, Lx9/y;

    invoke-direct {p0, v6}, Lx9/y;-><init>(Lx9/l0;)V

    return-object p0
.end method
