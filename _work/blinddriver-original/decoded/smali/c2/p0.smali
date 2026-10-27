.class public final Lc2/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/u;


# instance fields
.field public final l:Le2/q0;


# direct methods
.method public constructor <init>(Le2/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/p0;->l:Le2/q0;

    return-void
.end method


# virtual methods
.method public final A(J)J
    .locals 4

    iget-object p1, p0, Lc2/p0;->l:Le2/q0;

    iget-object p1, p1, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Lc2/p0;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ll1/b;->e(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Le2/h1;->A(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final E(J)J
    .locals 2

    iget-object v0, p0, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {v0, p1, p2}, Le2/h1;->E(J)J

    move-result-wide p1

    invoke-virtual {p0}, Lc2/p0;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ll1/b;->e(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final I()Lc2/u;
    .locals 1

    invoke-virtual {p0}, Lc2/p0;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->d:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/h1;->S0()Le2/q0;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Le2/q0;->C:Lc2/p0;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final K(Lc2/u;J)J
    .locals 9

    instance-of v0, p1, Lc2/p0;

    iget-object v1, p0, Lc2/p0;->l:Le2/q0;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v0, :cond_1

    check-cast p1, Lc2/p0;

    iget-object p0, p1, Lc2/p0;->l:Le2/q0;

    iget-object p1, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p1}, Le2/h1;->d1()V

    iget-object v0, v1, Le2/q0;->z:Le2/h1;

    invoke-virtual {v0, p1}, Le2/h1;->Q0(Le2/h1;)Le2/h1;

    move-result-object p1

    invoke-virtual {p1}, Le2/h1;->S0()Le2/q0;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Le2/q0;->M0(Le2/q0;Z)J

    move-result-wide v5

    invoke-static {p2, p3}, Lr5/h1;->D(J)J

    move-result-wide p2

    invoke-static {v5, v6, p2, p3}, Lb3/j;->c(JJ)J

    move-result-wide p2

    invoke-virtual {v1, p1, v0}, Le2/q0;->M0(Le2/q0;Z)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lb3/j;->b(JJ)J

    move-result-wide p0

    shr-long p2, p0, v4

    long-to-int p2, p2

    int-to-float p2, p2

    and-long/2addr p0, v2

    long-to-int p0, p0

    int-to-float p0, p0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v4

    and-long p2, v0, v2

    or-long/2addr p0, p2

    return-wide p0

    :cond_0
    invoke-static {p0}, Lc2/x;->j(Le2/q0;)Le2/q0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Le2/q0;->M0(Le2/q0;Z)J

    move-result-wide v5

    iget-wide v7, p1, Le2/q0;->A:J

    invoke-static {v5, v6, v7, v8}, Lb3/j;->c(JJ)J

    move-result-wide v5

    invoke-static {p2, p3}, Lr5/h1;->D(J)J

    move-result-wide p2

    invoke-static {v5, v6, p2, p3}, Lb3/j;->c(JJ)J

    move-result-wide p2

    invoke-static {v1}, Lc2/x;->j(Le2/q0;)Le2/q0;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Le2/q0;->M0(Le2/q0;Z)J

    move-result-wide v0

    iget-wide v5, p0, Le2/q0;->A:J

    invoke-static {v0, v1, v5, v6}, Lb3/j;->c(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lb3/j;->b(JJ)J

    move-result-wide p2

    shr-long v0, p2, v4

    long-to-int v0, v0

    int-to-float v0, v0

    and-long/2addr p2, v2

    long-to-int p2, p2

    int-to-float p2, p2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v0, p3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr v0, v4

    and-long/2addr p2, v2

    or-long/2addr p2, v0

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p1, p1, Le2/q0;->z:Le2/h1;

    iget-object p1, p1, Le2/h1;->B:Le2/h1;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v1}, Lc2/x;->j(Le2/q0;)Le2/q0;

    move-result-object v0

    iget-object v1, v0, Le2/q0;->z:Le2/h1;

    iget-object v5, v0, Le2/q0;->C:Lc2/p0;

    invoke-virtual {p0, v5, p2, p3}, Lc2/p0;->K(Lc2/u;J)J

    move-result-wide p2

    iget-wide v5, v0, Le2/q0;->A:J

    shr-long v7, v5, v4

    long-to-int p0, v7

    int-to-float p0, p0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-float v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v5, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v7, p0

    shl-long v4, v5, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {p2, p3, v2, v3}, Ll1/b;->d(JJ)J

    move-result-wide p2

    invoke-virtual {v1}, Le2/h1;->U0()Lf1/q;

    move-result-object p0

    iget-boolean p0, p0, Lf1/q;->y:Z

    if-nez p0, :cond_2

    const-string p0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {p0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Le2/h1;->d1()V

    iget-object p0, v1, Le2/h1;->B:Le2/h1;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ll1/b;->e(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final L(Lc2/u;J)J
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc2/p0;->K(Lc2/u;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final O(J)J
    .locals 2

    iget-object v0, p0, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {v0, p1, p2}, Le2/h1;->O(J)J

    move-result-wide p1

    invoke-virtual {p0}, Lc2/p0;->a()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ll1/b;->e(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final R(J)J
    .locals 3

    iget-object v0, p0, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Lc2/p0;->a()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ll1/b;->e(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Le2/h1;->R(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final U(Lc2/u;Z)Ll1/c;
    .locals 0

    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0, p1, p2}, Le2/h1;->U(Lc2/u;Z)Ll1/c;

    move-result-object p0

    return-object p0
.end method

.method public final a()J
    .locals 7

    iget-object v0, p0, Lc2/p0;->l:Le2/q0;

    invoke-static {v0}, Lc2/x;->j(Le2/q0;)Le2/q0;

    move-result-object v1

    iget-object v2, v1, Le2/q0;->C:Lc2/p0;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lc2/p0;->K(Lc2/u;J)J

    move-result-wide v5

    iget-object p0, v0, Le2/q0;->z:Le2/h1;

    iget-object v0, v1, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0, v0, v3, v4}, Le2/h1;->K(Lc2/u;J)J

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ll1/b;->d(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(J)J
    .locals 3

    iget-object v0, p0, Lc2/p0;->l:Le2/q0;

    iget-object v0, v0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Lc2/p0;->a()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ll1/b;->e(JJ)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Le2/h1;->e(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0}, Le2/h1;->U0()Lf1/q;

    move-result-object p0

    iget-boolean p0, p0, Lf1/q;->y:Z

    return p0
.end method

.method public final k(Lc2/u;[F)V
    .locals 0

    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0, p1, p2}, Le2/h1;->k(Lc2/u;[F)V

    return-void
.end method

.method public final l([F)V
    .locals 0

    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget-object p0, p0, Le2/q0;->z:Le2/h1;

    invoke-virtual {p0, p1}, Le2/h1;->l([F)V

    return-void
.end method

.method public final o()J
    .locals 6

    iget-object p0, p0, Lc2/p0;->l:Le2/q0;

    iget v0, p0, Lc2/f1;->l:I

    iget p0, p0, Lc2/f1;->m:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method
