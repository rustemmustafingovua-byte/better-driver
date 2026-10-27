.class public final Lpb/u;
.super Lpb/j;
.source "SourceFile"

# interfaces
.implements Lpb/b0;


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiPoint"

    return-object p0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic O()Lpb/j;
    .locals 0

    invoke-virtual {p0}, Lpb/u;->P()Lpb/u;

    move-result-object p0

    return-object p0
.end method

.method public final P()Lpb/u;
    .locals 5

    iget-object v0, p0, Lpb/j;->o:[Lpb/i;

    array-length v1, v0

    new-array v2, v1, [Lpb/w;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lpb/i;->o()Lpb/i;

    move-result-object v4

    check-cast v4, Lpb/w;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/u;

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v2, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic p()Lpb/i;
    .locals 0

    invoke-virtual {p0}, Lpb/u;->P()Lpb/u;

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
    .locals 2

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpb/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final u()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
