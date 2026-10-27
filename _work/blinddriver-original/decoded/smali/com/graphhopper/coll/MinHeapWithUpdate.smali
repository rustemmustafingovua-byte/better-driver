.class public Lcom/graphhopper/coll/MinHeapWithUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NOT_PRESENT:I = -0x1


# instance fields
.field private final max:I

.field private final positions:[I

.field private size:I

.field private final tree:[I

.field private final vals:[F


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p1, 0x1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    const/4 v1, 0x0

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v0, v1

    iput p1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->max:I

    return-void
.end method

.method private checkIdInRange(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->max:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->max:I

    const-string v1, ", legal range: [0, "

    const-string v2, "["

    const-string v3, "Illegal id: "

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private percolateDown(I)V
    .locals 7

    iget v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aget v1, v1, p1

    :goto_0
    shl-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    if-gt v2, v3, :cond_3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    add-int/lit8 v4, v2, 0x1

    aget v5, v3, v4

    aget v3, v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_1

    move v2, v4

    :cond_1
    iget-object v3, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aget v4, v3, v2

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aget v6, v5, v2

    aput v6, v5, p1

    aput v4, v3, p1

    iget-object v3, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput p1, v3, v6

    move p1, v2

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aput v0, v2, p1

    iget-object v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aput v1, v2, p1

    iget-object p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput p1, p0, v0

    return-void
.end method

.method private percolateUp(I)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aget v1, v1, p1

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    shr-int/lit8 v3, p1, 0x1

    aget v4, v2, v3

    cmpg-float v5, v1, v4

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aget v6, v5, v3

    aput v6, v5, p1

    aput v4, v2, p1

    iget-object v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput p1, v2, v6

    move p1, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aput v0, v3, p1

    aput v1, v2, p1

    iget-object p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput p1, p0, v0

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    iget-object v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    return-void
.end method

.method public contains(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->checkIdInRange(I)V

    iget-object p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aget p0, p0, p1

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public peekId()I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public peekValue()F
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public poll()I
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/coll/MinHeapWithUpdate;->peekId()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    iget v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    aget v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aget v5, v1, v2

    aput v5, v1, v4

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput v4, v1, v3

    const/4 v3, -0x1

    aput v3, v1, v0

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    invoke-direct {p0, v4}, Lcom/graphhopper/coll/MinHeapWithUpdate;->percolateDown(I)V

    return v0
.end method

.method public push(IF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->checkIdInRange(I)V

    iget v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    iget v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->max:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->tree:[I

    aput p1, v1, v0

    iget-object v1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aput v0, v1, p1

    iget-object p1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aput p2, p1, v0

    invoke-direct {p0, v0}, Lcom/graphhopper/coll/MinHeapWithUpdate;->percolateUp(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Element with id: "

    const-string v0, " was pushed already, you need to use the update method if you want to change its value"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    const-string p2, "Cannot push anymore, the heap is already full. size: "

    invoke-static {p0, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->size:I

    return p0
.end method

.method public update(IF)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/coll/MinHeapWithUpdate;->checkIdInRange(I)V

    iget-object v0, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->positions:[I

    aget v0, v0, p1

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/graphhopper/coll/MinHeapWithUpdate;->vals:[F

    aget v1, p1, v0

    aput p2, p1, v0

    cmpl-float p1, p2, v1

    if-lez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/graphhopper/coll/MinHeapWithUpdate;->percolateDown(I)V

    return-void

    :cond_0
    cmpg-float p1, p2, v1

    if-gez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/graphhopper/coll/MinHeapWithUpdate;->percolateUp(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "The heap does not contain: "

    const-string v0, ". Use the contains method to check this before calling update"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
