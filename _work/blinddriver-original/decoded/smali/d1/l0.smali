.class public final Ld1/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lk9/b;


# instance fields
.field public final l:Ld1/v;

.field public final m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Ld1/v;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/l0;->l:Ld1/v;

    iput p2, p0, Ld1/l0;->m:I

    invoke-static {p1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/l0;->n:I

    sub-int/2addr p3, p2

    iput p3, p0, Ld1/l0;->o:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ld1/l0;->l:Ld1/v;

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result v0

    iget p0, p0, Ld1/l0;->n:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Ld1/l0;->a()V

    .line 9
    iget v0, p0, Ld1/l0;->m:I

    add-int/2addr v0, p1

    iget-object p1, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {p1, v0, p2}, Ld1/v;->add(ILjava/lang/Object;)V

    .line 10
    iget p2, p0, Ld1/l0;->o:I

    add-int/lit8 p2, p2, 0x1

    .line 11
    iput p2, p0, Ld1/l0;->o:I

    .line 12
    invoke-static {p1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/l0;->n:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/l0;->a()V

    .line 2
    iget v0, p0, Ld1/l0;->m:I

    .line 3
    iget v1, p0, Ld1/l0;->o:I

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v1, v0, p1}, Ld1/v;->add(ILjava/lang/Object;)V

    .line 5
    iget p1, p0, Ld1/l0;->o:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 6
    iput p1, p0, Ld1/l0;->o:I

    .line 7
    invoke-static {v1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/l0;->n:I

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Ld1/l0;->a()V

    .line 4
    iget v0, p0, Ld1/l0;->m:I

    add-int/2addr p1, v0

    iget-object v0, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v0, p1, p2}, Ld1/v;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget v1, p0, Ld1/l0;->o:I

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, v1

    iput p2, p0, Ld1/l0;->o:I

    .line 7
    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result p2

    iput p2, p0, Ld1/l0;->n:I

    :cond_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 1
    iget v0, p0, Ld1/l0;->o:I

    .line 2
    invoke-virtual {p0, v0, p1}, Ld1/l0;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 3

    iget v0, p0, Ld1/l0;->o:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget v0, p0, Ld1/l0;->o:I

    iget v1, p0, Ld1/l0;->m:I

    add-int/2addr v0, v1

    iget-object v2, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v2, v1, v0}, Ld1/v;->c(II)V

    const/4 v0, 0x0

    iput v0, p0, Ld1/l0;->o:I

    invoke-static {v2}, Ld1/w;->g(Ld1/v;)I

    move-result v0

    iput v0, p0, Ld1/l0;->n:I

    :cond_0
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ld1/l0;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

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

    invoke-virtual {p0, v0}, Ld1/l0;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget v0, p0, Ld1/l0;->o:I

    invoke-static {p1, v0}, Ld1/w;->a(II)V

    iget v0, p0, Ld1/l0;->m:I

    add-int/2addr v0, p1

    iget-object p0, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {p0, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget v0, p0, Ld1/l0;->o:I

    iget v1, p0, Ld1/l0;->m:I

    add-int/2addr v0, v1

    invoke-static {v1, v0}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lo9/c;

    invoke-virtual {v2}, Lo9/c;->nextInt()I

    move-result v2

    iget-object v3, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v3, v2}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int/2addr v2, v1

    return v2

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Ld1/l0;->o:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld1/l0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget v0, p0, Ld1/l0;->o:I

    iget v1, p0, Ld1/l0;->m:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v1, :cond_1

    iget-object v2, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v2, v0}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ld1/l0;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ld1/l0;->a()V

    .line 3
    new-instance v0, La6/k;

    .line 4
    invoke-direct {v0}, La6/k;-><init>()V

    add-int/lit8 p1, p1, -0x1

    .line 5
    iput p1, v0, La6/k;->m:I

    .line 6
    new-instance p1, Ld1/k0;

    invoke-direct {p1, v0, p0}, Ld1/k0;-><init>(La6/k;Ld1/l0;)V

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p0}, Ld1/l0;->a()V

    .line 4
    iget v0, p0, Ld1/l0;->m:I

    add-int/2addr v0, p1

    iget-object p1, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {p1, v0}, Ld1/v;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget v1, p0, Ld1/l0;->o:I

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, p0, Ld1/l0;->o:I

    .line 7
    invoke-static {p1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/l0;->n:I

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld1/l0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ld1/l0;->remove(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ld1/l0;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 10

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget-object v0, p0, Ld1/l0;->l:Ld1/v;

    iget v1, p0, Ld1/l0;->m:I

    iget v2, p0, Ld1/l0;->o:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Ld1/v;->size()I

    move-result v3

    :cond_0
    sget-object v4, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Ld1/v;->l:Ld1/e0;

    const-string v6, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v5, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v5

    check-cast v5, Ld1/e0;

    iget v6, v5, Ld1/e0;->d:I

    iget-object v5, v5, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lv0/b;->e()Lv0/e;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lv0/e;->c()Lv0/b;

    move-result-object v4

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-nez v5, :cond_1

    iget-object v5, v0, Ld1/v;->l:Ld1/e0;

    const-string v8, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v5, v8}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v9

    invoke-static {v5, v0, v9}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v5

    check-cast v5, Ld1/e0;

    invoke-static {v5, v6, v4, v7}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    invoke-static {v9, v0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v8

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ld1/v;->size()I

    move-result p1

    sub-int/2addr v3, p1

    if-lez v3, :cond_2

    iget-object p1, p0, Ld1/l0;->l:Ld1/v;

    invoke-static {p1}, Ld1/w;->g(Ld1/v;)I

    move-result p1

    iput p1, p0, Ld1/l0;->n:I

    iget p1, p0, Ld1/l0;->o:I

    sub-int/2addr p1, v3

    iput p1, p0, Ld1/l0;->o:I

    :cond_2
    if-lez v3, :cond_3

    return v7

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v4

    throw p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld1/l0;->o:I

    invoke-static {p1, v0}, Ld1/w;->a(II)V

    invoke-virtual {p0}, Ld1/l0;->a()V

    iget v0, p0, Ld1/l0;->m:I

    add-int/2addr p1, v0

    iget-object v0, p0, Ld1/l0;->l:Ld1/v;

    invoke-virtual {v0, p1, p2}, Ld1/v;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0}, Ld1/w;->g(Ld1/v;)I

    move-result p2

    iput p2, p0, Ld1/l0;->n:I

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Ld1/l0;->o:I

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Ld1/l0;->o:I

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "fromIndex or toIndex are out of bounds"

    invoke-static {v0}, Lr0/k1;->a(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ld1/l0;->a()V

    new-instance v0, Ld1/l0;

    iget v1, p0, Ld1/l0;->m:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    iget-object p0, p0, Ld1/l0;->l:Ld1/v;

    invoke-direct {v0, p0, p1, p2}, Ld1/l0;-><init>(Ld1/v;II)V

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Lj9/m;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lj9/m;->b(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
