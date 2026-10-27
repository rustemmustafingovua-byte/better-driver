.class public final Lu/h1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:F

.field public z:F


# virtual methods
.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p2

    iget p3, p0, Lu/h1;->A:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Lu/h1;->A:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    return p0

    :cond_1
    return p2
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 4

    iget v0, p0, Lu/h1;->z:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lu/h1;->z:F

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v2

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v2

    :goto_0
    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v0

    iget v3, p0, Lu/h1;->A:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v3

    if-nez v3, :cond_5

    iget p0, p0, Lu/h1;->A:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v3

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, p0

    :goto_1
    if-le v1, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v3

    :goto_2
    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p0

    invoke-static {v2, v0, v3, p0}, Lb3/b;->a(IIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/16 v0, 0x9

    invoke-direct {p4, p0, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p2

    iget p3, p0, Lu/h1;->A:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Lu/h1;->A:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    return p0

    :cond_1
    return p2
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p2

    iget p3, p0, Lu/h1;->z:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Lu/h1;->z:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    return p0

    :cond_1
    return p2
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->u(I)I

    move-result p2

    iget p3, p0, Lu/h1;->z:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_0

    iget p0, p0, Lu/h1;->z:F

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p2, p0, :cond_1

    return p0

    :cond_1
    return p2
.end method
