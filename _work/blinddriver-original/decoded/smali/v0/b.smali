.class public abstract Lv0/b;
.super Lu8/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Collection;
.implements Lk9/a;


# virtual methods
.method public abstract b(ILjava/lang/Object;)Lv0/b;
.end method

.method public abstract c(Ljava/lang/Object;)Lv0/b;
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lu8/e;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv0/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public d(Ljava/util/Collection;)Lv0/b;
    .locals 0

    invoke-virtual {p0}, Lv0/b;->e()Lv0/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lv0/e;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lv0/e;->c()Lv0/b;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Lv0/e;
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu8/e;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract j(Ld1/s;)Lv0/b;
.end method

.method public abstract k(I)Lv0/b;
.end method

.method public abstract l(ILjava/lang/Object;)Lv0/b;
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu8/e;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    new-instance v0, Lu0/a;

    invoke-direct {v0, p0, p1, p2}, Lu0/a;-><init>(Lv0/b;II)V

    return-object v0
.end method
