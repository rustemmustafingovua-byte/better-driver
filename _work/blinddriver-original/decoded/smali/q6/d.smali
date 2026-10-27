.class public final Lq6/d;
.super Ls6/d;
.source "SourceFile"


# virtual methods
.method public final m()Ls6/d;
    .locals 1

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-nez v0, :cond_0

    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lr6/b;

    invoke-direct {v0, p0}, Lr6/b;-><init>(Ls6/d;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;
    .locals 1

    new-instance v0, Lq6/d;

    invoke-direct {v0, p0, p1, p2}, Ls6/d;-><init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public final r(Ljava/lang/Object;)Ls6/d;
    .locals 2

    new-instance v0, Lq6/d;

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    invoke-direct {v0, p0, v1, p1}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final s(Lf8/p2;)Ls6/d;
    .locals 2

    new-instance v0, Lq6/d;

    iget-object v1, p0, Ls6/d;->q:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Ls6/d;->k(Ljava/lang/Object;Ls5/g;Lb6/r0;Z)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final t([Lq6/c;[Lq6/c;)Ls6/d;
    .locals 1

    new-instance v0, Lq6/d;

    invoke-direct {v0, p0, p1, p2}, Ls6/d;-><init>(Ls6/d;[Lq6/c;[Lq6/c;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BeanSerializer for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 1

    new-instance v0, Lr6/t;

    invoke-direct {v0, p0, p1}, Lr6/t;-><init>(Ls6/d;Lu6/r;)V

    return-object v0
.end method

.method public final bridge synthetic withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 0

    invoke-virtual {p0, p1}, Lq6/d;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object p0

    return-object p0
.end method

.method public final withIgnoredProperties(Ljava/util/Set;)Lb6/u;
    .locals 2

    new-instance v0, Lq6/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls6/d;-><init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method
