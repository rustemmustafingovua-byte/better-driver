.class public abstract Lh0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lf1/r;Li9/e;)Lf1/r;
    .locals 1

    new-instance v0, Lh0/b;

    invoke-direct {v0, p1}, Lh0/b;-><init>(Li9/e;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Le2/j;)Le0/c;
    .locals 13

    new-instance v2, Ld0/a;

    invoke-direct {v2}, Ld0/a;-><init>()V

    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v1, 0x1

    const-class v3, Ld0/a;

    const-string v4, "addFilter"

    const-string v5, "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    new-instance v1, Lb0/a;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lb0/a;-><init>(ILjava/lang/Object;)V

    new-instance v3, Lb0/a;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v1, v0}, Lb0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lh0/d;->a:Lh0/d;

    invoke-static {p0, v0, v3}, Le2/l;->y(Le2/j;Ljava/lang/Object;Li9/c;)V

    new-instance p0, Lk/h0;

    invoke-direct {p0}, Lk/h0;-><init>()V

    iget-object v0, v2, Ld0/a;->a:Lk/h0;

    iget-object v1, v0, Lk/h0;->a:[Ljava/lang/Object;

    iget v0, v0, Lk/h0;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v3

    move v7, v4

    move-object v8, v5

    :goto_0
    sget-object v9, Le0/f;->b:Le0/f;

    if-ge v6, v0, :cond_6

    aget-object v10, v1, v6

    check-cast v10, Le0/b;

    if-eqz v7, :cond_0

    if-eq v10, v9, :cond_5

    :cond_0
    if-ne v10, v9, :cond_1

    if-ne v8, v9, :cond_1

    goto :goto_2

    :cond_1
    if-ne v10, v9, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v2, Ld0/a;->b:Lk/h0;

    iget-object v9, v7, Lk/h0;->a:[Ljava/lang/Object;

    iget v7, v7, Lk/h0;->b:I

    move v11, v3

    :goto_1
    if-ge v11, v7, :cond_4

    aget-object v12, v9, v11

    check-cast v12, Li9/c;

    invoke-interface {v12, v10}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_3

    :goto_2
    move v7, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p0, v10}, Lk/h0;->a(Ljava/lang/Object;)V

    move v7, v3

    move-object v8, v10

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lk/h0;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Lk/h0;->a:[Ljava/lang/Object;

    iget v1, p0, Lk/h0;->b:I

    sub-int/2addr v1, v4

    aget-object v5, v0, v1

    :goto_5
    check-cast v5, Le0/b;

    if-ne v5, v9, :cond_8

    iget v0, p0, Lk/h0;->b:I

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lk/h0;->k(I)Ljava/lang/Object;

    :cond_8
    new-instance v0, Le0/c;

    iget-object v1, p0, Lk/h0;->c:Lk/f0;

    if-eqz v1, :cond_9

    goto :goto_6

    :cond_9
    new-instance v1, Lk/f0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lk/f0;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lk/h0;->c:Lk/f0;

    :goto_6
    invoke-direct {v0, v1}, Le0/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static final c(Li9/e;)Lf1/r;
    .locals 1

    new-instance v0, Lh0/e;

    invoke-direct {v0, p0}, Lh0/e;-><init>(Li9/e;)V

    return-object v0
.end method

.method public static final d(Lf1/r;Lg5/s;Li9/c;Lm0/p1;Li9/c;)Lf1/r;
    .locals 1

    new-instance v0, Lh0/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lh0/i;-><init>(Lg5/s;Li9/c;Li9/c;Li9/c;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ll1/c;Lc2/u;Lc2/u;)Ll1/c;
    .locals 2

    invoke-interface {p1}, Lc2/u;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lc2/u;->j()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ll1/c;->e()J

    move-result-wide v0

    invoke-static {p1}, Lc2/x;->h(Lc2/u;)Lc2/u;

    move-result-object p1

    invoke-interface {p2, p1, v0, v1}, Lc2/u;->L(Lc2/u;J)J

    move-result-wide p1

    invoke-virtual {p0}, Ll1/c;->d()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ll1/c;->e:Ll1/c;

    return-object p0
.end method
