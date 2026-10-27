.class public Lcom/graphhopper/util/shapes/BBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/shapes/Shape;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final elevation:Z

.field public maxEle:D

.field public maxLat:D

.field public maxLon:D

.field public minEle:D

.field public minLat:D

.field public minLon:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 14

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    const/4 v13, 0x0

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDDDDZ)V

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 14

    const/4 v13, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 3
    invoke-direct/range {v0 .. v13}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDDDDZ)V

    return-void
.end method

.method public constructor <init>(DDDDDDZ)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-boolean p13, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    .line 6
    iput-wide p7, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    .line 7
    iput-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    .line 8
    iput-wide p5, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    .line 9
    iput-wide p3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    .line 10
    iput-wide p9, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    .line 11
    iput-wide p11, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    aget-wide v2, p1, v0

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    const/4 v0, 0x1

    aget-wide v6, p1, v0

    const/4 v0, 0x3

    aget-wide v8, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-void
.end method

.method public static createInverse(Z)Lcom/graphhopper/util/shapes/BBox;
    .locals 15

    if-eqz p0, :cond_0

    new-instance v0, Lcom/graphhopper/util/shapes/BBox;

    const-wide v11, -0x10000000000001L

    const/4 v13, 0x1

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v3, -0x10000000000001L

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v7, -0x10000000000001L

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct/range {v0 .. v13}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDDDDZ)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/graphhopper/util/shapes/BBox;

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    const/4 v14, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, -0x10000000000001L

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v8, -0x10000000000001L

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v1 .. v14}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDDDDZ)V

    return-object v1
.end method

.method public static fromEnvelope(Lpb/h;)Lcom/graphhopper/util/shapes/BBox;
    .locals 9

    new-instance v0, Lcom/graphhopper/util/shapes/BBox;

    iget-wide v1, p0, Lpb/h;->l:D

    iget-wide v3, p0, Lpb/h;->m:D

    iget-wide v5, p0, Lpb/h;->n:D

    iget-wide v7, p0, Lpb/h;->o:D

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-object v0
.end method

.method public static fromPoints(DDDD)Lcom/graphhopper/util/shapes/BBox;
    .locals 10

    cmpl-double v0, p0, p4

    if-lez v0, :cond_0

    move-wide v8, p0

    move-wide v6, p4

    goto :goto_0

    :cond_0
    move-wide v6, p0

    move-wide v8, p4

    :goto_0
    cmpl-double p0, p2, p6

    if-lez p0, :cond_1

    move-wide v4, p2

    move-wide/from16 v2, p6

    goto :goto_1

    :cond_1
    move-wide v2, p2

    move-wide/from16 v4, p6

    :goto_1
    new-instance v1, Lcom/graphhopper/util/shapes/BBox;

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-object v1
.end method

.method public static intersects(Lnb/c;Lcom/graphhopper/util/PointList;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v1, Lpb/a;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lpb/a;-><init>(DD)V

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 3
    invoke-virtual {p0, v1, v1}, Lnb/c;->a(Lpb/a;Lpb/a;)Z

    move-result p0

    return p0

    :cond_0
    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 4
    new-instance v5, Lpb/a;

    invoke-virtual {p1, v4}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v6

    invoke-virtual {p1, v4}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lpb/a;-><init>(DD)V

    .line 5
    invoke-virtual {p0, v1, v5}, Lnb/c;->a(Lpb/a;Lpb/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-object v1, v5

    goto :goto_0

    :cond_2
    return v2

    .line 6
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "PointList must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseBBoxString(Ljava/lang/String;)Lcom/graphhopper/util/shapes/BBox;
    .locals 10

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 p0, 0x1

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 p0, 0x2

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/4 p0, 0x3

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    new-instance v1, Lcom/graphhopper/util/shapes/BBox;

    invoke-direct/range {v1 .. v9}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BBox should have 4 parts but was "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseTwoPoints(Ljava/lang/String;)Lcom/graphhopper/util/shapes/BBox;
    .locals 9

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 p0, 0x1

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 p0, 0x2

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 p0, 0x3

    aget-object p0, v0, p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lcom/graphhopper/util/shapes/BBox;->fromPoints(DDDD)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BBox should have 4 parts but was "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toEnvelope(Lcom/graphhopper/util/shapes/BBox;)Lpb/h;
    .locals 9

    new-instance v0, Lpb/h;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v7, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-direct/range {v0 .. v8}, Lpb/h;-><init>(DDDD)V

    return-object v0
.end method


# virtual methods
.method public calculateIntersection(Lcom/graphhopper/util/shapes/BBox;)Lcom/graphhopper/util/shapes/BBox;
    .locals 13

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/shapes/BBox;->intersects(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    new-instance v4, Lcom/graphhopper/util/shapes/BBox;

    invoke-direct/range {v4 .. v12}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    return-object v4
.end method

.method public clone()Lcom/graphhopper/util/shapes/BBox;
    .locals 14

    .line 2
    new-instance v0, Lcom/graphhopper/util/shapes/BBox;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v7, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v9, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    iget-wide v11, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    iget-boolean v13, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    invoke-direct/range {v0 .. v13}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDDDDZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/util/shapes/BBox;->clone()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    return-object p0
.end method

.method public contains(DD)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_0

    iget-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpg-double p1, p3, p1

    if-gtz p1, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpl-double p0, p3, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public contains(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/graphhopper/util/shapes/BBox;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v3, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v1, v2, v3, v4}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

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

    return-object p0
.end method

.method public hasElevation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    return p0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const/16 v1, 0x33

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v4

    xor-long/2addr v2, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long/2addr v5, v4

    xor-long/2addr v2, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v5, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    ushr-long v4, v5, v4

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public intersects(DDDD)Z
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double p3, v0, p3

    if-gez p3, :cond_0

    iget-wide p3, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    cmpg-double p3, p3, p7

    if-gez p3, :cond_0

    iget-wide p3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpg-double p0, p5, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public intersects(Lcom/graphhopper/util/PointList;)Z
    .locals 1

    .line 7
    new-instance v0, Lnb/c;

    invoke-static {p0}, Lcom/graphhopper/util/shapes/BBox;->toEnvelope(Lcom/graphhopper/util/shapes/BBox;)Lpb/h;

    move-result-object p0

    invoke-direct {v0, p0}, Lnb/c;-><init>(Lpb/h;)V

    invoke-static {v0, p1}, Lcom/graphhopper/util/shapes/BBox;->intersects(Lnb/c;Lcom/graphhopper/util/PointList;)Z

    move-result p0

    return p0
.end method

.method public intersects(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 4

    .line 9
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v2, p1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide p0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpg-double p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValid()Z
    .locals 10

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v4, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v4, -0x10000000000001L

    if-eqz v0, :cond_4

    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    iget-wide v8, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    return v1

    :cond_2
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return v1

    :cond_4
    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v4, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public toGeoJson()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round6(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public toLessPrecisionString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    double-to-float v0, v0

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    double-to-float v2, v2

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    double-to-float p0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-wide v4, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v6, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v4, v5, v0}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    iget-wide v4, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public update(DD)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 4
    iput-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    .line 5
    :cond_1
    iget-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    cmpl-double p1, p3, p1

    if-lez p1, :cond_2

    .line 6
    iput-wide p3, p0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    .line 7
    :cond_2
    iget-wide p1, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    cmpg-double p1, p3, p1

    if-gez p1, :cond_3

    .line 8
    iput-wide p3, p0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    :cond_3
    return-void
.end method

.method public update(DDD)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/graphhopper/util/shapes/BBox;->elevation:Z

    if-eqz v0, :cond_2

    .line 10
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    cmpl-double v0, p5, v0

    if-lez v0, :cond_0

    .line 11
    iput-wide p5, p0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    .line 12
    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    cmpg-double v0, p5, v0

    if-gez v0, :cond_1

    .line 13
    iput-wide p5, p0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/util/shapes/BBox;->update(DD)V

    return-void

    .line 15
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No BBox with elevation to update"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
