.class public Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;
.super Lcom/graphhopper/routing/DefaultBidirPathExtractor;
.source "SourceFile"


# instance fields
.field private final routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

.field private final shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 2

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->createShortcutUnpacker()Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;Lcom/graphhopper/util/EdgeIteratorState;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->lambda$createShortcutUnpacker$0(Lcom/graphhopper/util/EdgeIteratorState;ZI)V

    return-void
.end method

.method private createShortcutUnpacker()Lcom/graphhopper/routing/ch/ShortcutUnpacker;
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    new-instance v2, Lcom/graphhopper/routing/ch/a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0}, Lcom/graphhopper/routing/ch/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;Z)V

    return-object v0
.end method

.method private synthetic lambda$createShortcutUnpacker$0(Lcom/graphhopper/util/EdgeIteratorState;ZI)V
    .locals 2

    iget-object p3, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/routing/Path;->addDistance(D)Lcom/graphhopper/routing/Path;

    iget-object p3, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object v0, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-interface {v0}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->addEdge(I)V

    return-void
.end method


# virtual methods
.method public onEdge(IIZI)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitOriginalEdgesBwd(IIZI)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ch/NodeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitOriginalEdgesFwd(IIZI)V

    return-void
.end method
