.class public Lcom/carrotsearch/hppc/c0;
.super Lcom/carrotsearch/hppc/c;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/j0;
.implements Lcom/carrotsearch/hppc/r0;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected assigned:I

.field protected hasEmptyKey:Z

.field protected keyMixer:I

.field public keys:[I

.field protected loadFactor:D

.field protected mask:I

.field protected orderMixer:Lcom/carrotsearch/hppc/u;

.field protected resizeAt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/carrotsearch/hppc/c0;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/carrotsearch/hppc/c0;->orderMixer:Lcom/carrotsearch/hppc/u;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/carrotsearch/hppc/c0;->verifyLoadFactor(D)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/carrotsearch/hppc/c0;->loadFactor:D

    .line 4
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->ensureCapacity(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 6
    invoke-static {}, Lcom/carrotsearch/hppc/t;->b()Lcom/carrotsearch/hppc/u;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    return p1

    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v2, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v2

    aget v4, v1, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    iget v4, p0, Lcom/carrotsearch/hppc/c0;->resizeAt:I

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v3, p1}, Lcom/carrotsearch/hppc/c0;->allocateThenInsertThenRehash(II)V

    goto :goto_1

    :cond_3
    aput p1, v1, v3

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    return v0
.end method

.method public addAll(Lcom/carrotsearch/hppc/z;)I
    .locals 1

    .line 4
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->ensureCapacity(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->addAll(Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public addAll(Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ln5/a;",
            ">;)I"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    .line 7
    iget v1, v1, Ln5/a;->b:I

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final varargs addAll([I)I
    .locals 4

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->ensureCapacity(I)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    .line 3
    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public allocateBuffers(I)V
    .locals 3

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/carrotsearch/hppc/c0;->keys:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v1, p0, Lcom/carrotsearch/hppc/c0;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v1

    iput v1, p0, Lcom/carrotsearch/hppc/c0;->resizeAt:I

    iput v0, p0, Lcom/carrotsearch/hppc/c0;->keyMixer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    new-instance v1, Landroidx/fragment/app/i0;

    iget-object v2, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-direct {v1, p1, v0, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v1
.end method

.method public allocateThenInsertThenRehash(II)V
    .locals 5

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v2

    iget-wide v3, p0, Lcom/carrotsearch/hppc/c0;->loadFactor:D

    invoke-static {v1, v3, v4, v2}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/c0;->allocateBuffers(I)V

    aput p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->rehash([I)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public clone()Lcom/carrotsearch/hppc/c0;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/c0;

    .line 3
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/c0;->keys:[I

    .line 4
    iget-boolean v1, v0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    .line 5
    iget-object p0, p0, Lcom/carrotsearch/hppc/c0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/c0;->orderMixer:Lcom/carrotsearch/hppc/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->clone()Lcom/carrotsearch/hppc/c0;

    move-result-object p0

    return-object p0
.end method

.method public contains(I)Z
    .locals 3

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result p0

    :goto_0
    and-int/2addr p0, v1

    aget v2, v0, p0

    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public ensureCapacity(I)V
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/c0;->resizeAt:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget-wide v1, p0, Lcom/carrotsearch/hppc/c0;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->allocateBuffers(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->rehash([I)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/r0;

    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

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

    check-cast v0, Ln5/a;

    iget v0, v0, Ln5/a;->b:I

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Lo5/c;)Lo5/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/c;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p1, v1}, Lo5/c;->apply(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    .line 10
    iget p0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    :goto_0
    if-gt v1, p0, :cond_2

    .line 11
    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 12
    invoke-interface {p1, v2}, Lo5/c;->apply(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public forEach(Lp5/c;)Lp5/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/c;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Lp5/c;->apply(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    .line 4
    iget p0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    :goto_0
    if-gt v1, p0, :cond_2

    .line 5
    aget v2, v0, v1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v2}, Lp5/c;->apply(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget p0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    :goto_1
    if-ltz p0, :cond_2

    aget v2, v1, p0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v2

    add-int/2addr v2, v0

    move v0, v2

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public hashKey(I)I
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/c0;->keyMixer:I

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result p0

    return p0
.end method

.method public indexExists(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public indexGet(I)I
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    aget p0, p0, p1

    return p0
.end method

.method public indexInsert(II)V
    .locals 3

    not-int p1, p1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    return-void

    :cond_0
    iget v1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    iget v2, p0, Lcom/carrotsearch/hppc/c0;->resizeAt:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/c0;->allocateThenInsertThenRehash(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    aput p2, v1, p1

    :goto_0
    iget p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    return-void
.end method

.method public indexOf(I)I
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    not-int p0, v0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result p0

    :goto_0
    and-int/2addr p0, v0

    aget v2, v1, p0

    if-eqz v2, :cond_3

    if-ne v2, p1, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    not-int p0, p0

    return p0
.end method

.method public indexReplace(II)I
    .locals 1

    iget-object p0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    aget v0, p0, p1

    aput p2, p0, p1

    return v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/c0;)V

    return-object v0
.end method

.method public rehash([I)V
    .locals 6

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result v4

    :goto_1
    and-int/2addr v4, v1

    aget v5, v0, v4

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput v3, v0, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/c0;->ensureCapacity(I)V

    return-void
.end method

.method public remove(I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    return p1

    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v2, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v2

    aget v4, v1, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/c0;->shiftConflictingKeys(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public removeAll(I)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    move-result p0

    return p0
.end method

.method public removeAll(Lcom/carrotsearch/hppc/j0;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/a;-><init>(Lcom/carrotsearch/hppc/j0;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public removeAll(Lo5/c;)I
    .locals 5

    .line 3
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v2}, Lo5/c;->apply(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    .line 8
    iget v3, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    :goto_0
    if-gt v2, v3, :cond_2

    .line 9
    aget v4, v1, v2

    if-eqz v4, :cond_1

    .line 10
    invoke-interface {p1, v4}, Lo5/c;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/c0;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public retainAll(Lcom/carrotsearch/hppc/j0;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/a;-><init>(Lcom/carrotsearch/hppc/j0;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public retainAll(Lo5/c;)I
    .locals 1

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/b;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/b;-><init>(Lo5/c;)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/y;->removeAll(Lo5/c;)I

    move-result p0

    return p0
.end method

.method public shiftConflictingKeys(I)V
    .locals 7

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, 0x1

    add-int v4, p1, v3

    and-int/2addr v4, v1

    aget v5, v0, v4

    if-nez v5, :cond_1

    aput v2, v0, p1

    iget p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    return-void

    :cond_1
    invoke-virtual {p0, v5}, Lcom/carrotsearch/hppc/c0;->hashKey(I)I

    move-result v6

    sub-int v6, v4, v6

    and-int/2addr v6, v1

    if-lt v6, v3, :cond_0

    aput v5, v0, p1

    move v3, v2

    move p1, v4

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/c0;->assigned:I

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toArray()[I
    .locals 6

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-boolean v1, p0, Lcom/carrotsearch/hppc/c0;->hasEmptyKey:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput v2, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget p0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    :goto_1
    if-gt v2, p0, :cond_2

    aget v4, v3, v2

    if-eqz v4, :cond_1

    add-int/lit8 v5, v1, 0x1

    aput v4, v0, v1

    move v1, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/carrotsearch/hppc/c;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public verifyLoadFactor(D)D
    .locals 0

    invoke-static {p1, p2}, Lcom/carrotsearch/hppc/t;->a(D)V

    return-wide p1
.end method

.method public visualizeKeyDistribution(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/carrotsearch/hppc/c0;->keys:[I

    iget p0, p0, Lcom/carrotsearch/hppc/c0;->mask:I

    invoke-static {v0, p0, p1}, Lcom/carrotsearch/hppc/t;->j([III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
