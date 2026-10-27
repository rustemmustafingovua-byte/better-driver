.class public Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;
.super Lcom/graphhopper/routing/DefaultBidirPathExtractor;
.source "SourceFile"


# instance fields
.field private final routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

.field private final shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 2

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->createShortcutUnpacker()Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getBaseGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v0

    invoke-interface {p1}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/graphhopper/storage/Graph;->wrapWeighting(Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;Lcom/graphhopper/util/EdgeIteratorState;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->lambda$createShortcutUnpacker$0(Lcom/graphhopper/util/EdgeIteratorState;ZI)V

    return-void
.end method

.method private createShortcutUnpacker()Lcom/graphhopper/routing/ch/ShortcutUnpacker;
    .locals 4

    new-instance v0, Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->routingGraph:Lcom/graphhopper/storage/RoutingCHGraph;

    new-instance v2, Lcom/graphhopper/routing/ch/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/graphhopper/routing/ch/a;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/ch/ShortcutUnpacker$Visitor;Z)V

    return-object v0
.end method

.method private synthetic lambda$createShortcutUnpacker$0(Lcom/graphhopper/util/EdgeIteratorState;ZI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/routing/Path;->addDistance(D)Lcom/graphhopper/routing/Path;

    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object v1, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v1, p1, p2, p3}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Path;->addEdge(I)V

    return-void
.end method


# virtual methods
.method public getIncEdge(Lcom/graphhopper/routing/SPTEntry;)I
    .locals 0

    check-cast p1, Lcom/graphhopper/routing/ch/CHEntry;

    iget p0, p1, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    return p0
.end method

.method public onEdge(IIZI)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitOriginalEdgesBwd(IIZI)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->shortcutUnpacker:Lcom/graphhopper/routing/ch/ShortcutUnpacker;

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/graphhopper/routing/ch/ShortcutUnpacker;->visitOriginalEdgesFwd(IIZI)V

    return-void
.end method

.method public onMeetingPoint(III)V
    .locals 1

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->path:Lcom/graphhopper/routing/Path;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedCHBidirPathExtractor;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/routing/Path;->addTime(J)Lcom/graphhopper/routing/Path;

    :cond_1
    :goto_0
    return-void
.end method
