.class public final Lcom/carrotsearch/hppc/s0;
.super Lcom/carrotsearch/hppc/g;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[J

.field public m:I

.field public final n:Ld7/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/carrotsearch/hppc/t0;->o:[J

    iput-object v1, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    iput-object v0, p0, Lcom/carrotsearch/hppc/s0;->n:Ld7/g;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/s0;->g(I)V

    return-void
.end method

.method public static j(II)I
    .locals 0

    add-int/lit8 p0, p0, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/s0;->g(I)V

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    iget v2, p0, Lcom/carrotsearch/hppc/s0;->m:I

    aput-wide p1, v1, v2

    iput v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v0, Lcom/carrotsearch/hppc/s0;->l:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final contains(J)Z
    .locals 5

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object p0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eq v2, v0, :cond_1

    aget-wide v3, p0, v2

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    array-length v3, p0

    invoke-static {v2, v3}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/carrotsearch/hppc/s0;

    if-ne v1, v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/s0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/carrotsearch/hppc/v;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/s0;)V

    new-instance p0, Lcom/carrotsearch/hppc/v;

    invoke-direct {p0, p1}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/s0;)V

    :cond_1
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/f;

    iget-wide v1, p1, Ln5/f;->b:J

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/f;

    iget-wide v3, p1, Ln5/f;->b:J

    cmp-long p1, v1, v3

    if-eqz p1, :cond_1

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

.method public final g(I)V
    .locals 4

    iget-object v0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v0, v0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result v1

    add-int v2, v1, p1

    if-lt v2, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/carrotsearch/hppc/s0;->n:Ld7/g;

    invoke-virtual {v3, v0, v2, p1}, Ld7/g;->r(III)I

    move-result p1

    :try_start_0
    new-array v2, p1, [J

    if-lez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/s0;->l([J)V

    iput v1, p0, Lcom/carrotsearch/hppc/s0;->m:I

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/carrotsearch/hppc/s0;->l:[J
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

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object v1, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v4, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v3, v4}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/v;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/v;-><init>(Lcom/carrotsearch/hppc/s0;)V

    return-object v0
.end method

.method public final l([J)V
    .locals 3

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result p0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v2, v0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    iget p0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    invoke-static {v0, v1, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method public final removeAll(Lo5/f;)I
    .locals 10

    iget-object v0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    iget v1, p0, Lcom/carrotsearch/hppc/s0;->m:I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const-wide/16 v6, 0x0

    if-eq v3, v1, :cond_4

    :try_start_0
    aget-wide v8, v0, v3

    invoke-interface {p1, v8, v9}, Lo5/f;->apply(J)Z

    move-result v8

    if-eqz v8, :cond_0

    aput-wide v6, v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eq v5, v3, :cond_1

    aget-wide v8, v0, v3

    aput-wide v8, v0, v5

    aput-wide v6, v0, v3

    :cond_1
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v5

    :goto_1
    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    if-eq v3, v1, :cond_3

    if-eq v5, v3, :cond_2

    aget-wide v8, v0, v3

    aput-wide v8, v0, v5

    aput-wide v6, v0, v3

    :cond_2
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v5

    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v3

    goto :goto_2

    :cond_3
    iput v5, p0, Lcom/carrotsearch/hppc/s0;->m:I

    throw p1

    :cond_4
    :goto_3
    if-eq v3, v1, :cond_6

    if-eq v5, v3, :cond_5

    aget-wide v8, v0, v3

    aput-wide v8, v0, v5

    aput-wide v6, v0, v3

    :cond_5
    invoke-static {v5, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v5

    invoke-static {v3, v2}, Lcom/carrotsearch/hppc/s0;->j(II)I

    move-result v3

    goto :goto_3

    :cond_6
    iput v5, p0, Lcom/carrotsearch/hppc/s0;->m:I

    return v4
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/s0;->m:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toArray()[J
    .locals 1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result v0

    new-array v0, v0, [J

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/s0;->l([J)V

    return-object v0
.end method
