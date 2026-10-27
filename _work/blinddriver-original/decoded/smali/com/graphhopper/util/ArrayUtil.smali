.class public Lcom/graphhopper/util/ArrayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([I[III)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/util/ArrayUtil;->lambda$calcSortOrder$0([I[III)I

    move-result p0

    return p0
.end method

.method public static applyOrder([I[I)[I
    .locals 4

    array-length v0, p1

    array-length v1, p0

    if-gt v0, v1, :cond_1

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    aget v3, p0, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sort order must not be shorter than array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calcSortOrder(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)[I
    .locals 2

    .line 1
    iget v0, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    iget v1, p1, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    iget-object p1, p1, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-static {p0, p1, v0}, Lcom/graphhopper/util/ArrayUtil;->calcSortOrder([I[II)[I

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays must have equal size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calcSortOrder([I[II)[I
    .locals 2

    .line 4
    array-length v0, p0

    if-lt v0, p2, :cond_0

    array-length v0, p1

    if-lt v0, p2, :cond_0

    .line 5
    new-instance v0, Lb0/b3;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p1}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {p2, v0}, Lc6/o;->U(ILq5/b;)[I

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays must not be shorter than given length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static constant(II)Lcom/carrotsearch/hppc/x;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iget-object v1, v0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->fill([II)V

    iput p0, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-object v0
.end method

.method public static invert(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;
    .locals 3

    .line 5
    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    .line 6
    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    iput v1, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget v2, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    if-ge v1, v2, :cond_0

    .line 8
    invoke-virtual {p0, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/carrotsearch/hppc/x;->set(II)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static invert([I)[I
    .locals 3

    .line 1
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, -0x1

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 4
    aget v2, p0, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static iota(I)Lcom/carrotsearch/hppc/x;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/graphhopper/util/ArrayUtil;->range(II)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    return-object p0
.end method

.method public static isPermutation(Lcom/carrotsearch/hppc/x;)Z
    .locals 6

    new-instance v0, Lcom/carrotsearch/hppc/j;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    iget v3, v2, Ln5/a;->b:I

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    iget v3, v2, Ln5/a;->b:I

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_1
    iget v2, v2, Ln5/a;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/carrotsearch/hppc/j;->h(J)V

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$calcSortOrder$0([I[III)I
    .locals 1

    aget v0, p0, p2

    aget p0, p0, p3

    invoke-static {v0, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    aget p0, p1, p2

    aget p1, p1, p3

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static merge([I[I)[I
    .locals 6

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [I

    return-object p0

    :cond_0
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v0, v0, [I

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    array-length v4, p1

    if-ge v2, v4, :cond_2

    aget v4, p0, v1

    aget v5, p1, v2

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    aput v4, v0, v3

    move v3, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    aput v5, v0, v3

    move v3, v4

    goto :goto_0

    :cond_2
    array-length v4, p0

    if-ne v1, v4, :cond_3

    array-length p0, p1

    sub-int/2addr p0, v2

    invoke-static {p1, v2, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    sub-int/2addr p0, v2

    :goto_1
    add-int/2addr p0, v3

    goto :goto_2

    :cond_3
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-static {p0, v1, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    sub-int/2addr p0, v1

    goto :goto_1

    :goto_2
    invoke-static {v0, p0}, Lcom/graphhopper/util/ArrayUtil;->removeConsecutiveDuplicates([II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static permutation(ILjava/util/Random;)Lcom/carrotsearch/hppc/x;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/ArrayUtil;->iota(I)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/graphhopper/util/ArrayUtil;->shuffle(Lcom/carrotsearch/hppc/x;Ljava/util/Random;)Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public static range(II)Lcom/carrotsearch/hppc/x;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    sub-int/2addr p1, p0

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput p1, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    add-int v1, p0, p1

    invoke-virtual {v0, p1, v1}, Lcom/carrotsearch/hppc/x;->set(II)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rangeClosed(II)Lcom/carrotsearch/hppc/x;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/graphhopper/util/ArrayUtil;->range(II)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    return-object p0
.end method

.method public static removeConsecutiveDuplicates([II)I
    .locals 5

    if-ltz p1, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget v3, p0, v2

    aget v4, p0, v0

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aput v3, p0, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v1

    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "end less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reverse(Lcom/carrotsearch/hppc/x;)Lcom/carrotsearch/hppc/x;
    .locals 5

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    aget v4, v0, v1

    aput v4, v0, v2

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static shuffle(Lcom/carrotsearch/hppc/x;Ljava/util/Random;)Lcom/carrotsearch/hppc/x;
    .locals 6

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    aget v4, v3, v1

    aget v5, v3, v2

    aput v5, v3, v1

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static subList(Lcom/carrotsearch/hppc/x;II)Lcom/carrotsearch/hppc/x;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static transform(Lcom/carrotsearch/hppc/d0;Lcom/carrotsearch/hppc/d0;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/carrotsearch/hppc/d0;->set(II)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static withoutConsecutiveDuplicates(Lcom/carrotsearch/hppc/d0;)Lcom/carrotsearch/hppc/d0;
    .locals 4

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    invoke-interface {p0}, Lcom/carrotsearch/hppc/z;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p0}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p0, v2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static zero(I)Lcom/carrotsearch/hppc/x;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput p0, v0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-object v0
.end method
