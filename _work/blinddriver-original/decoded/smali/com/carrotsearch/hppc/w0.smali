.class public Lcom/carrotsearch/hppc/w0;
.super Lcom/carrotsearch/hppc/g;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/d1;
.implements Lcom/carrotsearch/hppc/i1;
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


# direct methods
.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/carrotsearch/hppc/w0;->orderMixer:Lcom/carrotsearch/hppc/u;

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/carrotsearch/hppc/w0;->verifyLoadFactor(D)D

    move-result-wide p2

    iput-wide p2, p0, Lcom/carrotsearch/hppc/w0;->loadFactor:D

    .line 4
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/w0;->ensureCapacity(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 5
    invoke-static {}, Lcom/carrotsearch/hppc/t;->b()Lcom/carrotsearch/hppc/u;

    move-result-object p2

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/carrotsearch/hppc/w0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public static varargs from([J)Lcom/carrotsearch/hppc/w0;
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/w0;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/w0;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/w0;->addAll([J)I

    return-object v0
.end method


# virtual methods
.method public add(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    xor-int/2addr p1, v3

    iput-boolean v3, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    return p1

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v4, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v4

    aget-wide v6, v2, v5

    cmp-long v8, v6, v0

    if-eqz v8, :cond_2

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    iget v1, p0, Lcom/carrotsearch/hppc/w0;->resizeAt:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v5, p1, p2}, Lcom/carrotsearch/hppc/w0;->allocateThenInsertThenRehash(IJ)V

    goto :goto_1

    :cond_3
    aput-wide p1, v2, v5

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    return v3
.end method

.method public addAll(Lcom/carrotsearch/hppc/v0;)I
    .locals 1

    .line 4
    invoke-interface {p1}, Lcom/carrotsearch/hppc/v0;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w0;->ensureCapacity(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/w0;->addAll(Ljava/lang/Iterable;)I

    move-result p0

    return p0
.end method

.method public addAll(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ln5/f;",
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

    check-cast v1, Ln5/f;

    .line 7
    iget-wide v1, v1, Ln5/f;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/w0;->add(J)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final varargs addAll([J)I
    .locals 5

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w0;->ensureCapacity(I)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p1, v1

    .line 3
    invoke-virtual {p0, v3, v4}, Lcom/carrotsearch/hppc/w0;->add(J)Z

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

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    new-array v2, v2, [J

    iput-object v2, p0, Lcom/carrotsearch/hppc/w0;->keys:[J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v1, p0, Lcom/carrotsearch/hppc/w0;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v1

    iput v1, p0, Lcom/carrotsearch/hppc/w0;->resizeAt:I

    iput v0, p0, Lcom/carrotsearch/hppc/w0;->keyMixer:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    new-instance v1, Landroidx/fragment/app/i0;

    iget-object v2, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

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

.method public allocateThenInsertThenRehash(IJ)V
    .locals 5

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v1, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

    move-result v2

    iget-wide v3, p0, Lcom/carrotsearch/hppc/w0;->loadFactor:D

    invoke-static {v1, v3, v4, v2}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/w0;->allocateBuffers(I)V

    aput-wide p2, v0, p1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w0;->rehash([J)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public clone()Lcom/carrotsearch/hppc/w0;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/w0;

    .line 3
    iget-object v1, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/carrotsearch/hppc/w0;->keys:[J

    .line 4
    iget-boolean v1, v0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    .line 5
    iget-object p0, p0, Lcom/carrotsearch/hppc/w0;->orderMixer:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/w0;->orderMixer:Lcom/carrotsearch/hppc/u;
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
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->clone()Lcom/carrotsearch/hppc/w0;

    move-result-object p0

    return-object p0
.end method

.method public contains(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    return p0

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v3, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

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
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/w0;->resizeAt:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget-wide v1, p0, Lcom/carrotsearch/hppc/w0;->loadFactor:D

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/w0;->allocateBuffers(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w0;->rehash([J)V

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

    check-cast p1, Lcom/carrotsearch/hppc/i1;

    invoke-interface {p1}, Lcom/carrotsearch/hppc/v0;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

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

    check-cast v0, Ln5/f;

    iget-wide v0, v0, Ln5/f;->b:J

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/w0;->contains(J)Z

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

.method public forEach(Lo5/f;)Lo5/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo5/f;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 7
    iget-boolean v0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {p1, v1, v2}, Lo5/f;->apply(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    .line 10
    iget p0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    const/4 v3, 0x0

    :goto_0
    if-gt v3, p0, :cond_2

    .line 11
    aget-wide v4, v0, v3

    cmp-long v6, v4, v1

    if-eqz v6, :cond_1

    .line 12
    invoke-interface {p1, v4, v5}, Lo5/f;->apply(J)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public forEach(Lp5/f;)Lp5/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lp5/f;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lp5/f;->apply()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    .line 4
    iget p0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_2

    .line 5
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1}, Lp5/f;->apply()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget p0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    :goto_1
    if-ltz p0, :cond_2

    aget-wide v2, v1, p0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v2

    long-to-int v2, v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public hashKey(J)I
    .locals 2

    iget p0, p0, Lcom/carrotsearch/hppc/w0;->keyMixer:I

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

.method public indexGet(I)J
    .locals 0

    iget-object p0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public indexInsert(IJ)V
    .locals 3

    not-int p1, p1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    iget v2, p0, Lcom/carrotsearch/hppc/w0;->resizeAt:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/carrotsearch/hppc/w0;->allocateThenInsertThenRehash(IJ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    aput-wide p2, v0, p1

    :goto_0
    iget p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    return-void
.end method

.method public indexOf(J)I
    .locals 7

    iget v0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    not-int p0, v0

    return p0

    :cond_1
    iget-object v3, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

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

.method public indexReplace(IJ)J
    .locals 2

    iget-object p0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    aget-wide v0, p0, p1

    aput-wide p2, p0, p1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

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
            "Ln5/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/w0;)V

    return-object v0
.end method

.method public rehash([J)V
    .locals 10

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v1, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

    move-result v7

    :goto_1
    and-int/2addr v7, v1

    aget-wide v8, v0, v7

    cmp-long v8, v8, v5

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput-wide v3, v0, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    iput-boolean v0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w0;->ensureCapacity(I)V

    return-void
.end method

.method public remove(J)Z
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    iput-boolean v3, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    return p1

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v4, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v4

    aget-wide v6, v2, v5

    cmp-long v8, v6, v0

    if-eqz v8, :cond_2

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/carrotsearch/hppc/w0;->shiftConflictingKeys(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public removeAll(J)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/w0;->remove(J)Z

    move-result p0

    return p0
.end method

.method public removeAll(Lcom/carrotsearch/hppc/d1;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/e;-><init>(Lcom/carrotsearch/hppc/d1;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/u0;->removeAll(Lo5/f;)I

    move-result p0

    return p0
.end method

.method public removeAll(Lo5/f;)I
    .locals 9

    .line 3
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v3, v4}, Lo5/f;->apply(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iput-boolean v2, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    .line 8
    iget v5, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    :goto_0
    if-gt v2, v5, :cond_2

    .line 9
    aget-wide v6, v1, v2

    cmp-long v8, v6, v3

    if-eqz v8, :cond_1

    .line 10
    invoke-interface {p1, v6, v7}, Lo5/f;->apply(J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 11
    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/w0;->shiftConflictingKeys(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public retainAll(Lcom/carrotsearch/hppc/d1;)I
    .locals 2

    .line 1
    new-instance v0, Lcom/carrotsearch/hppc/e;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/carrotsearch/hppc/e;-><init>(Lcom/carrotsearch/hppc/d1;I)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/u0;->removeAll(Lo5/f;)I

    move-result p0

    return p0
.end method

.method public retainAll(Lo5/f;)I
    .locals 1

    .line 2
    new-instance v0, Lcom/carrotsearch/hppc/f;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/f;-><init>(Lo5/f;)V

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/u0;->removeAll(Lo5/f;)I

    move-result p0

    return p0
.end method

.method public shiftConflictingKeys(I)V
    .locals 10

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget v1, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, 0x1

    add-int v4, p1, v3

    and-int/2addr v4, v1

    aget-wide v5, v0, v4

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    aput-wide v7, v0, p1

    iget p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    return-void

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/carrotsearch/hppc/w0;->hashKey(J)I

    move-result v7

    sub-int v7, v4, v7

    and-int/2addr v7, v1

    if-lt v7, v3, :cond_0

    aput-wide v5, v0, p1

    move v3, v2

    move p1, v4

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/w0;->assigned:I

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toArray()[J
    .locals 9

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w0;->size()I

    move-result v0

    new-array v0, v0, [J

    iget-boolean v1, p0, Lcom/carrotsearch/hppc/w0;->hasEmptyKey:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    aput-wide v2, v0, v4

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v5, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget p0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    :goto_1
    if-gt v4, p0, :cond_2

    aget-wide v6, v5, v4

    cmp-long v8, v6, v2

    if-eqz v8, :cond_1

    add-int/lit8 v8, v1, 0x1

    aput-wide v6, v0, v1

    move v1, v8

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/carrotsearch/hppc/g;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/carrotsearch/hppc/w0;->keys:[J

    iget p0, p0, Lcom/carrotsearch/hppc/w0;->mask:I

    invoke-static {v0, p0, p1}, Lcom/carrotsearch/hppc/t;->k([JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
