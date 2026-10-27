.class public interface abstract Lcom/graphhopper/util/PointAccess;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract ensureNode(I)V
.end method

.method public abstract getDimension()I
.end method

.method public abstract getEle(I)D
.end method

.method public abstract getLat(I)D
.end method

.method public abstract getLon(I)D
.end method

.method public abstract is3D()Z
.end method

.method public setNode(IDD)V
    .locals 8

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-interface/range {v0 .. v7}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    return-void
.end method

.method public abstract setNode(IDDD)V
.end method
