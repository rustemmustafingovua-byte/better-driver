.class public Lcom/graphhopper/reader/osm/WayToEdgeConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;,
        Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;
    }
.end annotation


# instance fields
.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final edgesByWay:Ljava/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/LongFunction<",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/function/LongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Ljava/util/function/LongFunction<",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    return-void
.end method

.method public static synthetic a(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$buildResult$2(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$buildResult$4(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z

    move-result p0

    return p0
.end method

.method private static buildResult(Ljava/util/List;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;",
            "Lcom/carrotsearch/hppc/t0;",
            "Lcom/carrotsearch/hppc/t0;",
            "Lcom/carrotsearch/hppc/t0;",
            ")",
            "Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;

    iget v1, p1, Lcom/carrotsearch/hppc/t0;->m:I

    iget v2, p2, Lcom/carrotsearch/hppc/t0;->m:I

    iget v3, p3, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-direct {v0, v1, v2, v3}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;-><init>(III)V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/carrotsearch/hppc/x;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v3

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ge v3, v4, :cond_0

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->d(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->c(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v3

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    iget v4, p1, Lcom/carrotsearch/hppc/t0;->m:I

    const-string v5, " - for: "

    const-string v6, ", "

    if-le v4, v1, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/graphhopper/reader/osm/r;

    const/4 v7, 0x0

    invoke-direct {v4, v2, v7}, Lcom/graphhopper/reader/osm/r;-><init>(Lcom/carrotsearch/hppc/x;I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Lcom/graphhopper/reader/osm/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/reader/osm/s;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "edge chains were supposed to be the same except for their first elements, but got: "

    invoke-static {v1, p0, v5, p1, v6}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v4, p3, Lcom/carrotsearch/hppc/t0;->m:I

    if-le v4, v1, :cond_4

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/graphhopper/reader/osm/r;

    const/4 v7, 0x1

    invoke-direct {v4, v2, v7}, Lcom/graphhopper/reader/osm/r;-><init>(Lcom/carrotsearch/hppc/x;I)V

    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance p0, Lcom/graphhopper/reader/osm/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/reader/osm/s;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "edge chains were supposed to be the same except for their last elements, but got: "

    invoke-static {v1, p0, v5, p1, v6}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "If there are multiple chains there must be either multiple from- or to-ways."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$buildResult$3(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V

    return-void
.end method

.method public static synthetic d(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$convertForViaNode$1(ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V

    return-void
.end method

.method public static synthetic e(Lcom/carrotsearch/hppc/x;Ln5/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$findEdgeChain$6(Lcom/carrotsearch/hppc/x;Ln5/a;)V

    return-void
.end method

.method private explore(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;IILcom/carrotsearch/hppc/x;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/x;",
            "Lcom/carrotsearch/hppc/x;",
            "II",
            "Lcom/carrotsearch/hppc/x;",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;)V"
        }
    .end annotation

    move-object v5, p5

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    if-ne p4, v2, :cond_1

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    iget-object v3, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget v4, v2, Ln5/a;->b:I

    invoke-virtual {v3, v4, p3}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(II)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/carrotsearch/hppc/x;

    invoke-direct {v3, p5}, Lcom/carrotsearch/hppc/x;-><init>(Lcom/carrotsearch/hppc/x;)V

    iget v2, v2, Ln5/a;->b:I

    invoke-virtual {v3, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    move-object v6, p6

    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v6, p6

    goto :goto_0

    :cond_1
    move-object v6, p6

    const/4 v2, 0x0

    move v7, v2

    :goto_1
    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    if-ge v7, v2, :cond_4

    invoke-virtual {p1, v7}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v8

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2, v8, p3}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2, v8, p3}, Lcom/graphhopper/storage/BaseGraph;->getOtherNode(II)I

    move-result v3

    invoke-virtual {p5, v8, v3}, Lcom/carrotsearch/hppc/x;->add(II)V

    const/4 v2, -0x1

    invoke-virtual {p1, v7, v2}, Lcom/carrotsearch/hppc/x;->set(II)I

    add-int/lit8 v4, p4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->explore(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;IILcom/carrotsearch/hppc/x;Ljava/util/List;)V

    iget v0, v5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v5, Lcom/carrotsearch/hppc/x;->elementsCount:I

    invoke-virtual {p1, v7, v8}, Lcom/carrotsearch/hppc/x;->set(II)I

    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object v6, p6

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static synthetic f(Lcom/graphhopper/reader/osm/WayToEdgeConverter;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;Ln5/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$findEdgeChain$7(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;Ln5/a;)V

    return-void
.end method

.method private findEdgeChain(JLcom/carrotsearch/hppc/t0;JLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/carrotsearch/hppc/t0;",
            "J",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;)V"
        }
    .end annotation

    move-wide v0, p1

    new-instance p2, Lcom/carrotsearch/hppc/x;

    iget p1, p3, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-direct {p2, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    move-object p3, p1

    check-cast p3, Lcom/carrotsearch/hppc/d;

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln5/f;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    iget-wide v3, p3, Ln5/f;->b:J

    invoke-interface {v2, v3, v4}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Iterator;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    iget v2, v2, Ln5/a;->b:I

    invoke-virtual {p2, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    new-instance v2, Lcom/graphhopper/reader/osm/t;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/graphhopper/reader/osm/t;-><init>(Lcom/carrotsearch/hppc/x;I)V

    invoke-interface {p3, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    invoke-interface {p1, p4, p5}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->listFromIterator(Ljava/util/Iterator;)Lcom/carrotsearch/hppc/x;

    move-result-object p3

    iget-object p1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Iterator;

    move-object p1, p0

    new-instance p0, Lcom/graphhopper/isochrone/algorithm/c;

    const/4 p5, 0x1

    move-object p4, p6

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/isochrone/algorithm/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, p0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic g(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$buildResult$5(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V

    return-void
.end method

.method public static synthetic h(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$convertForViaNode$0(ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V

    return-void
.end method

.method public static synthetic i(Lcom/carrotsearch/hppc/x;Ln5/a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->lambda$listFromIterator$8(Lcom/carrotsearch/hppc/x;Ln5/a;)V

    return-void
.end method

.method private static synthetic lambda$buildResult$2(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$buildResult$3(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void
.end method

.method private static synthetic lambda$buildResult$4(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static synthetic lambda$buildResult$5(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V
    .locals 1

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->c(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void
.end method

.method private synthetic lambda$convertForViaNode$0(ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget v0, p3, Ln5/a;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    iget p1, p3, Ln5/a;->b:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$convertForViaNode$1(ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;Ln5/a;)V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget v0, p3, Ln5/a;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/graphhopper/storage/BaseGraph;->isAdjacentToNode(II)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    iget p1, p3, Ln5/a;->b:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$findEdgeChain$6(Lcom/carrotsearch/hppc/x;Ln5/a;)V
    .locals 0

    iget p1, p1, Ln5/a;->b:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void
.end method

.method private synthetic lambda$findEdgeChain$7(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;Ln5/a;)V
    .locals 8

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iget v2, p4, Ln5/a;->b:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v7

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->explore(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;IILcom/carrotsearch/hppc/x;Ljava/util/List;)V

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v0

    invoke-interface {v7}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->explore(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;IILcom/carrotsearch/hppc/x;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$listFromIterator$8(Lcom/carrotsearch/hppc/x;Ln5/a;)V
    .locals 0

    iget p1, p1, Ln5/a;->b:I

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void
.end method

.method private static listFromIterator(Ljava/util/Iterator;)Lcom/carrotsearch/hppc/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;)",
            "Lcom/carrotsearch/hppc/x;"
        }
    .end annotation

    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    new-instance v1, Lcom/graphhopper/reader/osm/t;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/graphhopper/reader/osm/t;-><init>(Lcom/carrotsearch/hppc/x;I)V

    invoke-interface {p0, v1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-object v0
.end method


# virtual methods
.method public convertForViaNode(Lcom/carrotsearch/hppc/t0;ILcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;
    .locals 6

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p1, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v2, p3, Lcom/carrotsearch/hppc/t0;->m:I

    if-gt v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There can only be multiple from- or to-ways, but not both"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v1, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;

    iget v2, p3, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-direct {v1, v0, v2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;-><init>(II)V

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    move-object v2, v0

    check-cast v2, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/f;

    iget-object v3, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    iget-wide v4, v2, Ln5/f;->b:J

    invoke-interface {v3, v4, v5}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    new-instance v3, Lcom/graphhopper/reader/osm/u;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/graphhopper/reader/osm/u;-><init>(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;I)V

    invoke-interface {v2, v3}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    iget v2, p1, Lcom/carrotsearch/hppc/t0;->m:I

    if-lt v0, v2, :cond_7

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->a(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    iget p1, p1, Lcom/carrotsearch/hppc/t0;->m:I

    if-gt v0, p1, :cond_6

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    move-object v0, p1

    check-cast v0, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/f;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->edgesByWay:Ljava/util/function/LongFunction;

    iget-wide v3, v0, Ln5/f;->b:J

    invoke-interface {v2, v3, v4}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    new-instance v2, Lcom/graphhopper/reader/osm/u;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v1, v3}, Lcom/graphhopper/reader/osm/u;-><init>(Lcom/graphhopper/reader/osm/WayToEdgeConverter;ILcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;I)V

    invoke-interface {v0, v2}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    iget p1, p3, Lcom/carrotsearch/hppc/t0;->m:I

    if-lt p0, p1, :cond_5

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->b(Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    iget p1, p3, Lcom/carrotsearch/hppc/t0;->m:I

    if-gt p0, p1, :cond_4

    return-object v1

    :cond_4
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has to-member ways that aren\'t split at the via-member node"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has to-member ways that aren\'t adjacent to the via-member node"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has from-member ways that aren\'t split at the via-member node"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has from-member ways that aren\'t adjacent to the via-member node"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least one from- and to-way"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertForViaWays(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;
    .locals 10

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p1, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v0, p3, Lcom/carrotsearch/hppc/t0;->m:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There can only be multiple from- or to-ways, but not both"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    move-object v0, v7

    check-cast v0, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ln5/f;

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    move-object v0, v9

    check-cast v0, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/f;

    iget-wide v1, v8, Ln5/f;->b:J

    iget-wide v4, v0, Ln5/f;->b:J

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->findEdgeChain(JLcom/carrotsearch/hppc/t0;JLjava/util/List;)V

    goto :goto_1

    :cond_3
    move-object v3, p2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget p2, p1, Lcom/carrotsearch/hppc/t0;->m:I

    iget v0, p3, Lcom/carrotsearch/hppc/t0;->m:I

    mul-int/2addr p2, v0

    if-lt p0, p2, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    iget p2, p1, Lcom/carrotsearch/hppc/t0;->m:I

    iget v0, p3, Lcom/carrotsearch/hppc/t0;->m:I

    mul-int/2addr p2, v0

    if-gt p0, p2, :cond_4

    invoke-static {v6, p1, v3, p3}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->buildResult(Ljava/util/List;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has member ways that do not form a unique path"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has disconnected member ways"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There must be at least one from-, via- and to-way"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
