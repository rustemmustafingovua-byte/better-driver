.class public final Lg6/u0;
.super Lg6/b1;
.source "SourceFile"


# virtual methods
.method public final Z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    add-int v1, p0, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final a0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public final c0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->P()B

    move-result p0

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 p2, 0x0

    aput-byte p0, p1, p2

    return-object p1

    :cond_0
    sget-object v1, Ls5/n;->F:Ls5/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object p1, p0, Lg6/b1;->q:Le6/r;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lg6/b1;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    return-object v2

    :cond_2
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2
.end method

.method public final d0(Le6/r;Ljava/lang/Boolean;)Lg6/b1;
    .locals 1

    new-instance v0, Lg6/u0;

    invoke-direct {v0, p0, p1, p2}, Lg6/b1;-><init>(Lg6/b1;Le6/r;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->A:Ls5/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v1, p2, Lb6/i;->q:Lb6/h;

    iget-object v1, v1, Ld6/m;->m:Ld6/a;

    iget-object v1, v1, Ld6/a;->s:Ls5/a;

    invoke-virtual {p1, v1}, Ls5/k;->J(Ls5/a;)[B

    move-result-object p0
    :try_end_0
    .catch Ls5/i; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ls5/l;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "base64"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    const-class v0, [B

    invoke-virtual {p2, v0, p0, v1, p1}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_0
    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    instance-of v1, v0, [B

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, [B

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lg6/b1;->b0(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [B

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Lb6/i;->Z()Lf8/u3;

    move-result-object v0

    iget-object v1, v0, Lf8/u3;->b:Ljava/lang/Object;

    check-cast v1, Lu6/c;

    if-nez v1, :cond_5

    new-instance v1, Lu6/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lu6/c;-><init>(I)V

    iput-object v1, v0, Lf8/u3;->b:Ljava/lang/Object;

    :cond_5
    iget-object v0, v0, Lf8/u3;->b:Ljava/lang/Object;

    check-cast v0, Lu6/c;

    invoke-virtual {v0}, Lu6/c;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move v2, v3

    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    sget-object v5, Ls5/n;->x:Ls5/n;

    if-eq v4, v5, :cond_a

    sget-object v5, Ls5/n;->B:Ls5/n;

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Ls5/k;->P()B

    move-result v4

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_6
    sget-object v5, Ls5/n;->F:Ls5/n;

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lg6/b1;->q:Le6/r;

    if-eqz v4, :cond_7

    invoke-interface {v4, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    move v4, v3

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/f1;->C(Ls5/k;Lb6/i;)B

    move-result v4

    :goto_2
    array-length v5, v1

    if-lt v2, v5, :cond_9

    invoke-virtual {v0, v2, v1}, Lu6/c;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    move-object v1, v5

    :cond_9
    add-int/lit8 v5, v2, 0x1

    :try_start_2
    aput-byte v4, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v5

    goto :goto_1

    :catch_2
    move-exception p0

    move v2, v5

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v2, v1}, Lu6/c;->c(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, [B

    :goto_3
    return-object v2

    :goto_4
    iget p1, v0, Lu6/c;->d:I

    add-int/2addr p1, v2

    invoke-static {p0, v1, p1}, Lb6/p;->j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;

    move-result-object p0

    throw p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->v:Lt6/f;

    return-object p0
.end method
