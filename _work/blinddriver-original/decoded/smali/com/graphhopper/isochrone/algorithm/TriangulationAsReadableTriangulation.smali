.class public Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;


# instance fields
.field private final triangulation:Lcom/graphhopper/isochrone/algorithm/Triangulation;


# direct methods
.method public constructor <init>(Lcom/graphhopper/isochrone/algorithm/Triangulation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;->triangulation:Lcom/graphhopper/isochrone/algorithm/Triangulation;

    return-void
.end method


# virtual methods
.method public getEdge(II)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;->triangulation:Lcom/graphhopper/isochrone/algorithm/Triangulation;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->wrap(Lic/a;)Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    move-result-object p0

    return-object p0
.end method

.method public getEdges()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;->triangulation:Lcom/graphhopper/isochrone/algorithm/Triangulation;

    invoke-virtual {p0}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdges()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getVertexQuadEdge(I)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/TriangulationAsReadableTriangulation;->triangulation:Lcom/graphhopper/isochrone/algorithm/Triangulation;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertexQuadEdges:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic/a;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->wrap(Lic/a;)Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
