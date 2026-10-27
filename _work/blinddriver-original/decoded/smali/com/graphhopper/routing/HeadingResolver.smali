.class public Lcom/graphhopper/routing/HeadingResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field private toleranceRad:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/HeadingResolver;->toleranceRad:D

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/HeadingResolver;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    return-void
.end method


# virtual methods
.method public getEdgesWithDifferentHeading(ID)Lcom/carrotsearch/hppc/x;
    .locals 12

    sget-object v0, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    invoke-virtual {v0, p2, p3}, Lcom/graphhopper/util/AngleCalc;->convertAzimuth2xaxisAngle(D)D

    move-result-wide p2

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iget-object v2, p0, Lcom/graphhopper/routing/HeadingResolver;->edgeExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v2, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, v2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v2

    sget-object v3, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    const/4 v4, 0x0

    move v6, v4

    invoke-virtual {v2, v6}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    invoke-virtual {v2, v6}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v6

    invoke-virtual {v2, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v8

    invoke-virtual {v2, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide v4

    invoke-virtual {v3, p2, p3, v4, v5}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide v2

    sub-double/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/graphhopper/routing/HeadingResolver;->toleranceRad:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setTolerance(D)Lcom/graphhopper/routing/HeadingResolver;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/graphhopper/routing/HeadingResolver;->toleranceRad:D

    return-object p0
.end method
