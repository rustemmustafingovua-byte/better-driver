.class public Lorg/maplibre/android/utils/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .locals 0

    .line 1
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 0

    .line 2
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static normalize(DDDDD)D
    .locals 8

    sub-double/2addr p0, p2

    sub-double p2, p4, p2

    div-double v4, p0, p2

    move-wide v6, p6

    move-wide v2, p6

    move-wide/from16 v0, p8

    invoke-static/range {v0 .. v7}, Lm/a;->b(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static wrap(DDD)D
    .locals 0

    sub-double/2addr p4, p2

    sub-double/2addr p0, p2

    rem-double/2addr p0, p4

    add-double/2addr p0, p4

    rem-double/2addr p0, p4

    add-double/2addr p0, p2

    return-wide p0
.end method
