.class Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;
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
    name = "PrepareShortcut"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final from:I

.field private nextIn:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private nextOut:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private origEdgeCount:I

.field private final prepareEdge:I

.field private skipped1:I

.field private skipped2:I

.field private final to:I

.field private weight:D


# direct methods
.method private constructor <init>(IIIDIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->prepareEdge:I

    .line 4
    iput p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->from:I

    .line 5
    iput p3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->to:I

    .line 6
    iput-wide p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->weight:D

    .line 7
    iput p6, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped1:I

    .line 8
    iput p7, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped2:I

    .line 9
    iput p8, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->origEdgeCount:I

    return-void
.end method

.method public synthetic constructor <init>(IIIDIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;-><init>(IIIDIII)V

    return-void
.end method


# virtual methods
.method public getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->nextIn:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0
.end method

.method public getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->nextOut:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-object p0
.end method

.method public getNodeA()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->from:I

    return p0
.end method

.method public getNodeB()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->to:I

    return p0
.end method

.method public getOrigEdgeCount()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->origEdgeCount:I

    return p0
.end method

.method public getOrigEdgeKeyFirstAB()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported for node-based shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOrigEdgeKeyFirstBA()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported for node-based shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOrigEdgeKeyLastAB()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported for node-based shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOrigEdgeKeyLastBA()I
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not supported for node-based shortcuts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPrepareEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->prepareEdge:I

    return p0
.end method

.method public getSkipped1()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped1:I

    return p0
.end method

.method public getSkipped2()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped2:I

    return p0
.end method

.method public getWeightAB()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->weight:D

    return-wide v0
.end method

.method public getWeightBA()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->weight:D

    return-wide v0
.end method

.method public isShortcut()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setNextIn(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 0

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->nextIn:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void
.end method

.method public setNextOut(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 0

    iput-object p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->nextOut:Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    return-void
.end method

.method public setOrigEdgeCount(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->origEdgeCount:I

    return-void
.end method

.method public setSkipped1(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped1:I

    return-void
.end method

.method public setSkipped2(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->skipped2:I

    return-void
.end method

.method public setWeight(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->weight:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->from:I

    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->to:I

    iget-wide v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;->weight:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
