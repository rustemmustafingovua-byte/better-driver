.class public final Lcom/carrotsearch/hppc/w;
.super Lcom/carrotsearch/hppc/c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[I

.field public m:I

.field public n:I

.field public final o:Ld7/g;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/carrotsearch/hppc/x;->EMPTY_ARRAY:[I

    iput-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    iput-object v0, p0, Lcom/carrotsearch/hppc/w;->o:Ld7/g;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/w;->ensureBufferSpace(I)V

    return-void
.end method

.method public static g(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/w;->n:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v0

    iget v1, p0, Lcom/carrotsearch/hppc/w;->m:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w;->ensureBufferSpace(I)V

    iget v0, p0, Lcom/carrotsearch/hppc/w;->n:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    iget v2, p0, Lcom/carrotsearch/hppc/w;->n:I

    aput p1, v1, v2

    iput v0, p0, Lcom/carrotsearch/hppc/w;->n:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/w;

    iget-object p0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Lcom/carrotsearch/hppc/w;->l:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final contains(I)Z
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/w;->m:I

    iget v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    :goto_0
    if-eq v0, v1, :cond_1

    aget v2, p0, v0

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    array-length v2, p0

    invoke-static {v0, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final ensureBufferSpace(I)V
    .locals 4

    iget-object v0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v0, v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result v1

    add-int v2, v1, p1

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/carrotsearch/hppc/w;->o:Ld7/g;

    invoke-virtual {v3, v0, v2, p1}, Ld7/g;->r(III)I

    move-result p1

    :try_start_0
    new-array v2, p1, [I

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/w;->l([I)V

    iput v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/carrotsearch/hppc/w;->m:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/carrotsearch/hppc/w;->l:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance v1, Landroidx/fragment/app/i0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Not enough memory to allocate new buffers: %,d -> %,d"

    invoke-direct {v1, v0, p0, p1}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/carrotsearch/hppc/w;

    if-ne v1, v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/w;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/w;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/carrotsearch/hppc/v;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/w;)V

    new-instance p0, Lcom/carrotsearch/hppc/v;

    invoke-direct {p0, p1}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/w;)V

    :cond_1
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/a;

    iget p1, p1, Ln5/a;->b:I

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    iget v1, v1, Ln5/a;->b:I

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/carrotsearch/hppc/w;->m:I

    iget v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    iget-object v2, p0, Lcom/carrotsearch/hppc/w;->l:[I

    const/4 v3, 0x1

    :goto_0
    if-eq v0, v1, :cond_0

    mul-int/lit8 v3, v3, 0x1f

    iget-object v4, p0, Lcom/carrotsearch/hppc/w;->l:[I

    aget v4, v4, v0

    invoke-static {v4}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    array-length v4, v2

    invoke-static {v0, v4}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/v;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/w;)V

    return-object v0
.end method

.method public final j()I
    .locals 4

    iget v0, p0, Lcom/carrotsearch/hppc/w;->n:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    sub-int/2addr v0, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    :goto_0
    iput v0, p0, Lcom/carrotsearch/hppc/w;->n:I

    aget p0, v1, v0

    const/4 v2, 0x0

    aput v2, v1, v0

    return p0
.end method

.method public final l([I)V
    .locals 4

    iget v0, p0, Lcom/carrotsearch/hppc/w;->m:I

    iget v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result p0

    invoke-static {v1, v0, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    iget p0, p0, Lcom/carrotsearch/hppc/w;->n:I

    invoke-static {v0, v2, p1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public final removeAll(Lo5/c;)I
    .locals 8

    iget-object v0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    iget v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    array-length v2, v0

    iget v3, p0, Lcom/carrotsearch/hppc/w;->m:I

    const/4 v4, 0x0

    move v5, v3

    move v6, v4

    :goto_0
    if-eq v3, v1, :cond_4

    :try_start_0
    aget v7, v0, v3

    invoke-interface {p1, v7}, Lo5/c;->apply(I)Z

    move-result v7

    if-eqz v7, :cond_0

    aput v4, v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eq v5, v3, :cond_1

    aget v7, v0, v3

    aput v7, v0, v5

    aput v4, v0, v3

    :cond_1
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v5

    :goto_1
    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-eq v3, v1, :cond_3

    if-eq v5, v3, :cond_2

    aget v6, v0, v3

    aput v6, v0, v5

    aput v4, v0, v3

    :cond_2
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v5

    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v3

    goto :goto_2

    :cond_3
    iput v5, p0, Lcom/carrotsearch/hppc/w;->n:I

    throw p1

    :cond_4
    :goto_3
    if-eq v3, v1, :cond_6

    if-eq v5, v3, :cond_5

    aget p1, v0, v3

    aput p1, v0, v5

    aput v4, v0, v3

    :cond_5
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v5

    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/w;->g(II)I

    move-result v3

    goto :goto_3

    :cond_6
    iput v5, p0, Lcom/carrotsearch/hppc/w;->n:I

    return v6
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/carrotsearch/hppc/w;->m:I

    iget v1, p0, Lcom/carrotsearch/hppc/w;->n:I

    if-gt v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    sub-int/2addr v1, v0

    iget-object p0, p0, Lcom/carrotsearch/hppc/w;->l:[I

    array-length p0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method public final toArray()[I
    .locals 1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/w;->l([I)V

    return-object v0
.end method
