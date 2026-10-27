.class Lcom/graphhopper/util/PointList$1;
.super Lcom/graphhopper/util/PointList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/PointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public add(DDD)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot change EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "cannot change EMPTY PointList"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clone(Z)Lcom/graphhopper/util/PointList;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cannot access EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copy(II)Lcom/graphhopper/util/PointList;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot copy EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get(I)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cannot access EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getEle(I)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cannot access EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLat(I)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cannot access EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLon(I)D
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cannot access EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public is3D()Z
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot access EMPTY PointList"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public parse2DJSON(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot change EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeLastPoint()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "cannot change EMPTY PointList"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reverse()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "cannot change EMPTY PointList"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(IDDD)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot change EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(ID)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot change EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public trimToSize(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "cannot change EMPTY PointList"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
