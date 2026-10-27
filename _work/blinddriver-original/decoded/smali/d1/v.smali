.class public final Ld1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ld1/h0;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Lk9/b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ld1/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:Ld1/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld1/u;-><init>(I)V

    sput-object v0, Ld1/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    sget-object v0, Lv0/h;->m:Lv0/h;

    invoke-direct {p0, v0}, Ld1/v;-><init>(Lv0/b;)V

    return-void
.end method

.method public constructor <init>(Lv0/b;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    .line 3
    new-instance v1, Ld1/e0;

    invoke-virtual {v0}, Ld1/g;->g()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Ld1/e0;-><init>(JLv0/b;)V

    .line 4
    instance-of v0, v0, Ld1/b;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ld1/e0;

    const/4 v2, 0x1

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, p1}, Ld1/e0;-><init>(JLv0/b;)V

    .line 6
    iput-object v0, v1, Ld1/j0;->b:Ld1/j0;

    .line 7
    :cond_0
    iput-object v1, p0, Ld1/v;->l:Ld1/e0;

    return-void
.end method


# virtual methods
.method public final a()Ld1/j0;
    .locals 0

    iget-object p0, p0, Ld1/v;->l:Ld1/e0;

    return-object p0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 6

    .line 22
    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 25
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    .line 27
    iget v2, v1, Ld1/e0;->d:I

    .line 28
    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    monitor-exit v0

    .line 30
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v1, p1, p2}, Lv0/b;->b(ILjava/lang/Object;)Lv0/b;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 33
    :cond_1
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 34
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    .line 36
    monitor-enter v3

    .line 37
    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    .line 38
    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    .line 39
    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit v3

    .line 41
    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 4
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    .line 6
    iget v2, v1, Ld1/e0;->d:I

    .line 7
    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    monitor-exit v0

    .line 9
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1, p1}, Lv0/b;->c(Ljava/lang/Object;)Lv0/b;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 12
    :cond_1
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 13
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    .line 15
    monitor-enter v3

    .line 16
    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    .line 17
    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    .line 18
    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v3

    .line 20
    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    return v5

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    .line 1
    new-instance v0, Ld1/t;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ld1/t;-><init>(IILjava/lang/Object;)V

    invoke-static {p0, v0}, Ld1/w;->i(Ld1/v;Li9/c;)Z

    move-result p0

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 6

    .line 2
    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 5
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    .line 7
    iget v2, v1, Ld1/e0;->d:I

    .line 8
    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    monitor-exit v0

    .line 10
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v1, p1}, Lv0/b;->d(Ljava/util/Collection;)Lv0/b;

    move-result-object v0

    .line 12
    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    .line 13
    :cond_1
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 14
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    .line 16
    monitor-enter v3

    .line 17
    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    .line 18
    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    .line 19
    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v3

    .line 21
    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    return v5

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final c(II)V
    .locals 6

    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    iget v2, v1, Ld1/e0;->d:I

    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lv0/b;->e()Lv0/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lv0/e;->c()Lv0/b;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

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

.method public final clear()V
    .locals 5

    iget-object v0, p0, Ld1/v;->l:Ld1/e0;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v2

    invoke-static {v0, p0, v2}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v0

    check-cast v0, Ld1/e0;

    sget-object v3, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Lv0/h;->m:Lv0/h;

    iput-object v4, v0, Ld1/e0;->c:Lv0/b;

    iget v4, v0, Ld1/e0;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ld1/e0;->d:I

    iget v4, v0, Ld1/e0;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Ld1/e0;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    invoke-static {v2, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-virtual {p0, p1}, Lv0/b;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-virtual {p0, p1}, Lv0/b;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final d(Ld1/j0;)V
    .locals 1

    iget-object v0, p0, Ld1/v;->l:Ld1/e0;

    iput-object v0, p1, Ld1/j0;->b:Ld1/j0;

    check-cast p1, Ld1/e0;

    iput-object p1, p0, Ld1/v;->l:Ld1/e0;

    return-void
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    check-cast p0, Lu8/a;

    invoke-virtual {p0}, Lu8/a;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Ld1/v;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 1
    new-instance v0, Ld1/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld1/d0;-><init>(Ld1/v;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 2
    new-instance v0, Ld1/d0;

    invoke-direct {v0, p0, p1}, Ld1/d0;-><init>(Ld1/v;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :cond_0
    sget-object v1, Ld1/w;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Ld1/v;->l:Ld1/e0;

    .line 5
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/e0;

    .line 7
    iget v3, v2, Ld1/e0;->d:I

    .line 8
    iget-object v2, v2, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    monitor-exit v1

    .line 10
    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v2, p1}, Lv0/b;->k(I)Lv0/b;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Ld1/v;->l:Ld1/e0;

    .line 14
    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    .line 16
    monitor-enter v4

    .line 17
    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    .line 18
    invoke-static {v2, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/e0;

    const/4 v6, 0x1

    .line 19
    invoke-static {v2, v3, v1, v6}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v4

    .line 21
    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v4

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 6

    .line 23
    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 26
    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    .line 28
    iget v2, v1, Ld1/e0;->d:I

    .line 29
    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    monitor-exit v0

    .line 31
    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v1, p1}, Lu8/e;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 33
    invoke-virtual {v1, v0}, Lv0/b;->k(I)Lv0/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 35
    :cond_2
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    .line 36
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    .line 38
    monitor-enter v3

    .line 39
    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    .line 40
    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    .line 41
    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit v3

    .line 43
    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    return v5

    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 6

    :cond_0
    sget-object v0, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v1, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    iget v2, v1, Ld1/e0;->d:I

    iget-object v1, v1, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Ld1/s;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p1}, Ld1/s;-><init>(ILjava/util/Collection;)V

    invoke-virtual {v1, v0}, Lv0/b;->j(Ld1/s;)Lv0/b;

    move-result-object v0

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p0, Ld1/v;->l:Ld1/e0;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v1, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v4

    invoke-static {v1, p0, v4}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v1

    check-cast v1, Ld1/e0;

    const/4 v5, 0x1

    invoke-static {v1, v2, v0, v5}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-static {v4, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v0, :cond_0

    return v5

    :catchall_0
    move-exception p0

    monitor-exit v3

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    new-instance v0, Ld1/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Ld1/s;-><init>(ILjava/util/Collection;)V

    invoke-static {p0, v0}, Ld1/w;->i(Ld1/v;Li9/c;)Z

    move-result p0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1}, Ld1/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    sget-object v1, Ld1/w;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ld1/v;->l:Ld1/e0;

    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.withCurrent>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/e0;

    iget v3, v2, Ld1/e0;->d:I

    iget-object v2, v2, Ld1/e0;->c:Lv0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2}, Lv0/b;->l(ILjava/lang/Object;)Lv0/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ld1/v;->l:Ld1/e0;

    const-string v4, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateListKt.writable>"

    invoke-static {v2, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v5

    invoke-static {v2, p0, v5}, Ld1/p;->w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;

    move-result-object v2

    check-cast v2, Ld1/e0;

    const/4 v6, 0x0

    invoke-static {v2, v3, v1, v6}, Ld1/w;->b(Ld1/e0;ILv0/b;Z)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    invoke-static {v5, p0}, Ld1/p;->n(Ld1/g;Ld1/h0;)V

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final size()I
    .locals 0

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    check-cast p0, Lu8/a;

    invoke-virtual {p0}, Lu8/a;->a()I

    move-result p0

    return p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    invoke-virtual {p0}, Ld1/v;->size()I

    move-result v0

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
    new-instance v0, Ld1/l0;

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

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ld1/v;->l:Ld1/e0;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.snapshots.StateListStateRecord<T of androidx.compose.runtime.snapshots.SnapshotStateList>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ld1/p;->h(Ld1/j0;)Ld1/j0;

    move-result-object v0

    check-cast v0, Ld1/e0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SnapshotStateList(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Ld1/e0;->c:Lv0/b;

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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p0}, Ld1/w;->f(Ld1/v;)Ld1/e0;

    move-result-object p0

    iget-object p0, p0, Ld1/e0;->c:Lv0/b;

    move-object p2, p0

    check-cast p2, Lu8/a;

    invoke-virtual {p2}, Lu8/a;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
