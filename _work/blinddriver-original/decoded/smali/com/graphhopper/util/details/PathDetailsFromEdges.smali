.class public Lcom/graphhopper/util/details/PathDetailsFromEdges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/Path$EdgeVisitor;


# instance fields
.field private final calculators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetailsBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private lastIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetailsBuilder;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->calculators:Ljava/util/List;

    iput p2, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    return-void
.end method

.method public static synthetic a(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lambda$calcDetails$0(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static calcDetails(Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/weighting/Weighting;Ljava/util/List;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;ILcom/graphhopper/storage/Graph;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/Path;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/routing/weighting/Weighting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/util/details/PathDetailsBuilderFactory;",
            "I",
            "Lcom/graphhopper/storage/Graph;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->isFound()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/util/f;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/graphhopper/util/f;-><init>(Ljava/util/HashSet;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v3, p3

    move-object v2, p4

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/graphhopper/util/details/PathDetailsBuilderFactory;->createPathDetailsBuilders(Ljava/util/List;Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/Graph;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_1
    new-instance p1, Lcom/graphhopper/util/details/PathDetailsFromEdges;

    invoke-direct {p1, p0, p5}, Lcom/graphhopper/util/details/PathDetailsFromEdges;-><init>(Ljava/util/List;I)V

    invoke-virtual {v4, p1}, Lcom/graphhopper/routing/Path;->forEveryEdge(Lcom/graphhopper/routing/Path$EdgeVisitor;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/util/details/PathDetailsBuilder;

    invoke-interface {p2}, Lcom/graphhopper/util/details/PathDetailsBuilder;->build()Ljava/util/Map$Entry;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-virtual {p1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "Some PathDetailsBuilders use duplicate key: "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Do not use duplicate path details: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method private static synthetic lambda$calcDetails$0(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public finish()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->calculators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/details/PathDetailsBuilder;

    iget v2, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    invoke-interface {v1, v2}, Lcom/graphhopper/util/details/PathDetailsBuilder;->endInterval(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public next(Lcom/graphhopper/util/EdgeIteratorState;II)V
    .locals 1

    iget-object p2, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->calculators:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/graphhopper/util/details/PathDetailsBuilder;

    invoke-interface {p3, p1}, Lcom/graphhopper/util/details/PathDetailsBuilder;->isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    invoke-interface {p3, v0}, Lcom/graphhopper/util/details/PathDetailsBuilder;->endInterval(I)V

    iget v0, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    invoke-interface {p3, v0}, Lcom/graphhopper/util/details/PathDetailsBuilder;->startInterval(I)V

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    sget-object p3, Lcom/graphhopper/util/FetchMode;->PILLAR_AND_ADJ:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p1, p3}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/graphhopper/util/PointList;->size()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/graphhopper/util/details/PathDetailsFromEdges;->lastIndex:I

    return-void
.end method
