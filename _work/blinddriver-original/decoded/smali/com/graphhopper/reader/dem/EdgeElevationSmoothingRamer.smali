.class public Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lnc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static internSmooth(Lcom/graphhopper/util/PointList;IIDDI)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v1, p7

    sub-int v2, v8, p1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->LOGGER:Lnc/b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "max recursion depth reached, remaining point list: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnc/b;->l(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v2

    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmpl-double v6, p5, v9

    if-nez v6, :cond_2

    move-wide v6, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v6

    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v11

    sub-double/2addr v6, v11

    div-double v6, v6, p5

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v11

    add-int/lit8 v13, p1, 0x1

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const/16 v16, -0x1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v26, v6

    move-wide v5, v9

    move v3, v13

    move/from16 v2, v16

    :goto_1
    if-ge v3, v8, :cond_4

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v22

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v24

    invoke-virtual {v0, v3}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v28

    sget-object v17, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual/range {v17 .. v25}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v16

    add-double v5, v5, v16

    mul-double v16, v16, v26

    add-double v11, v16, v11

    sub-double v28, v28, v11

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpg-double v4, v14, v16

    if-gez v4, :cond_3

    move v2, v3

    move-wide/from16 v14, v16

    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    goto :goto_1

    :cond_4
    if-ltz v2, :cond_6

    cmpl-double v3, p3, v14

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v1, 0x1

    move/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static/range {v0 .. v7}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->internSmooth(Lcom/graphhopper/util/PointList;IIDDI)V

    move v1, v2

    sub-double v2, p5, v5

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move v2, v8

    invoke-static/range {v0 .. v7}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->internSmooth(Lcom/graphhopper/util/PointList;IIDDI)V

    return-void

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/util/PointList;->getEle(I)D

    move-result-wide v5

    move-wide v15, v1

    move-wide/from16 v17, v3

    :goto_3
    if-ge v13, v8, :cond_7

    invoke-virtual {v0, v13}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v19

    invoke-virtual {v0, v13}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v21

    sget-object v14, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    invoke-virtual/range {v14 .. v22}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide v1

    mul-double v1, v1, v26

    add-double/2addr v5, v1

    invoke-virtual {v0, v13, v5, v6}, Lcom/graphhopper/util/PointList;->setElevation(ID)V

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v15, v19

    move-wide/from16 v17, v21

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public static smooth(Lcom/graphhopper/util/PointList;D)V
    .locals 9

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDistance(Lcom/graphhopper/util/PointList;Z)D

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-static/range {v1 .. v8}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingRamer;->internSmooth(Lcom/graphhopper/util/PointList;IIDDI)V

    return-void
.end method
