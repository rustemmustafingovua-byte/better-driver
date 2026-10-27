.class public final Lv6/c;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Deque;


# instance fields
.field public l:Lv6/a;

.field public m:Lv6/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lv6/c;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->d(Lv6/a;)Z

    move-result p0

    return p0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->c(Lv6/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->d(Lv6/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final b(Lv6/a;)Z
    .locals 1

    move-object v0, p1

    check-cast v0, Lv6/l;

    iget-object v0, v0, Lv6/l;->m:Lv6/l;

    if-nez v0, :cond_1

    move-object v0, p1

    check-cast v0, Lv6/l;

    iget-object v0, v0, Lv6/l;->n:Lv6/l;

    if-nez v0, :cond_1

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c(Lv6/a;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lv6/c;->b(Lv6/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lv6/c;->l:Lv6/a;

    iput-object p1, p0, Lv6/c;->l:Lv6/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lv6/c;->m:Lv6/a;

    goto :goto_0

    :cond_1
    move-object p0, v0

    check-cast p0, Lv6/l;

    move-object v1, p1

    check-cast v1, Lv6/l;

    iput-object v1, p0, Lv6/l;->m:Lv6/l;

    check-cast p1, Lv6/l;

    check-cast v0, Lv6/l;

    iput-object v0, p1, Lv6/l;->n:Lv6/l;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lv6/c;->l:Lv6/a;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lv6/l;

    iget-object v2, v0, Lv6/l;->n:Lv6/l;

    iput-object v1, v0, Lv6/l;->m:Lv6/l;

    iput-object v1, v0, Lv6/l;->n:Lv6/l;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lv6/c;->m:Lv6/a;

    iput-object v1, p0, Lv6/c;->l:Lv6/a;

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lv6/a;

    if-eqz v0, :cond_0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->b(Lv6/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lv6/a;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lv6/c;->b(Lv6/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lv6/c;->m:Lv6/a;

    iput-object p1, p0, Lv6/c;->m:Lv6/a;

    if-nez v0, :cond_1

    iput-object p1, p0, Lv6/c;->l:Lv6/a;

    goto :goto_0

    :cond_1
    move-object p0, v0

    check-cast p0, Lv6/l;

    move-object v1, p1

    check-cast v1, Lv6/l;

    iput-object v1, p0, Lv6/l;->n:Lv6/l;

    check-cast p1, Lv6/l;

    check-cast v0, Lv6/l;

    iput-object v0, p1, Lv6/l;->m:Lv6/l;

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lv6/b;

    iget-object p0, p0, Lv6/c;->m:Lv6/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lv6/b;-><init>(Lv6/a;I)V

    return-object v0
.end method

.method public final e()Lv6/a;
    .locals 4

    invoke-virtual {p0}, Lv6/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lv6/c;->l:Lv6/a;

    move-object v2, v0

    check-cast v2, Lv6/l;

    iget-object v3, v2, Lv6/l;->n:Lv6/l;

    iput-object v1, v2, Lv6/l;->n:Lv6/l;

    iput-object v3, p0, Lv6/c;->l:Lv6/a;

    if-nez v3, :cond_1

    iput-object v1, p0, Lv6/c;->m:Lv6/a;

    goto :goto_0

    :cond_1
    iput-object v1, v3, Lv6/l;->m:Lv6/l;

    :goto_0
    return-object v0
.end method

.method public final element()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->a()V

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    return-object p0
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->a()V

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    return-object p0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->a()V

    iget-object p0, p0, Lv6/c;->m:Lv6/a;

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lv6/b;

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lv6/b;-><init>(Lv6/a;I)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->d(Lv6/a;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic offerFirst(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->c(Lv6/a;)Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic offerLast(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->d(Lv6/a;)Z

    move-result p0

    return p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    return-object p0
.end method

.method public final peekFirst()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    return-object p0
.end method

.method public final peekLast()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv6/c;->m:Lv6/a;

    return-object p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->e()Lv6/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic pollFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->e()Lv6/a;

    move-result-object p0

    return-object p0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lv6/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lv6/c;->m:Lv6/a;

    move-object v2, v0

    check-cast v2, Lv6/l;

    iget-object v3, v2, Lv6/l;->m:Lv6/l;

    iput-object v1, v2, Lv6/l;->m:Lv6/l;

    iput-object v3, p0, Lv6/c;->m:Lv6/a;

    if-nez v3, :cond_1

    iput-object v1, p0, Lv6/c;->l:Lv6/a;

    return-object v0

    :cond_1
    iput-object v1, v3, Lv6/l;->n:Lv6/l;

    return-object v0
.end method

.method public final pop()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->a()V

    invoke-virtual {p0}, Lv6/c;->e()Lv6/a;

    move-result-object p0

    return-object p0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lv6/a;

    invoke-virtual {p0, p1}, Lv6/c;->c(Lv6/a;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final remove()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lv6/c;->a()V

    .line 13
    invoke-virtual {p0}, Lv6/c;->e()Lv6/a;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lv6/a;

    if-eqz v0, :cond_2

    check-cast p1, Lv6/a;

    .line 2
    invoke-virtual {p0, p1}, Lv6/c;->b(Lv6/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lv6/l;

    .line 4
    iget-object v0, p1, Lv6/l;->m:Lv6/l;

    .line 5
    iget-object v1, p1, Lv6/l;->n:Lv6/l;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 6
    iput-object v1, p0, Lv6/c;->l:Lv6/a;

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, v0, Lv6/l;->n:Lv6/l;

    .line 8
    iput-object v2, p1, Lv6/l;->m:Lv6/l;

    :goto_0
    if-nez v1, :cond_1

    .line 9
    iput-object v0, p0, Lv6/c;->m:Lv6/a;

    goto :goto_1

    .line 10
    :cond_1
    iput-object v0, v1, Lv6/l;->m:Lv6/l;

    .line 11
    iput-object v2, p1, Lv6/l;->n:Lv6/l;

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lv6/c;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv6/c;->a()V

    invoke-virtual {p0}, Lv6/c;->e()Lv6/a;

    move-result-object p0

    return-object p0
.end method

.method public final removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lv6/c;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lv6/c;->a()V

    invoke-virtual {p0}, Lv6/c;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lv6/c;->m:Lv6/a;

    move-object v2, v0

    check-cast v2, Lv6/l;

    iget-object v3, v2, Lv6/l;->m:Lv6/l;

    iput-object v1, v2, Lv6/l;->m:Lv6/l;

    iput-object v3, p0, Lv6/c;->m:Lv6/a;

    if-nez v3, :cond_1

    iput-object v1, p0, Lv6/c;->l:Lv6/a;

    return-object v0

    :cond_1
    iput-object v1, v3, Lv6/l;->n:Lv6/l;

    return-object v0
.end method

.method public final removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lv6/c;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 1

    iget-object p0, p0, Lv6/c;->l:Lv6/a;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    check-cast p0, Lv6/l;

    iget-object p0, p0, Lv6/l;->n:Lv6/l;

    goto :goto_0

    :cond_0
    return v0
.end method
