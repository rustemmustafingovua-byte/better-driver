.class public Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;


# instance fields
.field private final delegate:Lic/a;


# direct methods
.method public constructor <init>(Lic/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    return-void
.end method


# virtual methods
.method public dNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->c:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public dPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->c:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public dest()Lic/c;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    invoke-virtual {p0}, Lic/a;->b()Lic/c;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p1, p1, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPrimary()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 3

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object v1, p0, Lic/a;->b:Lic/c;

    iget-object v1, v1, Lic/c;->a:Lpb/a;

    invoke-virtual {p0}, Lic/a;->b()Lic/c;

    move-result-object v2

    iget-object v2, v2, Lic/c;->a:Lpb/a;

    invoke-virtual {v1, v2}, Lpb/a;->a(Lpb/a;)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    :goto_0
    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public lNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    invoke-virtual {p0}, Lic/a;->c()Lic/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public oNext()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p0, p0, Lic/a;->c:Lic/a;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public oPrev()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    invoke-virtual {p0}, Lic/a;->e()Lic/a;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method

.method public orig()Lic/c;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p0, p0, Lic/a;->b:Lic/c;

    return-object p0
.end method

.method public sym()Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;
    .locals 1

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;->delegate:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    iget-object p0, p0, Lic/a;->a:Lic/a;

    invoke-direct {v0, p0}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object v0
.end method
