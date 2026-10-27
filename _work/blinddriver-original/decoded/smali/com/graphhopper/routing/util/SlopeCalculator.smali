.class public Lcom/graphhopper/routing/util/SlopeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final MIN_LENGTH:D = 8.0


# instance fields
.field private final averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/SlopeCalculator;->maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/SlopeCalculator;->averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method

.method public static calcSlope(DD)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p0, v0

    div-double/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "point_list"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/PointList;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->is3D()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDistance(Lcom/graphhopper/util/PointList;Z)D

    move-result-wide v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_1

    iget-object v9, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v9, :cond_d

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    move/from16 v11, p1

    move-object/from16 v12, p2

    invoke-interface/range {v9 .. v14}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-virtual {v2, v8}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v10

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v12

    sub-double/2addr v10, v12

    invoke-static {v10, v11, v4, v5}, Lcom/graphhopper/routing/util/SlopeCalculator;->calcSlope(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v15, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const-wide/16 v10, 0x0

    if-eqz v15, :cond_2

    cmpl-double v8, v4, v10

    if-ltz v8, :cond_3

    invoke-interface {v15}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    const/16 v16, 0x0

    move/from16 v17, p1

    move-object/from16 v18, p2

    invoke-interface/range {v15 .. v20}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_2
    move-wide/from16 v21, v6

    goto :goto_0

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    iget-object v8, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-wide/from16 v21, v6

    invoke-interface {v8}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    const/16 v16, 0x1

    move/from16 v17, p1

    move-object/from16 v18, p2

    invoke-interface/range {v15 .. v20}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :goto_0
    iget-object v6, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v6, :cond_d

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v6

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v12

    move-wide/from16 v24, v6

    move v3, v9

    move-wide v6, v10

    move-wide/from16 v26, v12

    :goto_1
    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    sget-object v23, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v28

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v30

    invoke-virtual/range {v23 .. v31}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v12

    if-le v3, v9, :cond_4

    cmpl-double v8, v10, v21

    if-lez v8, :cond_4

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v2, v8}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v14

    add-int/lit8 v8, v3, -0x2

    invoke-virtual {v2, v8}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v16

    add-double v16, v16, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v16, v16, v14

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v18

    move-wide/from16 v23, v10

    sub-double v9, v18, v16

    div-double v14, v23, v14

    add-double/2addr v14, v12

    invoke-static {v9, v10, v14, v15}, Lcom/graphhopper/routing/util/SlopeCalculator;->calcSlope(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v10, v10, v14

    if-lez v10, :cond_4

    move-wide v6, v8

    :cond_4
    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v24

    invoke-virtual {v2, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v26

    add-int/lit8 v3, v3, 0x1

    move-wide v10, v12

    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    const-string v2, "tunnel"

    const-string v3, "yes"

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "bridge"

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "highway"

    const-string v3, "steps"

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpl-double v2, v2, v8

    if-lez v2, :cond_7

    goto :goto_2

    :cond_7
    move-wide v4, v6

    :cond_8
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v1, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMinStorableDecimal()D

    move-result-wide v1

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v0, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getMaxStorableDecimal()D

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    const/4 v1, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    const-string v3, "max_slope was NaN for OSM way ID "

    invoke-static {v1, v2, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    const-string v3, "average_slope was NaN for OSM way ID "

    invoke-static {v1, v2, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    iget-object v1, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->maxSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_c
    iget-object v0, v0, Lcom/graphhopper/routing/util/SlopeCalculator;->averageSlopeEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_d
    return-void
.end method
