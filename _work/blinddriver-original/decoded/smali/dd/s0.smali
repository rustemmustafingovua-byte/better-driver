.class public final Ldd/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDDD)D
    .locals 4

    sub-double v0, p4, p0

    invoke-static {v0, v1}, Lsc/c;->c(D)D

    move-result-wide v0

    sub-double/2addr p6, p2

    invoke-static {p6, p7}, Lsc/c;->c(D)D

    move-result-wide p2

    const/4 p6, 0x2

    int-to-double p6, p6

    div-double/2addr v0, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    invoke-static {p0, p1}, Lsc/c;->c(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Lsc/c;->c(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p4, p0

    div-double/2addr p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr p2, p0

    add-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const/4 p4, 0x1

    int-to-double p4, p4

    sub-double/2addr p4, p2

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x41684dae00000000L    # 1.2742E7

    mul-double/2addr p0, p2

    return-wide p0
.end method
