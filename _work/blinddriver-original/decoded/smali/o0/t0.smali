.class public final Lo0/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# virtual methods
.method public final e(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->u(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge p1, p0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc2/q0;

    invoke-interface {v1, p3}, Lc2/q0;->z(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final g(Lc2/p;Ljava/util/List;I)I
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->b0(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/q0;

    invoke-interface {v2, p3}, Lc2/q0;->b0(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    move-object p0, v2

    :cond_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public final h(Lc2/p;Ljava/util/List;I)I
    .locals 4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/q0;

    invoke-interface {p0, p3}, Lc2/q0;->c(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v1, v0, :cond_2

    :goto_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc2/q0;

    invoke-interface {v2, p3}, Lc2/q0;->c(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    move-object p0, v2

    :cond_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    return p1
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 11

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lc2/q0;

    invoke-static {v4}, Lc2/x;->i(Lc2/q0;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "leadingIcon"

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_1
    check-cast v3, Lc2/q0;

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v4, p3

    invoke-static/range {v4 .. v10}, Lb3/a;->a(JIIIII)J

    move-result-wide p3

    invoke-interface {v3, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-wide v4, p3

    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_3

    iget p3, p0, Lc2/f1;->l:I

    goto :goto_3

    :cond_3
    move p3, v0

    :goto_3
    if-eqz p0, :cond_4

    iget p4, p0, Lc2/f1;->m:I

    goto :goto_4

    :cond_4
    move p4, v0

    :goto_4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    move v3, v0

    :goto_5
    if-ge v3, v1, :cond_6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lc2/q0;

    invoke-static {v7}, Lc2/x;->i(Lc2/q0;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "trailingIcon"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move-object v6, v2

    :goto_6
    move-object v1, v6

    check-cast v1, Lc2/q0;

    if-eqz v1, :cond_7

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lb3/a;->a(JIIIII)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v2

    :cond_7
    move-object v9, v2

    if-eqz v9, :cond_8

    iget v1, v9, Lc2/f1;->l:I

    goto :goto_7

    :cond_8
    move v1, v0

    :goto_7
    if-eqz v9, :cond_9

    iget v2, v9, Lc2/f1;->m:I

    move v10, v2

    goto :goto_8

    :cond_9
    move v10, v0

    :goto_8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    move v3, v0

    :goto_9
    if-ge v3, v2, :cond_b

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc2/q0;

    invoke-static {v6}, Lc2/x;->i(Lc2/q0;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "label"

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    add-int p2, p3, v1

    neg-int p2, p2

    const/4 v2, 0x2

    invoke-static {p2, v0, v4, v5, v2}, Lb3/b;->j(IIJI)J

    move-result-wide v2

    invoke-interface {v6, v2, v3}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v7

    iget p2, v7, Lc2/f1;->l:I

    add-int/2addr p2, p3

    add-int/2addr p2, v1

    iget v0, v7, Lc2/f1;->m:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    new-instance v3, Lo0/s0;

    move-object v4, p0

    move v8, p3

    move v5, p4

    invoke-direct/range {v3 .. v10}, Lo0/s0;-><init>(Lc2/f1;IILc2/f1;ILc2/f1;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {p1, p2, v6, p0, v3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0

    :cond_a
    move v8, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Ld3/a;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method
