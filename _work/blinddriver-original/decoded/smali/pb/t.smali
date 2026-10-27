.class public final Lpb/t;
.super Lpb/j;
.source "SourceFile"

# interfaces
.implements Lpb/r;


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiLineString"

    return-object p0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic O()Lpb/j;
    .locals 0

    invoke-virtual {p0}, Lpb/t;->P()Lpb/t;

    move-result-object p0

    return-object p0
.end method

.method public final P()Lpb/t;
    .locals 5

    iget-object v0, p0, Lpb/j;->o:[Lpb/i;

    array-length v1, v0

    new-array v2, v1, [Lpb/q;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lpb/i;->o()Lpb/i;

    move-result-object v4

    check-cast v4, Lpb/q;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/t;

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v2, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic p()Lpb/i;
    .locals 0

    invoke-virtual {p0}, Lpb/t;->P()Lpb/t;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lpb/i;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lpb/i;->M(Lpb/i;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lpb/j;->r(Lpb/i;)Z

    move-result p0

    return p0
.end method

.method public final s()Lpb/i;
    .locals 1

    new-instance v0, Lg5/i;

    invoke-direct {v0, p0}, Lg5/i;-><init>(Lpb/i;)V

    invoke-virtual {v0}, Lg5/i;->n()Lpb/i;

    move-result-object p0

    return-object p0
.end method

.method public final u()I
    .locals 4

    invoke-virtual {p0}, Lpb/j;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    aget-object v2, v2, v0

    check-cast v2, Lpb/q;

    invoke-virtual {v2}, Lpb/q;->P()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
