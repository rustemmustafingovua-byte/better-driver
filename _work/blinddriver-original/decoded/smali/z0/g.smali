.class public final Lz0/g;
.super Lw0/d;
.source "SourceFile"


# instance fields
.field public r:Lz0/h;


# virtual methods
.method public final bridge synthetic a()Lw0/b;
    .locals 0

    invoke-virtual {p0}, Lz0/g;->c()Lz0/h;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic build()Lu0/d;
    .locals 0

    invoke-virtual {p0}, Lz0/g;->c()Lz0/h;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lz0/h;
    .locals 3

    iget-object v0, p0, Lw0/d;->n:Lw0/j;

    iget-object v1, p0, Lz0/g;->r:Lz0/h;

    iget-object v2, v1, Lw0/b;->l:Lw0/j;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ly0/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw0/d;->m:Ly0/b;

    new-instance v1, Lz0/h;

    iget-object v0, p0, Lw0/d;->n:Lw0/j;

    iget v2, p0, Lw0/d;->q:I

    invoke-direct {v1, v0, v2}, Lw0/b;-><init>(Lw0/j;I)V

    :goto_0
    iput-object v1, p0, Lz0/g;->r:Lz0/h;

    return-object v1
.end method

.method public final bridge containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lr0/m1;

    invoke-super {p0, p1}, Lw0/d;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr0/u2;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lr0/u2;

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final bridge get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lr0/m1;

    invoke-super {p0, p1}, Lw0/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/u2;

    return-object p0
.end method

.method public final bridge getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    check-cast p1, Lr0/m1;

    check-cast p2, Lr0/u2;

    invoke-super {p0, p1, p2}, Ljava/util/AbstractMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/u2;

    return-object p0
.end method

.method public final bridge remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lr0/m1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p1, Lr0/m1;

    invoke-super {p0, p1}, Lw0/d;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/u2;

    return-object p0
.end method
