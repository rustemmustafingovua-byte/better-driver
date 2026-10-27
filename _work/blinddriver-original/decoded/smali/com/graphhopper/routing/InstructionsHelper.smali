.class Lcom/graphhopper/routing/InstructionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOrientationDelta(DDDDD)D
    .locals 12

    move-wide/from16 v0, p8

    sget-object v2, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    const/4 v11, 0x0

    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v2 .. v11}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDDZ)D

    move-result-wide p0

    invoke-virtual {v2, v0, v1, p0, p1}, Lcom/graphhopper/util/AngleCalc;->alignOrientation(DD)D

    move-result-wide p0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static calculateSign(DDDDD)I
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/graphhopper/routing/InstructionsHelper;->calculateOrientationDelta(DDDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide p4, 0x3fc999999999999aL    # 0.2

    cmpg-double p4, p2, p4

    if-gez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide p4, 0x3fe999999999999aL    # 0.8

    cmpg-double p4, p2, p4

    const-wide/16 p5, 0x0

    if-gez p4, :cond_2

    cmpl-double p0, p0, p5

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-wide p7, 0x3ffccccccccccccdL    # 1.8

    cmpg-double p2, p2, p7

    if-gez p2, :cond_4

    cmpl-double p0, p0, p5

    if-lez p0, :cond_3

    const/4 p0, -0x2

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    cmpl-double p0, p0, p5

    if-lez p0, :cond_5

    const/4 p0, -0x3

    return p0

    :cond_5
    const/4 p0, 0x3

    return p0
.end method

.method public static createFerryInfo(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p0, v1, :cond_1

    const-string p0, "board_ferry"

    return-object p0

    :cond_1
    if-ne p1, v1, :cond_2

    const-string p0, "leave_ferry"

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getPointForOrientationCalculation(Lcom/graphhopper/util/EdgeIteratorState;Lcom/graphhopper/storage/NodeAccess;)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 3

    sget-object v0, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, v0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v1

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide p0

    move-wide v0, v1

    :goto_0
    new-instance v2, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v2
.end method

.method public static isFromFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p1, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isToFerry(Lcom/graphhopper/routing/ev/RoadEnvironment;Lcom/graphhopper/routing/ev/RoadEnvironment;)Z
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    if-ne p0, v0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
