.class public abstract Lq8/g;
.super Lq8/d;
.source "SourceFile"


# instance fields
.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public b(Lq8/d;)V
    .locals 0

    iput-object p0, p1, Lq8/d;->a:Lq8/g;

    iget-object p0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "nodes.listIterator()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq8/g;

    if-eqz v2, :cond_1

    check-cast v1, Lq8/g;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lq8/i;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lq8/g;->c()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lq8/d;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lq8/d;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lq8/d;

    invoke-virtual {p0, v0, v1}, Lq8/g;->f(Ljava/util/ListIterator;[Lq8/d;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "nodes.listIterator()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lq8/g;

    if-eqz v2, :cond_0

    check-cast v1, Lq8/g;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    instance-of v3, v1, Lq8/i;

    if-nez v3, :cond_2

    new-array v1, v4, [Lq8/d;

    const/4 v3, 0x0

    invoke-static {v2}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lq8/g;->f(Ljava/util/ListIterator;[Lq8/d;)V

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lq8/g;->d()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e(Lq8/d;Lq8/g;)V
    .locals 3

    const-string v0, "replace"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    const-string v1, "nodes.listIterator()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "it.next()"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lq8/d;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Lq8/d;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    invoke-virtual {p0, v0, p1}, Lq8/g;->f(Ljava/util/ListIterator;[Lq8/d;)V

    :cond_1
    return-void
.end method

.method public final varargs f(Ljava/util/ListIterator;[Lq8/d;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iput-object p0, v2, Lq8/d;->a:Lq8/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
