.class public Lcom/graphhopper/util/details/IntersectionDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private final crossingExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private fromEdge:I

.field private intersectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final nodeAccess:Lcom/graphhopper/storage/NodeAccess;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 1

    const-string v0, "intersection"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/details/IntersectionDetails;->fromEdge:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/util/details/IntersectionDetails;->intersectionMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/util/details/IntersectionDetails;->crossingExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/details/IntersectionDetails;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    iput-object p2, p0, Lcom/graphhopper/util/details/IntersectionDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/util/details/IntersectionValues;Lcom/graphhopper/util/details/IntersectionValues;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/util/details/IntersectionDetails;->lambda$isEdgeDifferentToLastEdge$0(Lcom/graphhopper/util/details/IntersectionValues;Lcom/graphhopper/util/details/IntersectionValues;)I

    move-result p0

    return p0
.end method

.method private calculateBearing(DDLcom/graphhopper/util/EdgeIteratorState;)I
    .locals 9

    sget-object p0, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p5, p0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    const/4 p5, 0x0

    invoke-virtual {p0, p5}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-virtual {p0, p5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    sget-object v0, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I
    .locals 0

    instance-of p0, p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getOriginalEdgeKey()I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$isEdgeDifferentToLastEdge$0(Lcom/graphhopper/util/details/IntersectionValues;Lcom/graphhopper/util/details/IntersectionValues;)I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/details/IntersectionValues;->bearing:I

    iget p1, p1, Lcom/graphhopper/util/details/IntersectionValues;->bearing:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/IntersectionDetails;->intersectionMap:Ljava/util/Map;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 14

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/IntersectionDetails;->edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I

    move-result v0

    iget v1, p0, Lcom/graphhopper/util/details/IntersectionDetails;->fromEdge:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/util/details/IntersectionDetails;->intersectionMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/util/details/IntersectionDetails;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v4, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v6

    iget-object v4, p0, Lcom/graphhopper/util/details/IntersectionDetails;->nodeAccess:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v4, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v8

    iget-object v4, p0, Lcom/graphhopper/util/details/IntersectionDetails;->crossingExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v4, v3}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v4

    const/4 v11, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3, v2}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v10

    new-instance v4, Lcom/graphhopper/util/details/IntersectionValues;

    invoke-direct {v4}, Lcom/graphhopper/util/details/IntersectionValues;-><init>()V

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/graphhopper/util/details/IntersectionDetails;->calculateBearing(DDLcom/graphhopper/util/EdgeIteratorState;)I

    move-result p0

    iput p0, v4, Lcom/graphhopper/util/details/IntersectionValues;->bearing:I

    invoke-direct {v5, v10}, Lcom/graphhopper/util/details/IntersectionDetails;->edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I

    move-result p0

    iget v12, v5, Lcom/graphhopper/util/details/IntersectionDetails;->fromEdge:I

    if-ne p0, v12, :cond_0

    move p0, v11

    goto :goto_1

    :cond_0
    move p0, v2

    :goto_1
    iput-boolean p0, v4, Lcom/graphhopper/util/details/IntersectionValues;->in:Z

    invoke-direct {v5, v10}, Lcom/graphhopper/util/details/IntersectionDetails;->edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I

    move-result p0

    invoke-direct {v5, p1}, Lcom/graphhopper/util/details/IntersectionDetails;->edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I

    move-result v12

    if-ne p0, v12, :cond_1

    move p0, v11

    goto :goto_2

    :cond_1
    move p0, v2

    :goto_2
    iput-boolean p0, v4, Lcom/graphhopper/util/details/IntersectionValues;->out:Z

    iget-boolean p0, v4, Lcom/graphhopper/util/details/IntersectionValues;->in:Z

    if-nez p0, :cond_2

    iget-object p0, v5, Lcom/graphhopper/util/details/IntersectionDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, v10, v2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :cond_2
    move v11, v2

    :goto_3
    iput-boolean v11, v4, Lcom/graphhopper/util/details/IntersectionValues;->entry:Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, v5

    goto :goto_0

    :cond_3
    move-object v5, p0

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v1, 0x3

    invoke-direct {p1, v1}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/graphhopper/util/details/IntersectionValues;->createIntersection(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v5, Lcom/graphhopper/util/details/IntersectionDetails;->intersectionMap:Ljava/util/Map;

    iput v0, v5, Lcom/graphhopper/util/details/IntersectionDetails;->fromEdge:I

    return v11

    :cond_4
    return v2
.end method
