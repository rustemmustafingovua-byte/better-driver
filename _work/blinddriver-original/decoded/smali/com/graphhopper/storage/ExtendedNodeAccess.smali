.class public Lcom/graphhopper/storage/ExtendedNodeAccess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/NodeAccess;


# instance fields
.field private final additionalNodes:Lcom/graphhopper/util/PointList;

.field private final firstAdditionalNodeId:I

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/NodeAccess;Lcom/graphhopper/util/PointList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput p3, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->firstAdditionalNodeId:I

    iput-object p2, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->additionalNodes:Lcom/graphhopper/util/PointList;

    return-void
.end method

.method private isAdditionalNode(I)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->firstAdditionalNodeId:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public ensureNode(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->ensureNode(I)V

    return-void
.end method

.method public getDimension()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->getDimension()I

    move-result p0

    return p0
.end method

.method public getEle(I)D
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/ExtendedNodeAccess;->isAdditionalNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->additionalNodes:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->firstAdditionalNodeId:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLat(I)D
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/ExtendedNodeAccess;->isAdditionalNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->additionalNodes:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->firstAdditionalNodeId:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLon(I)D
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/ExtendedNodeAccess;->isAdditionalNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->additionalNodes:Lcom/graphhopper/util/PointList;

    iget p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->firstAdditionalNodeId:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getTurnCostIndex(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/ExtendedNodeAccess;->isAdditionalNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result p0

    return p0
.end method

.method public is3D()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/ExtendedNodeAccess;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p0

    return p0
.end method

.method public setNode(IDDD)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTurnCostIndex(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
