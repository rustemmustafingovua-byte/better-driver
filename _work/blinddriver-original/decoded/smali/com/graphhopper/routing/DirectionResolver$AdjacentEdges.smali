.class Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/DirectionResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdjacentEdges"
.end annotation


# instance fields
.field private final inEdgesByNextPoint:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field final nextPoints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            ">;"
        }
    .end annotation
.end field

.field numStandardEdges:I

.field numZeroDistanceEdges:I

.field private final outEdgesByNextPoint:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->inEdgesByNextPoint:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->outEdgesByNextPoint:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;-><init>()V

    return-void
.end method

.method private static addEdge(Ljava/util/Map;Lcom/graphhopper/routing/DirectionResolver$Edge;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ">;>;",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object v0, p1, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p1, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->inEdgesByNextPoint:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addEdge(Ljava/util/Map;Lcom/graphhopper/routing/DirectionResolver$Edge;)V

    return-void
.end method

.method private addNextPoint(Lcom/graphhopper/routing/DirectionResolver$Edge;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->nextPoints:Ljava/util/Set;

    iget-object p1, p1, Lcom/graphhopper/routing/DirectionResolver$Edge;->nextPoint:Lcom/graphhopper/routing/DirectionResolver$Point;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->outEdgesByNextPoint:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addEdge(Ljava/util/Map;Lcom/graphhopper/routing/DirectionResolver$Edge;)V

    return-void
.end method


# virtual methods
.method public addEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addInEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addOutEdge(Lcom/graphhopper/routing/DirectionResolver$Edge;)V

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->addNextPoint(Lcom/graphhopper/routing/DirectionResolver$Edge;)V

    return-void
.end method

.method public getInEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->inEdgesByNextPoint:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public getOutEdges(Lcom/graphhopper/routing/DirectionResolver$Point;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/DirectionResolver$Point;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/DirectionResolver$Edge;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->outEdgesByNextPoint:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public hasInEdges()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->inEdgesByNextPoint:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasOutEdges()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/DirectionResolver$AdjacentEdges;->outEdgesByNextPoint:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
