.class public final Ld1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lk9/e;


# instance fields
.field public final l:Ld1/y;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Ld1/y;I)V
    .locals 0

    iput p2, p0, Ld1/q;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/q;->l:Ld1/y;

    return-void
.end method

.method private final a(Ljava/util/Collection;)Z
    .locals 7

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    iget-object v3, v2, Ld1/x;->c:Lu0/d;

    iget v2, v2, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v3}, Lu0/d;->builder()Lu0/c;

    move-result-object v1

    iget-object v4, p0, Ld1/y;->m:Ld1/q;

    invoke-virtual {v4}, Ld1/q;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lu0/c;->build()Lu0/d;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v3, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v3, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v3

    check-cast v3, Ld1/x;

    invoke-static {p0, v3, v2, v1}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_3
    :goto_1
    return v0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Ld1/q;->m:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    iget p0, p0, Ld1/q;->m:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    invoke-static {}, Ld1/w;->l()V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0, p1}, Ld1/y;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lk9/a;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lk9/c;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ld1/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 3

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {v2, v0}, Ld1/y;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    :pswitch_0
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Ld1/q;->l:Ld1/y;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    :cond_5
    :goto_1
    return v1

    :pswitch_1
    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Ld1/q;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v1, 0x0

    :cond_8
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ld1/g0;

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object v1

    iget-object v1, v1, Ld1/x;->c:Lu0/d;

    check-cast v1, Lu8/f;

    invoke-virtual {v1}, Lu8/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lu0/b;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Ld1/g0;-><init>(Ld1/y;Ljava/util/Iterator;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Ld1/g0;

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object v1

    iget-object v1, v1, Ld1/x;->c:Lu0/d;

    check-cast v1, Lu8/f;

    invoke-virtual {v1}, Lu8/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lu0/b;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ld1/g0;-><init>(Ld1/y;Ljava/util/Iterator;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Ld1/g0;

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object v1

    iget-object v1, v1, Ld1/x;->c:Lu0/d;

    check-cast v1, Lu8/f;

    invoke-virtual {v1}, Lu8/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Lu0/b;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ld1/g0;-><init>(Ld1/y;Ljava/util/Iterator;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    iget-object v0, p0, Ld1/y;->m:Ld1/q;

    invoke-virtual {v0}, Ld1/q;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    move-object v1, v0

    check-cast v1, Ld1/g0;

    invoke-virtual {v1}, Ld1/g0;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ld1/g0;

    invoke-virtual {v1}, Ld1/g0;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_0
    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0, p1}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    instance-of v0, p1, Lk9/a;

    if-eqz v0, :cond_4

    instance-of v0, p1, Lk9/c;

    if-eqz v0, :cond_5

    :cond_4
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 7

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    iget-object v3, v2, Ld1/x;->c:Lu0/d;

    iget v2, v2, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v3}, Lu0/d;->builder()Lu0/c;

    move-result-object v1

    iget-object v4, p0, Ld1/y;->m:Ld1/q;

    invoke-virtual {v4}, Ld1/q;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lu0/c;->build()Lu0/d;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v3, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v3, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v3

    check-cast v3, Ld1/x;

    invoke-static {p0, v3, v2, v1}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_3
    :goto_1
    return v0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_4
    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {v3, v2}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_4

    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    return v1

    :pswitch_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_7
    move v1, v0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, Ld1/q;->l:Ld1/y;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ld1/y;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    :cond_8
    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 8

    iget v0, p0, Ld1/q;->m:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    iget-object v3, v2, Ld1/x;->c:Lu0/d;

    iget v2, v2, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v3}, Lu0/d;->builder()Lu0/c;

    move-result-object v1

    iget-object v4, p0, Ld1/y;->m:Ld1/q;

    invoke-virtual {v4}, Ld1/q;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lu0/c;->build()Lu0/d;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v3, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v3, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v3

    check-cast v3, Ld1/x;

    invoke-static {p0, v3, v2, v1}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_3
    :goto_1
    return v0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_0
    invoke-direct {p0, p1}, Ld1/q;->a(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lu8/v;->J(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_4

    move v0, v1

    :cond_4
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    const/4 p1, 0x0

    :cond_6
    sget-object v0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    iget-object v3, v2, Ld1/x;->c:Lu0/d;

    iget v2, v2, Ld1/x;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit v0

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v3}, Lu0/d;->builder()Lu0/c;

    move-result-object v0

    iget-object v4, p0, Ld1/y;->m:Ld1/q;

    invoke-virtual {v4}, Ld1/q;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v4

    check-cast v5, Ld1/g0;

    invoke-virtual {v5}, Ld1/g0;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lu0/c;->build()Lu0/d;

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v3, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v3, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v3

    check-cast v3, Ld1/x;

    invoke-static {p0, v3, v2, v0}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_6

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_a
    :goto_4
    return p1

    :catchall_3
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Ld1/q;->l:Ld1/y;

    invoke-virtual {p0}, Ld1/y;->size()I

    move-result p0

    return p0
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
