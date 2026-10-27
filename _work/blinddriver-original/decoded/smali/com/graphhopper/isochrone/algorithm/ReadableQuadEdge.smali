.class public interface abstract Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static wrap(Lic/a;)Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method


# virtual methods
.method public abstract dNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract dPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract dest()Lic/c;
.end method

.method public abstract getPrimary()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract lNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract oNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract oPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract orig()Lic/c;
.end method

.method public abstract sym()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method
