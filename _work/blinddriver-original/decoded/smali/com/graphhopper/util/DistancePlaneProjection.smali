.class public Lcom/graphhopper/util/DistancePlaneProjection;
.super Lcom/graphhopper/util/DistanceCalcEarth;
.source "SourceFile"


# static fields
.field public static final DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-direct {v0}, Lcom/graphhopper/util/DistancePlaneProjection;-><init>()V

    sput-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/util/DistanceCalcEarth;-><init>()V

    return-void
.end method


# virtual methods
.method public calcDenormalizedDist(D)D
    .locals 2

    const-wide v0, 0x41584dae00000000L    # 6371000.0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public calcDist(DDDD)D
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    const-wide p2, 0x41584dae00000000L    # 6371000.0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public calcDist3D(DDDDDD)D
    .locals 11

    move-wide/from16 v0, p5

    move-wide/from16 v2, p11

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/graphhopper/util/DistanceCalcEarth;->hasElevationDiff(DD)Z

    move-result v4

    if-eqz v4, :cond_0

    sub-double v0, v2, v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(D)D

    move-result-wide v0

    :goto_0
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v10}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide p2, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public calcNormalizedDist(D)D
    .locals 2

    .line 1
    const-wide v0, 0x41584dae00000000L    # 6371000.0

    div-double/2addr p1, v0

    mul-double/2addr p1, p1

    return-wide p1
.end method

.method public calcNormalizedDist(DDDD)D
    .locals 2

    sub-double v0, p5, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p7, p3

    .line 3
    invoke-static {p7, p8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    add-double/2addr p1, p5

    const-wide/high16 p5, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p5

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, p3

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "PLANE_PROJ"

    return-object p0
.end method
