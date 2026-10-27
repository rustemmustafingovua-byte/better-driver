.class public final Lcom/carrotsearch/hppc/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[J

.field public m:I


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v2, 0x6

    ushr-long/2addr p1, v2

    add-long/2addr p1, v0

    long-to-int p1, p1

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/carrotsearch/hppc/j;->l:[J

    iput p1, p0, Lcom/carrotsearch/hppc/j;->m:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    iget p0, p0, Lcom/carrotsearch/hppc/j;->m:I

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-wide v4, v0, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/carrotsearch/hppc/j;

    iget-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/carrotsearch/hppc/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/carrotsearch/hppc/j;

    iget v1, p1, Lcom/carrotsearch/hppc/j;->m:I

    iget v3, p0, Lcom/carrotsearch/hppc/j;->m:I

    if-le v1, v3, :cond_2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :cond_2
    iget v1, p0, Lcom/carrotsearch/hppc/j;->m:I

    sub-int/2addr v1, v0

    :goto_0
    iget v3, p1, Lcom/carrotsearch/hppc/j;->m:I

    if-lt v1, v3, :cond_4

    iget-object v3, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v3, v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v3, v0

    :goto_1
    if-ltz v3, :cond_6

    iget-object v1, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v4, v1, v3

    iget-object v1, p1, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v6, v1, v3

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public final f(J)V
    .locals 3

    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/carrotsearch/hppc/j;->m:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3f

    const-wide/16 v1, 0x1

    shl-long p1, v1, p1

    iget-object p0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v1, p0, v0

    not-long p1, p1

    and-long/2addr p1, v1

    aput-wide p1, p0, v0

    return-void
.end method

.method public final g(I)Z
    .locals 5

    shr-int/lit8 v0, p1, 0x6

    iget-object p0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    array-length v1, p0

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 p1, p1, 0x3f

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    aget-wide p0, p0, v0

    and-long/2addr p0, v3

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final h(J)V
    .locals 8

    const/4 v0, 0x6

    shr-long v1, p1, v0

    long-to-int v1, v1

    iget v2, p0, Lcom/carrotsearch/hppc/j;->m:I

    const-wide/16 v3, 0x1

    if-lt v1, v2, :cond_3

    ushr-long v5, p1, v0

    add-long/2addr v5, v3

    long-to-int v2, v5

    iget-object v5, p0, Lcom/carrotsearch/hppc/j;->l:[J

    array-length v6, v5

    if-ge v6, v2, :cond_2

    array-length v6, v5

    if-ge v6, v2, :cond_1

    shr-int/lit8 v6, v2, 0x3

    const/16 v7, 0x9

    if-ge v2, v7, :cond_0

    const/4 v0, 0x3

    :cond_0
    add-int/2addr v6, v0

    add-int/2addr v6, v2

    new-array v0, v6, [J

    array-length v2, v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    :cond_1
    iput-object v5, p0, Lcom/carrotsearch/hppc/j;->l:[J

    :cond_2
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/carrotsearch/hppc/j;->m:I

    :cond_3
    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3f

    shl-long p1, v3, p1

    iget-object p0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v2, p0, v1

    or-long/2addr p1, v2

    aput-wide p1, p0, v1

    return-void
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    array-length v0, v0

    const-wide/16 v1, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v3, v3, v0

    xor-long/2addr v1, v3

    const/4 v3, 0x1

    shl-long v3, v1, v3

    const/16 v5, 0x3f

    ushr-long/2addr v1, v5

    or-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const/16 p0, 0x20

    shr-long v3, v1, p0

    xor-long v0, v3, v1

    long-to-int p0, v0

    const v0, -0x6789edcc

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/carrotsearch/hppc/j;->m:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x6

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    const/4 v5, 0x0

    aget-wide v6, v0, v5

    cmp-long v0, v6, v1

    if-eqz v0, :cond_1

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    iget v0, p0, Lcom/carrotsearch/hppc/j;->m:I

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v6, v0, v5

    cmp-long v0, v6, v1

    if-eqz v0, :cond_1

    shl-int/lit8 v0, v5, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    add-int/2addr v3, v0

    :cond_2
    :goto_0
    int-to-long v5, v3

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    const-string p0, "{}"

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    ushr-long v7, v5, v4

    long-to-int v3, v7

    iget v7, p0, Lcom/carrotsearch/hppc/j;->m:I

    const-wide/16 v8, -0x1

    if-lt v3, v7, :cond_5

    :cond_4
    :goto_2
    move-wide v5, v8

    goto :goto_3

    :cond_5
    long-to-int v5, v5

    and-int/lit8 v5, v5, 0x3f

    iget-object v6, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v6, v6, v3

    ushr-long/2addr v6, v5

    cmp-long v10, v6, v1

    if-eqz v10, :cond_6

    int-to-long v8, v3

    shl-long/2addr v8, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    add-int/2addr v3, v5

    int-to-long v5, v3

    add-long/2addr v8, v5

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/carrotsearch/hppc/j;->m:I

    if-ge v3, v5, :cond_4

    iget-object v5, p0, Lcom/carrotsearch/hppc/j;->l:[J

    aget-wide v5, v5, v3

    cmp-long v7, v5, v1

    if-eqz v7, :cond_6

    int-to-long v7, v3

    shl-long/2addr v7, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v7, v5

    move-wide v5, v7

    :goto_3
    cmp-long v3, v5, v1

    if-ltz v3, :cond_7

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
