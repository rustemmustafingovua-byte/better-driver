.class Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/PrepareContractionHierarchies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private lastNodesLazyUpdatePercentage:I

.field private logMessagesPercentage:I

.field private maxNeighborUpdates:I

.field private neighborUpdatePercentage:I

.field private nodesContractedPercentage:I

.field private periodicUpdatesPercentage:I


# direct methods
.method private constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setPeriodicUpdatesPercentage(I)V

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setLastNodesLazyUpdatePercentage(I)V

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setNeighborUpdatePercentage(I)V

    invoke-virtual {p0, p4}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setMaxNeighborUpdates(I)V

    invoke-virtual {p0, p5}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setNodesContractedPercentage(I)V

    invoke-virtual {p0, p6}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->setLogMessagesPercentage(I)V

    return-void
.end method

.method private checkPercentage(Ljava/lang/String;I)V
    .locals 0

    if-ltz p2, :cond_0

    const/16 p0, 0x64

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, " has to be in [0, 100], to disable it use 0"

    invoke-static {p1, p2}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forTraversalMode(Lcom/graphhopper/routing/util/TraversalMode;)Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;
    .locals 8

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const/16 v5, 0x64

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/16 v3, 0x32

    const/4 v4, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;-><init>(IIIIII)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;

    const/16 v6, 0x64

    const/16 v7, 0x14

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/16 v4, 0x64

    const/4 v5, 0x2

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;-><init>(IIIIII)V

    return-object v1
.end method


# virtual methods
.method public getLastNodesLazyUpdatePercentage()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->lastNodesLazyUpdatePercentage:I

    return p0
.end method

.method public getLogMessagesPercentage()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->logMessagesPercentage:I

    return p0
.end method

.method public getMaxNeighborUpdates()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->maxNeighborUpdates:I

    return p0
.end method

.method public getNeighborUpdatePercentage()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->neighborUpdatePercentage:I

    return p0
.end method

.method public getNodesContractedPercentage()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->nodesContractedPercentage:I

    return p0
.end method

.method public getPeriodicUpdatesPercentage()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->periodicUpdatesPercentage:I

    return p0
.end method

.method public setLastNodesLazyUpdatePercentage(I)V
    .locals 1

    const-string v0, "prepare.ch.updates.lazy"

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->checkPercentage(Ljava/lang/String;I)V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->lastNodesLazyUpdatePercentage:I

    return-void
.end method

.method public setLogMessagesPercentage(I)V
    .locals 1

    const-string v0, "prepare.ch.log_messages"

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->checkPercentage(Ljava/lang/String;I)V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->logMessagesPercentage:I

    return-void
.end method

.method public setMaxNeighborUpdates(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->maxNeighborUpdates:I

    return-void
.end method

.method public setNeighborUpdatePercentage(I)V
    .locals 1

    const-string v0, "prepare.ch.updates.neighbor"

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->checkPercentage(Ljava/lang/String;I)V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->neighborUpdatePercentage:I

    return-void
.end method

.method public setNodesContractedPercentage(I)V
    .locals 1

    const-string v0, "prepare.ch.contracted_nodes"

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->checkPercentage(Ljava/lang/String;I)V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->nodesContractedPercentage:I

    return-void
.end method

.method public setPeriodicUpdatesPercentage(I)V
    .locals 1

    const-string v0, "prepare.ch.updates.periodic"

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->checkPercentage(Ljava/lang/String;I)V

    iput p1, p0, Lcom/graphhopper/routing/ch/PrepareContractionHierarchies$Params;->periodicUpdatesPercentage:I

    return-void
.end method
