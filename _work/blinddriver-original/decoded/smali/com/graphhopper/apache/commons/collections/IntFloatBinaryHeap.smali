.class public Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GROW_FACTOR:I = 0x2


# instance fields
.field private elements:[I

.field private keys:[F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    invoke-direct {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x1

    .line 3
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    .line 4
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    const/4 p0, 0x0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 5
    aput v0, p1, p0

    return-void
.end method

.method private isFull()Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    array-length v0, v0

    iget p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->trimTo(I)V

    return-void
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IntFloatBinaryHeap contains too many elements to fit in new capacity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getMemoryUsage()J
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    array-length p0, p0

    int-to-long v4, p0

    mul-long/2addr v4, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    return p0
.end method

.method public insert(DI)V
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->ensureCapacity(I)V

    :cond_0
    iget v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    iget-object v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aput p3, v1, v0

    iget-object p3, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    double-to-float p1, p1

    aput p1, p3, v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->percolateUpMinHeap(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public peekElement()I
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Heap is empty. Cannot peek element."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public peekKey()F
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Heap is empty. Cannot peek key."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final percolateDownMinHeap(I)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aget v1, v1, p1

    :goto_0
    mul-int/lit8 v2, p1, 0x2

    iget v3, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    if-gt v2, v3, :cond_2

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    aget v3, v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_0

    move v2, v4

    :cond_0
    iget-object v3, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aget v4, v3, v2

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aget v6, v5, v2

    aput v6, v5, p1

    aput v4, v3, p1

    move p1, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aput v0, v2, p1

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aput v1, p0, p1

    return-void
.end method

.method public final percolateUpMinHeap(I)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aget v1, v1, p1

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    div-int/lit8 v3, p1, 0x2

    aget v4, v2, v3

    cmpg-float v5, v1, v4

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aget v6, v5, v3

    aput v6, v5, p1

    aput v4, v2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aput v0, p0, p1

    aput v1, v2, p1

    return-void
.end method

.method public poll()I
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->peekElement()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    iget v2, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aget v3, v1, v2

    aput v3, v1, v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->percolateDownMinHeap(I)V

    :cond_0
    return v0
.end method

.method public trimTo(I)V
    .locals 2

    iput p1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    add-int/lit8 v0, p1, 0x1

    iget-object p0, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public update(DI)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->size:I

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->elements:[I

    aget v2, v2, v0

    if-ne v2, p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le v0, v1, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->keys:[F

    aget v1, p3, v0

    float-to-double v1, v1

    cmpl-double v1, p1, v1

    if-lez v1, :cond_3

    double-to-float p1, p1

    aput p1, p3, v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->percolateDownMinHeap(I)V

    return-void

    :cond_3
    double-to-float p1, p1

    aput p1, p3, v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/apache/commons/collections/IntFloatBinaryHeap;->percolateUpMinHeap(I)V

    return-void
.end method
