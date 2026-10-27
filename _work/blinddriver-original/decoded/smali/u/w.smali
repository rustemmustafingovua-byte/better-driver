.class public final Lu/w;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:F

.field public z:Lu/u;


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 5

    invoke-static {p3, p4}, Lb3/a;->d(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/w;->z:Lu/u;

    sget-object v1, Lu/u;->l:Lu/u;

    if-eq v0, v1, :cond_2

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lu/w;->A:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v1

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v2

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v2

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v0

    :goto_1
    invoke-static {p3, p4}, Lb3/a;->c(J)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lu/w;->z:Lu/u;

    sget-object v3, Lu/u;->m:Lu/u;

    if-eq v1, v3, :cond_5

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v1

    int-to-float v1, v1

    iget p0, p0, Lu/w;->A:F

    mul-float/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v1

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    if-ge p0, v1, :cond_3

    move p0, v1

    :cond_3
    if-le p0, p3, :cond_4

    goto :goto_2

    :cond_4
    move p3, p0

    :goto_2
    move p0, p3

    goto :goto_3

    :cond_5
    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result p0

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    move v4, p3

    move p3, p0

    move p0, v4

    :goto_3
    invoke-static {v2, v0, p3, p0}, Lb3/b;->a(IIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/4 v0, 0x6

    invoke-direct {p4, p0, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
