.class public interface abstract Lc2/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public e(Lc2/p;Ljava/util/List;I)I
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/q0;

    new-instance v5, Lc2/i;

    sget-object v6, Lc2/q;->l:Lc2/q;

    sget-object v7, Lc2/r;->l:Lc2/r;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    invoke-static {v2, p3, p2}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public f(Lc2/p;Ljava/util/List;I)I
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/q0;

    new-instance v5, Lc2/i;

    sget-object v6, Lc2/q;->m:Lc2/q;

    sget-object v7, Lc2/r;->l:Lc2/r;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    invoke-static {v2, p3, p2}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public g(Lc2/p;Ljava/util/List;I)I
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/q0;

    new-instance v5, Lc2/i;

    sget-object v6, Lc2/q;->l:Lc2/q;

    sget-object v7, Lc2/r;->m:Lc2/r;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0xd

    invoke-static {p3, v2, p2}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public h(Lc2/p;Ljava/util/List;I)I
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc2/q0;

    new-instance v5, Lc2/i;

    sget-object v6, Lc2/q;->m:Lc2/q;

    sget-object v7, Lc2/r;->m:Lc2/r;

    const/4 v8, 0x0

    invoke-direct {v5, v4, v6, v7, v8}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0xd

    invoke-static {p3, v2, p2}, Lb3/b;->b(III)J

    move-result-wide p2

    new-instance v1, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-interface {p0, v1, v0, p2, p3}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public abstract j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
.end method
