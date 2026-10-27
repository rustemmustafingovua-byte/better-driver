.class public final Lcom/graphhopper/util/ShallowImmutablePointList;
.super Lcom/graphhopper/util/PointList;
.source "SourceFile"


# static fields
.field private static final IMMUTABLE_ERR:Ljava/lang/String; = "This class is immutable, you are not allowed to change it"


# instance fields
.field final fromOffset:I

.field final toOffset:I

.field final wrappedPointList:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(IILcom/graphhopper/util/PointList;)V
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/util/PointList;-><init>()V

    if-gt p1, p2, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    iput p1, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    iput p2, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->toOffset:I

    iput-object p3, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "Illegal interval: "

    const-string v0, ", "

    invoke-static {p3, p1, v0, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "from must be smaller or equal to end"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(DDD)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Lcom/graphhopper/util/PointList;)V
    .locals 0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public ensureNode(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->getDimension()I

    move-result p0

    return p0
.end method

.method public getEle(I)D
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result p0

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntervalString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->toOffset:I

    const-string v1, "["

    const-string v2, ", "

    invoke-static {v1, v0, v2, p0, v1}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLat(I)D
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result p0

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLon(I)D
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result p0

    const-string v1, "Tried to access PointList with too big index! index:"

    const-string v2, ", size:"

    invoke-static {v1, p1, v2, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSize()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result p0

    return p0
.end method

.method public is3D()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/util/ShallowImmutablePointList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isImmutable()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->isImmutable()Z

    move-result p0

    return p0
.end method

.method public makeImmutable()Lcom/graphhopper/util/PointList;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    return-object p0
.end method

.method public parse2DJSON(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeLastPoint()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reverse()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(IDDD)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(ID)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->wrappedPointList:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0, p2, p3}, Lcom/graphhopper/util/PointList;->setElevation(ID)V

    return-void
.end method

.method public setNode(IDDD)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->toOffset:I

    iget p0, p0, Lcom/graphhopper/util/ShallowImmutablePointList;->fromOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public trimToSize(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This class is immutable, you are not allowed to change it"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
