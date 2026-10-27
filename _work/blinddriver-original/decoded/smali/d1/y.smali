.class public final Ld1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/h0;
.implements Ljava/util/Map;
.implements Lk9/d;


# instance fields
.field public l:Ld1/x;

.field public final m:Ld1/q;

.field public final n:Ld1/q;

.field public final o:Ld1/q;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lw0/b;->n:Lw0/b;

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v1

    new-instance v2, Ld1/x;

    invoke-virtual {v1}, Ld1/g;->g()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v0}, Ld1/x;-><init>(JLu0/d;)V

    instance-of v1, v1, Ld1/b;

    if-nez v1, :cond_0

    new-instance v1, Ld1/x;

    const/4 v3, 0x1

    int-to-long v3, v3

    invoke-direct {v1, v3, v4, v0}, Ld1/x;-><init>(JLu0/d;)V

    iput-object v1, v2, Ld1/j0;->b:Ld1/j0;

    :cond_0
    iput-object v2, p0, Ld1/y;->l:Ld1/x;

    new-instance v0, Ld1/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld1/q;-><init>(Ld1/y;I)V

    iput-object v0, p0, Ld1/y;->m:Ld1/q;

    new-instance v0, Ld1/q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ld1/q;-><init>(Ld1/y;I)V

    iput-object v0, p0, Ld1/y;->n:Ld1/q;

    new-instance v0, Ld1/q;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Ld1/q;-><init>(Ld1/y;I)V

    iput-object v0, p0, Ld1/y;->o:Ld1/q;

    return-void
.end method

.method public static final c(Ld1/y;Ld1/x;ILu0/d;)Z
    .locals 1

    sget-object p0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget v0, p1, Ld1/x;->d:I

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Ld1/x;->c:Lu0/d;

    const/4 p2, 0x1

    add-int/2addr v0, p2

    iput v0, p1, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_0
    monitor-exit p0

    return p2

    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()Ld1/j0;
    .locals 0

    iget-object p0, p0, Ld1/y;->l:Ld1/x;

    return-object p0
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Ld1/y;->l:Ld1/x;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Ld1/x;

    sget-object v1, Lw0/b;->n:Lw0/b;

    iget-object v0, v0, Ld1/x;->c:Lu0/d;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Ld1/y;->l:Ld1/x;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v3

    invoke-static {v0, p0, v3}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v0

    check-cast v0, Ld1/x;

    sget-object v4, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object v1, v0, Ld1/x;->c:Lu0/d;

    iget v1, v0, Ld1/x;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ld1/x;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    invoke-static {v3, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v4

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_0
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object p0

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object p0

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final d(Ld1/j0;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ld1/x;

    iput-object p1, p0, Ld1/y;->l:Ld1/x;

    return-void
.end method

.method public final e()Ld1/x;
    .locals 2

    iget-object v0, p0, Ld1/y;->l:Ld1/x;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ld1/p;->t(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0

    check-cast p0, Ld1/x;

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ld1/y;->m:Ld1/q;

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object p0

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object p0

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    check-cast p0, Lu8/f;

    invoke-virtual {p0}, Lu8/f;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ld1/y;->n:Ld1/q;

    return-object p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    sget-object v0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/y;->l:Ld1/x;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/x;

    iget-object v2, v1, Ld1/x;->c:Lu0/d;

    iget v1, v1, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v2}, Lu0/d;->builder()Lu0/c;

    move-result-object v0

    check-cast v0, Lw0/d;

    invoke-virtual {v0, p1, p2}, Lw0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lu0/c;->build()Lu0/d;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v2, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    invoke-static {p0, v2, v1, v0}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_1
    :goto_0
    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 5

    :cond_0
    sget-object v0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/y;->l:Ld1/x;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/x;

    iget-object v2, v1, Ld1/x;->c:Lu0/d;

    iget v1, v1, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v2}, Lu0/d;->builder()Lu0/c;

    move-result-object v0

    check-cast v0, Lw0/d;

    invoke-virtual {v0, p1}, Lw0/d;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Lu0/c;->build()Lu0/d;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    invoke-static {v2, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    invoke-static {p0, v2, v1, v0}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    :cond_0
    sget-object v0, Ld1/w;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/y;->l:Ld1/x;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/x;

    iget-object v2, v1, Ld1/x;->c:Lu0/d;

    iget v1, v1, Ld1/x;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-interface {v2}, Lu0/d;->builder()Lu0/c;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lu0/c;->build()Lu0/d;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Ld1/y;->l:Ld1/x;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v2, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/x;

    invoke-static {p0, v2, v1, v0}, Ld1/y;->c(Ld1/y;Ld1/x;ILu0/d;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_1
    :goto_0
    return-object v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final size()I
    .locals 0

    invoke-virtual {p0}, Ld1/y;->e()Ld1/x;

    move-result-object p0

    iget-object p0, p0, Ld1/x;->c:Lu0/d;

    check-cast p0, Lu8/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lw0/b;

    iget p0, p0, Lw0/b;->m:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ld1/y;->l:Ld1/x;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.SnapshotStateMap.StateMapStateRecord<K of androidx.compose.runtime.snapshots.SnapshotStateMap, V of androidx.compose.runtime.snapshots.SnapshotStateMap>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Ld1/x;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SnapshotStateMap(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ld1/x;->c:Lu0/d;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Ld1/y;->o:Ld1/q;

    return-object p0
.end method
