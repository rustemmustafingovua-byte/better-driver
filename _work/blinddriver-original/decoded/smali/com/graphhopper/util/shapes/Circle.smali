.class public Lcom/graphhopper/util/shapes/Circle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/shapes/Shape;


# instance fields
.field private final bbox:Lcom/graphhopper/util/shapes/BBox;

.field private calc:Lcom/graphhopper/util/DistanceCalc;

.field private final lat:D

.field private final lon:D

.field private final normedDist:D

.field public final radiusInMeter:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 8

    .line 1
    sget-object v7, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/util/shapes/Circle;-><init>(DDDLcom/graphhopper/util/DistanceCalc;)V

    return-void
.end method

.method public constructor <init>(DDDLcom/graphhopper/util/DistanceCalc;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p7, p0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    .line 4
    iput-wide p1, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    .line 5
    iput-wide p3, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    .line 6
    iput-wide p5, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    .line 7
    invoke-interface {p7, p5, p6}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    move-wide v2, p1

    move-object p1, p7

    move-wide p6, p5

    move-wide p4, p3

    move-wide p2, v2

    .line 8
    invoke-interface/range {p1 .. p7}, Lcom/graphhopper/util/DistanceCalc;->createBBox(DDD)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    return-void
.end method

.method private normDist(DD)D
    .locals 9

    iget-object v0, p0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    move-wide v5, p1

    move-wide v7, p3

    invoke-interface/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public contains(DD)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/util/shapes/Circle;->normDist(DD)D

    move-result-wide p1

    iget-wide p3, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/shapes/BBox;->contains(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v4, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/Circle;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v4, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/Circle;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v4, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    .line 4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/Circle;->contains(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v4, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/Circle;->contains(DD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public contains(Lcom/graphhopper/util/shapes/Circle;)Z
    .locals 13

    .line 5
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    return v3

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v7, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v9, p1, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v11, p1, Lcom/graphhopper/util/shapes/Circle;->lon:D

    invoke-interface/range {v4 .. v12}, Lcom/graphhopper/util/DistanceCalc;->calcDist(DDDD)D

    move-result-wide p0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/graphhopper/util/shapes/Circle;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/Circle;->lat:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/Circle;->lon:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    invoke-static {v1, v2, p0, p1}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    return-object p0
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x33

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v4

    xor-long/2addr v2, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public intersects(Lcom/graphhopper/util/PointList;)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual {v1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v9

    .line 3
    invoke-virtual {v1, v3}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v11

    const/4 v13, 0x1

    if-ne v2, v13, :cond_1

    .line 4
    iget-object v4, v0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v5, v0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    invoke-interface/range {v4 .. v12}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide v1

    iget-wide v4, v0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double v0, v1, v4

    if-gtz v0, :cond_0

    return v13

    :cond_0
    return v3

    :cond_1
    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move v4, v13

    :goto_0
    if-ge v4, v2, :cond_5

    .line 5
    invoke-virtual {v1, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v23

    .line 6
    invoke-virtual {v1, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v25

    .line 7
    iget-object v14, v0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v5, v0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    move-wide v15, v5

    move-wide/from16 v17, v7

    invoke-interface/range {v14 .. v26}, Lcom/graphhopper/util/DistanceCalc;->validEdgeDistance(DDDDDD)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8
    iget-object v14, v0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v5, v0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    move-wide v15, v5

    move-wide/from16 v17, v7

    invoke-interface/range {v14 .. v26}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedEdgeDistance(DDDDDD)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    return v13

    .line 9
    :cond_2
    iget-object v14, v0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v5, v0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    move-wide v15, v5

    move-wide/from16 v17, v7

    invoke-interface/range {v14 .. v22}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide v5

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double v5, v5, v7

    if-lez v5, :cond_4

    add-int/lit8 v5, v4, 0x1

    if-ne v5, v2, :cond_3

    iget-object v5, v0, Lcom/graphhopper/util/shapes/Circle;->calc:Lcom/graphhopper/util/DistanceCalc;

    iget-wide v6, v0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v8, v0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    move-wide/from16 v28, v23

    move-wide/from16 v30, v25

    move-object/from16 v23, v5

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    .line 10
    invoke-interface/range {v23 .. v31}, Lcom/graphhopper/util/DistanceCalc;->calcNormalizedDist(DDDD)D

    move-result-wide v5

    move-wide/from16 v23, v28

    move-wide/from16 v25, v30

    iget-wide v7, v0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v19, v23

    move-wide/from16 v21, v25

    goto :goto_0

    :cond_4
    :goto_1
    return v13

    :cond_5
    return v3

    .line 11
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PointList must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public intersects(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 11

    .line 12
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpl-double v4, v0, v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v4, :cond_5

    .line 13
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v9, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double v4, v0, v9

    if-gez v4, :cond_1

    .line 14
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/graphhopper/util/shapes/Circle;->normDist(DD)D

    move-result-wide v0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    return v8

    :cond_0
    return v7

    .line 15
    :cond_1
    iget-wide v9, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double p1, v0, v9

    if-lez p1, :cond_3

    .line 16
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/graphhopper/util/shapes/Circle;->normDist(DD)D

    move-result-wide v0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_2

    return v8

    :cond_2
    return v7

    .line 17
    :cond_3
    iget-object p0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    sub-double/2addr v2, p0

    cmpl-double p0, v2, v5

    if-lez p0, :cond_4

    return v8

    :cond_4
    return v7

    .line 18
    :cond_5
    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 19
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v9, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double v4, v0, v9

    if-gez v4, :cond_7

    .line 20
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/graphhopper/util/shapes/Circle;->normDist(DD)D

    move-result-wide v0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_6

    return v8

    :cond_6
    return v7

    .line 21
    :cond_7
    iget-wide v9, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double p1, v0, v9

    if-lez p1, :cond_9

    .line 22
    invoke-direct {p0, v2, v3, v9, v10}, Lcom/graphhopper/util/shapes/Circle;->normDist(DD)D

    move-result-wide v0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/Circle;->normedDist:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_8

    return v8

    :cond_8
    return v7

    .line 23
    :cond_9
    iget-object p0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    sub-double/2addr p0, v2

    cmpl-double p0, p0, v5

    if-lez p0, :cond_a

    return v8

    :cond_a
    return v7

    .line 24
    :cond_b
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_d

    .line 25
    iget-object p0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    sub-double/2addr p0, v2

    cmpl-double p0, p0, v5

    if-lez p0, :cond_c

    return v8

    :cond_c
    return v7

    .line 26
    :cond_d
    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_f

    .line 27
    iget-object p0, p0, Lcom/graphhopper/util/shapes/Circle;->bbox:Lcom/graphhopper/util/shapes/BBox;

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    sub-double/2addr v2, p0

    cmpl-double p0, v2, v5

    if-lez p0, :cond_e

    return v8

    :cond_e
    return v7

    :cond_f
    return v8
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/Circle;->lat:D

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/Circle;->lon:D

    iget-wide v4, p0, Lcom/graphhopper/util/shapes/Circle;->radiusInMeter:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", radius:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
