.class public abstract Lf8/n3;
.super Lf8/l3;
.source "SourceFile"


# instance fields
.field public n:Lf8/i3;


# virtual methods
.method public final B(Lf8/v2;)Lf8/a;
    .locals 1

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object p0

    new-instance p1, Lf8/c3;

    invoke-direct {p1, p0}, Lf8/c3;-><init>(Lf8/m2;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lf8/l3;->B(Lf8/v2;)Lf8/a;

    move-result-object p0

    return-object p0
.end method

.method public final R(Lf8/v2;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lf8/n3;->V(Lf8/v2;)V

    invoke-virtual {p0}, Lf8/n3;->S()V

    iget-object v0, p0, Lf8/n3;->n:Lf8/i3;

    iget-boolean v1, v0, Lf8/i3;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v1, Lf8/s4;

    invoke-static {v1, v2}, Lf8/k3;->c(Lf8/s4;Z)Lf8/s4;

    move-result-object v1

    iput-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    iput-boolean v2, v0, Lf8/i3;->a:Z

    :cond_0
    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lf8/i3;->b:Z

    if-nez v1, :cond_2

    instance-of v1, p2, Lf8/n4;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iput-boolean v2, v0, Lf8/i3;->b:Z

    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v1

    invoke-static {v1, p2}, Lf8/i3;->e(Lf8/x5;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lf8/i3;->b(Lf8/v2;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v0, Lf8/s4;

    invoke-virtual {v0, p1, v1}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    check-cast v1, Ljava/util/List;

    :goto_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lf8/l3;->G(Lf8/v2;Ljava/lang/Object;)V

    return-void
.end method

.method public final S()V
    .locals 3

    iget-object v0, p0, Lf8/n3;->n:Lf8/i3;

    if-nez v0, :cond_0

    sget-object v0, Lf8/k3;->d:Lf8/k3;

    new-instance v0, Lf8/i3;

    new-instance v1, Lf8/s4;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lf8/s4;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lf8/i3;->a:Z

    iput-object v0, p0, Lf8/n3;->n:Lf8/i3;

    :cond_0
    return-void
.end method

.method public final T(Lf8/o3;)V
    .locals 4

    iget-object v0, p1, Lf8/o3;->n:Lf8/k3;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lf8/n3;->S()V

    iget-object v0, p0, Lf8/n3;->n:Lf8/i3;

    iget-object p1, p1, Lf8/o3;->n:Lf8/k3;

    iget-boolean v1, v0, Lf8/i3;->a:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v1, Lf8/s4;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lf8/k3;->c(Lf8/s4;Z)Lf8/s4;

    move-result-object v1

    iput-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    iput-boolean v2, v0, Lf8/i3;->a:Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p1, Lf8/k3;->a:Lf8/s4;

    iget-object v3, v2, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {v0, v2}, Lf8/i3;->c(Ljava/util/Map$Entry;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lf8/i3;->c(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lf8/l3;->O()V

    :cond_3
    return-void
.end method

.method public final U(Lf8/v2;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lf8/n3;->V(Lf8/v2;)V

    invoke-virtual {p0}, Lf8/n3;->S()V

    iget-object v0, p0, Lf8/n3;->n:Lf8/i3;

    iget-boolean v1, v0, Lf8/i3;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v1, Lf8/s4;

    invoke-static {v1, v2}, Lf8/k3;->c(Lf8/s4;Z)Lf8/s4;

    move-result-object v1

    iput-object v1, v0, Lf8/i3;->c:Ljava/lang/Object;

    iput-boolean v2, v0, Lf8/i3;->a:Z

    :cond_0
    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v6

    invoke-static {v6, v5}, Lf8/i3;->e(Lf8/x5;Ljava/lang/Object;)V

    iget-boolean v6, v0, Lf8/i3;->b:Z

    if-nez v6, :cond_2

    instance-of v5, v5, Lf8/n4;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    :goto_2
    iput-boolean v5, v0, Lf8/i3;->b:Z

    goto :goto_0

    :cond_3
    move-object p2, v1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lf8/v2;->i()Lf8/x5;

    move-result-object v1

    invoke-static {v1, p2}, Lf8/i3;->e(Lf8/x5;Ljava/lang/Object;)V

    :goto_3
    iget-boolean v1, v0, Lf8/i3;->b:Z

    if-nez v1, :cond_7

    instance-of v1, p2, Lf8/n4;

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :cond_7
    :goto_4
    iput-boolean v2, v0, Lf8/i3;->b:Z

    iget-object v0, v0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v0, Lf8/s4;

    invoke-virtual {v0, p1, p2}, Lf8/s4;->g(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lf8/l3;->O()V

    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lf8/l3;->P(Lf8/v2;Ljava/lang/Object;)V

    return-void
.end method

.method public final V(Lf8/v2;)V
    .locals 0

    iget-object p1, p1, Lf8/v2;->s:Lf8/m2;

    invoke-virtual {p0}, Lf8/a;->h()Lf8/m2;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Lf8/v2;)Z
    .locals 2

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lf8/n3;->V(Lf8/v2;)V

    iget-object p0, p0, Lf8/n3;->n:Lf8/i3;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-super {p0, p1}, Lf8/l3;->j(Lf8/v2;)Z

    move-result p0

    return p0
.end method

.method public final l()Ljava/util/Map;
    .locals 2

    invoke-virtual {p0}, Lf8/l3;->I()Ljava/util/TreeMap;

    move-result-object v0

    iget-object p0, p0, Lf8/n3;->n:Lf8/i3;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lf8/i3;->c:Ljava/lang/Object;

    check-cast p0, Lf8/s4;

    iget-boolean v1, p0, Lf8/s4;->o:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lf8/v2;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lf8/n3;->V(Lf8/v2;)V

    iget-object p0, p0, Lf8/n3;->n:Lf8/i3;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lf8/i3;->b(Lf8/v2;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    iget-object p0, p1, Lf8/v2;->r:Lf8/u2;

    iget-object p0, p0, Lf8/u2;->l:Lf8/t2;

    sget-object v0, Lf8/t2;->u:Lf8/t2;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lf8/v2;->j()Lf8/m2;

    move-result-object p0

    invoke-static {p0}, Lf8/d3;->e(Lf8/m2;)Lf8/d3;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lf8/v2;->g()Ljava/lang/Object;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-super {p0, p1}, Lf8/l3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
