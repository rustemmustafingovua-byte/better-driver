.class Lcom/graphhopper/routing/querygraph/QueryOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;
    }
.end annotation


# instance fields
.field private final closestEdges:Lcom/carrotsearch/hppc/x;

.field private final edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation
.end field

.field private final virtualEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;"
        }
    .end annotation
.end field

.field private final virtualNodes:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-direct {v0, p1, p2}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    iput-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualNodes:Lcom/graphhopper/util/PointList;

    new-instance p2, Ljava/util/ArrayList;

    mul-int/lit8 v0, p1, 0x2

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualEdges:Ljava/util/List;

    new-instance p2, Lcom/carrotsearch/hppc/x;

    invoke-direct {p2, p1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->closestEdges:Lcom/carrotsearch/hppc/x;

    new-instance p2, Lcom/graphhopper/coll/GHIntObjectHashMap;

    mul-int/lit8 p1, p1, 0x3

    invoke-direct {p2, p1}, Lcom/graphhopper/coll/GHIntObjectHashMap;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    return-void
.end method


# virtual methods
.method public addVirtualEdge(Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualEdges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getClosestEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->closestEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getEdgeChangesAtRealNodes()Lcom/carrotsearch/hppc/o0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/carrotsearch/hppc/o0;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->edgeChangesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    return-object p0
.end method

.method public getNumVirtualEdges()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualEdges:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getVirtualEdge(I)Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualEdges:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    return-object p0
.end method

.method public getVirtualEdges()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualEdges:Ljava/util/List;

    return-object p0
.end method

.method public getVirtualNodes()Lcom/graphhopper/util/PointList;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlay;->virtualNodes:Lcom/graphhopper/util/PointList;

    return-object p0
.end method
