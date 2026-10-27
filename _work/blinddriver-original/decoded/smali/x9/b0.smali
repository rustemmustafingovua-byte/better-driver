.class public Lx9/b0;
.super Ly9/b;
.source "SourceFile"

# interfaces
.implements Lx9/w;
.implements Lx9/g;
.implements Ly9/q;


# instance fields
.field public final p:I

.field public final q:I

.field public final r:Lw9/a;

.field public s:[Ljava/lang/Object;

.field public t:J

.field public u:J

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>(IILw9/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx9/b0;->p:I

    iput p2, p0, Lx9/b0;->q:I

    iput-object p3, p0, Lx9/b0;->r:Lw9/a;

    return-void
.end method

.method public static k(Lx9/b0;Lx9/h;Ly8/c;)V
    .locals 8

    instance-of v0, p2, Lx9/a0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/a0;

    iget v1, v0, Lx9/a0;->r:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/a0;->r:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/a0;

    invoke-direct {v0, p0, p2}, Lx9/a0;-><init>(Lx9/b0;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lx9/a0;->p:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/a0;->r:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    const/4 p0, 0x1

    if-eq v2, p0, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lx9/a0;->o:Lu9/v0;

    iget-object p1, v0, Lx9/a0;->n:Lx9/d0;

    iget-object v2, v0, Lx9/a0;->m:Lx9/h;

    iget-object v5, v0, Lx9/a0;->l:Lx9/b0;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p2, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object p0, v0, Lx9/a0;->o:Lu9/v0;

    iget-object p1, v0, Lx9/a0;->n:Lx9/d0;

    iget-object v2, v0, Lx9/a0;->m:Lx9/h;

    iget-object v5, v0, Lx9/a0;->l:Lx9/b0;

    :try_start_1
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lx9/a0;->n:Lx9/d0;

    iget-object p0, v0, Lx9/a0;->m:Lx9/h;

    iget-object v2, v0, Lx9/a0;->l:Lx9/b0;

    :try_start_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p2, p0

    move-object p0, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v5, v2

    goto :goto_6

    :cond_5
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ly9/b;->c()Ly9/d;

    move-result-object p2

    check-cast p2, Lx9/d0;

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_1
    :try_start_3
    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    sget-object v5, Lu9/q;->m:Lu9/q;

    invoke-interface {v2, v5}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v2

    check-cast v2, Lu9/v0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    move-object v5, p0

    move-object p0, v2

    move-object v2, p2

    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v5, p1}, Lx9/b0;->t(Lx9/d0;)Ljava/lang/Object;

    move-result-object p2

    sget-object v6, Lx9/c0;->a:Lmb/s2;

    if-ne p2, v6, :cond_7

    iput-object v5, v0, Lx9/a0;->l:Lx9/b0;

    iput-object v2, v0, Lx9/a0;->m:Lx9/h;

    iput-object p1, v0, Lx9/a0;->n:Lx9/d0;

    iput-object p0, v0, Lx9/a0;->o:Lu9/v0;

    iput v4, v0, Lx9/a0;->r:I

    invoke-virtual {v5, p1, v0}, Lx9/b0;->i(Lx9/d0;Lx9/a0;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_5

    :cond_7
    if-eqz p0, :cond_9

    invoke-interface {p0}, Lu9/v0;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {p0}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_9
    :goto_4
    iput-object v5, v0, Lx9/a0;->l:Lx9/b0;

    iput-object v2, v0, Lx9/a0;->m:Lx9/h;

    iput-object p1, v0, Lx9/a0;->n:Lx9/d0;

    iput-object p0, v0, Lx9/a0;->o:Lu9/v0;

    iput v3, v0, Lx9/a0;->r:I

    invoke-interface {v2, p2, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p2, v1, :cond_1

    :goto_5
    return-void

    :catchall_2
    move-exception p2

    move-object v5, p0

    move-object p0, p2

    :goto_6
    invoke-virtual {v5, p1}, Ly9/b;->g(Ly9/d;)V

    throw p0
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final b(Ly8/h;ILw9/a;)Lx9/g;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lw9/a;->l:Lw9/a;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Ly9/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ly9/f;-><init>(Lx9/g;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1}, Lx9/b0;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_0
    new-instance v5, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    const/4 v6, 0x1

    invoke-direct {v5, v6, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v5}, Lu9/g;->r()V

    sget-object p2, Ly9/c;->a:[Ly8/c;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lx9/b0;->r(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    :try_start_1
    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {v5, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lx9/b0;->n([Ly8/c;)[Ly8/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x0

    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_5

    :cond_1
    :try_start_2
    new-instance v0, Lx9/z;

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget v3, p0, Lx9/b0;->v:I

    iget v4, p0, Lx9/b0;->w:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/2addr v3, v4

    int-to-long v3, v3

    add-long v2, v1, v3

    move-object v1, p0

    move-object v4, p1

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lx9/z;-><init>(Lx9/b0;JLjava/lang/Object;Lu9/g;)V

    invoke-virtual {v1, v0}, Lx9/b0;->m(Ljava/lang/Object;)V

    iget p0, v1, Lx9/b0;->w:I

    add-int/2addr p0, v6

    iput p0, v1, Lx9/b0;->w:I

    iget p0, v1, Lx9/b0;->q:I

    if-nez p0, :cond_2

    invoke-virtual {v1, p2}, Lx9/b0;->n([Ly8/c;)[Ly8/c;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_5

    :cond_2
    :goto_1
    move-object p1, p2

    move-object p2, v0

    :goto_2
    monitor-exit v1

    if-eqz p2, :cond_3

    new-instance p0, Lu9/e;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lu9/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, p0}, Lu9/g;->u(Lu9/h1;)V

    :cond_3
    array-length p0, p1

    const/4 p2, 0x0

    :goto_3
    if-ge p2, p0, :cond_5

    aget-object v0, p1, p2

    if-eqz v0, :cond_4

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-interface {v0, v1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_6

    goto :goto_4

    :cond_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_4
    if-ne p0, p1, :cond_7

    return-object p0

    :cond_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :catchall_2
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    move-object p1, p0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_5
    monitor-exit v1

    throw p1
.end method

.method public final e()Ly9/d;
    .locals 2

    new-instance p0, Lx9/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lx9/d0;->a:J

    return-object p0
.end method

.method public final f()[Ly9/d;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [Lx9/d0;

    return-object p0
.end method

.method public final i(Lx9/d0;Lx9/a0;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lx9/b0;->s(Lx9/d0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    iput-object v0, p1, Lx9/d0;->b:Lu9/g;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final j()V
    .locals 8

    iget v0, p0, Lx9/b0;->q:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lx9/b0;->w:I

    if-gt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_0
    iget v2, p0, Lx9/b0;->w:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    iget v4, p0, Lx9/b0;->v:I

    iget v5, p0, Lx9/b0;->w:I

    add-int/2addr v4, v5

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    long-to-int v2, v2

    array-length v3, v0

    sub-int/2addr v3, v1

    and-int/2addr v2, v3

    aget-object v2, v0, v2

    sget-object v3, Lx9/c0;->a:Lmb/s2;

    if-ne v2, v3, :cond_1

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lx9/b0;->w:I

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    iget v4, p0, Lx9/b0;->v:I

    iget v5, p0, Lx9/b0;->w:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final l()V
    .locals 10

    iget-object v0, p0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    iget v0, p0, Lx9/b0;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lx9/b0;->v:I

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lx9/b0;->t:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    iput-wide v0, p0, Lx9/b0;->t:J

    :cond_0
    iget-wide v2, p0, Lx9/b0;->u:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_3

    iget v2, p0, Ly9/b;->m:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Ly9/b;->l:[Ly9/d;

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    if-eqz v5, :cond_1

    check-cast v5, Lx9/d0;

    iget-wide v6, v5, Lx9/d0;->a:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    iput-wide v0, v5, Lx9/d0;->a:J

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Lx9/b0;->u:J

    :cond_3
    return-void
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lx9/b0;->v:I

    iget v1, p0, Lx9/b0;->w:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lx9/b0;->s:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v1}, Lx9/b0;->p(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    array-length v3, v1

    mul-int/2addr v3, v2

    invoke-virtual {p0, v0, v3, v1}, Lx9/b0;->p(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3, p1}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final n([Ly8/c;)[Ly8/c;
    .locals 10

    array-length v0, p1

    iget v1, p0, Ly9/b;->m:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Ly9/b;->l:[Ly9/d;

    if-eqz v1, :cond_3

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    check-cast v4, Lx9/d0;

    iget-object v5, v4, Lx9/d0;->b:Lu9/g;

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lx9/b0;->s(Lx9/d0;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    array-length v6, p1

    if-lt v0, v6, :cond_1

    array-length v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v6, "copyOf(...)"

    invoke-static {p1, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v6, p1

    check-cast v6, [Ly8/c;

    add-int/lit8 v7, v0, 0x1

    aput-object v5, v6, v0

    const/4 v0, 0x0

    iput-object v0, v4, Lx9/d0;->b:Lu9/g;

    move v0, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, [Ly8/c;

    return-object p1
.end method

.method public final o()J
    .locals 4

    iget-wide v0, p0, Lx9/b0;->u:J

    iget-wide v2, p0, Lx9/b0;->t:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final p(II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6

    if-lez p2, :cond_2

    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Lx9/b0;->s:[Ljava/lang/Object;

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_1

    int-to-long v2, p0

    add-long/2addr v2, v0

    long-to-int v4, v2

    array-length v5, p3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    aget-object v4, p3, v4

    invoke-static {p2, v2, v3, v4}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Buffer size overflow"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q(Ljava/lang/Object;)Z
    .locals 4

    sget-object v0, Ly9/c;->a:[Ly8/c;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lx9/b0;->r(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lx9/b0;->n([Ly8/c;)[Ly8/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    move p1, v1

    :goto_0
    monitor-exit p0

    array-length p0, v0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-interface {v2, v3}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final r(Ljava/lang/Object;)Z
    .locals 12

    iget v1, p0, Ly9/b;->m:I

    iget v2, p0, Lx9/b0;->p:I

    const/4 v9, 0x1

    if-nez v1, :cond_2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lx9/b0;->m(Ljava/lang/Object;)V

    iget v1, p0, Lx9/b0;->v:I

    add-int/2addr v1, v9

    iput v1, p0, Lx9/b0;->v:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lx9/b0;->l()V

    :cond_1
    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v1

    iget v3, p0, Lx9/b0;->v:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lx9/b0;->u:J

    return v9

    :cond_2
    iget v1, p0, Lx9/b0;->v:I

    iget v3, p0, Lx9/b0;->q:I

    if-lt v1, v3, :cond_5

    iget-wide v4, p0, Lx9/b0;->u:J

    iget-wide v6, p0, Lx9/b0;->t:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    iget-object v1, p0, Lx9/b0;->r:Lw9/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v9, :cond_5

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lx9/b0;->m(Ljava/lang/Object;)V

    iget v1, p0, Lx9/b0;->v:I

    add-int/2addr v1, v9

    iput v1, p0, Lx9/b0;->v:I

    if-le v1, v3, :cond_6

    invoke-virtual {p0}, Lx9/b0;->l()V

    :cond_6
    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v3

    iget v1, p0, Lx9/b0;->v:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-wide v5, p0, Lx9/b0;->t:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    if-le v1, v2, :cond_7

    const-wide/16 v1, 0x1

    add-long/2addr v1, v5

    iget-wide v3, p0, Lx9/b0;->u:J

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v5

    iget v7, p0, Lx9/b0;->v:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v7

    iget v10, p0, Lx9/b0;->v:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    iget v10, p0, Lx9/b0;->w:I

    int-to-long v10, v10

    add-long/2addr v7, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lx9/b0;->u(JJJJ)V

    :cond_7
    :goto_0
    return v9
.end method

.method public final s(Lx9/d0;)J
    .locals 6

    iget-wide v0, p1, Lx9/d0;->a:J

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    iget p1, p0, Lx9/b0;->v:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget p1, p0, Lx9/b0;->q:I

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    iget p0, p0, Lx9/b0;->w:I

    if-nez p0, :cond_3

    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final t(Lx9/d0;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ly9/c;->a:[Ly8/c;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lx9/b0;->s(Lx9/d0;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    sget-object p1, Lx9/c0;->a:Lmb/s2;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget-wide v3, p1, Lx9/d0;->a:J

    iget-object v0, p0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    long-to-int v5, v1

    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aget-object v0, v0, v5

    instance-of v5, v0, Lx9/z;

    if-eqz v5, :cond_1

    check-cast v0, Lx9/z;

    iget-object v0, v0, Lx9/z;->n:Ljava/lang/Object;

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, p1, Lx9/d0;->a:J

    invoke-virtual {p0, v3, v4}, Lx9/b0;->v(J)[Ly8/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_0
    monitor-exit p0

    array-length p0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_3

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    sget-object v3, Lt8/z;->a:Lt8/z;

    invoke-interface {v2, v3}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final u(JJJJ)V
    .locals 6

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p0}, Lx9/b0;->o()J

    move-result-wide v2

    :goto_0
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-object v4, p0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lx9/b0;->t:J

    iput-wide p3, p0, Lx9/b0;->u:J

    sub-long p1, p5, v0

    long-to-int p1, p1

    iput p1, p0, Lx9/b0;->v:I

    sub-long/2addr p7, p5

    long-to-int p1, p7

    iput p1, p0, Lx9/b0;->w:I

    return-void
.end method

.method public final v(J)[Ly8/c;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lx9/c0;->a:Lmb/s2;

    sget-object v2, Ly9/c;->a:[Ly8/c;

    iget-wide v3, v0, Lx9/b0;->u:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lx9/b0;->o()J

    move-result-wide v3

    iget v5, v0, Lx9/b0;->v:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    iget v7, v0, Lx9/b0;->q:I

    const-wide/16 v8, 0x1

    if-nez v7, :cond_1

    iget v10, v0, Lx9/b0;->w:I

    if-lez v10, :cond_1

    add-long/2addr v5, v8

    :cond_1
    iget v10, v0, Ly9/b;->m:I

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    iget-object v10, v0, Ly9/b;->l:[Ly9/d;

    if-eqz v10, :cond_3

    array-length v12, v10

    move v13, v11

    :goto_0
    if-ge v13, v12, :cond_3

    aget-object v14, v10, v13

    if-eqz v14, :cond_2

    check-cast v14, Lx9/d0;

    iget-wide v14, v14, Lx9/d0;->a:J

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-ltz v16, :cond_2

    cmp-long v16, v14, v5

    if-gez v16, :cond_2

    move-wide v5, v14

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    iget-wide v12, v0, Lx9/b0;->u:J

    cmp-long v10, v5, v12

    if-gtz v10, :cond_4

    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {v0}, Lx9/b0;->o()J

    move-result-wide v12

    iget v10, v0, Lx9/b0;->v:I

    int-to-long v14, v10

    add-long/2addr v12, v14

    iget v10, v0, Ly9/b;->m:I

    if-lez v10, :cond_5

    sub-long v14, v12, v5

    long-to-int v10, v14

    iget v14, v0, Lx9/b0;->w:I

    sub-int v10, v7, v10

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_2

    :cond_5
    iget v10, v0, Lx9/b0;->w:I

    :goto_2
    iget v14, v0, Lx9/b0;->w:I

    int-to-long v14, v14

    add-long/2addr v14, v12

    if-lez v10, :cond_9

    new-array v2, v10, [Ly8/c;

    move-wide/from16 p1, v8

    iget-object v8, v0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    move-wide/from16 v16, v3

    move-object v4, v2

    move-wide v2, v12

    :goto_3
    cmp-long v9, v12, v14

    if-gez v9, :cond_8

    long-to-int v9, v12

    move-object/from16 v18, v4

    array-length v4, v8

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v9

    aget-object v4, v8, v4

    if-eq v4, v1, :cond_7

    const-string v9, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter"

    invoke-static {v4, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lx9/z;

    add-int/lit8 v9, v11, 0x1

    move-wide/from16 v19, v5

    iget-object v5, v4, Lx9/z;->o:Lu9/g;

    aput-object v5, v18, v11

    invoke-static {v8, v12, v13, v1}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    iget-object v4, v4, Lx9/z;->n:Ljava/lang/Object;

    invoke-static {v8, v2, v3, v4}, Lx9/c0;->c([Ljava/lang/Object;JLjava/lang/Object;)V

    add-long v2, v2, p1

    if-ge v9, v10, :cond_6

    move v11, v9

    goto :goto_5

    :cond_6
    :goto_4
    move-wide v12, v2

    move-object/from16 v9, v18

    goto :goto_6

    :cond_7
    move-wide/from16 v19, v5

    :goto_5
    add-long v12, v12, p1

    move-object/from16 v4, v18

    move-wide/from16 v5, v19

    goto :goto_3

    :cond_8
    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    goto :goto_4

    :cond_9
    move-wide/from16 v16, v3

    move-wide/from16 v19, v5

    move-wide/from16 p1, v8

    move-object v9, v2

    :goto_6
    sub-long v2, v12, v16

    long-to-int v2, v2

    iget v3, v0, Ly9/b;->m:I

    if-nez v3, :cond_a

    move-wide v3, v12

    goto :goto_7

    :cond_a
    move-wide/from16 v3, v19

    :goto_7
    iget-wide v5, v0, Lx9/b0;->t:J

    iget v8, v0, Lx9/b0;->p:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v10, v2

    sub-long v10, v12, v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    if-nez v7, :cond_b

    cmp-long v2, v5, v14

    if-gez v2, :cond_b

    iget-object v2, v0, Lx9/b0;->s:[Ljava/lang/Object;

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    long-to-int v7, v5

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    aget-object v2, v2, v7

    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    add-long v12, v12, p1

    add-long v5, v5, p1

    :cond_b
    move-wide v1, v5

    move-wide v5, v12

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lx9/b0;->u(JJJJ)V

    invoke-virtual {v0}, Lx9/b0;->j()V

    array-length v1, v9

    if-nez v1, :cond_c

    return-object v9

    :cond_c
    invoke-virtual {v0, v9}, Lx9/b0;->n([Ly8/c;)[Ly8/c;

    move-result-object v0

    return-object v0
.end method
