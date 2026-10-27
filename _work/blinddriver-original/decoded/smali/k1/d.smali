.class public abstract Lk1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(ILe2/i0;Lk1/b0;Ll1/c;)Z
    .locals 10

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v2, v1, [Lk1/b0;

    invoke-direct {v0, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v2, p2, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_0

    const-string v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lt0/b;

    new-array v3, v1, [Lf1/q;

    invoke-direct {v2, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p2, p2, Lf1/q;->l:Lf1/q;

    iget-object v3, p2, Lf1/q;->q:Lf1/q;

    if-nez v3, :cond_1

    invoke-static {v2, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p2, v2, Lt0/b;->n:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_c

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v2, p2}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf1/q;

    iget v5, p2, Lf1/q;->o:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_3

    invoke-static {v2, p2}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p2, :cond_2

    iget v5, p2, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move-object v6, v5

    :goto_2
    if-eqz p2, :cond_2

    instance-of v7, p2, Lk1/b0;

    if-eqz v7, :cond_4

    check-cast p2, Lk1/b0;

    iget-boolean v7, p2, Lf1/q;->y:Z

    if-eqz v7, :cond_a

    invoke-virtual {v0, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_4
    iget v7, p2, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    instance-of v7, p2, Le2/k;

    if-eqz v7, :cond_a

    move-object v7, p2

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    move v8, v4

    :goto_3
    if-eqz v7, :cond_9

    iget v9, v7, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_8

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_5

    move-object p2, v7

    goto :goto_4

    :cond_5
    if-nez v6, :cond_6

    new-instance v6, Lt0/b;

    new-array v9, v1, [Lf1/q;

    invoke-direct {v6, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {v6, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p2, v5

    :cond_7
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_4
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_9
    if-ne v8, v3, :cond_a

    goto :goto_2

    :cond_a
    :goto_5
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p2

    goto :goto_2

    :cond_b
    iget-object p2, p2, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_c
    :goto_6
    iget p2, v0, Lt0/b;->n:I

    if-eqz p2, :cond_10

    invoke-static {v0, p3, p0}, Lk1/d;->g(Lt0/b;Ll1/c;I)Lk1/b0;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {p2}, Lk1/b0;->O0()Lk1/s;

    move-result-object v1

    iget-boolean v1, v1, Lk1/s;->a:Z

    if-eqz v1, :cond_e

    invoke-virtual {p1, p2}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_e
    invoke-static {p0, p1, p2, p3}, Lk1/d;->l(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v3

    :cond_f
    invoke-virtual {v0, p2}, Lt0/b;->j(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    :goto_7
    return v4
.end method

.method public static final B(Lk1/b0;Lk1/b0;ILe2/i0;)Z
    .locals 12

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    sget-object v1, Lk1/z;->m:Lk1/z;

    if-ne v0, v1, :cond_24

    const/16 v0, 0x10

    new-array v1, v0, [Lk1/b0;

    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_0

    const-string v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lt0/b;

    new-array v3, v0, [Lf1/q;

    invoke-direct {v2, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v3, p0, Lf1/q;->l:Lf1/q;

    iget-object v4, v3, Lf1/q;->q:Lf1/q;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Le2/l;->b(Lt0/b;Lf1/q;)V

    :goto_0
    move v3, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget v4, v2, Lt0/b;->n:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_d

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/q;

    iget v8, v4, Lf1/q;->o:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    invoke-static {v2, v4}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_2

    iget v8, v4, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_c

    move-object v8, v6

    :goto_3
    if-eqz v4, :cond_2

    instance-of v9, v4, Lk1/b0;

    if-eqz v9, :cond_5

    check-cast v4, Lk1/b0;

    add-int/lit8 v9, v3, 0x1

    array-length v10, v1

    if-ge v10, v9, :cond_4

    array-length v10, v1

    mul-int/lit8 v11, v10, 0x2

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v1, v5, v11, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v11

    :cond_4
    aput-object v4, v1, v3

    move v3, v9

    goto :goto_6

    :cond_5
    iget v9, v4, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_b

    instance-of v9, v4, Le2/k;

    if-eqz v9, :cond_b

    move-object v9, v4

    check-cast v9, Le2/k;

    iget-object v9, v9, Le2/k;->A:Lf1/q;

    move v10, v5

    :goto_4
    if-eqz v9, :cond_a

    iget v11, v9, Lf1/q;->n:I

    and-int/lit16 v11, v11, 0x400

    if-eqz v11, :cond_9

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v7, :cond_6

    move-object v4, v9

    goto :goto_5

    :cond_6
    if-nez v8, :cond_7

    new-instance v8, Lt0/b;

    new-array v11, v0, [Lf1/q;

    invoke-direct {v8, v11}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v8, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_8
    invoke-virtual {v8, v9}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v9, v9, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v10, v7, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v8}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v4

    goto :goto_3

    :cond_c
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_d
    sget-object v2, Lk1/c0;->a:Lk1/c0;

    invoke-static {v1, v2, v5, v3}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    if-ne p2, v7, :cond_10

    invoke-static {v5, v3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v2

    iget v3, v2, Lo9/b;->l:I

    iget v2, v2, Lo9/b;->m:I

    if-gt v3, v2, :cond_13

    move v4, v5

    :goto_7
    if-eqz v4, :cond_e

    aget-object v8, v1, v3

    check-cast v8, Lk1/b0;

    invoke-static {v8}, Lk1/d;->r(Lk1/b0;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-static {v8, p3}, Lk1/d;->k(Lk1/b0;Le2/i0;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    aget-object v8, v1, v3

    invoke-static {v8, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v4, v7

    :cond_f
    if-eq v3, v2, :cond_13

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v2, 0x2

    if-ne p2, v2, :cond_23

    invoke-static {v5, v3}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v2

    iget v3, v2, Lo9/b;->l:I

    iget v2, v2, Lo9/b;->m:I

    if-gt v3, v2, :cond_13

    move v4, v5

    :goto_8
    if-eqz v4, :cond_11

    aget-object v8, v1, v2

    check-cast v8, Lk1/b0;

    invoke-static {v8}, Lk1/d;->r(Lk1/b0;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {v8, p3}, Lk1/d;->a(Lk1/b0;Le2/i0;)Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_9
    return v7

    :cond_11
    aget-object v8, v1, v2

    invoke-static {v8, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move v4, v7

    :cond_12
    if-eq v2, v3, :cond_13

    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_13
    if-ne p2, v7, :cond_14

    goto/16 :goto_10

    :cond_14
    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object p1

    iget-boolean p1, p1, Lk1/s;->a:Z

    if-eqz p1, :cond_22

    iget-object p1, p0, Lf1/q;->l:Lf1/q;

    iget-boolean p1, p1, Lf1/q;->y:Z

    if-nez p1, :cond_15

    const-string p1, "visitAncestors called on an unattached node"

    invoke-static {p1}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p0, Lf1/q;->l:Lf1/q;

    iget-object p1, p1, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p2

    :goto_a
    if-eqz p2, :cond_20

    iget-object v1, p2, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->f:Lf1/q;

    iget v1, v1, Lf1/q;->o:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1e

    :goto_b
    if-eqz p1, :cond_1e

    iget v1, p1, Lf1/q;->n:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1d

    move-object v1, p1

    move-object v2, v6

    :goto_c
    if-eqz v1, :cond_1d

    instance-of v3, v1, Lk1/b0;

    if-eqz v3, :cond_16

    move-object v6, v1

    goto :goto_f

    :cond_16
    iget v3, v1, Lf1/q;->n:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_1c

    instance-of v3, v1, Le2/k;

    if-eqz v3, :cond_1c

    move-object v3, v1

    check-cast v3, Le2/k;

    iget-object v3, v3, Le2/k;->A:Lf1/q;

    move v4, v5

    :goto_d
    if-eqz v3, :cond_1b

    iget v8, v3, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1a

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_17

    move-object v1, v3

    goto :goto_e

    :cond_17
    if-nez v2, :cond_18

    new-instance v2, Lt0/b;

    new-array v8, v0, [Lf1/q;

    invoke-direct {v2, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_18
    if-eqz v1, :cond_19

    invoke-virtual {v2, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, v6

    :cond_19
    invoke-virtual {v2, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_1a
    :goto_e
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_d

    :cond_1b
    if-ne v4, v7, :cond_1c

    goto :goto_c

    :cond_1c
    invoke-static {v2}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_c

    :cond_1d
    iget-object p1, p1, Lf1/q;->p:Lf1/q;

    goto :goto_b

    :cond_1e
    invoke-virtual {p2}, Le2/g0;->v()Le2/g0;

    move-result-object p2

    if-eqz p2, :cond_1f

    iget-object p1, p2, Le2/g0;->R:Le2/c1;

    if-eqz p1, :cond_1f

    iget-object p1, p1, Le2/c1;->e:Le2/b2;

    goto :goto_a

    :cond_1f
    move-object p1, v6

    goto :goto_a

    :cond_20
    :goto_f
    if-nez v6, :cond_21

    goto :goto_10

    :cond_21
    invoke-virtual {p3, p0}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_22
    :goto_10
    return v5

    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 1-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used within a parent that has focus."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final C(ILe2/i0;Lk1/b0;Ll1/c;)Ljava/lang/Boolean;
    .locals 6

    invoke-virtual {p2}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lk1/b0;->O0()Lk1/s;

    move-result-object v0

    iget-boolean v0, v0, Lk1/s;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    invoke-static {p2, p0, p1}, Lk1/d;->h(Lk1/b0;ILi9/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lk1/d;->A(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    invoke-static {p2}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object v0

    const-string v4, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_a

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_a

    if-eq v5, v1, :cond_4

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p0, p1, v0, p3}, Lk1/d;->C(ILe2/i0;Lk1/b0;Ll1/c;)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v1

    :cond_6
    if-nez p3, :cond_9

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object p3

    sget-object v1, Lk1/z;->m:Lk1/z;

    if-ne p3, v1, :cond_8

    invoke-static {v0}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-static {p3}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p3

    goto :goto_0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Searching for active node in inactive hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lk1/d;->l(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_a
    if-nez p3, :cond_b

    invoke-static {v0}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p3

    :cond_b
    invoke-static {p0, p1, p2, p3}, Lk1/d;->l(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p2, p0, p1}, Lk1/d;->h(Lk1/b0;ILi9/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lk1/b0;Le2/i0;)Z
    .locals 7

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_9

    if-ne v0, v1, :cond_1

    invoke-static {p0, p1}, Lk1/d;->x(Lk1/b0;Le2/i0;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v0

    iget-boolean v0, v0, Lk1/s;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_5

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object v0

    const-string v5, "ActiveParent must have a focusedChild"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_7

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_7

    if-eq v6, v1, :cond_3

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v0, p1}, Lk1/d;->a(Lk1/b0;Le2/i0;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0, v0, v3, p1}, Lk1/d;->m(Lk1/b0;Lk1/b0;ILe2/i0;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Lk1/b0;->O0()Lk1/s;

    move-result-object p0

    iget-boolean p0, p0, Lk1/s;->a:Z

    if-eqz p0, :cond_5

    invoke-virtual {p1, v0}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v4

    :cond_7
    invoke-static {p0, v0, v3, p1}, Lk1/d;->m(Lk1/b0;Lk1/b0;ILe2/i0;)Z

    move-result p0

    return p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p0, p1}, Lk1/d;->x(Lk1/b0;Le2/i0;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ll1/c;Ll1/c;Ll1/c;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v3, v2, v0}, Lk1/d;->c(ILl1/c;Ll1/c;)Z

    move-result v4

    iget v5, v2, Ll1/c;->b:F

    iget v6, v2, Ll1/c;->d:F

    iget v7, v2, Ll1/c;->a:F

    iget v2, v2, Ll1/c;->c:F

    iget v8, v0, Ll1/c;->d:F

    iget v9, v0, Ll1/c;->b:F

    iget v10, v0, Ll1/c;->c:F

    iget v11, v0, Ll1/c;->a:F

    const/4 v12, 0x0

    if-nez v4, :cond_13

    invoke-static {v3, v1, v0}, Lk1/d;->c(ILl1/c;Ll1/c;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v4, "This function should only be used for 2-D focus search"

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 p0, 0x1

    const/4 v0, 0x3

    if-ne v3, v0, :cond_1

    cmpl-float v16, v11, v2

    if-ltz v16, :cond_11

    goto :goto_0

    :cond_1
    if-ne v3, v15, :cond_2

    cmpg-float v16, v10, v7

    if-gtz v16, :cond_11

    goto :goto_0

    :cond_2
    if-ne v3, v14, :cond_3

    cmpl-float v16, v9, v6

    if-ltz v16, :cond_11

    goto :goto_0

    :cond_3
    if-ne v3, v13, :cond_12

    cmpg-float v16, v8, v5

    if-gtz v16, :cond_11

    :goto_0
    if-ne v3, v0, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v15, :cond_5

    :goto_1
    return p0

    :cond_5
    if-ne v3, v0, :cond_6

    iget v1, v1, Ll1/c;->c:F

    sub-float v1, v11, v1

    goto :goto_2

    :cond_6
    if-ne v3, v15, :cond_7

    iget v1, v1, Ll1/c;->a:F

    sub-float/2addr v1, v10

    goto :goto_2

    :cond_7
    if-ne v3, v14, :cond_8

    iget v1, v1, Ll1/c;->d:F

    sub-float v1, v9, v1

    goto :goto_2

    :cond_8
    if-ne v3, v13, :cond_10

    iget v1, v1, Ll1/c;->b:F

    sub-float/2addr v1, v8

    :goto_2
    const/16 v16, 0x0

    cmpg-float v17, v1, v16

    if-gez v17, :cond_9

    move/from16 v1, v16

    :cond_9
    if-ne v3, v0, :cond_a

    sub-float/2addr v11, v7

    goto :goto_3

    :cond_a
    if-ne v3, v15, :cond_b

    sub-float v11, v2, v10

    goto :goto_3

    :cond_b
    if-ne v3, v14, :cond_c

    sub-float v11, v9, v5

    goto :goto_3

    :cond_c
    if-ne v3, v13, :cond_f

    sub-float v11, v6, v8

    :goto_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v2, v11, v0

    if-gez v2, :cond_d

    move v11, v0

    :cond_d
    cmpg-float v0, v1, v11

    if-gez v0, :cond_e

    return p0

    :cond_e
    return v12

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return p0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_4
    return v12
.end method

.method public static final c(ILl1/c;Ll1/c;)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    :goto_0
    iget p0, p1, Ll1/c;->d:F

    iget v0, p2, Ll1/c;->b:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    iget p0, p1, Ll1/c;->b:F

    iget p1, p2, Ll1/c;->d:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    :goto_1
    iget p0, p1, Ll1/c;->c:F

    iget v0, p2, Ll1/c;->a:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_4

    iget p0, p1, Ll1/c;->a:F

    iget p1, p2, Ll1/c;->c:F

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final d(Lk1/b0;Z)Z
    .locals 2

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    return p1

    :cond_2
    invoke-static {p0}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lk1/d;->d(Lk1/b0;Z)Z

    move-result p1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    if-eqz p1, :cond_4

    sget-object p1, Lk1/z;->m:Lk1/z;

    sget-object v0, Lk1/z;->n:Lk1/z;

    invoke-virtual {p0, p1, v0}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public static final e(Lk1/b0;Lt0/b;)V
    .locals 8

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitChildren called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v2, v1, [Lf1/q;

    invoke-direct {v0, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v2, p0, Lf1/q;->q:Lf1/q;

    if-nez v2, :cond_1

    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget p0, v0, Lt0/b;->n:I

    if-eqz p0, :cond_e

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/q;

    iget v2, p0, Lf1/q;->o:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3

    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p0, :cond_2

    iget v2, p0, Lf1/q;->n:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object v3, v2

    :goto_2
    if-eqz p0, :cond_2

    instance-of v4, p0, Lk1/b0;

    if-eqz v4, :cond_6

    check-cast p0, Lk1/b0;

    iget-boolean v4, p0, Lf1/q;->y:Z

    if-eqz v4, :cond_c

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v4

    iget-boolean v4, v4, Le2/g0;->c0:Z

    if-eqz v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v4

    iget-boolean v4, v4, Lk1/s;->a:Z

    if-eqz v4, :cond_5

    invoke-virtual {p1, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-static {p0, p1}, Lk1/d;->e(Lk1/b0;Lt0/b;)V

    goto :goto_5

    :cond_6
    iget v4, p0, Lf1/q;->n:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    instance-of v4, p0, Le2/k;

    if-eqz v4, :cond_c

    move-object v4, p0

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    if-eqz v4, :cond_b

    iget v7, v4, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_a

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_7

    move-object p0, v4

    goto :goto_4

    :cond_7
    if-nez v3, :cond_8

    new-instance v3, Lt0/b;

    new-array v6, v1, [Lf1/q;

    invoke-direct {v3, v6}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz p0, :cond_9

    invoke-virtual {v3, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p0, v2

    :cond_9
    invoke-virtual {v3, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_a
    :goto_4
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_b
    if-ne v5, v6, :cond_c

    goto :goto_2

    :cond_c
    :goto_5
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p0

    goto :goto_2

    :cond_d
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_e
    return-void
.end method

.method public static final f(Lk1/b0;)Lk1/b0;
    .locals 1

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p0

    check-cast p0, Lf2/y;

    invoke-virtual {p0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p0

    check-cast p0, Lk1/o;

    invoke-virtual {p0}, Lk1/o;->f()Lk1/b0;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final g(Lt0/b;Ll1/c;I)Lk1/b0;
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p1, Ll1/c;->c:F

    iget v3, p1, Ll1/c;->a:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget v0, p1, Ll1/c;->c:F

    iget v3, p1, Ll1/c;->a:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v0, v1}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    iget v0, p1, Ll1/c;->d:F

    iget v3, p1, Ll1/c;->b:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    iget v0, p1, Ll1/c;->d:F

    iget v3, p1, Ll1/c;->b:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Ll1/c;->i(FF)Ll1/c;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p0, :cond_4

    aget-object v4, v1, v3

    check-cast v4, Lk1/b0;

    invoke-static {v4}, Lk1/d;->r(Lk1/b0;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object v5

    invoke-static {v5, v0, p1, p2}, Lk1/d;->o(Ll1/c;Ll1/c;Ll1/c;I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v4

    move-object v0, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final h(Lk1/b0;ILi9/c;)Z
    .locals 4

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Lk1/b0;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lk1/d;->e(Lk1/b0;Lt0/b;)V

    iget v1, v0, Lt0/b;->n:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object p0, p0, v3

    :goto_0
    check-cast p0, Lk1/b0;

    if-eqz p0, :cond_6

    invoke-interface {p2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x7

    const/4 v2, 0x4

    if-ne p1, v1, :cond_2

    move p1, v2

    :cond_2
    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    :goto_1
    invoke-static {p0}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p0

    new-instance v1, Ll1/c;

    iget v2, p0, Ll1/c;->a:F

    iget p0, p0, Ll1/c;->b:F

    invoke-direct {v1, v2, p0, v2, p0}, Ll1/c;-><init>(FFFF)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_7

    :goto_2
    invoke-static {p0}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object p0

    new-instance v1, Ll1/c;

    iget v2, p0, Ll1/c;->c:F

    iget p0, p0, Ll1/c;->d:F

    invoke-direct {v1, v2, p0, v2, p0}, Ll1/c;-><init>(FFFF)V

    :goto_3
    invoke-static {v0, v1, p1}, Lk1/d;->g(Lt0/b;Ll1/c;I)Lk1/b0;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-interface {p2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    return v3

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(Lk1/b0;)Ll1/c;
    .locals 2

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lf1/q;->s:Le2/h1;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object v0

    invoke-interface {v0}, Lc2/u;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lk1/b0;->P0(Lc2/u;)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0
.end method

.method public static final j(Lf1/r;Lk1/u;)Lf1/r;
    .locals 1

    new-instance v0, Lk1/v;

    invoke-direct {v0, p1}, Lk1/v;-><init>(Lk1/u;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Lk1/b0;Le2/i0;)Z
    .locals 3

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v0

    iget-boolean v0, v0, Lk1/s;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Le2/i0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Lk1/d;->y(Lk1/b0;Le2/i0;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p0}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, p1}, Lk1/d;->k(Lk1/b0;Le2/i0;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0, v0, v1, p1}, Lk1/d;->m(Lk1/b0;Lk1/b0;ILe2/i0;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ActiveParent must have a focusedChild"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0, p1}, Lk1/d;->y(Lk1/b0;Le2/i0;)Z

    move-result p0

    return p0
.end method

.method public static final l(ILe2/i0;Lk1/b0;Ll1/c;)Z
    .locals 8

    invoke-static {p0, p1, p2, p3}, Lk1/d;->A(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p2}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    new-instance v1, Lk1/d0;

    const/4 v7, 0x1

    move v5, p0

    move-object v6, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lk1/d0;-><init>(Lk1/b0;Lk1/b0;Ljava/lang/Object;ILe2/i0;I)V

    invoke-static {v3, v5, v1}, Lk1/d;->z(Lk1/b0;ILi9/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final m(Lk1/b0;Lk1/b0;ILe2/i0;)Z
    .locals 8

    invoke-static {p0, p1, p2, p3}, Lk1/d;->B(Lk1/b0;Lk1/b0;ILe2/i0;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    new-instance v1, Lk1/d0;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lk1/d0;-><init>(Lk1/b0;Lk1/b0;Ljava/lang/Object;ILe2/i0;I)V

    invoke-static {v3, v5, v1}, Lk1/d;->z(Lk1/b0;ILi9/c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final n(Lk1/b0;)Lk1/b0;
    .locals 8

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "visitChildren called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lt0/b;

    const/16 v2, 0x10

    new-array v3, v2, [Lf1/q;

    invoke-direct {v0, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v3, p0, Lf1/q;->q:Lf1/q;

    if-nez v3, :cond_2

    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget p0, v0, Lt0/b;->n:I

    if-eqz p0, :cond_f

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf1/q;

    iget v3, p0, Lf1/q;->o:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_4

    invoke-static {v0, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p0, :cond_3

    iget v3, p0, Lf1/q;->n:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_e

    move-object v3, v1

    :goto_2
    if-eqz p0, :cond_3

    instance-of v4, p0, Lk1/b0;

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    check-cast p0, Lk1/b0;

    iget-object v4, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v4, v4, Lf1/q;->y:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_6

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 p0, 0x3

    if-ne v4, p0, :cond_5

    goto :goto_5

    :cond_5
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_6
    return-object p0

    :cond_7
    iget v4, p0, Lf1/q;->n:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_d

    instance-of v4, p0, Le2/k;

    if-eqz v4, :cond_d

    move-object v4, p0

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    const/4 v6, 0x0

    :goto_3
    if-eqz v4, :cond_c

    iget v7, v4, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_b

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_8

    move-object p0, v4

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    new-instance v3, Lt0/b;

    new-array v7, v2, [Lf1/q;

    invoke-direct {v3, v7}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_9
    if-eqz p0, :cond_a

    invoke-virtual {v3, p0}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object p0, v1

    :cond_a
    invoke-virtual {v3, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_b
    :goto_4
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_c
    if-ne v6, v5, :cond_d

    goto :goto_2

    :cond_d
    :goto_5
    invoke-static {v3}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object p0

    goto :goto_2

    :cond_e
    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_1

    :cond_f
    :goto_6
    return-object v1
.end method

.method public static final o(Ll1/c;Ll1/c;Ll1/c;I)Z
    .locals 2

    invoke-static {p3, p0, p2}, Lk1/d;->p(ILl1/c;Ll1/c;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, p1, p2}, Lk1/d;->p(ILl1/c;Ll1/c;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p0, p1, p3}, Lk1/d;->b(Ll1/c;Ll1/c;Ll1/c;I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2, p1, p0, p3}, Lk1/d;->b(Ll1/c;Ll1/c;Ll1/c;I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3, p2, p0}, Lk1/d;->q(ILl1/c;Ll1/c;)J

    move-result-wide v0

    invoke-static {p3, p2, p1}, Lk1/d;->q(ILl1/c;Ll1/c;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final p(ILl1/c;Ll1/c;)Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_2

    iget p0, p2, Ll1/c;->c:F

    iget p2, p2, Ll1/c;->a:F

    iget v0, p1, Ll1/c;->c:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    cmpl-float p0, p2, v0

    if-ltz p0, :cond_1

    :cond_0
    iget p0, p1, Ll1/c;->a:F

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    iget p0, p2, Ll1/c;->a:F

    iget p2, p2, Ll1/c;->c:F

    iget v0, p1, Ll1/c;->a:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_3

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_4

    :cond_3
    iget p0, p1, Ll1/c;->c:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_8

    iget p0, p2, Ll1/c;->d:F

    iget p2, p2, Ll1/c;->b:F

    iget v0, p1, Ll1/c;->d:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_6

    cmpl-float p0, p2, v0

    if-ltz p0, :cond_7

    :cond_6
    iget p0, p1, Ll1/c;->b:F

    cmpl-float p0, p2, p0

    if-lez p0, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    const/4 v0, 0x6

    if-ne p0, v0, :cond_b

    iget p0, p2, Ll1/c;->b:F

    iget p2, p2, Ll1/c;->d:F

    iget v0, p1, Ll1/c;->b:F

    cmpg-float p0, p0, v0

    if-ltz p0, :cond_9

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_a

    :cond_9
    iget p0, p1, Ll1/c;->d:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This function should only be used for 2-D focus search"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final q(ILl1/c;Ll1/c;)J
    .locals 8

    const-string v0, "This function should only be used for 2-D focus search"

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne p0, v4, :cond_0

    iget v5, p1, Ll1/c;->a:F

    iget v6, p2, Ll1/c;->c:F

    :goto_0
    sub-float/2addr v5, v6

    goto :goto_1

    :cond_0
    if-ne p0, v3, :cond_1

    iget v5, p2, Ll1/c;->a:F

    iget v6, p1, Ll1/c;->c:F

    goto :goto_0

    :cond_1
    if-ne p0, v2, :cond_2

    iget v5, p1, Ll1/c;->b:F

    iget v6, p2, Ll1/c;->d:F

    goto :goto_0

    :cond_2
    if-ne p0, v1, :cond_8

    iget v5, p2, Ll1/c;->b:F

    iget v6, p1, Ll1/c;->d:F

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gez v7, :cond_3

    move v5, v6

    :cond_3
    float-to-long v5, v5

    const/4 v7, 0x2

    if-ne p0, v4, :cond_4

    goto :goto_2

    :cond_4
    if-ne p0, v3, :cond_5

    :goto_2
    iget p0, p1, Ll1/c;->b:F

    iget p1, p1, Ll1/c;->d:F

    sub-float/2addr p1, p0

    int-to-float v0, v7

    div-float/2addr p1, v0

    add-float/2addr p1, p0

    iget p0, p2, Ll1/c;->b:F

    iget p2, p2, Ll1/c;->d:F

    :goto_3
    sub-float/2addr p2, p0

    div-float/2addr p2, v0

    add-float/2addr p2, p0

    sub-float/2addr p1, p2

    goto :goto_5

    :cond_5
    if-ne p0, v2, :cond_6

    goto :goto_4

    :cond_6
    if-ne p0, v1, :cond_7

    :goto_4
    iget p0, p1, Ll1/c;->a:F

    iget p1, p1, Ll1/c;->c:F

    sub-float/2addr p1, p0

    int-to-float v0, v7

    div-float/2addr p1, v0

    add-float/2addr p1, p0

    iget p0, p2, Ll1/c;->a:F

    iget p2, p2, Ll1/c;->c:F

    goto :goto_3

    :goto_5
    float-to-long p0, p1

    const/16 p2, 0xd

    int-to-long v0, p2

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    mul-long/2addr p0, p0

    add-long/2addr p0, v0

    return-wide p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final r(Lk1/b0;)Z
    .locals 2

    iget-object v0, p0, Lf1/q;->s:Le2/h1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Le2/h1;->z:Le2/g0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le2/g0;->I()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf1/q;->s:Le2/h1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result p0

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final s(Lf1/r;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lk1/c;

    invoke-direct {v0, p1}, Lk1/c;-><init>(Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lk1/b0;I)Lk1/b;
    .locals 5

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lk1/b;->m:Lk1/b;

    return-object p0

    :cond_2
    invoke-static {p0}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0, p1}, Lk1/d;->t(Lk1/b0;I)Lk1/b;

    move-result-object v0

    sget-object v2, Lk1/b;->l:Lk1/b;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_8

    iget-boolean v0, p0, Lk1/b0;->B:Z

    if-nez v0, :cond_7

    iput-boolean v1, p0, Lk1/b0;->B:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v1

    new-instance v3, Lk1/a;

    invoke-direct {v3, p1}, Lk1/a;-><init>(I)V

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p1

    check-cast p1, Lk1/o;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/b0;

    move-result-object v4

    iget-object v1, v1, Lk1/s;->k:Lj9/o;

    invoke-interface {v1, v3}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    iget-boolean v1, v3, Lk1/a;->b:Z

    if-eqz v1, :cond_4

    sget-object p1, Lk1/u;->b:Lk1/u;

    sget-object p1, Lk1/b;->m:Lk1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->B:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_4
    if-eq v4, p1, :cond_6

    if-eqz p1, :cond_6

    :try_start_1
    sget-object p1, Lk1/u;->d:Lk1/u;

    sget-object v1, Lk1/u;->c:Lk1/u;

    if-ne p1, v1, :cond_5

    sget-object p1, Lk1/b;->m:Lk1/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->B:Z

    return-object p1

    :cond_5
    :try_start_2
    sget-object p1, Lk1/b;->n:Lk1/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->B:Z

    return-object p1

    :cond_6
    iput-boolean v0, p0, Lk1/b0;->B:Z

    return-object v2

    :goto_0
    iput-boolean v0, p0, Lk1/b0;->B:Z

    throw p1

    :cond_7
    return-object v2

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActiveParent with no focused child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_1
    sget-object p0, Lk1/b;->l:Lk1/b;

    return-object p0
.end method

.method public static final u(Lk1/b0;I)Lk1/b;
    .locals 4

    iget-boolean v0, p0, Lk1/b0;->C:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk1/b0;->C:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lk1/b0;->O0()Lk1/s;

    move-result-object v1

    new-instance v2, Lk1/a;

    invoke-direct {v2, p1}, Lk1/a;-><init>(I)V

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object p1

    check-cast p1, Lf2/y;

    invoke-virtual {p1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object p1

    check-cast p1, Lk1/o;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/b0;

    move-result-object v3

    iget-object v1, v1, Lk1/s;->j:Lj9/o;

    invoke-interface {v1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lk1/o;->f()Lk1/b0;

    move-result-object p1

    iget-boolean v1, v2, Lk1/a;->b:Z

    if-eqz v1, :cond_0

    sget-object p1, Lk1/u;->b:Lk1/u;

    sget-object p1, Lk1/b;->m:Lk1/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->C:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    sget-object p1, Lk1/u;->d:Lk1/u;

    sget-object v1, Lk1/u;->c:Lk1/u;

    if-ne p1, v1, :cond_1

    sget-object p1, Lk1/b;->m:Lk1/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->C:Z

    return-object p1

    :cond_1
    :try_start_2
    sget-object p1, Lk1/b;->n:Lk1/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lk1/b0;->C:Z

    return-object p1

    :cond_2
    iput-boolean v0, p0, Lk1/b0;->C:Z

    goto :goto_1

    :goto_0
    iput-boolean v0, p0, Lk1/b0;->C:Z

    throw p1

    :cond_3
    :goto_1
    sget-object p0, Lk1/b;->l:Lk1/b;

    return-object p0
.end method

.method public static final v(Lk1/b0;I)Lk1/b;
    .locals 10

    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 v3, 0x3

    if-ne v0, v3, :cond_13

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    :goto_0
    const/4 v4, 0x0

    if-eqz p0, :cond_b

    iget-object v5, p0, Le2/g0;->R:Le2/c1;

    iget-object v5, v5, Le2/c1;->f:Lf1/q;

    iget v5, v5, Lf1/q;->o:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v5, v0, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    move-object v5, v0

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_8

    instance-of v7, v5, Lk1/b0;

    if-eqz v7, :cond_1

    goto :goto_5

    :cond_1
    iget v7, v5, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_7

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    const/4 v8, 0x0

    :goto_3
    if-eqz v7, :cond_6

    iget v9, v7, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v1, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Lt0/b;

    const/16 v9, 0x10

    new-array v9, v9, [Lf1/q;

    invoke-direct {v6, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_4
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v8, v1, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0

    :cond_b
    move-object v5, v4

    :goto_5
    check-cast v5, Lk1/b0;

    if-nez v5, :cond_c

    sget-object p0, Lk1/b;->l:Lk1/b;

    return-object p0

    :cond_c
    invoke-virtual {v5}, Lk1/b0;->R0()Lk1/z;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_12

    if-eq p0, v1, :cond_11

    if-eq p0, v2, :cond_10

    if-ne p0, v3, :cond_f

    invoke-static {v5, p1}, Lk1/d;->v(Lk1/b0;I)Lk1/b;

    move-result-object p0

    sget-object v0, Lk1/b;->l:Lk1/b;

    if-ne p0, v0, :cond_d

    goto :goto_6

    :cond_d
    move-object v4, p0

    :goto_6
    if-nez v4, :cond_e

    invoke-static {v5, p1}, Lk1/d;->u(Lk1/b0;I)Lk1/b;

    move-result-object p0

    return-object p0

    :cond_e
    return-object v4

    :cond_f
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_10
    sget-object p0, Lk1/b;->m:Lk1/b;

    return-object p0

    :cond_11
    invoke-static {v5, p1}, Lk1/d;->v(Lk1/b0;I)Lk1/b;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-static {v5, p1}, Lk1/d;->u(Lk1/b0;I)Lk1/b;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_14
    invoke-static {p0}, Lk1/d;->n(Lk1/b0;)Lk1/b0;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-static {p0, p1}, Lk1/d;->t(Lk1/b0;I)Lk1/b;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ActiveParent with no focused child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    sget-object p0, Lk1/b;->l:Lk1/b;

    return-object p0
.end method

.method public static final w(Lk1/b0;)Z
    .locals 18

    move-object/from16 v0, p0

    invoke-static {v0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    check-cast v1, Lk1/o;

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, v0, :cond_0

    invoke-virtual {v0, v3, v3}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    return v4

    :cond_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-boolean v6, v2, Lk1/b0;->z:Z

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v6, v0, Lk1/b0;->z:Z

    if-nez v6, :cond_2

    invoke-static {v0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v6

    check-cast v6, Lf2/y;

    invoke-virtual {v6}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v6

    check-cast v6, Lk1/o;

    iget-object v6, v6, Lk1/o;->a:Lf2/y;

    invoke-virtual {v6}, Lf2/y;->F()Z

    move-result v6

    if-nez v6, :cond_2

    move/from16 v16, v5

    goto/16 :goto_16

    :cond_2
    :goto_0
    const-string v6, "visitAncestors called on an unattached node"

    const/16 v7, 0x10

    if-eqz v2, :cond_e

    new-instance v9, Lt0/b;

    new-array v10, v7, [Lk1/b0;

    invoke-direct {v9, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object v10, v2, Lf1/q;->l:Lf1/q;

    iget-boolean v10, v10, Lf1/q;->y:Z

    if-nez v10, :cond_3

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v10, v2, Lf1/q;->l:Lf1/q;

    iget-object v10, v10, Lf1/q;->p:Lf1/q;

    invoke-static {v2}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_f

    iget-object v12, v11, Le2/g0;->R:Le2/c1;

    iget-object v12, v12, Le2/c1;->f:Lf1/q;

    iget v12, v12, Lf1/q;->o:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_c

    :goto_2
    if-eqz v10, :cond_c

    iget v12, v10, Lf1/q;->n:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_b

    move-object v12, v10

    const/4 v13, 0x0

    :goto_3
    if-eqz v12, :cond_b

    instance-of v14, v12, Lk1/b0;

    if-eqz v14, :cond_4

    check-cast v12, Lk1/b0;

    invoke-virtual {v9, v12}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_6

    :cond_4
    iget v14, v12, Lf1/q;->n:I

    and-int/lit16 v14, v14, 0x400

    if-eqz v14, :cond_a

    instance-of v14, v12, Le2/k;

    if-eqz v14, :cond_a

    move-object v14, v12

    check-cast v14, Le2/k;

    iget-object v14, v14, Le2/k;->A:Lf1/q;

    move v15, v5

    :goto_4
    if-eqz v14, :cond_9

    iget v8, v14, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_8

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v4, :cond_5

    move-object v12, v14

    goto :goto_5

    :cond_5
    if-nez v13, :cond_6

    new-instance v13, Lt0/b;

    new-array v8, v7, [Lf1/q;

    invoke-direct {v13, v8}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v13, v12}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v12, 0x0

    :cond_7
    invoke-virtual {v13, v14}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_8
    :goto_5
    iget-object v14, v14, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_9
    if-ne v15, v4, :cond_a

    goto :goto_3

    :cond_a
    :goto_6
    invoke-static {v13}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v12

    goto :goto_3

    :cond_b
    iget-object v10, v10, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_c
    invoke-virtual {v11}, Le2/g0;->v()Le2/g0;

    move-result-object v11

    if-eqz v11, :cond_d

    iget-object v8, v11, Le2/g0;->R:Le2/c1;

    if-eqz v8, :cond_d

    iget-object v8, v8, Le2/c1;->e:Le2/b2;

    move-object v10, v8

    goto :goto_1

    :cond_d
    const/4 v10, 0x0

    goto :goto_1

    :cond_e
    const/4 v9, 0x0

    :cond_f
    new-array v8, v7, [Lk1/b0;

    iget-object v10, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v10, v10, Lf1/q;->y:Z

    if-nez v10, :cond_10

    invoke-static {v6}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_10
    iget-object v6, v0, Lf1/q;->l:Lf1/q;

    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    invoke-static {v0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v10

    move v11, v4

    move v12, v5

    :goto_7
    if-eqz v10, :cond_20

    iget-object v13, v10, Le2/g0;->R:Le2/c1;

    iget-object v13, v13, Le2/c1;->f:Lf1/q;

    iget v13, v13, Lf1/q;->o:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_1e

    :goto_8
    if-eqz v6, :cond_1e

    iget v13, v6, Lf1/q;->n:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_1d

    move-object v13, v6

    const/4 v14, 0x0

    :goto_9
    if-eqz v13, :cond_1d

    instance-of v15, v13, Lk1/b0;

    if-eqz v15, :cond_16

    check-cast v13, Lk1/b0;

    if-eqz v9, :cond_11

    invoke-virtual {v9, v13}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_14

    :cond_12
    add-int/lit8 v15, v12, 0x1

    array-length v7, v8

    if-ge v7, v15, :cond_13

    array-length v7, v8

    mul-int/lit8 v4, v7, 0x2

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v8, v5, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v4

    :cond_13
    aput-object v13, v8, v12

    move v12, v15

    :cond_14
    if-ne v13, v2, :cond_15

    move v11, v5

    :cond_15
    const/16 v15, 0x10

    goto :goto_f

    :cond_16
    iget v4, v13, Lf1/q;->n:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_15

    instance-of v4, v13, Le2/k;

    if-eqz v4, :cond_15

    move-object v4, v13

    check-cast v4, Le2/k;

    iget-object v4, v4, Le2/k;->A:Lf1/q;

    move v7, v5

    :goto_b
    if-eqz v4, :cond_1b

    iget v15, v4, Lf1/q;->n:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_17

    add-int/lit8 v7, v7, 0x1

    const/4 v15, 0x1

    if-ne v7, v15, :cond_18

    move-object v13, v4

    :cond_17
    const/16 v15, 0x10

    goto :goto_d

    :cond_18
    if-nez v14, :cond_19

    new-instance v14, Lt0/b;

    const/16 v15, 0x10

    new-array v5, v15, [Lf1/q;

    invoke-direct {v14, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    goto :goto_c

    :cond_19
    const/16 v15, 0x10

    :goto_c
    if-eqz v13, :cond_1a

    invoke-virtual {v14, v13}, Lt0/b;->b(Ljava/lang/Object;)V

    const/4 v13, 0x0

    :cond_1a
    invoke-virtual {v14, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_d
    iget-object v4, v4, Lf1/q;->q:Lf1/q;

    const/4 v5, 0x0

    goto :goto_b

    :cond_1b
    const/4 v4, 0x1

    const/16 v15, 0x10

    if-ne v7, v4, :cond_1c

    move v7, v15

    :goto_e
    const/4 v5, 0x0

    goto :goto_9

    :cond_1c
    :goto_f
    invoke-static {v14}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v13

    move v7, v15

    const/4 v4, 0x1

    goto :goto_e

    :cond_1d
    move v15, v7

    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    move v7, v15

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_1e
    move v15, v7

    invoke-virtual {v10}, Le2/g0;->v()Le2/g0;

    move-result-object v10

    if-eqz v10, :cond_1f

    iget-object v4, v10, Le2/g0;->R:Le2/c1;

    if-eqz v4, :cond_1f

    iget-object v4, v4, Le2/c1;->e:Le2/b2;

    move-object v6, v4

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    move v7, v15

    const/4 v4, 0x1

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_20
    if-eqz v11, :cond_21

    if-eqz v2, :cond_21

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lk1/d;->d(Lk1/b0;Z)Z

    move-result v5

    if-nez v5, :cond_21

    :goto_11
    const/16 v16, 0x0

    goto/16 :goto_16

    :cond_21
    new-instance v4, Lc2/l0;

    const/16 v5, 0xb

    invoke-direct {v4, v5, v0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v4}, Le2/l;->r(Lf1/q;Li9/a;)V

    invoke-virtual {v0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_24

    const/4 v15, 0x1

    if-eq v4, v15, :cond_23

    const/4 v5, 0x2

    if-eq v4, v5, :cond_24

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22

    goto :goto_12

    :cond_22
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    :goto_12
    invoke-static {v0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v4

    check-cast v4, Lf2/y;

    invoke-virtual {v4}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v4

    check-cast v4, Lk1/o;

    invoke-virtual {v4, v0}, Lk1/o;->i(Lk1/b0;)V

    :cond_24
    if-eqz v11, :cond_25

    if-eqz v2, :cond_25

    sget-object v4, Lk1/z;->l:Lk1/z;

    sget-object v5, Lk1/z;->n:Lk1/z;

    invoke-virtual {v2, v4, v5}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    :cond_25
    if-eqz v9, :cond_27

    iget v4, v9, Lt0/b;->n:I

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v9, Lt0/b;->l:[Ljava/lang/Object;

    array-length v6, v5

    if-ge v4, v6, :cond_27

    :goto_13
    if-ltz v4, :cond_27

    aget-object v6, v5, v4

    check-cast v6, Lk1/b0;

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v7

    if-eq v7, v0, :cond_26

    goto :goto_11

    :cond_26
    sget-object v7, Lk1/z;->m:Lk1/z;

    sget-object v9, Lk1/z;->n:Lk1/z;

    invoke-virtual {v6, v7, v9}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_13

    :cond_27
    const/16 v17, 0x1

    add-int/lit8 v12, v12, -0x1

    array-length v4, v8

    if-ge v12, v4, :cond_2a

    :goto_14
    if-ltz v12, :cond_2a

    aget-object v4, v8, v12

    check-cast v4, Lk1/b0;

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v5

    if-eq v5, v0, :cond_28

    goto :goto_11

    :cond_28
    if-ne v4, v2, :cond_29

    sget-object v5, Lk1/z;->l:Lk1/z;

    goto :goto_15

    :cond_29
    sget-object v5, Lk1/z;->n:Lk1/z;

    :goto_15
    sget-object v6, Lk1/z;->m:Lk1/z;

    invoke-virtual {v4, v5, v6}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_14

    :cond_2a
    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v2

    if-eq v2, v0, :cond_2b

    goto/16 :goto_11

    :cond_2b
    sget-object v2, Lk1/z;->l:Lk1/z;

    invoke-virtual {v0, v3, v2}, Lk1/b0;->N0(Lk1/z;Lk1/z;)V

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v1

    if-eq v1, v0, :cond_2c

    goto/16 :goto_11

    :goto_16
    return v16

    :cond_2c
    const/16 v17, 0x1

    return v17
.end method

.method public static final x(Lk1/b0;Le2/i0;)Z
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [Lk1/b0;

    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_0

    const-string v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lt0/b;

    new-array v3, v0, [Lf1/q;

    invoke-direct {v2, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v3, p0, Lf1/q;->q:Lf1/q;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v2, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, v2, Lt0/b;->n:I

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/q;

    iget v6, v3, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    iget v6, v3, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eqz v3, :cond_2

    instance-of v8, v3, Lk1/b0;

    if-eqz v8, :cond_5

    check-cast v3, Lk1/b0;

    add-int/lit8 v8, p0, 0x1

    array-length v9, v1

    if-ge v9, v8, :cond_4

    array-length v9, v1

    mul-int/lit8 v10, v9, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    :cond_4
    aput-object v3, v1, p0

    move p0, v8

    goto :goto_6

    :cond_5
    iget v8, v3, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_b

    instance-of v8, v3, Le2/k;

    if-eqz v8, :cond_b

    move-object v8, v3

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v4

    :goto_4
    if-eqz v8, :cond_a

    iget v10, v8, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_6

    move-object v3, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Lt0/b;

    new-array v10, v0, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_8
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v9, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_d
    sget-object v0, Lk1/c0;->a:Lk1/c0;

    invoke-static {v1, v0, v4, p0}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    sub-int/2addr p0, v5

    array-length v0, v1

    if-ge p0, v0, :cond_f

    :goto_7
    if-ltz p0, :cond_f

    aget-object v0, v1, p0

    check-cast v0, Lk1/b0;

    invoke-static {v0}, Lk1/d;->r(Lk1/b0;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v0, p1}, Lk1/d;->a(Lk1/b0;Le2/i0;)Z

    move-result v0

    if-eqz v0, :cond_e

    return v5

    :cond_e
    add-int/lit8 p0, p0, -0x1

    goto :goto_7

    :cond_f
    return v4
.end method

.method public static final y(Lk1/b0;Le2/i0;)Z
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [Lk1/b0;

    iget-object v2, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v2, v2, Lf1/q;->y:Z

    if-nez v2, :cond_0

    const-string v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lt0/b;

    new-array v3, v0, [Lf1/q;

    invoke-direct {v2, v3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iget-object p0, p0, Lf1/q;->l:Lf1/q;

    iget-object v3, p0, Lf1/q;->q:Lf1/q;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v2, p0}, Le2/l;->b(Lt0/b;Lf1/q;)V

    :goto_0
    move p0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget v3, v2, Lt0/b;->n:I

    const/4 v5, 0x1

    if-eqz v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/q;

    iget v6, v3, Lf1/q;->o:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_3

    invoke-static {v2, v3}, Le2/l;->b(Lt0/b;Lf1/q;)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v3, :cond_2

    iget v6, v3, Lf1/q;->n:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    move-object v7, v6

    :goto_3
    if-eqz v3, :cond_2

    instance-of v8, v3, Lk1/b0;

    if-eqz v8, :cond_5

    check-cast v3, Lk1/b0;

    add-int/lit8 v8, p0, 0x1

    array-length v9, v1

    if-ge v9, v8, :cond_4

    array-length v9, v1

    mul-int/lit8 v10, v9, 0x2

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v1, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v10

    :cond_4
    aput-object v3, v1, p0

    move p0, v8

    goto :goto_6

    :cond_5
    iget v8, v3, Lf1/q;->n:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_b

    instance-of v8, v3, Le2/k;

    if-eqz v8, :cond_b

    move-object v8, v3

    check-cast v8, Le2/k;

    iget-object v8, v8, Le2/k;->A:Lf1/q;

    move v9, v4

    :goto_4
    if-eqz v8, :cond_a

    iget v10, v8, Lf1/q;->n:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v5, :cond_6

    move-object v3, v8

    goto :goto_5

    :cond_6
    if-nez v7, :cond_7

    new-instance v7, Lt0/b;

    new-array v10, v0, [Lf1/q;

    invoke-direct {v7, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v3, v6

    :cond_8
    invoke-virtual {v7, v8}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_9
    :goto_5
    iget-object v8, v8, Lf1/q;->q:Lf1/q;

    goto :goto_4

    :cond_a
    if-ne v9, v5, :cond_b

    goto :goto_3

    :cond_b
    :goto_6
    invoke-static {v7}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v3

    goto :goto_3

    :cond_c
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_d
    sget-object v0, Lk1/c0;->a:Lk1/c0;

    invoke-static {v1, v0, v4, p0}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    move v0, v4

    :goto_7
    if-ge v0, p0, :cond_f

    aget-object v2, v1, v0

    check-cast v2, Lk1/b0;

    invoke-static {v2}, Lk1/d;->r(Lk1/b0;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v2, p1}, Lk1/d;->k(Lk1/b0;Le2/i0;)Z

    move-result v2

    if-eqz v2, :cond_e

    return v5

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    return v4
.end method

.method public static final z(Lk1/b0;ILi9/c;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_b

    iget-object v5, v1, Le2/g0;->R:Le2/c1;

    iget-object v5, v5, Le2/c1;->f:Lf1/q;

    iget v5, v5, Lf1/q;->o:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v5, v0, Lf1/q;->n:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_8

    move-object v5, v0

    move-object v6, v4

    :goto_2
    if-eqz v5, :cond_8

    instance-of v7, v5, Lk1/b0;

    if-eqz v7, :cond_1

    goto :goto_5

    :cond_1
    iget v7, v5, Lf1/q;->n:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_7

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    move v8, v2

    :goto_3
    if-eqz v7, :cond_6

    iget v9, v7, Lf1/q;->n:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v3, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v6, :cond_3

    new-instance v6, Lt0/b;

    const/16 v9, 0x10

    new-array v9, v9, [Lf1/q;

    invoke-direct {v6, v9}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_4
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_3

    :cond_6
    if-ne v8, v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_9
    invoke-virtual {v1}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v0, v1, Le2/g0;->R:Le2/c1;

    if-eqz v0, :cond_a

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0

    :cond_b
    move-object v5, v4

    :goto_5
    check-cast v5, Lk1/b0;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lk1/b0;->Q0()Lx/o;

    move-result-object v0

    invoke-virtual {p0}, Lk1/b0;->Q0()Lx/o;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_10

    :cond_c
    invoke-virtual {p0}, Lk1/b0;->Q0()Lx/o;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p1, v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v0, 0x6

    if-ne p1, v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    goto :goto_6

    :cond_f
    const/4 v0, 0x4

    if-ne p1, v0, :cond_10

    goto :goto_6

    :cond_10
    if-ne p1, v3, :cond_11

    move v0, v1

    goto :goto_6

    :cond_11
    if-ne p1, v1, :cond_1e

    move v0, v3

    :goto_6
    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object p1, p1, Lw/d;->a:Lw/p;

    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object p1

    iget p1, p1, Lw/k;->n:I

    if-lez p1, :cond_1d

    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object p1, p1, Lw/d;->a:Lw/p;

    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object p1

    iget-object p1, p1, Lw/k;->k:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lf1/q;->y:Z

    if-nez p1, :cond_12

    goto/16 :goto_f

    :cond_12
    invoke-virtual {p0, v0}, Lx/o;->N0(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object v5, p1, Lw/d;->a:Lw/p;

    invoke-virtual {v5}, Lw/p;->g()Lw/k;

    move-result-object v5

    iget v5, v5, Lw/k;->n:I

    sub-int/2addr v5, v3

    iget-object p1, p1, Lw/d;->a:Lw/p;

    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object p1

    iget-object p1, p1, Lw/k;->k:Ljava/lang/Object;

    invoke-static {p1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw/l;

    iget p1, p1, Lw/l;->a:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_7

    :cond_13
    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object p1, p1, Lw/d;->a:Lw/p;

    iget-object p1, p1, Lw/p;->e:Lf8/p2;

    iget-object p1, p1, Lf8/p2;->b:Ljava/lang/Object;

    check-cast p1, Lr0/b1;

    invoke-virtual {p1}, Lr0/b1;->g()I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_7
    new-instance v5, Lj9/y;

    invoke-direct {v5}, Lj9/y;-><init>()V

    iget-object v6, p0, Lx/o;->A:Lr/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lx/j;

    invoke-direct {v7, p1, p1}, Lx/j;-><init>(II)V

    iget-object p1, v6, Lr/a;->a:Lt0/b;

    invoke-virtual {p1, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    iput-object v7, v5, Lj9/y;->m:Ljava/lang/Object;

    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object p1, p1, Lw/d;->a:Lw/p;

    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object v6

    iget-object v6, v6, Lw/k;->k:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_14

    move v3, v2

    goto :goto_c

    :cond_14
    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object v6

    iget-object v7, v6, Lw/k;->o:Lr/m1;

    sget-object v8, Lr/m1;->l:Lr/m1;

    if-ne v7, v8, :cond_15

    invoke-virtual {v6}, Lw/k;->g()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    :goto_8
    long-to-int v6, v6

    goto :goto_9

    :cond_15
    invoke-virtual {v6}, Lw/k;->g()J

    move-result-wide v6

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    goto :goto_8

    :goto_9
    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object p1

    iget-object v7, p1, Lw/k;->k:Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_16

    move v10, v2

    goto :goto_b

    :cond_16
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    move v9, v2

    move v10, v9

    :goto_a
    if-ge v9, v8, :cond_17

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw/l;

    iget v11, v11, Lw/l;->m:I

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int/2addr v10, v7

    iget p1, p1, Lw/k;->q:I

    add-int/2addr v10, p1

    :goto_b
    if-nez v10, :cond_18

    goto :goto_c

    :cond_18
    div-int/2addr v6, v10

    if-ge v6, v3, :cond_19

    goto :goto_c

    :cond_19
    move v3, v6

    :goto_c
    mul-int/2addr v3, v1

    iget-object p1, p0, Lx/o;->z:Lw/d;

    iget-object p1, p1, Lw/d;->a:Lw/p;

    invoke-virtual {p1}, Lw/p;->g()Lw/k;

    move-result-object p1

    iget p1, p1, Lw/k;->n:I

    if-le v3, p1, :cond_1a

    move v3, p1

    :cond_1a
    :goto_d
    if-nez v4, :cond_1c

    iget-object p1, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast p1, Lx/j;

    invoke-virtual {p0, p1, v0}, Lx/o;->M0(Lx/j;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-ge v2, v3, :cond_1c

    iget-object p1, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast p1, Lx/j;

    iget v1, p1, Lx/j;->a:I

    iget p1, p1, Lx/j;->b:I

    invoke-virtual {p0, v0}, Lx/o;->N0(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    :goto_e
    iget-object v4, p0, Lx/o;->A:Lr/a;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lx/j;

    invoke-direct {v6, v1, p1}, Lx/j;-><init>(II)V

    iget-object p1, v4, Lr/a;->a:Lt0/b;

    invoke-virtual {p1, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lx/o;->A:Lr/a;

    iget-object v1, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Lx/j;

    iget-object p1, p1, Lr/a;->a:Lt0/b;

    invoke-virtual {p1, v1}, Lt0/b;->j(Ljava/lang/Object;)Z

    iput-object v6, v5, Lj9/y;->m:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p1

    invoke-virtual {p1}, Le2/g0;->k()V

    new-instance p1, Lx/n;

    invoke-direct {p1, p0, v5, v0}, Lx/n;-><init>(Lx/o;Lj9/y;I)V

    invoke-interface {p2, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_d

    :cond_1c
    iget-object p1, p0, Lx/o;->A:Lr/a;

    iget-object p2, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast p2, Lx/j;

    iget-object p1, p1, Lr/a;->a:Lt0/b;

    invoke-virtual {p1, p2}, Lt0/b;->j(Ljava/lang/Object;)Z

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    invoke-virtual {p0}, Le2/g0;->k()V

    return-object v4

    :cond_1d
    :goto_f
    sget-object p0, Lx/o;->C:Lx/m;

    invoke-interface {p2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported direction for beyond bounds layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_10
    return-object v4
.end method
