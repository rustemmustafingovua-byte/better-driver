.class public Lcom/graphhopper/routing/util/CurvatureCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final curvatureEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/CurvatureCalculator;->curvatureEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "point_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/PointList;

    const-string v4, "edge_distance"

    invoke-virtual {v1, v4, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v4, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v11

    invoke-virtual/range {v4 .. v12}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    iget-object v4, v0, Lcom/graphhopper/routing/util/CurvatureCalculator;->curvatureEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v4}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMinStorableDecimal()D

    move-result-wide v5

    iget-object v0, v0, Lcom/graphhopper/routing/util/CurvatureCalculator;->curvatureEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    const/4 v5, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-interface/range {v4 .. v9}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_0
    iget-object v10, v0, Lcom/graphhopper/routing/util/CurvatureCalculator;->curvatureEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v11, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move/from16 v12, p1

    move-object/from16 v13, p2

    invoke-interface/range {v10 .. v15}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method
