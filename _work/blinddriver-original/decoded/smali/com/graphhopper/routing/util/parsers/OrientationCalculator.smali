.class public Lcom/graphhopper/routing/util/parsers/OrientationCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final orientationEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OrientationCalculator;->orientationEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "point_list"

    const/4 v2, 0x0

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/PointList;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v5}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    invoke-virtual {v1, v7}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v9

    sub-int/2addr v9, v11

    invoke-virtual {v1, v9}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide v16

    iget-object v12, v0, Lcom/graphhopper/routing/util/parsers/OrientationCalculator;->orientationEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v13, 0x0

    move/from16 v14, p1

    move-object/from16 v15, p2

    invoke-interface/range {v12 .. v17}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    invoke-virtual {v1, v11}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {v1, v11}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v8

    invoke-virtual {v1, v7}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v10

    move-wide v7, v8

    move-wide v9, v10

    invoke-virtual/range {v2 .. v10}, Lcom/graphhopper/util/AngleCalc;->calcAzimuth(DDDD)D

    move-result-wide v7

    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/OrientationCalculator;->orientationEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v4, 0x1

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_0
    return-void
.end method
