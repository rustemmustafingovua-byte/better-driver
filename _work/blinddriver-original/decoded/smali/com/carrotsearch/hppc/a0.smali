.class public final Lcom/carrotsearch/hppc/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[I

.field public m:[D

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:Lcom/carrotsearch/hppc/u;


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/carrotsearch/hppc/a0;->s:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    iget-object v2, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    add-int/lit8 v3, p1, 0x1

    :try_start_0
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    new-array v3, v3, [D

    iput-object v3, p0, Lcom/carrotsearch/hppc/a0;->m:[D
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    invoke-static {v1, v2, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v1

    iput v1, p0, Lcom/carrotsearch/hppc/a0;->q:I

    iput v0, p0, Lcom/carrotsearch/hppc/a0;->n:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/a0;->p:I

    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    iput-object v2, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    new-instance v1, Landroidx/fragment/app/i0;

    iget p0, p0, Lcom/carrotsearch/hppc/a0;->p:I

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

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/a0;

    iget-object v1, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/a0;->l:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, v0, Lcom/carrotsearch/hppc/a0;->m:[D

    iget-boolean v1, v0, Lcom/carrotsearch/hppc/a0;->r:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/a0;->r:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/a0;->s:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/a0;->s:Lcom/carrotsearch/hppc/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/carrotsearch/hppc/a0;

    if-ne v2, v1, :cond_a

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/a0;

    iget v1, p1, Lcom/carrotsearch/hppc/a0;->o:I

    iget-boolean v2, p1, Lcom/carrotsearch/hppc/a0;->r:Z

    add-int/2addr v1, v2

    iget v2, p0, Lcom/carrotsearch/hppc/a0;->o:I

    iget-boolean v3, p0, Lcom/carrotsearch/hppc/a0;->r:Z

    add-int/2addr v2, v3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    move p0, v0

    goto/16 :goto_5

    :cond_1
    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/a0;)V

    :cond_2
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/b;

    iget v2, p1, Ln5/b;->b:I

    if-nez v2, :cond_3

    iget-boolean v4, p0, Lcom/carrotsearch/hppc/a0;->r:Z

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    iget v5, p0, Lcom/carrotsearch/hppc/a0;->p:I

    iget v6, p0, Lcom/carrotsearch/hppc/a0;->n:I

    xor-int/2addr v6, v2

    invoke-static {v6}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v6

    :goto_1
    and-int/2addr v6, v5

    aget v7, v4, v6

    if-eqz v7, :cond_5

    if-ne v7, v2, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/carrotsearch/hppc/a0;->r:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    iget v4, p0, Lcom/carrotsearch/hppc/a0;->p:I

    add-int/2addr v4, v3

    aget-wide v4, v2, v4

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    iget v7, p0, Lcom/carrotsearch/hppc/a0;->p:I

    iget v8, p0, Lcom/carrotsearch/hppc/a0;->n:I

    xor-int/2addr v8, v2

    invoke-static {v8}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v8

    :goto_3
    and-int/2addr v8, v7

    aget v9, v6, v8

    if-eqz v9, :cond_8

    if-ne v9, v2, :cond_7

    iget-object v2, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    aget-wide v4, v2, v8

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    iget-wide v6, p1, Ln5/b;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_9
    move p0, v3

    :goto_5
    if-eqz p0, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public final g([I[D)V
    .locals 8

    iget-object v0, p0, Lcom/carrotsearch/hppc/a0;->l:[I

    iget-object v1, p0, Lcom/carrotsearch/hppc/a0;->m:[D

    iget v2, p0, Lcom/carrotsearch/hppc/a0;->p:I

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget v5, p1, v3

    aput v5, v0, v4

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p2, v3

    aput-wide v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    aget v4, p1, v3

    if-eqz v4, :cond_0

    iget v5, p0, Lcom/carrotsearch/hppc/a0;->n:I

    xor-int/2addr v5, v4

    invoke-static {v5}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v5

    :goto_1
    and-int/2addr v5, v2

    aget v6, v0, v5

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    aput v4, v0, v5

    aget-wide v6, p2, v3

    aput-wide v6, v1, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/a0;->r:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/a0;)V

    :goto_1
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/b;

    iget v2, p0, Ln5/b;->b:I

    invoke-static {v2}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v2

    iget-wide v3, p0, Ln5/b;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v3

    long-to-int p0, v3

    add-int/2addr v2, p0

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/a0;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/a0;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/b;

    if-nez p0, :cond_0

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget p0, v2, Ln5/b;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "=>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Ln5/b;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
