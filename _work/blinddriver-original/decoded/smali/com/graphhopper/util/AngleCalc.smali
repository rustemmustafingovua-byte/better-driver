.class public Lcom/graphhopper/util/AngleCalc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

.field private static final PI3_4:D = 2.356194490192345

.field private static final PI_2:D = 1.5707963267948966

.field private static final PI_4:D = 0.7853981633974483


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/util/AngleCalc;

    invoke-direct {v0}, Lcom/graphhopper/util/AngleCalc;-><init>()V

    sput-object v0, Lcom/graphhopper/util/AngleCalc;->ANGLE_CALC:Lcom/graphhopper/util/AngleCalc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atan2(DD)D
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    add-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-gez v4, :cond_0

    add-double v4, p2, v0

    sub-double/2addr v0, p2

    div-double/2addr v4, v0

    const-wide p2, 0x4002d97c7f3321d2L    # 2.356194490192345

    goto :goto_0

    :cond_0
    sub-double v4, p2, v0

    add-double/2addr p2, v0

    div-double/2addr v4, p2

    const-wide p2, 0x3fe921fb54442d18L    # 0.7853981633974483

    :goto_0
    const-wide v0, 0x3fc9205bc01a36e3L    # 0.1963

    mul-double/2addr v0, v4

    mul-double/2addr v0, v4

    const-wide v6, 0x3fef6a161e4f7660L    # 0.9817

    sub-double/2addr v0, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, p2

    cmpg-double p0, p0, v2

    if-gez p0, :cond_1

    neg-double p0, v0

    return-wide p0

    :cond_1
    return-wide v0
.end method


# virtual methods
.method public alignOrientation(DD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double p0, p1, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    if-ltz p0, :cond_0

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    add-double/2addr p1, v2

    cmpg-double p0, p3, p1

    if-gez p0, :cond_1

    add-double/2addr p3, v0

    return-wide p3

    :cond_0
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr p1, v2

    cmpl-double p0, p3, p1

    if-lez p0, :cond_1

    sub-double/2addr p3, v0

    :cond_1
    return-wide p3
.end method

.method public azimuth2compassPoint(D)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x4036800000000000L    # 22.5

    cmpg-double p0, p1, v0

    const-string v0, "N"

    if-gez p0, :cond_0

    return-object v0

    :cond_0
    const-wide v1, 0x4050e00000000000L    # 67.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_1

    const-string p0, "NE"

    return-object p0

    :cond_1
    const-wide v1, 0x405c200000000000L    # 112.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_2

    const-string p0, "E"

    return-object p0

    :cond_2
    const-wide v1, 0x4063b00000000000L    # 157.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_3

    const-string p0, "SE"

    return-object p0

    :cond_3
    const-wide v1, 0x4069500000000000L    # 202.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_4

    const-string p0, "S"

    return-object p0

    :cond_4
    const-wide v1, 0x406ef00000000000L    # 247.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_5

    const-string p0, "SW"

    return-object p0

    :cond_5
    const-wide v1, 0x4072480000000000L    # 292.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_6

    const-string p0, "W"

    return-object p0

    :cond_6
    const-wide v1, 0x4075180000000000L    # 337.5

    cmpg-double p0, p1, v1

    if-gez p0, :cond_7

    const-string p0, "NW"

    return-object p0

    :cond_7
    return-object v0
.end method

.method public calcAzimuth(DDDD)D
    .locals 2

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-virtual/range {p0 .. p8}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDD)D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v0, p0

    :cond_0
    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->round4(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide p2, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, p2

    return-wide p0
.end method

.method public calcOrientation(DDDD)D
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 1
    invoke-virtual/range {v0 .. v9}, Lcom/graphhopper/util/AngleCalc;->calcOrientation(DDDDZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public calcOrientation(DDDDZ)D
    .locals 4

    add-double v0, p1, p5

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    if-eqz p9, :cond_0

    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    mul-double/2addr p7, v0

    .line 3
    invoke-static {p5, p6, p7, p8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-double/2addr p5, p1

    sub-double/2addr p7, p3

    mul-double/2addr p7, v0

    .line 4
    invoke-static {p5, p6, p7, p8}, Lcom/graphhopper/util/AngleCalc;->atan2(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public convertAzimuth2xaxisAngle(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-gtz p0, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-ltz p0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v2, p1

    const-wide p0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double p0, v2, p0

    const-wide p1, 0x401921fb54442d18L    # 6.283185307179586

    if-gez p0, :cond_0

    add-double/2addr v2, p1

    :cond_0
    cmpl-double p0, v2, v0

    if-lez p0, :cond_1

    sub-double/2addr v2, p1

    :cond_1
    return-wide v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Azimuth "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " must be in (0, 360)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isClockwise(DDDDDD)Z
    .locals 0

    sub-double/2addr p9, p1

    sub-double/2addr p7, p3

    mul-double/2addr p7, p9

    sub-double/2addr p11, p3

    sub-double/2addr p5, p1

    mul-double/2addr p5, p11

    sub-double/2addr p7, p5

    const-wide/16 p0, 0x0

    cmpg-double p0, p7, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
