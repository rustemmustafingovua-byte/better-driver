.class public Lcom/graphhopper/routing/ch/ShortcutUnpacker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final edgeBased:Z

.field private final graph:Lcom/graphhopper/storage/RoutingCHGraph;

.field private reverseOrder:Z

.field private final visitor:Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitor:Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;

    iput-boolean p3, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->edgeBased:Z

    return-void
.end method

.method private doVisitOriginalEdges(IIZZI)V
    .locals 0

    iput-boolean p3, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->reverseOrder:Z

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p3, p4, p5}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p3, "Edge with id: "

    const-string p4, " does not exist or does not touch node "

    invoke-static {p3, p1, p4, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V
    .locals 12

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->isShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitor:Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdge()I

    move-result v1

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {v0, p0, p2, p3}, Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;->visit(Lcom/graphhopper/util/EdgeIteratorState;ZI)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->edgeBased:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge1()I

    move-result v2

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge2()I

    move-result v3

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v4

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v5

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandSkippedEdgesEdgeBased(IIIIZI)V

    return-void

    :cond_1
    move-object v1, p0

    move v6, p2

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge1()I

    move-result v7

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge2()I

    move-result v8

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v9

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v10

    move v11, v6

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandSkippedEdgesNodeBased(IIIIZ)V

    return-void
.end method

.method private expandSkippedEdgesEdgeBased(IIIIZI)V
    .locals 5

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move v4, p2

    move p2, p1

    move p1, v4

    :goto_0
    invoke-direct {p0, p1, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object v0

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object v1

    if-ne p3, p4, :cond_2

    invoke-interface {v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-interface {v1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object p6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string p6, ", adj: "

    const-string v0, ", skip-edge1: "

    const-string v1, "error: detected edge where a skipped edges is a loop. this should never happen. base: "

    invoke-static {v1, p3, p6, p4, v0}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", skip-edge2: "

    const-string p6, ", reverse: "

    invoke-static {p3, p2, p4, p1, p6}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-direct {p0, v1, p3}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getOppositeEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;I)I

    move-result p1

    iget-boolean p2, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->reverseOrder:Z

    if-eqz p2, :cond_3

    invoke-direct {p0, v0, p5, p1}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    invoke-direct {p0, v1, p5, p6}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    return-void

    :cond_3
    invoke-direct {p0, v1, p5, p6}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    invoke-direct {p0, v0, p5, p1}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    return-void
.end method

.method private expandSkippedEdgesNodeBased(IIIIZ)V
    .locals 0

    invoke-direct {p0, p2, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p3

    invoke-interface {p3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p1

    :goto_0
    iget-boolean p2, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->reverseOrder:Z

    const/4 p4, -0x1

    if-eqz p2, :cond_1

    invoke-direct {p0, p3, p5, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    invoke-direct {p0, p1, p5, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p5, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    invoke-direct {p0, p3, p5, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->expandEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;ZI)V

    return-void
.end method

.method private getEdge(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/RoutingCHGraph;->getEdgeIteratorState(II)Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;

    move-result-object p0

    return-object p0
.end method

.method private getOppositeEdge(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;I)I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->graph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result v0

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    invoke-interface {p0, v0, p2}, Lcom/graphhopper/storage/Graph;->isAdjacentToNode(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public visitOriginalEdgesBwd(IIZI)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->doVisitOriginalEdges(IIZZI)V

    return-void
.end method

.method public visitOriginalEdgesFwd(IIZI)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->doVisitOriginalEdges(IIZZI)V

    return-void
.end method
