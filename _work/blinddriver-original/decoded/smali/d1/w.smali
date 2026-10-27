.class public abstract Ld1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld1/w;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld1/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final a(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is out of bound of [0, "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ld1/e0;ILv0/b;Z)Z
    .locals 2

    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ld1/e0;->d:I

    if-ne v1, p1, :cond_1

    iput-object p2, p0, Ld1/e0;->c:Lv0/b;

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    iget p2, p0, Ld1/e0;->e:I

    add-int/2addr p2, p1

    iput p2, p0, Ld1/e0;->e:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    add-int/2addr v1, p1

    iput v1, p0, Ld1/e0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    monitor-exit v0

    return p1

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public static final c([JJ)I
    .locals 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    aget-wide v3, p0, v2

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public static e()Ld1/g;
    .locals 1

    sget-object v0, Ld1/p;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/g;

    return-object v0
.end method

.method public static final f(Ld1/v;)Ld1/e0;
    .locals 2

    iget-object v0, p0, Ld1/v;->l:Ld1/e0;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.<get-readable>>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Ld1/e0;

    return-object p0
.end method

.method public static final g(Ld1/v;)I
    .locals 1

    iget-object p0, p0, Ld1/v;->l:Ld1/e0;

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Ld1/e0;

    iget p0, p0, Ld1/e0;->e:I

    return p0
.end method

.method public static h(Ld1/g;)Ld1/g;
    .locals 6

    instance-of v0, p0, Ld1/m0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ld1/m0;

    iget-wide v2, v0, Ld1/m0;->t:J

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-object v1, v0, Ld1/m0;->r:Li9/c;

    return-object p0

    :cond_0
    instance-of v0, p0, Ld1/n0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ld1/n0;

    iget-wide v2, v0, Ld1/n0;->i:J

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-object v1, v0, Ld1/n0;->h:Li9/c;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Ld1/p;->g(Ld1/g;Li9/c;Z)Ld1/g;

    move-result-object p0

    invoke-virtual {p0}, Ld1/g;->j()Ld1/g;

    return-object p0
.end method

.method public static final i(Ld1/v;Li9/c;)Z
    .locals 7

    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    iget v2, v1, Ld1/e0;->d:I

    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lv0/b;->e()Lv0/e;

    move-result-object v0

    invoke-interface {p1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lv0/e;->c()Lv0/b;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v1, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v6, 0x1

    invoke-static {v1, v2, v0, v6}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_1
    :goto_0
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j(Lb0/g1;Li9/a;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ld1/p;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/g;

    instance-of v1, v0, Ld1/m0;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ld1/m0;

    iget-wide v2, v1, Ld1/m0;->t:J

    invoke-static {}, Lz0/i;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v1, Ld1/m0;->r:Li9/c;

    iget-object v3, v1, Ld1/m0;->s:Li9/c;

    :try_start_0
    move-object v4, v0

    check-cast v4, Ld1/m0;

    const/4 v5, 0x1

    invoke-static {p0, v2, v5}, Ld1/p;->k(Li9/c;Li9/c;Z)Li9/c;

    move-result-object p0

    iput-object p0, v4, Ld1/m0;->r:Li9/c;

    check-cast v0, Ld1/m0;

    iput-object v3, v0, Ld1/m0;->s:Li9/c;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, v1, Ld1/m0;->r:Li9/c;

    iput-object v3, v1, Ld1/m0;->s:Li9/c;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    iput-object v2, v1, Ld1/m0;->r:Li9/c;

    iput-object v3, v1, Ld1/m0;->s:Li9/c;

    throw p0

    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Ld1/c;

    if-eqz v1, :cond_2

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Ld1/g;->u(Li9/c;)Ld1/g;

    move-result-object p0

    goto :goto_2

    :goto_0
    new-instance v0, Ld1/m0;

    instance-of v2, v1, Ld1/c;

    if-eqz v2, :cond_3

    check-cast v1, Ld1/c;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Ld1/m0;-><init>(Ld1/c;Li9/c;Li9/c;ZZ)V

    move-object p0, v0

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ld1/g;->j()Ld1/g;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v1}, Ld1/g;->q(Ld1/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Ld1/g;->c()V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-static {v1}, Ld1/g;->q(Ld1/g;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    invoke-virtual {p0}, Ld1/g;->c()V

    throw p1
.end method

.method public static k(Ld1/g;Ld1/g;Li9/c;)V
    .locals 1

    if-ne p0, p1, :cond_2

    instance-of p1, p0, Ld1/m0;

    if-eqz p1, :cond_0

    check-cast p0, Ld1/m0;

    iput-object p2, p0, Ld1/m0;->r:Li9/c;

    return-void

    :cond_0
    instance-of p1, p0, Ld1/n0;

    if-eqz p1, :cond_1

    check-cast p0, Ld1/n0;

    iput-object p2, p0, Ld1/n0;->h:Li9/c;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Non-transparent snapshot was reused: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ld1/g;->q(Ld1/g;)V

    invoke-virtual {p1}, Ld1/g;->c()V

    return-void
.end method

.method public static final l()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public abstract d()V
.end method
