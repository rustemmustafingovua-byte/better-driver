.class public final Lpb/v;
.super Lpb/j;
.source "SourceFile"

# interfaces
.implements Lpb/y;


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiPolygon"

    return-object p0
.end method

.method public final G()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic O()Lpb/j;
    .locals 0

    invoke-virtual {p0}, Lpb/v;->P()Lpb/v;

    move-result-object p0

    return-object p0
.end method

.method public final P()Lpb/v;
    .locals 5

    iget-object v0, p0, Lpb/j;->o:[Lpb/i;

    array-length v1, v0

    new-array v2, v1, [Lpb/x;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lpb/i;->o()Lpb/i;

    move-result-object v4

    check-cast v4, Lpb/x;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/v;

    iget-object p0, p0, Lpb/i;->m:Lpb/m;

    invoke-direct {v0, v2, p0}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final getDimension()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final bridge synthetic p()Lpb/i;
    .locals 0

    invoke-virtual {p0}, Lpb/v;->P()Lpb/v;

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
    .locals 7

    invoke-virtual {p0}, Lpb/j;->L()Z

    move-result v0

    iget-object v1, p0, Lpb/i;->m:Lpb/m;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lpb/t;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lpb/j;->o:[Lpb/i;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    check-cast v4, Lpb/x;

    invoke-virtual {v4}, Lpb/x;->s()Lpb/i;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-virtual {v4}, Lpb/i;->E()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lpb/i;->A(I)Lpb/i;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lpb/q;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lpb/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lpb/t;

    invoke-direct {v0, p0, v1}, Lpb/j;-><init>([Lpb/i;Lpb/m;)V

    return-object v0
.end method

.method public final u()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
