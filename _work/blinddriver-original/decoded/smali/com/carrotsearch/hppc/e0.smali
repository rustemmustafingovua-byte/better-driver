.class public final Lcom/carrotsearch/hppc/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[I

.field public m:[I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:Lcom/carrotsearch/hppc/u;


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/carrotsearch/hppc/e0;->r:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    iget-object v0, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/carrotsearch/hppc/e0;->m:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v0

    iput v0, p0, Lcom/carrotsearch/hppc/e0;->p:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/e0;->o:I

    return-void

    :catch_0
    move-exception v2

    iput-object v0, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iput-object v1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    new-instance v0, Landroidx/fragment/app/i0;

    iget p0, p0, Lcom/carrotsearch/hppc/e0;->o:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-direct {v0, p1, v2, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/e0;

    iget-object v1, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/e0;->m:[I

    iget-boolean v1, v0, Lcom/carrotsearch/hppc/e0;->q:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/e0;->q:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/e0;->r:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/e0;->r:Lcom/carrotsearch/hppc/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final containsKey(I)Z
    .locals 3

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget p0, p0, Lcom/carrotsearch/hppc/e0;->o:I

    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result v1

    :goto_0
    and-int/2addr v1, p0

    aget v2, v0, v1

    if-eqz v2, :cond_2

    if-ne v2, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/carrotsearch/hppc/e0;

    if-ne v2, v1, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/e0;

    iget v1, p1, Lcom/carrotsearch/hppc/e0;->n:I

    iget-boolean v2, p1, Lcom/carrotsearch/hppc/e0;->q:Z

    add-int/2addr v1, v2

    iget v2, p0, Lcom/carrotsearch/hppc/e0;->n:I

    iget-boolean v3, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    add-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/e0;)V

    :cond_1
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/c;

    iget v3, p1, Ln5/c;->b:I

    invoke-virtual {p0, v3}, Lcom/carrotsearch/hppc/e0;->containsKey(I)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    iget v4, p0, Lcom/carrotsearch/hppc/e0;->o:I

    add-int/2addr v4, v2

    aget v2, v3, v4

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget v4, p0, Lcom/carrotsearch/hppc/e0;->o:I

    invoke-static {v3}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result v5

    :goto_0
    and-int/2addr v5, v4

    aget v6, v2, v5

    if-eqz v6, :cond_2

    if-ne v6, v3, :cond_4

    iget-object v2, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    aget v2, v2, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :goto_1
    iget p1, p1, Ln5/c;->c:I

    if-eq v2, p1, :cond_1

    goto :goto_2

    :cond_5
    return v2

    :cond_6
    :goto_2
    return v0
.end method

.method public final g(I)I
    .locals 4

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    iget p0, p0, Lcom/carrotsearch/hppc/e0;->o:I

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget v1, p0, Lcom/carrotsearch/hppc/e0;->o:I

    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result v2

    :goto_0
    and-int/2addr v2, v1

    aget v3, v0, v2

    if-eqz v3, :cond_2

    if-ne v3, p1, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    aget p0, p0, v2

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/e0;)V

    :goto_1
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/c;

    iget v2, p0, Ln5/c;->b:I

    invoke-static {v2}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v2

    iget p0, p0, Ln5/c;->c:I

    invoke-static {p0}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr v0, p0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/e0;)V

    return-object v0
.end method

.method public final j(II)V
    .locals 8

    iget v0, p0, Lcom/carrotsearch/hppc/e0;->o:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    add-int/2addr v0, v1

    aget p1, p0, v0

    aput p2, p0, v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result v3

    :goto_0
    and-int/2addr v3, v0

    aget v4, v2, v3

    if-eqz v4, :cond_2

    if-ne v4, p1, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    aget p1, p0, v3

    aput p2, p0, v3

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/carrotsearch/hppc/e0;->n:I

    iget v4, p0, Lcom/carrotsearch/hppc/e0;->p:I

    if-ne v0, v4, :cond_3

    iget-object v2, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget-object v4, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    iget v5, p0, Lcom/carrotsearch/hppc/e0;->o:I

    add-int/2addr v5, v1

    iget-boolean v6, p0, Lcom/carrotsearch/hppc/e0;->q:Z

    add-int/2addr v0, v6

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    invoke-static {v5, v6, v7, v0}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/e0;->a(I)V

    aput p1, v2, v3

    aput p2, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/carrotsearch/hppc/e0;->l([I[I)V

    goto :goto_1

    :cond_3
    aput p1, v2, v3

    iget-object p1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    aput p2, p1, v3

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/e0;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/carrotsearch/hppc/e0;->n:I

    return-void
.end method

.method public final l([I[I)V
    .locals 6

    iget-object v0, p0, Lcom/carrotsearch/hppc/e0;->l:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/e0;->m:[I

    iget p0, p0, Lcom/carrotsearch/hppc/e0;->o:I

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v4, p1, v2

    aput v4, v0, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v4, p2, v2

    aput v4, v1, v3

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result v4

    :goto_1
    and-int/2addr v4, p0

    aget v5, v0, v4

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    aput v3, v0, v4

    aget v3, p2, v2

    aput v3, v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/e0;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/c;

    if-nez p0, :cond_0

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget p0, v2, Ln5/c;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "=>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v2, Ln5/c;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
