.class public final Lv8/a;
.super Lu8/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field public l:[Ljava/lang/Object;

.field public final m:I

.field public n:I

.field public final o:Lv8/a;

.field public final p:Lv8/b;


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILv8/a;Lv8/b;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iput p2, p0, Lv8/a;->m:I

    iput p3, p0, Lv8/a;->n:I

    iput-object p4, p0, Lv8/a;->o:Lv8/a;

    iput-object p5, p0, Lv8/a;->p:Lv8/b;

    invoke-static {p5}, Lv8/b;->c(Lv8/b;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public static final synthetic c(Lv8/a;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    invoke-virtual {p0}, Lv8/a;->j()V

    iget p0, p0, Lv8/a;->n:I

    return p0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2

    .line 4
    invoke-virtual {p0}, Lv8/a;->k()V

    .line 5
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 6
    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 7
    iget v0, p0, Lv8/a;->m:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lv8/a;->e(ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    .line 9
    invoke-static {p2, p1, v1, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv8/a;->k()V

    .line 2
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 3
    iget v0, p0, Lv8/a;->m:I

    iget v1, p0, Lv8/a;->n:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lv8/a;->e(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lv8/a;->k()V

    .line 6
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 7
    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_1

    if-gt p1, v0, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 9
    iget v1, p0, Lv8/a;->m:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lv8/a;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    .line 11
    invoke-static {p2, p1, v1, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lv8/a;->k()V

    .line 2
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    iget v1, p0, Lv8/a;->m:I

    iget v2, p0, Lv8/a;->n:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lv8/a;->d(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lv8/a;->m:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lv8/a;->l(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final clear()V
    .locals 2

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->m:I

    iget v1, p0, Lv8/a;->n:I

    invoke-virtual {p0, v0, v1}, Lv8/a;->m(II)V

    return-void
.end method

.method public final d(ILjava/util/Collection;I)V
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    iget-object v1, p0, Lv8/a;->o:Lv8/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lv8/a;->d(ILjava/util/Collection;I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lv8/b;->o:Lv8/b;

    invoke-virtual {v0, p1, p2, p3}, Lv8/b;->d(ILjava/util/Collection;I)V

    :goto_0
    iget-object p1, v0, Lv8/b;->l:[Ljava/lang/Object;

    iput-object p1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget p1, p0, Lv8/a;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lv8/a;->n:I

    return-void
.end method

.method public final e(ILjava/lang/Object;)V
    .locals 2

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    iget-object v1, p0, Lv8/a;->o:Lv8/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lv8/a;->e(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lv8/b;->o:Lv8/b;

    invoke-virtual {v0, p1, p2}, Lv8/b;->e(ILjava/lang/Object;)V

    :goto_0
    iget-object p1, v0, Lv8/b;->l:[Ljava/lang/Object;

    iput-object p1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget p1, p0, Lv8/a;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv8/a;->n:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p0}, Lv8/a;->j()V

    if-eq p1, p0, :cond_3

    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v2, p0, Lv8/a;->n:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    iget v4, p0, Lv8/a;->m:I

    add-int/2addr v4, v3

    aget-object v4, v0, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget p0, p0, Lv8/a;->m:I

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p1, v2, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 6

    invoke-virtual {p0}, Lv8/a;->j()V

    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v1, p0, Lv8/a;->n:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    iget v5, p0, Lv8/a;->m:I

    add-int/2addr v5, v4

    aget-object v5, v0, v5

    mul-int/lit8 v2, v2, 0x1f

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lv8/a;->j()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lv8/a;->n:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v2, p0, Lv8/a;->m:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lv8/a;->j()V

    iget p0, p0, Lv8/a;->n:I

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

    invoke-virtual {p0, v0}, Lv8/a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    invoke-static {v0}, Lv8/b;->c(Lv8/b;)I

    move-result v0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Lv8/a;->p:Lv8/b;

    iget-boolean p0, p0, Lv8/b;->n:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    iget-object v0, p0, Lv8/a;->o:Lv8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lv8/a;->l(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v0, Lv8/b;->o:Lv8/b;

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    invoke-virtual {v0, p1}, Lv8/b;->l(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lv8/a;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv8/a;->n:I

    return-object p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v2, p0, Lv8/a;->m:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    invoke-virtual {p0, v0}, Lv8/a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 3
    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 4
    new-instance v0, Ld1/d0;

    invoke-direct {v0, p0, p1}, Ld1/d0;-><init>(Lv8/a;I)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    .line 6
    invoke-static {v1, p1, v2, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m(II)V
    .locals 1

    if-lez p2, :cond_0

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    iget-object v0, p0, Lv8/a;->o:Lv8/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lv8/a;->m(II)V

    goto :goto_0

    :cond_1
    sget-object v0, Lv8/b;->o:Lv8/b;

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    invoke-virtual {v0, p1, p2}, Lv8/b;->m(II)V

    :goto_0
    iget p1, p0, Lv8/a;->n:I

    sub-int/2addr p1, p2

    iput p1, p0, Lv8/a;->n:I

    return-void
.end method

.method public final n(IILjava/util/Collection;Z)I
    .locals 1

    iget-object v0, p0, Lv8/a;->o:Lv8/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lv8/a;->n(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object v0, Lv8/b;->o:Lv8/b;

    iget-object v0, p0, Lv8/a;->p:Lv8/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lv8/b;->n(IILjava/util/Collection;Z)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_1
    iget p2, p0, Lv8/a;->n:I

    sub-int/2addr p2, p1

    iput p2, p0, Lv8/a;->n:I

    return p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    invoke-virtual {p0, p1}, Lv8/a;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lv8/a;->b(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    iget v1, p0, Lv8/a;->m:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lv8/a;->n(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    iget v1, p0, Lv8/a;->m:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, p1, v2}, Lv8/a;->n(IILjava/util/Collection;Z)I

    move-result p0

    if-lez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lv8/a;->k()V

    invoke-virtual {p0}, Lv8/a;->j()V

    iget v0, p0, Lv8/a;->n:I

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget p0, p0, Lv8/a;->m:I

    add-int v1, p0, p1

    aget-object v1, v0, v1

    add-int/2addr p0, p1

    aput-object p2, v0, p0

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "index: "

    const-string v1, ", size: "

    invoke-static {p2, p1, v1, v0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 7

    iget v0, p0, Lv8/a;->n:I

    invoke-static {p1, p2, v0}, Lb6/g;->l(III)V

    new-instance v1, Lv8/a;

    iget-object v2, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v0, p0, Lv8/a;->m:I

    add-int v3, v0, p1

    sub-int v4, p2, p1

    iget-object v6, p0, Lv8/a;->p:Lv8/b;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lv8/a;-><init>([Ljava/lang/Object;IILv8/a;Lv8/b;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 8
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 9
    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v1, p0, Lv8/a;->n:I

    iget p0, p0, Lv8/a;->m:I

    add-int/2addr v1, p0

    invoke-static {p0, v1, v0}, Lu8/l;->o0(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    const-string v0, "array"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lv8/a;->j()V

    .line 2
    array-length v0, p1

    iget v1, p0, Lv8/a;->n:I

    iget v2, p0, Lv8/a;->m:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lv8/a;->l:[Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "copyOfRange(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, p1, v3, v2, v1}, Lu8/l;->k0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    .line 5
    iget p0, p0, Lv8/a;->n:I

    .line 6
    array-length v0, p1

    if-ge p0, v0, :cond_1

    const/4 v0, 0x0

    .line 7
    aput-object v0, p1, p0

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lv8/a;->j()V

    iget-object v0, p0, Lv8/a;->l:[Ljava/lang/Object;

    iget v1, p0, Lv8/a;->m:I

    iget v2, p0, Lv8/a;->n:I

    invoke-static {v0, v1, v2, p0}, Lwa/h;->c([Ljava/lang/Object;IILu8/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
