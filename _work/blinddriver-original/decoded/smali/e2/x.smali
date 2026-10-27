.class public interface abstract Le2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/j;


# virtual methods
.method public I(Le2/p0;Lc2/q0;I)I
    .locals 4

    new-instance v0, Lc2/i;

    sget-object v1, Le2/j1;->l:Le2/j1;

    sget-object v2, Le2/k1;->m:Le2/k1;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/16 v1, 0xd

    invoke-static {p3, p2, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Le2/x;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public abstract b(Lc2/t0;Lc2/q0;J)Lc2/s0;
.end method

.method public b0(Le2/p0;Lc2/q0;I)I
    .locals 4

    new-instance v0, Lc2/i;

    sget-object v1, Le2/j1;->m:Le2/j1;

    sget-object v2, Le2/k1;->m:Le2/k1;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/16 v1, 0xd

    invoke-static {p3, p2, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Le2/x;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public o(Le2/p0;Lc2/q0;I)I
    .locals 4

    new-instance v0, Lc2/i;

    sget-object v1, Le2/j1;->m:Le2/j1;

    sget-object v2, Le2/k1;->l:Le2/k1;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p3, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Le2/x;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public x0(Le2/p0;Lc2/q0;I)I
    .locals 4

    new-instance v0, Lc2/i;

    sget-object v1, Le2/j1;->l:Le2/j1;

    sget-object v2, Le2/k1;->l:Le2/k1;

    const/4 v3, 0x2

    invoke-direct {v0, p2, v1, v2, v3}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    const/4 p2, 0x0

    const/4 v1, 0x7

    invoke-static {p2, p3, v1}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Le2/x;->b(Lc2/t0;Lc2/q0;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method
