.class public final Lw9/o;
.super Lw9/e;
.source "SourceFile"


# instance fields
.field public final v:Lw9/a;


# direct methods
.method public constructor <init>(ILw9/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lw9/e;-><init>(I)V

    iput-object p2, p0, Lw9/o;->v:Lw9/a;

    sget-object p0, Lw9/a;->l:Lw9/a;

    if-eq p2, p0, :cond_1

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Buffered channel capacity must be at least 1, but "

    const-string p2, " was specified"

    invoke-static {p1, p0, p2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "This implementation does not support suspension for senders, use "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class p1, Lw9/e;

    invoke-static {p1}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object p1

    invoke-virtual {p1}, Lj9/f;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final K(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 15

    iget-object v1, p0, Lw9/o;->v:Lw9/a;

    sget-object v2, Lw9/a;->n:Lw9/a;

    sget-object v8, Lt8/z;->a:Lt8/z;

    if-ne v1, v2, :cond_2

    invoke-super/range {p0 .. p1}, Lw9/e;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lw9/k;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lw9/j;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v8

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    sget-object v6, Lw9/g;->d:Lmb/s2;

    sget-object v1, Lw9/e;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw9/m;

    :cond_3
    :goto_1
    sget-object v2, Lw9/e;->m:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide v4, 0xfffffffffffffffL

    and-long/2addr v4, v2

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v2, v3}, Lw9/e;->v(ZJ)Z

    move-result v7

    sget v9, Lw9/g;->b:I

    int-to-long v10, v9

    div-long v2, v4, v10

    rem-long v12, v4, v10

    long-to-int v12, v12

    iget-wide v13, v1, Lz9/r;->c:J

    cmp-long v13, v13, v2

    if-eqz v13, :cond_5

    invoke-static {p0, v2, v3, v1}, Lw9/e;->b(Lw9/e;JLw9/m;)Lw9/m;

    move-result-object v2

    if-nez v2, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lw9/e;->s()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lw9/j;

    invoke-direct {v1, v0}, Lw9/j;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    move-object v1, v2

    :cond_5
    move-object v0, p0

    move-object/from16 v3, p1

    move v2, v12

    invoke-static/range {v0 .. v7}, Lw9/e;->e(Lw9/e;Lw9/m;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v12

    if-eqz v12, :cond_f

    const/4 v3, 0x1

    if-eq v12, v3, :cond_e

    const/4 v3, 0x2

    if-eq v12, v3, :cond_a

    const/4 v2, 0x3

    if-eq v12, v2, :cond_9

    const/4 v2, 0x4

    if-eq v12, v2, :cond_7

    const/4 v2, 0x5

    if-eq v12, v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lz9/c;->a()V

    goto :goto_1

    :cond_7
    sget-object v2, Lw9/e;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_8

    invoke-virtual {v1}, Lz9/c;->a()V

    :cond_8
    invoke-virtual {p0}, Lw9/e;->s()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lw9/j;

    invoke-direct {v1, v0}, Lw9/j;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-eqz v7, :cond_b

    invoke-virtual {v1}, Lz9/r;->h()V

    invoke-virtual {p0}, Lw9/e;->s()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lw9/j;

    invoke-direct {v1, v0}, Lw9/j;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_b
    instance-of v3, v6, Lu9/v1;

    if-eqz v3, :cond_c

    check-cast v6, Lu9/v1;

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_d

    add-int v12, v2, v9

    invoke-interface {v6, v1, v12}, Lu9/v1;->a(Lz9/r;I)V

    :cond_d
    iget-wide v3, v1, Lz9/r;->c:J

    mul-long/2addr v3, v10

    int-to-long v1, v2

    add-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lw9/e;->n(J)V

    :cond_e
    return-object v8

    :cond_f
    invoke-virtual {v1}, Lz9/c;->a()V

    return-object v8
.end method

.method public final f(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lw9/o;->K(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lw9/j;

    if-nez p1, :cond_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lw9/e;->s()Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public final l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw9/o;->K(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y()Z
    .locals 1

    iget-object p0, p0, Lw9/o;->v:Lw9/a;

    sget-object v0, Lw9/a;->m:Lw9/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
