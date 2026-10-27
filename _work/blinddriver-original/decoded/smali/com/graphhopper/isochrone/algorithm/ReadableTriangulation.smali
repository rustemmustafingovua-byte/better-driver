.class public interface abstract Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static wrap(Lcom/graphhopper/isochrone/algorithm/Triangulation;)Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;-><init>(Lcom/graphhopper/isochrone/algorithm/Triangulation;)V

    return-object v0
.end method

.method public static wrap(Lic/b;)Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;
    .locals 1

    .line 2
    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeSubdivisionAsReadableTriangulation;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeSubdivisionAsReadableTriangulation;-><init>(Lic/b;)V

    return-object v0
.end method


# virtual methods
.method public abstract getEdge(II)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method

.method public abstract getEdges()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVertexQuadEdge(I)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
.end method
