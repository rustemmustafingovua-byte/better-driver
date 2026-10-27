.class public abstract Lf8/o3;
.super Lf8/y3;
.source "SourceFile"


# instance fields
.field public final n:Lf8/k3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/y3;-><init>()V

    .line 2
    new-instance v0, Lf8/k3;

    invoke-direct {v0}, Lf8/k3;-><init>()V

    .line 3
    iput-object v0, p0, Lf8/o3;->n:Lf8/k3;

    return-void
.end method

.method public constructor <init>(Lf8/n3;)V
    .locals 4

    .line 4
    invoke-direct {p0, p1}, Lf8/y3;-><init>(Lf8/l3;)V

    .line 5
    iget-object p1, p1, Lf8/n3;->n:Lf8/i3;

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lf8/k3;->d:Lf8/k3;

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p1, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v0, Lf8/s4;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p1, Lf8/k3;->d:Lf8/k3;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Lf8/i3;->a:Z

    .line 11
    iget-object v1, p1, Lf8/i3;->c:Ljava/lang/Object;

    check-cast v1, Lf8/s4;

    .line 12
    iget-boolean p1, p1, Lf8/i3;->b:Z

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v1, v0}, Lf8/k3;->c(Lf8/s4;Z)Lf8/s4;

    move-result-object v1

    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v0, v1, Lf8/s4;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 15
    invoke-virtual {v1, p1}, Lf8/s4;->c(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/j3;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lf8/i3;->d(Lf8/j3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v1}, Lf8/s4;->d()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/j3;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lf8/i3;->d(Lf8/j3;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Lf8/k3;

    .line 20
    invoke-direct {p1, v1}, Lf8/k3;-><init>(Lf8/s4;)V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p1, Lf8/k3;->c:Z

    .line 22
    :goto_2
    iput-object p1, p0, Lf8/o3;->n:Lf8/k3;

    return-void
.end method


# virtual methods
.method public final j(Lf8/v2;)Z
    .locals 2

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v1

    iget-object v1, v1, Lf8/x3;->a:Lf8/m2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0, p1}, Lf8/k3;->g(Lf8/v2;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-super {p0, p1}, Lf8/y3;->j(Lf8/v2;)Z

    move-result p0

    return p0
.end method

.method public final l()Ljava/util/Map;
    .locals 1

    invoke-virtual {p0}, Lf8/y3;->n()Ljava/util/TreeMap;

    move-result-object v0

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->f()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final o(Lf8/v2;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p1, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v0}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v1

    iget-object v1, v1, Lf8/x3;->a:Lf8/m2;

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    iget-object p0, p0, Lf8/k3;->a:Lf8/s4;

    invoke-virtual {p0, p1}, Lf8/s4;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lf8/v2;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptor does not match message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-super {p0, p1}, Lf8/y3;->o(Lf8/v2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->h()Z

    move-result p0

    return p0
.end method

.method public final w()V
    .locals 0

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    invoke-virtual {p0}, Lf8/k3;->k()V

    return-void
.end method

.method public final x(Lf8/k;Lf8/f5;Lf8/h3;I)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lf8/y3;->q()Lf8/x3;

    move-result-object v0

    iget-object v4, v0, Lf8/x3;->a:Lf8/m2;

    new-instance v5, Lb0/l1;

    iget-object p0, p0, Lf8/o3;->n:Lf8/k3;

    const/16 v0, 0x9

    invoke-direct {v5, v0, p0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lf8/v4;->m(Lf8/k;Lf8/f5;Lf8/h3;Lf8/m2;Lb0/l1;I)Z

    move-result p0

    return p0
.end method
