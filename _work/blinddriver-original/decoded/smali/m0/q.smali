.class public final Lm0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ll0/h;

.field public final c:Ll0/h;

.field public final d:Lm0/q;

.field public e:Lp2/j0;

.field public f:I


# direct methods
.method public constructor <init>(JLl0/h;Ll0/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm0/q;->a:J

    iput-object p3, p0, Lm0/q;->b:Ll0/h;

    iput-object p4, p0, Lm0/q;->c:Ll0/h;

    iput-object p0, p0, Lm0/q;->d:Lm0/q;

    const/4 p1, -0x1

    iput p1, p0, Lm0/q;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lm0/a0;Z)J
    .locals 6

    iget-object v0, p1, Lm0/a0;->b:Lm0/z;

    iget-object v1, p1, Lm0/a0;->a:Lm0/z;

    iget-wide v2, p0, Lm0/q;->a:J

    if-eqz p2, :cond_0

    iget-wide v4, v1, Lm0/z;->c:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    :cond_0
    if-nez p2, :cond_1

    iget-wide v4, v0, Lm0/z;->c:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm0/q;->c()Lc2/u;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lm0/q;->c:Ll0/h;

    invoke-virtual {v2}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/j0;

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    return-wide p0

    :cond_4
    if-eqz p2, :cond_5

    iget v0, v1, Lm0/z;->b:I

    goto :goto_1

    :cond_5
    iget v0, v0, Lm0/z;->b:I

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lm0/q;->b(Lp2/j0;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lg6/c1;->f(III)I

    move-result p0

    iget-boolean p1, p1, Lm0/a0;->c:Z

    invoke-static {v2, p0, p2, p1}, Lm0/d1;->t(Lp2/j0;IZZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Lp2/j0;)I
    .locals 9

    iget-object v0, p0, Lm0/q;->d:Lm0/q;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm0/q;->e:Lp2/j0;

    if-eq v1, p1, :cond_7

    iget-object v1, p1, Lp2/j0;->b:Lp2/n;

    iget-boolean v2, v1, Lp2/n;->c:Z

    const/4 v3, 0x0

    const-wide v4, 0xffffffffL

    const/4 v6, 0x1

    if-nez v2, :cond_1

    iget-wide v7, p1, Lp2/j0;->c:J

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-float v7, v7

    iget v8, v1, Lp2/n;->e:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v6

    :goto_1
    if-eqz v7, :cond_6

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    iget-wide v7, p1, Lp2/j0;->c:J

    and-long/2addr v7, v4

    long-to-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lp2/n;->e(F)I

    move-result v1

    iget-object v2, p1, Lp2/j0;->b:Lp2/n;

    iget v2, v2, Lp2/n;->f:I

    sub-int/2addr v2, v6

    if-le v1, v2, :cond_3

    move v1, v2

    :cond_3
    :goto_2
    if-ltz v1, :cond_4

    iget-object v2, p1, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v2, v1}, Lp2/n;->f(I)F

    move-result v2

    iget-wide v7, p1, Lp2/j0;->c:J

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-float v7, v7

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_4
    if-gez v1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v1

    goto :goto_4

    :cond_6
    :goto_3
    iget v1, v1, Lp2/n;->f:I

    add-int/lit8 v3, v1, -0x1

    :goto_4
    iget-object v1, p1, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v1, v3, v6}, Lp2/n;->c(IZ)I

    move-result v1

    iput v1, p0, Lm0/q;->f:I

    iput-object p1, p0, Lm0/q;->e:Lp2/j0;

    :cond_7
    iget p0, p0, Lm0/q;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public final c()Lc2/u;
    .locals 1

    iget-object p0, p0, Lm0/q;->b:Ll0/h;

    invoke-virtual {p0}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/u;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lp2/g;
    .locals 1

    iget-object p0, p0, Lm0/q;->c:Ll0/h;

    invoke-virtual {p0}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/j0;

    if-nez p0, :cond_0

    new-instance p0, Lp2/g;

    const-string v0, ""

    invoke-direct {p0, v0}, Lp2/g;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lp2/j0;->a:Lp2/i0;

    iget-object p0, p0, Lp2/i0;->a:Lp2/g;

    return-object p0
.end method
