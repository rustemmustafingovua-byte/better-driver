.class public Lcom/graphhopper/isochrone/algorithm/Triangulation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field edges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lic/a;",
            ">;"
        }
    .end annotation
.end field

.field vertexQuadEdges:Lcom/carrotsearch/hppc/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation
.end field

.field vertices:Lcom/carrotsearch/hppc/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    new-instance v0, Lcom/carrotsearch/hppc/n0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n0;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertices:Lcom/carrotsearch/hppc/n0;

    new-instance v0, Lcom/carrotsearch/hppc/n0;

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n0;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertexQuadEdges:Lcom/carrotsearch/hppc/n0;

    return-void
.end method

.method private getVertex(I)Lic/c;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertices:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/n0;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic/c;

    return-object p0
.end method

.method private makeTriangle(IIILic/a;Lic/a;Lic/a;)V
    .locals 1

    if-nez p4, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getVertex(I)Lic/c;

    move-result-object p4

    invoke-direct {p0, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getVertex(I)Lic/c;

    move-result-object v0

    invoke-static {p4, v0}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object p4

    .line 8
    invoke-direct {p0, p1, p2, p4}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    .line 9
    iget-object v0, p4, Lic/a;->a:Lic/a;

    iget-object v0, v0, Lic/a;->a:Lic/a;

    .line 10
    invoke-direct {p0, p2, p1, v0}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    :cond_0
    if-nez p5, :cond_1

    .line 11
    invoke-direct {p0, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getVertex(I)Lic/c;

    move-result-object p5

    invoke-direct {p0, p3}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getVertex(I)Lic/c;

    move-result-object v0

    invoke-static {p5, v0}, Lic/a;->d(Lic/c;Lic/c;)Lic/a;

    move-result-object p5

    .line 12
    invoke-virtual {p4}, Lic/a;->c()Lic/a;

    move-result-object v0

    invoke-static {v0, p5}, Lic/a;->f(Lic/a;Lic/a;)V

    .line 13
    invoke-direct {p0, p2, p3, p5}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    .line 14
    iget-object v0, p5, Lic/a;->a:Lic/a;

    iget-object v0, v0, Lic/a;->a:Lic/a;

    .line 15
    invoke-direct {p0, p3, p2, v0}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    :cond_1
    if-nez p6, :cond_4

    .line 16
    invoke-virtual {p4}, Lic/a;->c()Lic/a;

    move-result-object p2

    if-ne p2, p5, :cond_2

    .line 17
    invoke-static {p5, p4}, Lic/a;->a(Lic/a;Lic/a;)Lic/a;

    move-result-object p2

    :goto_0
    move-object p6, p2

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {p5}, Lic/a;->c()Lic/a;

    move-result-object p2

    if-eq p2, p4, :cond_3

    .line 19
    invoke-virtual {p4}, Lic/a;->c()Lic/a;

    move-result-object p2

    invoke-static {p2, p5}, Lic/a;->f(Lic/a;Lic/a;)V

    .line 20
    invoke-static {p5, p4}, Lic/a;->a(Lic/a;Lic/a;)Lic/a;

    move-result-object p2

    goto :goto_0

    .line 21
    :goto_1
    invoke-direct {p0, p3, p1, p6}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    .line 22
    iget-object p2, p6, Lic/a;->a:Lic/a;

    iget-object p2, p2, Lic/a;->a:Lic/a;

    .line 23
    invoke-direct {p0, p1, p3, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->putEdge(IILic/a;)V

    goto :goto_2

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 25
    :cond_4
    invoke-virtual {p4}, Lic/a;->c()Lic/a;

    move-result-object p1

    if-eq p1, p5, :cond_5

    .line 26
    invoke-virtual {p4}, Lic/a;->c()Lic/a;

    move-result-object p1

    invoke-static {p1, p5}, Lic/a;->f(Lic/a;Lic/a;)V

    .line 27
    :cond_5
    invoke-virtual {p5}, Lic/a;->c()Lic/a;

    move-result-object p1

    if-eq p1, p6, :cond_6

    .line 28
    invoke-virtual {p5}, Lic/a;->c()Lic/a;

    move-result-object p1

    invoke-static {p1, p6}, Lic/a;->f(Lic/a;Lic/a;)V

    .line 29
    :cond_6
    invoke-virtual {p6}, Lic/a;->c()Lic/a;

    move-result-object p1

    if-eq p1, p4, :cond_7

    .line 30
    invoke-virtual {p6}, Lic/a;->c()Lic/a;

    move-result-object p1

    invoke-static {p1, p4}, Lic/a;->f(Lic/a;Lic/a;)V

    .line 31
    :cond_7
    :goto_2
    invoke-virtual {p0, p4, p5, p6}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->assertTriangle(Lic/a;Lic/a;Lic/a;)V

    return-void
.end method

.method private putEdge(IILic/a;)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertexQuadEdges:Lcom/carrotsearch/hppc/n0;

    invoke-virtual {v0, p1, p3}, Lcom/carrotsearch/hppc/n0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, ","

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p3, Lic/a;->a:Lic/a;

    iget-object p2, p2, Lic/a;->a:Lic/a;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assertTriangle(III)V
    .locals 1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object p2

    invoke-virtual {p0, p3, p1}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->assertTriangle(Lic/a;Lic/a;Lic/a;)V

    return-void
.end method

.method public assertTriangle(Lic/a;Lic/a;Lic/a;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lic/a;->c()Lic/a;

    move-result-object p0

    invoke-static {p2, p0}, Ly4/s;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lic/a;->c()Lic/a;

    move-result-object p0

    invoke-static {p3, p0}, Ly4/s;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p3}, Lic/a;->c()Lic/a;

    move-result-object p0

    invoke-static {p1, p0}, Ly4/s;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getEdge(II)Lic/a;
    .locals 2

    const-string v0, ","

    if-ge p1, p2, :cond_0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic/a;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lic/a;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
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

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->edges:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/d;

    const/16 v1, 0xa

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

.method public getVertexQuadEdges()Lcom/carrotsearch/hppc/n0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertexQuadEdges:Lcom/carrotsearch/hppc/n0;

    return-object p0
.end method

.method public getVertices()Lcom/carrotsearch/hppc/n0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/n0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/Triangulation;->vertices:Lcom/carrotsearch/hppc/n0;

    return-object p0
.end method

.method public makeTriangle(III)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object v4

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object v5

    .line 3
    invoke-virtual {p0, p3, p1}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->getEdge(II)Lic/a;

    move-result-object v6

    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    move-object v0, v6

    move-object v6, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, p0

    move v3, p1

    move v1, p2

    move v2, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->makeTriangle(IIILic/a;Lic/a;Lic/a;)V

    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    if-nez v5, :cond_1

    if-eqz v6, :cond_1

    move v7, v2

    move v2, v1

    move v1, v3

    move v3, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v7

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->makeTriangle(IIILic/a;Lic/a;Lic/a;)V

    return-void

    .line 6
    :cond_1
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/isochrone/algorithm/Triangulation;->makeTriangle(IIILic/a;Lic/a;Lic/a;)V

    return-void
.end method
