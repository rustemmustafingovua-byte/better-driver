.class public final Lg6/v0;
.super Lg6/b1;
.source "SourceFile"


# virtual methods
.method public final Z(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [C

    check-cast p2, [C

    array-length p0, p1

    array-length v0, p2

    add-int v1, p0, v0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final a0()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [C

    return-object p0
.end method

.method public final c0(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d0(Le6/r;Ljava/lang/Boolean;)Lg6/b1;
    .locals 0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->i0()[C

    move-result-object p0

    invoke-virtual {p1}, Ls5/k;->k0()I

    move-result p2

    invoke-virtual {p1}, Ls5/k;->j0()I

    move-result p1

    new-array v0, p1, [C

    invoke-static {p0, p2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->u0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    sget-object v4, Ls5/n;->x:Ls5/n;

    if-eq v3, v4, :cond_5

    sget-object v4, Ls5/n;->A:Ls5/n;

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget-object v4, Ls5/n;->F:Ls5/n;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lg6/b1;->q:Le6/r;

    if-eqz v3, :cond_2

    invoke-interface {v3, p2}, Le6/r;->getNullValue(Lb6/i;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lg6/f1;->P(Lb6/i;)V

    const-string v3, "\u0000"

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Cannot convert a JSON String of length %d into a char element of char array"

    invoke-virtual {p2, p0, v0, p1}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_4
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Ls5/n;->z:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-object v2

    :cond_7
    instance-of v1, v0, [C

    if-eqz v1, :cond_8

    check-cast v0, [C

    return-object v0

    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v1, v0, [B

    if-eqz v1, :cond_a

    sget-object p0, Ls5/b;->a:Ls5/a;

    check-cast v0, [B

    invoke-virtual {p0, v0}, Ls5/a;->e([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    :cond_a
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2
.end method
