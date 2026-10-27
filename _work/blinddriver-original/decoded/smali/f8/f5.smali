.class public final Lf8/f5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf8/n4;


# instance fields
.field public l:Ljava/util/Map;

.field public m:I

.field public n:Lb0/l1;


# virtual methods
.method public final bridge synthetic build()Lf8/o4;
    .locals 0

    invoke-virtual {p0}, Lf8/f5;->r()Lf8/i5;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object v0

    new-instance v1, Lf8/i5;

    iget-object p0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-direct {v1, p0}, Lf8/i5;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lf8/f5;->x(Lf8/i5;)V

    return-object v0
.end method

.method public final g(ILf8/g5;)V
    .locals 1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lf8/f5;->n:Lb0/l1;

    if-eqz v0, :cond_0

    iget v0, p0, Lf8/f5;->m:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lf8/f5;->n:Lb0/l1;

    const/4 v0, 0x0

    iput v0, p0, Lf8/f5;->m:I

    :cond_0
    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    :cond_1
    iget-object p0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero is not a valid field number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Lf8/k;Lf8/h3;)Lf8/n4;
    .locals 0

    :cond_0
    invoke-virtual {p1}, Lf8/k;->q()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p1}, Lf8/f5;->v(ILf8/k;)Z

    move-result p2

    if-nez p2, :cond_0

    :cond_1
    return-object p0
.end method

.method public final r()Lf8/i5;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lf8/i5;->m:Lf8/i5;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Lf8/i5;

    iget-object v1, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lf8/i5;-><init>(Ljava/util/Map;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lf8/f5;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final s(I)Lb0/l1;
    .locals 3

    iget-object v0, p0, Lf8/f5;->n:Lb0/l1;

    if-eqz v0, :cond_1

    iget v1, p0, Lf8/f5;->m:I

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lb0/l1;->h()Lf8/g5;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lf8/f5;->g(ILf8/g5;)V

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/g5;

    iput p1, p0, Lf8/f5;->m:I

    new-instance p1, Lb0/l1;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lb0/l1;-><init>(IZ)V

    new-instance v1, Lf8/g5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lb0/l1;->m:Ljava/lang/Object;

    iput-object p1, p0, Lf8/f5;->n:Lb0/l1;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lb0/l1;->v(Lf8/g5;)V

    :cond_3
    iget-object p0, p0, Lf8/f5;->n:Lb0/l1;

    return-object p0
.end method

.method public final u(ILf8/g5;)V
    .locals 2

    const-string v0, "Zero is not a valid field number."

    if-eqz p1, :cond_3

    if-eqz p1, :cond_2

    iget v0, p0, Lf8/f5;->m:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lf8/f5;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lf8/f5;->g(ILf8/g5;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p0, p2}, Lb0/l1;->v(Lf8/g5;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final v(ILf8/k;)Z
    .locals 3

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p2}, Lf8/k;->j()I

    move-result p1

    iget-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p2, Lf8/g5;

    iget-object v0, p2, Lf8/g5;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lf8/g5;->b:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_1
    sget p0, Lf8/h4;->m:I

    new-instance p0, Lf8/g4;

    const-string p1, "Protocol message tag had invalid wire type."

    invoke-direct {p0, p1}, Lf8/h4;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-static {}, Lf8/i5;->b()Lf8/f5;

    move-result-object p1

    sget-object v2, Lf8/f3;->e:Lf8/f3;

    invoke-virtual {p2, v0, p1, v2}, Lf8/k;->h(ILf8/n4;Lf8/h3;)V

    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p1}, Lf8/f5;->r()Lf8/i5;

    move-result-object p1

    iget-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p2, Lf8/g5;

    iget-object v0, p2, Lf8/g5;->e:Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lf8/g5;->e:Ljava/util/List;

    :cond_4
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_5
    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p2}, Lf8/k;->g()Lf8/j;

    move-result-object p1

    iget-object p2, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p2, Lf8/g5;

    iget-object v0, p2, Lf8/g5;->d:Ljava/util/List;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lf8/g5;->d:Ljava/util/List;

    :cond_6
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_7
    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p2}, Lf8/k;->k()J

    move-result-wide p1

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v2, v0, Lf8/g5;->c:Ljava/util/List;

    if-nez v2, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lf8/g5;->c:Ljava/util/List;

    :cond_8
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->c:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_9
    invoke-virtual {p0, v0}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    invoke-virtual {p2}, Lf8/k;->m()J

    move-result-wide p1

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v2, v0, Lf8/g5;->a:Ljava/util/List;

    if-nez v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lf8/g5;->a:Ljava/util/List;

    :cond_a
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final x(Lf8/i5;)V
    .locals 2

    sget-object v0, Lf8/i5;->m:Lf8/i5;

    if-eq p1, v0, :cond_0

    iget-object p1, p1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/g5;

    invoke-virtual {p0, v1, v0}, Lf8/f5;->u(ILf8/g5;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final z(II)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lf8/f5;->s(I)Lb0/l1;

    move-result-object p0

    int-to-long p1, p2

    iget-object v0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v0, Lf8/g5;

    iget-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lf8/g5;->a:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lb0/l1;->m:Ljava/lang/Object;

    check-cast p0, Lf8/g5;

    iget-object p0, p0, Lf8/g5;->a:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Zero is not a valid field number."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
