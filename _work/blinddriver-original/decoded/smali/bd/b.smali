.class public final Lbd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)I
    .locals 2

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method
