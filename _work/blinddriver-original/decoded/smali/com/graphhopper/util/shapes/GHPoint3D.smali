.class public Lcom/graphhopper/util/shapes/GHPoint3D;
.super Lcom/graphhopper/util/shapes/GHPoint;
.source "SourceFile"


# instance fields
.field public ele:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    iput-wide p5, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Lcom/graphhopper/util/shapes/GHPoint3D;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v5, p1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v3, v4, v5, v6}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide p0, p1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v3, v4, p0, p1}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v5, p1, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v3, v4, v5, v6}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide v5, p1, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v3, v4, v5, v6}, Lcom/graphhopper/util/NumHelper;->equalsEps(DD)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    iget-wide v5, p1, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    invoke-static/range {v3 .. v8}, Lcom/graphhopper/util/NumHelper;->equalsEps(DDD)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEle()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    invoke-super {p0}, Lcom/graphhopper/util/shapes/GHPoint;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3b

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/16 p0, 0x20

    ushr-long/2addr v3, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public toGeoJson()[Ljava/lang/Double;
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/graphhopper/util/shapes/GHPoint;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint3D;->ele:D

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
