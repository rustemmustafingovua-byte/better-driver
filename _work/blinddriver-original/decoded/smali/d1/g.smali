.class public abstract Ld1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld1/m;

.field public b:J

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(JLd1/m;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ld1/g;->a:Ld1/m;

    iput-wide p1, p0, Ld1/g;->b:J

    sget-object p3, Ld1/p;->a:Lad/b2;

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ld1/g;->d()Ld1/m;

    move-result-object p3

    iget-wide v2, p3, Ld1/m;->n:J

    iget-object v4, p3, Ld1/m;->o:[J

    if-eqz v4, :cond_0

    const/4 p1, 0x0

    aget-wide p1, v4, p1

    goto :goto_1

    :cond_0
    iget-wide v4, p3, Ld1/m;->m:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    add-long/2addr p1, v2

    goto :goto_1

    :cond_1
    iget-wide v4, p3, Ld1/m;->l:J

    cmp-long p3, v4, v0

    if-eqz p3, :cond_2

    const/16 p1, 0x40

    int-to-long p1, p1

    add-long/2addr v2, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-object v0, Ld1/p;->f:Ld1/k;

    invoke-virtual {v0, p1, p2}, Ld1/k;->a(J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Ld1/g;->d:I

    return-void
.end method

.method public static q(Ld1/g;)V
    .locals 1

    sget-object v0, Ld1/p;->b:Lx2/k;

    invoke-virtual {v0, p0}, Lx2/k;->d(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ld1/g;->b()V

    invoke-virtual {p0}, Ld1/g;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public b()V
    .locals 3

    sget-object v0, Ld1/p;->d:Ld1/m;

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld1/m;->b(J)Ld1/m;

    move-result-object p0

    sput-object p0, Ld1/p;->d:Ld1/m;

    return-void
.end method

.method public abstract c()V
.end method

.method public d()Ld1/m;
    .locals 0

    iget-object p0, p0, Ld1/g;->a:Ld1/m;

    return-object p0
.end method

.method public abstract e()Li9/c;
.end method

.method public abstract f()Z
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Ld1/g;->b:J

    return-wide v0
.end method

.method public h()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract i()Li9/c;
.end method

.method public final j()Ld1/g;
    .locals 2

    sget-object v0, Ld1/p;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld1/g;

    invoke-virtual {v0, p0}, Lx2/k;->d(Ljava/lang/Object;)V

    return-object v1
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n(Ld1/h0;)V
.end method

.method public final o()V
    .locals 1

    iget v0, p0, Ld1/g;->d:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Ld1/p;->u(I)V

    const/4 v0, -0x1

    iput v0, p0, Ld1/g;->d:I

    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, Ld1/g;->o()V

    return-void
.end method

.method public r(Ld1/m;)V
    .locals 0

    iput-object p1, p0, Ld1/g;->a:Ld1/m;

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Ld1/g;->b:J

    return-void
.end method

.method public t(I)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Updating write count is not supported for this snapshot"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract u(Li9/c;)Ld1/g;
.end method
