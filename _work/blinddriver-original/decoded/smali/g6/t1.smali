.class public final Lg6/t1;
.super Lg6/m1;
.source "SourceFile"


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object p0

    sget-object v0, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lu6/z;->J0(Ls5/k;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lu6/z;->n0()V

    :cond_1
    invoke-virtual {p0, p1}, Lu6/z;->J0(Ls5/k;)V

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-eq v0, v1, :cond_1

    sget-object p1, Ls5/n;->v:Ls5/n;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lu6/z;->R()V

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Expected END_OBJECT after copying contents of a JsonParser into TokenBuffer, got "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p2, Lb6/i;->t:Ls5/k;

    invoke-static {p2, p1, p0}, Lb6/i;->E0(Ls5/k;Ls5/n;Ljava/lang/String;)Lh6/b;

    move-result-object p0

    throw p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->p:Lt6/f;

    return-object p0
.end method
