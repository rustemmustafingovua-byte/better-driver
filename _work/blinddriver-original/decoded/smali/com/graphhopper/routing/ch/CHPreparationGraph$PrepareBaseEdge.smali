.class public Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/CHPreparationGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrepareBaseEdge"
.end annotation


# instance fields
.field private nextInA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private nextInB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private nextOutA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private nextOutB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private final nodeA:I

.field private final nodeB:I

.field private final prepareEdge:I

.field private final weightAB:F

.field private final weightBA:F


# direct methods
.method public constructor <init>(IIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->prepareEdge:I

    iput p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    iput p3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    iput p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightAB:F

    iput p5, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightBA:F

    return-void
.end method


# virtual methods
.method public getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextInA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextInB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get next in edge as the given base "

    const-string v1, " is not adjacent to the current edge"

    invoke-static {p1, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextOutA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextOutB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get next out edge as the given base "

    const-string v1, " is not adjacent to the current edge"

    invoke-static {p1, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNodeA()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    return p0
.end method

.method public getNodeB()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    return p0
.end method

.method public getOrigEdgeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getOrigEdgeKeyFirstAB()I
    .locals 1

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->prepareEdge:I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyFirstBA()I
    .locals 1

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->prepareEdge:I

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/graphhopper/util/GHUtility;->createEdgeKey(IZ)I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLastAB()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->getOrigEdgeKeyFirstAB()I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLastBA()I
    .locals 0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->getOrigEdgeKeyFirstBA()I

    move-result p0

    return p0
.end method

.method public getPrepareEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->prepareEdge:I

    return p0
.end method

.method public getSkipped1()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getSkipped2()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getWeightAB()D
    .locals 2

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightAB:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public getWeightBA()D
    .locals 2

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightBA:F

    float-to-double v0, p0

    return-wide v0
.end method

.method public isShortcut()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setNextIn(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextInA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextInB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set next in edge as the given base "

    const-string v0, " is not adjacent to the current edge"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNextOut(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextOutA:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void

    :cond_0
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    if-ne p1, v0, :cond_1

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nextOutB:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot set next out edge as the given base "

    const-string v0, " is not adjacent to the current edge"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOrigEdgeCount(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setSkipped1(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setSkipped2(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setWeight(D)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeA:I

    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->nodeB:I

    iget v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->prepareEdge:I

    iget v3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightAB:F

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;->weightBA:F

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
