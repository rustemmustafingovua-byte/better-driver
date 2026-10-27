.class public final Lu/c1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:F

.field public B:F

.field public C:F

.field public D:Z

.field public z:F


# virtual methods
.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lu/c1;->M0(Lc2/t0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lb3/a;->e(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lb3/a;->g(J)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lu/c1;->D:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, v0, v1}, Lb3/b;->g(IJ)I

    move-result p3

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    invoke-static {p0, v0, v1}, Lb3/b;->f(IJ)I

    move-result p0

    return p0
.end method

.method public final M0(Lc2/t0;)J
    .locals 6

    iget v0, p0, Lu/c1;->B:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lu/c1;->B:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    iget v3, p0, Lu/c1;->C:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lu/c1;->C:F

    invoke-interface {p1, v3}, Lb3/c;->h0(F)I

    move-result v3

    if-gez v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :cond_3
    :goto_1
    iget v4, p0, Lu/c1;->z:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lu/c1;->z:F

    invoke-interface {p1, v4}, Lb3/c;->h0(F)I

    move-result v4

    if-gez v4, :cond_4

    move v4, v2

    :cond_4
    if-le v4, v0, :cond_5

    move v4, v0

    :cond_5
    if-eq v4, v1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    iget v5, p0, Lu/c1;->A:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_9

    iget p0, p0, Lu/c1;->A:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    if-gez p0, :cond_7

    move p0, v2

    :cond_7
    if-le p0, v3, :cond_8

    move p0, v3

    :cond_8
    if-eq p0, v1, :cond_9

    move v2, p0

    :cond_9
    invoke-static {v4, v0, v2, v3}, Lb3/b;->a(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 6

    invoke-virtual {p0, p1}, Lu/c1;->M0(Lc2/t0;)J

    move-result-wide v0

    iget-boolean v2, p0, Lu/c1;->D:Z

    if-eqz v2, :cond_0

    invoke-static {p3, p4, v0, v1}, Lb3/b;->e(JJ)J

    move-result-wide p3

    goto :goto_4

    :cond_0
    iget v2, p0, Lu/c1;->z:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lb3/a;->j(J)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v2

    invoke-static {v0, v1}, Lb3/a;->h(J)I

    move-result v3

    if-le v2, v3, :cond_2

    move v2, v3

    :cond_2
    :goto_0
    iget v3, p0, Lu/c1;->B:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0, v1}, Lb3/a;->h(J)I

    move-result v3

    goto :goto_1

    :cond_3
    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v3

    invoke-static {v0, v1}, Lb3/a;->j(J)I

    move-result v4

    if-ge v3, v4, :cond_4

    move v3, v4

    :cond_4
    :goto_1
    iget v4, p0, Lu/c1;->A:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0, v1}, Lb3/a;->i(J)I

    move-result v4

    goto :goto_2

    :cond_5
    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v4

    invoke-static {v0, v1}, Lb3/a;->g(J)I

    move-result v5

    if-le v4, v5, :cond_6

    move v4, v5

    :cond_6
    :goto_2
    iget p0, p0, Lu/c1;->C:F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v0, v1}, Lb3/a;->g(J)I

    move-result p0

    goto :goto_3

    :cond_7
    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p0

    invoke-static {v0, v1}, Lb3/a;->i(J)I

    move-result p3

    if-ge p0, p3, :cond_8

    move p0, p3

    :cond_8
    :goto_3
    invoke-static {v2, v3, v4, p0}, Lb3/b;->a(IIII)J

    move-result-wide p3

    :goto_4
    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/16 v0, 0x8

    invoke-direct {p4, p0, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lu/c1;->M0(Lc2/t0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lb3/a;->e(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lb3/a;->g(J)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lu/c1;->D:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, v0, v1}, Lb3/b;->g(IJ)I

    move-result p3

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    invoke-static {p0, v0, v1}, Lb3/b;->f(IJ)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lu/c1;->M0(Lc2/t0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lb3/a;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lb3/a;->h(J)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lu/c1;->D:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, v0, v1}, Lb3/b;->f(IJ)I

    move-result p3

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p0

    invoke-static {p0, v0, v1}, Lb3/b;->g(IJ)I

    move-result p0

    return p0
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 2

    invoke-virtual {p0, p1}, Lu/c1;->M0(Lc2/t0;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lb3/a;->f(J)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lb3/a;->h(J)I

    move-result p0

    return p0

    :cond_0
    iget-boolean p0, p0, Lu/c1;->D:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p3, v0, v1}, Lb3/b;->f(IJ)I

    move-result p3

    :goto_0
    invoke-interface {p2, p3}, Lc2/q0;->u(I)I

    move-result p0

    invoke-static {p0, v0, v1}, Lb3/b;->g(IJ)I

    move-result p0

    return p0
.end method
