.class public Lcom/graphhopper/util/DistanceCalc3D;
.super Lcom/graphhopper/util/DistanceCalcEarth;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/util/DistanceCalcEarth;-><init>()V

    return-void
.end method


# virtual methods
.method public calcDist(DDDDDD)D
    .locals 9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-super/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDist(DDDD)D

    move-result-wide p0

    sub-double p2, p11, p5

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    mul-double/2addr p2, p2

    mul-double/2addr p0, p0

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EXACT3D"

    return-object p0
.end method
