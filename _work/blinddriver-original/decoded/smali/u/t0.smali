.class public final Lu/t0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public z:Lu/s0;


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 8

    iget-object v0, p0, Lu/t0;->z:Lu/s0;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/s0;->a(Lb3/m;)F

    move-result v0

    iget-object v1, p0, Lu/t0;->z:Lu/s0;

    iget v2, v1, Lu/s0;->b:F

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Lu/s0;->b(Lb3/m;)F

    move-result v1

    iget-object p0, p0, Lu/t0;->z:Lu/s0;

    iget p0, p0, Lu/s0;->d:F

    const/4 v3, 0x0

    int-to-float v4, v3

    invoke-static {v0, v4}, Lb3/f;->a(FF)I

    move-result v5

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v2, v4}, Lb3/f;->a(FF)I

    move-result v7

    if-ltz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    and-int/2addr v5, v7

    invoke-static {v1, v4}, Lb3/f;->a(FF)I

    move-result v7

    if-ltz v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    and-int/2addr v5, v7

    invoke-static {p0, v4}, Lb3/f;->a(FF)I

    move-result v4

    if-ltz v4, :cond_3

    move v3, v6

    :cond_3
    and-int/2addr v3, v5

    if-nez v3, :cond_4

    const-string v3, "Padding must be non-negative"

    invoke-static {v3}, Lv/a;->a(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result v0

    invoke-interface {p1, v1}, Lb3/c;->h0(F)I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {p1, v2}, Lb3/c;->h0(F)I

    move-result v2

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    add-int/2addr p0, v2

    neg-int v3, v1

    neg-int v4, p0

    invoke-static {v3, v4, p3, p4}, Lb3/b;->i(IIJ)J

    move-result-wide v3

    invoke-interface {p2, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget v3, p2, Lc2/f1;->l:I

    add-int/2addr v3, v1

    invoke-static {v3, p3, p4}, Lb3/b;->g(IJ)I

    move-result v1

    iget v3, p2, Lc2/f1;->m:I

    add-int/2addr v3, p0

    invoke-static {v3, p3, p4}, Lb3/b;->f(IJ)I

    move-result p0

    new-instance p3, Lo0/w1;

    const/4 p4, 0x2

    invoke-direct {p3, p2, v0, v2, p4}, Lo0/w1;-><init>(Ljava/lang/Object;III)V

    sget-object p2, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, v1, p0, p2, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
