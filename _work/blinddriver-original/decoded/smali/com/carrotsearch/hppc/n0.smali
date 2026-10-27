.class public Lcom/carrotsearch/hppc/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/o0;
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

.field public values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 1
    invoke-static {}, Lcom/carrotsearch/hppc/t;->b()Lcom/carrotsearch/hppc/u;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/carrotsearch/hppc/n0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p4, p0, Lcom/carrotsearch/hppc/n0;->orderMixer:Lcom/carrotsearch/hppc/u;

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/carrotsearch/hppc/n0;->verifyLoadFactor(D)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/carrotsearch/hppc/n0;->loadFactor:D

    .line 5
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->ensureCapacity(I)V

    return-void
.end method

.method public static from([I[Ljava/lang/Object;)Lcom/carrotsearch/hppc/n0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VType:",
            "Ljava/lang/Object;",
            ">([I[TVType;)",
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/carrotsearch/hppc/n0;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n0;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v0, v2, v3}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays of keys and values must have an identical length."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public allocateBuffers(I)V
    .locals 5

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    :try_start_0
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v1, p0, Lcom/carrotsearch/hppc/n0;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v1

    iput v1, p0, Lcom/carrotsearch/hppc/n0;->resizeAt:I

    iput v0, p0, Lcom/carrotsearch/hppc/n0;->keyMixer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iput-object v2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    new-instance v1, Landroidx/fragment/app/i0;

    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p0, p0, 0x1

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

.method public allocateThenInsertThenRehash(IILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v3

    iget-wide v4, p0, Lcom/carrotsearch/hppc/n0;->loadFactor:D

    invoke-static {v2, v4, v5, v3}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/n0;->allocateBuffers(I)V

    aput p2, v0, p1

    aput-object p3, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/n0;->rehash([I[Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Lcom/carrotsearch/hppc/n0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/n0;

    .line 3
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 4
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    .line 5
    iget-boolean v1, v0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    .line 6
    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/n0;->orderMixer:Lcom/carrotsearch/hppc/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->clone()Lcom/carrotsearch/hppc/n0;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(I)Z
    .locals 3

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

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
    .locals 4

    iget v0, p0, Lcom/carrotsearch/hppc/n0;->resizeAt:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget-wide v2, p0, Lcom/carrotsearch/hppc/n0;->loadFactor:D

    invoke-static {v2, v3, p1}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->allocateBuffers(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/n0;->rehash([I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public equalElements(Lcom/carrotsearch/hppc/n0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/n0;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/n0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/e;

    iget v1, v0, Ln5/e;->b:I

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/n0;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Ln5/e;->c:Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/n0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->equalElements(Lcom/carrotsearch/hppc/n0;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Lo5/b;)Lo5/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/b;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 9
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    .line 10
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 11
    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {p1, v3, v2}, Lo5/b;->apply(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    .line 12
    :cond_0
    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    :goto_0
    if-gt v3, p0, :cond_2

    .line 13
    aget v2, v0, v3

    if-eqz v2, :cond_1

    .line 14
    aget-object v4, v1, v3

    invoke-interface {p1, v2, v4}, Lo5/b;->apply(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public forEach(Lp5/b;)Lp5/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/b;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 2
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    .line 3
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 4
    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {p1, v3, v2}, Lp5/b;->apply(ILjava/lang/Object;)V

    .line 5
    :cond_0
    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    :goto_0
    if-gt v3, p0, :cond_2

    .line 6
    aget v2, v0, v3

    if-eqz v2, :cond_1

    .line 7
    aget-object v4, v1, v3

    invoke-interface {p1, v2, v4}, Lp5/b;->apply(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v2

    aget v4, v1, v3

    if-eqz v4, :cond_3

    if-ne v4, p1, :cond_2

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p0, p0, v3

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getOrDefault(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget v1, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v1

    aget v3, v0, v2

    if-eqz v3, :cond_2

    if-ne v3, p1, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p0, p0, v2

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/e;

    iget v3, v2, Ln5/e;->b:I

    invoke-static {v3}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v3

    iget-object v2, v2, Ln5/e;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v2

    :goto_2
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    return v0
.end method

.method public hashKey(I)I
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/n0;->keyMixer:I

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

.method public indexGet(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public indexInsert(IILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    not-int p1, p1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    return-void

    :cond_0
    iget v1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    iget v2, p0, Lcom/carrotsearch/hppc/n0;->resizeAt:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/carrotsearch/hppc/n0;->allocateThenInsertThenRehash(IILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    aput p2, v1, p1

    iget-object p2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    :goto_0
    iget p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    return-void
.end method

.method public indexOf(I)I
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    not-int p0, v0

    return p0

    :cond_1
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

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

.method public indexReplace(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ln5/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/n0;I)V

    return-object v0
.end method

.method public keys()Lcom/carrotsearch/hppc/l0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/l0;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/l0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/l0;-><init>(Lcom/carrotsearch/hppc/n0;)V

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/carrotsearch/hppc/y;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->keys()Lcom/carrotsearch/hppc/l0;

    move-result-object p0

    return-object p0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    add-int/2addr v0, v1

    aget-object p1, p0, v0

    aput-object p2, p0, v0

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v0

    aget v4, v2, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p1, p0, v3

    aput-object p2, p0, v3

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    iget v4, p0, Lcom/carrotsearch/hppc/n0;->resizeAt:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, v3, p1, p2}, Lcom/carrotsearch/hppc/n0;->allocateThenInsertThenRehash(IILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    aput p1, v2, v3

    iget-object p1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aput-object p2, p1, v3

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Lcom/carrotsearch/hppc/k0;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/k0;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/e;

    .line 3
    iget v2, v1, Ln5/e;->b:I

    iget-object v1, v1, Ln5/e;->c:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public putAll(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ln5/e;",
            ">;)I"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/e;

    .line 7
    iget v2, v1, Ln5/e;->b:I

    iget-object v1, v1, Ln5/e;->c:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public putIfAbsent(ILjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/n0;->indexExists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/carrotsearch/hppc/n0;->indexInsert(IILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public rehash([I[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v5, p1, v3

    aput v5, v0, v4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p2, v3

    aput-object v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    aget v4, p1, v3

    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v5

    :goto_1
    and-int/2addr v5, v2

    aget v6, v0, v5

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    aput v4, v0, v5

    aget-object v4, p2, v3

    aput-object v4, v1, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iput-object v0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/n0;->ensureCapacity(I)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p0, v0

    aput-object v1, p0, v0

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v0

    aget v4, v2, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    iget-object p1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/n0;->shiftConflictingKeys(I)V

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public removeAll(Lcom/carrotsearch/hppc/z;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    instance-of v1, p1, Lcom/carrotsearch/hppc/j0;

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    .line 6
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 8
    iget v3, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    :goto_0
    if-gt v2, v3, :cond_3

    .line 9
    aget v4, v1, v2

    if-eqz v4, :cond_1

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/n0;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    .line 12
    iget v1, v1, Ln5/a;->b:I

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/n0;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public removeAll(Lo5/b;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/b;",
            ")I"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    .line 15
    iget v1, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    .line 16
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v2, v2, v4

    invoke-interface {p1, v3, v2}, Lo5/b;->apply(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    iput-boolean v3, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    .line 19
    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 21
    iget-object v4, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    :goto_0
    if-gt v3, v1, :cond_2

    .line 22
    aget v5, v2, v3

    if-eqz v5, :cond_1

    aget-object v6, v4, v3

    .line 23
    invoke-interface {p1, v5, v6}, Lo5/b;->apply(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/n0;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public removeAll(Lo5/c;)I
    .locals 5

    .line 26
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p1, v2}, Lo5/c;->apply(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    .line 30
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v1, v3

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    .line 32
    iget v3, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    :goto_0
    if-gt v2, v3, :cond_2

    .line 33
    aget v4, v1, v2

    if-eqz v4, :cond_1

    .line 34
    invoke-interface {p1, v4}, Lo5/c;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/n0;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public shiftConflictingKeys(I)V
    .locals 8

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/n0;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    add-int/lit8 v4, v4, 0x1

    add-int v5, p1, v4

    and-int/2addr v5, v2

    aget v6, v0, v5

    if-nez v6, :cond_1

    aput v3, v0, p1

    const/4 v0, 0x0

    aput-object v0, v1, p1

    iget p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    return-void

    :cond_1
    invoke-virtual {p0, v6}, Lcom/carrotsearch/hppc/n0;->hashKey(I)I

    move-result v7

    sub-int v7, v5, v7

    and-int/2addr v7, v2

    if-lt v7, v4, :cond_0

    aput v6, v0, p1

    aget-object v4, v1, v5

    aput-object v4, v1, p1

    move v4, v3

    move p1, v5

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/n0;->assigned:I

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/n0;->hasEmptyKey:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/e;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, v2, Ln5/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Ln5/e;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public values()Lcom/carrotsearch/hppc/j1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/j1;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/m0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/carrotsearch/hppc/m0;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic values()Lcom/carrotsearch/hppc/k1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/n0;->values()Lcom/carrotsearch/hppc/j1;

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

    iget-object v0, p0, Lcom/carrotsearch/hppc/n0;->keys:[I

    iget p0, p0, Lcom/carrotsearch/hppc/n0;->mask:I

    invoke-static {v0, p0, p1}, Lcom/carrotsearch/hppc/t;->j([III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
