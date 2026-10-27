.class Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;
.implements Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrepareGraphEdgeExplorerImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private nextEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private node:I

.field private final prepareEdges:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private final reverse:Z


# direct methods
.method public constructor <init>([Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->prepareEdges:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-boolean p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->reverse:Z

    return-void
.end method

.method private nodeAisBase()Z
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeA()I

    move-result v0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAdjNode()I
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nodeAisBase()Z

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeB()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeA()I

    move-result p0

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    return p0
.end method

.method public getOrigEdgeCount()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getOrigEdgeCount()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyFirst()I
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nodeAisBase()Z

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getOrigEdgeKeyFirstAB()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getOrigEdgeKeyFirstBA()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLast()I
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nodeAisBase()Z

    move-result v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getOrigEdgeKeyLastAB()I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getOrigEdgeKeyLastBA()I

    move-result p0

    return p0
.end method

.method public getPrepareEdge()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getPrepareEdge()I

    move-result p0

    return p0
.end method

.method public getSkipped1()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getSkipped1()I

    move-result p0

    return p0
.end method

.method public getSkipped2()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getSkipped2()I

    move-result p0

    return p0
.end method

.method public getWeight()D
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nodeAisBase()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->reverse:Z

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getWeightBA()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getWeightAB()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->reverse:Z

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getWeightAB()D

    move-result-wide v0

    return-wide v0

    :cond_2
    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getWeightBA()D

    move-result-wide v0

    return-wide v0
.end method

.method public isShortcut()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->isShortcut()Z

    move-result p0

    return p0
.end method

.method public next()Z
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nextEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->reverse:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nextEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    const/4 p0, 0x1

    return p0
.end method

.method public setBaseNode(I)Lcom/graphhopper/routing/ch/PrepareGraphEdgeIterator;
    .locals 1

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->node:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->prepareEdges:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->nextEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0
.end method

.method public setOrigEdgeCount(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setOrigEdgeCount(I)V

    return-void
.end method

.method public setSkippedEdges(II)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setSkipped1(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0, p2}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setSkipped2(I)V

    return-void
.end method

.method public setWeight(D)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setWeight(D)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;->currEdge:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    if-nez p0, :cond_0

    const-string p0, "not_started"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
