.class public Lcom/graphhopper/isochrone/algorithm/QuadEdgeSubdivisionAsReadableTriangulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/isochrone/algorithm/ReadableTriangulation;


# instance fields
.field private final delegate:Lic/b;


# direct methods
.method public constructor <init>(Lic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeSubdivisionAsReadableTriangulation;->delegate:Lic/b;

    return-void
.end method


# virtual methods
.method public getEdge(II)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getEdges()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeSubdivisionAsReadableTriangulation;->delegate:Lic/b;

    iget-object p0, p0, Lic/b;->a:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public getVertexQuadEdge(I)Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
