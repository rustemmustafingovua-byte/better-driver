.class public abstract Lu/g0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# virtual methods
.method public I(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public abstract M0(Lc2/q0;J)J
.end method

.method public abstract N0()Z
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 2

    invoke-virtual {p0, p2, p3, p4}, Lu/g0;->M0(Lc2/q0;J)J

    move-result-wide v0

    invoke-virtual {p0}, Lu/g0;->N0()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p3, p4, v0, v1}, Lb3/b;->e(JJ)J

    move-result-wide v0

    :cond_0
    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    iget p2, p0, Lc2/f1;->l:I

    iget p3, p0, Lc2/f1;->m:I

    new-instance p4, Lb0/y2;

    const/4 v0, 0x7

    invoke-direct {p4, p0, v0}, Lb0/y2;-><init>(Lc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, p3, p0, p4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public o(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->u(I)I

    move-result p0

    return p0
.end method
