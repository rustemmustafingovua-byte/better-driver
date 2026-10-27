.class public Lcom/graphhopper/util/NumHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PRECISION:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(DD)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public static equals(DD)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static equalsEps(DD)Z
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-wide v0, p0

    move-wide v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/graphhopper/util/NumHelper;->equalsEps(DDD)Z

    move-result p0

    return p0
.end method

.method public static equalsEps(DDD)Z
    .locals 0

    sub-double/2addr p0, p2

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
