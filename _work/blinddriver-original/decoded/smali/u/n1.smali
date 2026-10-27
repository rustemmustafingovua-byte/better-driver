.class public final Lu/n1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:Li9/e;

.field public z:Lu/u;


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 8

    iget-object v0, p0, Lu/n1;->z:Lu/u;

    sget-object v1, Lu/u;->l:Lu/u;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lu/n1;->z:Lu/u;

    sget-object v3, Lu/u;->m:Lu/u;

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v2

    :goto_1
    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v1

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb3/b;->a(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v5

    iget p2, v5, Lc2/f1;->l:I

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v1

    invoke-static {p2, v0, v1}, Lg6/c1;->f(III)I

    move-result v4

    iget p2, v5, Lc2/f1;->m:I

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v0

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result p3

    invoke-static {p2, v0, p3}, Lg6/c1;->f(III)I

    move-result v6

    new-instance v2, Lu/m1;

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lu/m1;-><init>(Lu/n1;ILc2/f1;ILc2/t0;)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {v7, v4, v6, p0, v2}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
