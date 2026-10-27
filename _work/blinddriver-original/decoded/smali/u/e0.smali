.class public final Lu/e0;
.super Lu/g0;
.source "SourceFile"


# instance fields
.field public A:Z

.field public z:Lu/f0;


# virtual methods
.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Lu/e0;->z:Lu/f0;

    sget-object p1, Lu/f0;->l:Lu/f0;

    if-ne p0, p1, :cond_0

    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final M0(Lc2/q0;J)J
    .locals 1

    iget-object p0, p0, Lu/e0;->z:Lu/f0;

    sget-object v0, Lu/f0;->l:Lu/f0;

    if-ne p0, v0, :cond_0

    invoke-static {p2, p3}, Lb3/a;->h(J)I

    move-result p0

    invoke-interface {p1, p0}, Lc2/q0;->b0(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lb3/a;->h(J)I

    move-result p0

    invoke-interface {p1, p0}, Lc2/q0;->c(I)I

    move-result p0

    :goto_0
    const/4 p1, 0x0

    if-gez p0, :cond_1

    move p0, p1

    :cond_1
    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "height must be >= 0"

    invoke-static {p2}, Lb3/i;->a(Ljava/lang/String;)V

    :goto_1
    const p2, 0x7fffffff

    invoke-static {p1, p2, p0, p0}, Lb3/b;->h(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final N0()Z
    .locals 0

    iget-boolean p0, p0, Lu/e0;->A:Z

    return p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    iget-object p0, p0, Lu/e0;->z:Lu/f0;

    sget-object p1, Lu/f0;->l:Lu/f0;

    if-ne p0, p1, :cond_0

    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method
