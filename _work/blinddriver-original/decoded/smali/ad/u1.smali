.class public final Lad/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)F
    .locals 10

    iget-wide v0, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lsc/c;->c(D)D

    move-result-wide v0

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v2, v3}, Lsc/c;->c(D)D

    move-result-wide v2

    iget-wide p0, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {p0, p1}, Lsc/c;->c(D)D

    move-result-wide p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    sub-double/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lsc/c;->b(D)D

    move-result-wide p0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method
