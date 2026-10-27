.class public Lcom/carrotsearch/hppc/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/e1;
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected assigned:I

.field protected hasEmptyKey:Z

.field protected keyMixer:I

.field public keys:[J

.field protected loadFactor:D

.field protected mask:I

.field protected orderMixer:Lcom/carrotsearch/hppc/u;

.field protected resizeAt:I

.field public values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/carrotsearch/hppc/g1;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-virtual {p0, p2, p3}, Lcom/carrotsearch/hppc/g1;->verifyLoadFactor(D)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/carrotsearch/hppc/g1;->loadFactor:D

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/g1;->ensureCapacity(I)V

    return-void
.end method

.method public static from([J[Ljava/lang/Object;)Lcom/carrotsearch/hppc/g1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VType:",
            "Ljava/lang/Object;",
            ">([J[TVType;)",
            "Lcom/carrotsearch/hppc/g1;"
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/carrotsearch/hppc/g1;

    array-length v1, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {}, Lcom/carrotsearch/hppc/t;->b()Lcom/carrotsearch/hppc/u;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/carrotsearch/hppc/g1;-><init>(IDLcom/carrotsearch/hppc/u;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    aget-object v4, p1, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/carrotsearch/hppc/g1;->put(JLjava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    :try_start_0
    new-array v4, v3, [J

    iput-object v4, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v1, p0, Lcom/carrotsearch/hppc/g1;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v1

    iput v1, p0, Lcom/carrotsearch/hppc/g1;->resizeAt:I

    iput v0, p0, Lcom/carrotsearch/hppc/g1;->keyMixer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iput-object v2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    new-instance v1, Landroidx/fragment/app/i0;

    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

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

.method public allocateThenInsertThenRehash(IJLjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v3

    iget-wide v4, p0, Lcom/carrotsearch/hppc/g1;->loadFactor:D

    invoke-static {v2, v4, v5, v3}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/g1;->allocateBuffers(I)V

    aput-wide p2, v0, p1

    aput-object p4, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/g1;->rehash([J[Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Lcom/carrotsearch/hppc/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/g1;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/g1;

    .line 3
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 4
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    .line 5
    iget-boolean v1, v0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    .line 6
    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/g1;->orderMixer:Lcom/carrotsearch/hppc/u;
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
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->clone()Lcom/carrotsearch/hppc/g1;

    move-result-object p0

    return-object p0
.end method

.method public containsKey(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    return p0

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget v3, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result p0

    :goto_0
    and-int/2addr p0, v3

    aget-wide v4, v2, p0

    cmp-long v6, v4, v0

    if-eqz v6, :cond_2

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

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

    iget v0, p0, Lcom/carrotsearch/hppc/g1;->resizeAt:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget-wide v2, p0, Lcom/carrotsearch/hppc/g1;->loadFactor:D

    invoke-static {v2, v3, p1}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/g1;->allocateBuffers(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/g1;->rehash([J[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public equalElements(Lcom/carrotsearch/hppc/g1;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/g1;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/g1;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/i;

    iget-wide v3, v0, Ln5/i;->b:J

    invoke-virtual {p0, v3, v4}, Lcom/carrotsearch/hppc/g1;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/carrotsearch/hppc/g1;->get(J)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Ln5/i;->c:Ljava/lang/Object;

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

    check-cast p1, Lcom/carrotsearch/hppc/g1;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/g1;->equalElements(Lcom/carrotsearch/hppc/g1;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public forEach(Lo5/e;)Lo5/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/e;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 9
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    .line 10
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz v2, :cond_0

    .line 11
    iget v2, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {p1}, Lo5/e;->apply()Z

    move-result v2

    if-nez v2, :cond_0

    return-object p1

    .line 12
    :cond_0
    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p0, :cond_2

    .line 13
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 14
    aget-object v3, v1, v2

    invoke-interface {p1}, Lo5/e;->apply()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public forEach(Lp5/e;)Lp5/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/e;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 2
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    .line 3
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz v2, :cond_0

    .line 4
    iget v2, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v1, v2

    invoke-interface {p1}, Lp5/e;->apply()V

    .line 5
    :cond_0
    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p0, :cond_2

    .line 6
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 7
    aget-object v3, v1, v2

    invoke-interface {p1}, Lp5/e;->apply()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    return-object v3

    :cond_1
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget v4, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v4

    aget-wide v6, v2, v5

    cmp-long v8, v6, v0

    if-eqz v8, :cond_3

    cmp-long v6, v6, p1

    if-nez v6, :cond_2

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p0, p0, v5

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public getOrDefault(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 p0, p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget v3, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v4

    :goto_0
    and-int/2addr v4, v3

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p0, p0, v4

    return-object p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/i;

    iget-wide v3, v2, Ln5/i;->b:J

    invoke-static {v3, v4}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v3

    long-to-int v3, v3

    iget-object v2, v2, Ln5/i;->c:Ljava/lang/Object;

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

.method public hashKey(J)I
    .locals 2

    iget p0, p0, Lcom/carrotsearch/hppc/g1;->keyMixer:I

    int-to-long v0, p0

    xor-long p0, p1, v0

    invoke-static {p0, p1}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide p0

    long-to-int p0, p0

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

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public indexInsert(IJLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    not-int p1, p1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aput-object p4, p2, p1

    iput-boolean v1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    iget v2, p0, Lcom/carrotsearch/hppc/g1;->resizeAt:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/carrotsearch/hppc/g1;->allocateThenInsertThenRehash(IJLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    aput-wide p2, v0, p1

    iget-object p2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aput-object p4, p2, p1

    :goto_0
    iget p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    return-void
.end method

.method public indexOf(J)I
    .locals 7

    iget v0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    not-int p0, v0

    return p0

    :cond_1
    iget-object v3, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result p0

    :goto_0
    and-int/2addr p0, v0

    aget-wide v4, v3, p0

    cmp-long v6, v4, v1

    if-eqz v6, :cond_3

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

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

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

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
            "Ln5/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/g1;I)V

    return-object v0
.end method

.method public keys()Lcom/carrotsearch/hppc/f1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/f1;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/f1;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/f1;-><init>(Lcom/carrotsearch/hppc/g1;)V

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/carrotsearch/hppc/u0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->keys()Lcom/carrotsearch/hppc/f1;

    move-result-object p0

    return-object p0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    add-int/2addr v0, v4

    aget-object p1, p0, v0

    aput-object p3, p0, v0

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v0

    aget-wide v6, v3, v5

    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p1, p0, v5

    aput-object p3, p0, v5

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    iget v1, p0, Lcom/carrotsearch/hppc/g1;->resizeAt:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v5, p1, p2, p3}, Lcom/carrotsearch/hppc/g1;->allocateThenInsertThenRehash(IJLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    aput-wide p1, v3, v5

    iget-object p1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aput-object p3, p1, v5

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public putAll(Lcom/carrotsearch/hppc/e1;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/e1;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

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

    check-cast v1, Ln5/i;

    .line 3
    iget-wide v2, v1, Ln5/i;->b:J

    iget-object v1, v1, Ln5/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1}, Lcom/carrotsearch/hppc/g1;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public putAll(Ljava/lang/Iterable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ln5/i;",
            ">;)I"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

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

    check-cast v1, Ln5/i;

    .line 7
    iget-wide v2, v1, Ln5/i;->b:J

    iget-object v1, v1, Ln5/i;->c:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v1}, Lcom/carrotsearch/hppc/g1;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public putIfAbsent(JLjava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->indexOf(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/g1;->indexExists(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/carrotsearch/hppc/g1;->indexInsert(IJLjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public rehash([J[Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p1, v3

    aput-wide v5, v0, v4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v5, p2, v3

    aput-object v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v8

    :goto_1
    and-int/2addr v8, v2

    aget-wide v9, v0, v8

    cmp-long v9, v9, v6

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    aput-wide v4, v0, v8

    aget-object v4, p2, v3

    aput-object v4, v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iput-object v0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/g1;->ensureCapacity(I)V

    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget v0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p0, v0

    aput-object v4, p0, v0

    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v0

    aget-wide v6, v3, v5

    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    iget-object p1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    aget-object p1, p1, v5

    invoke-virtual {p0, v5}, Lcom/carrotsearch/hppc/g1;->shiftConflictingKeys(I)V

    return-object p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public removeAll(Lcom/carrotsearch/hppc/v0;)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/carrotsearch/hppc/v0;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v2

    if-lt v1, v2, :cond_2

    instance-of v1, p1, Lcom/carrotsearch/hppc/d1;

    if-eqz v1, :cond_2

    .line 3
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1, v3, v4}, Lcom/carrotsearch/hppc/v0;->contains(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    .line 6
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget v5, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v1, v5

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 8
    iget v5, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    :goto_0
    if-gt v2, v5, :cond_3

    .line 9
    aget-wide v6, v1, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1

    invoke-interface {p1, v6, v7}, Lcom/carrotsearch/hppc/v0;->contains(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/g1;->shiftConflictingKeys(I)V

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

    check-cast v1, Ln5/f;

    .line 12
    iget-wide v1, v1, Ln5/f;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/g1;->remove(J)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public removeAll(Lo5/e;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/e;",
            ")I"
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v0

    .line 15
    iget v1, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    .line 16
    iget-boolean v2, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 17
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    aget-object v2, v2, v4

    invoke-interface {p1}, Lo5/e;->apply()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    iput-boolean v3, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    .line 19
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 21
    iget-object v4, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    :goto_0
    if-gt v3, v1, :cond_2

    .line 22
    aget-wide v5, v2, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    aget-object v5, v4, v3

    .line 23
    invoke-interface {p1}, Lo5/e;->apply()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 24
    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/g1;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public removeAll(Lo5/f;)I
    .locals 9

    .line 26
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 28
    invoke-interface {p1, v3, v4}, Lo5/f;->apply(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    .line 30
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget v5, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    aput-object v6, v1, v5

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    .line 32
    iget v5, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    :goto_0
    if-gt v2, v5, :cond_2

    .line 33
    aget-wide v6, v1, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1

    .line 34
    invoke-interface {p1, v6, v7}, Lo5/f;->apply(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/g1;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public shiftConflictingKeys(I)V
    .locals 11

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/g1;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    add-int/lit8 v4, v4, 0x1

    add-int v5, p1, v4

    and-int/2addr v5, v2

    aget-wide v6, v0, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    aput-wide v8, v0, p1

    const/4 v0, 0x0

    aput-object v0, v1, p1

    iget p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    return-void

    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/carrotsearch/hppc/g1;->hashKey(J)I

    move-result v8

    sub-int v8, v5, v8

    and-int/2addr v8, v2

    if-lt v8, v4, :cond_0

    aput-wide v6, v0, p1

    aget-object v4, v1, v5

    aput-object v4, v1, p1

    move v4, v3

    move p1, v5

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/g1;->assigned:I

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/g1;->hasEmptyKey:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/i;

    if-nez v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v3, v2, Ln5/i;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "=>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Ln5/i;->c:Ljava/lang/Object;

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

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/carrotsearch/hppc/m0;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic values()Lcom/carrotsearch/hppc/k1;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/g1;->values()Lcom/carrotsearch/hppc/j1;

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

    iget-object v0, p0, Lcom/carrotsearch/hppc/g1;->keys:[J

    iget p0, p0, Lcom/carrotsearch/hppc/g1;->mask:I

    invoke-static {v0, p0, p1}, Lcom/carrotsearch/hppc/t;->k([JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
