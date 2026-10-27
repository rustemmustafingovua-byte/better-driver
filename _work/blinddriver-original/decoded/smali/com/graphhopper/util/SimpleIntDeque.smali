.class public Lcom/graphhopper/util/SimpleIntDeque;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private arr:[I

.field private endIndexPlusOne:I

.field private frontIndex:I

.field private growFactor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x64

    const/high16 v1, 0x40000000    # 2.0f

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/graphhopper/util/SimpleIntDeque;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/util/SimpleIntDeque;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    if-le v0, p1, :cond_0

    .line 4
    iput p2, p0, Lcom/graphhopper/util/SimpleIntDeque;->growFactor:F

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "initial size or increasing grow-factor too low!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCapacity()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    array-length p0, p0

    return p0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    iget p0, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    iget p0, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pop()I
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    iget v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    array-length v0, v0

    int-to-float v0, v0

    iget v3, p0, Lcom/graphhopper/util/SimpleIntDeque;->growFactor:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/SimpleIntDeque;->getSize()I

    move-result v0

    iput v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    add-int/lit8 v1, v0, 0xa

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    iget v4, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    iput v5, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    :cond_0
    return v2
.end method

.method public push(I)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    iget-object v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/graphhopper/util/SimpleIntDeque;->growFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    iget v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    return-void
.end method

.method public setGrowFactor(F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/SimpleIntDeque;->growFactor:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    :goto_0
    iget v2, p0, Lcom/graphhopper/util/SimpleIntDeque;->endIndexPlusOne:I

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/graphhopper/util/SimpleIntDeque;->frontIndex:I

    if-le v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lcom/graphhopper/util/SimpleIntDeque;->arr:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
