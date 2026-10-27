.class Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->buildVirtualEdgesAtRealNodes(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)Lcom/carrotsearch/hppc/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp5/b;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

.field final synthetic val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

.field final synthetic val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    iput-object p3, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getAdditionalEdges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/util/EdgeIteratorState;

    .line 4
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    .line 5
    iget-object v6, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v6}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->a(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualEdge(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    iget-object v6, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v6, v5}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->f(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;I)I

    move-result v5

    .line 7
    :cond_0
    iget-object v6, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v6, v4, v5}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->d(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/util/EdgeIteratorState;I)Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    invoke-interface {v3, v1}, Lcom/graphhopper/storage/RoutingCHEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;

    move-result-object v3

    .line 9
    :cond_2
    :goto_1
    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIterator;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 10
    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->isShortcut()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 11
    new-instance v7, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result v8

    .line 12
    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v10

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v11

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result v12

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result v13

    .line 13
    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge1()I

    move-result v14

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getSkippedEdge2()I

    move-result v15

    invoke-interface {v3, v6}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide v16

    invoke-interface {v3, v5}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide v18

    const/4 v9, -0x1

    invoke-direct/range {v7 .. v19}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;-><init>(IIIIIIIIDD)V

    .line 14
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getRemovedEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v4

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdge()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/carrotsearch/hppc/x;->contains(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 16
    new-instance v7, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getEdge()I

    move-result v8

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdge()I

    move-result v9

    .line 17
    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getBaseNode()I

    move-result v10

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v11

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyFirst()I

    move-result v12

    invoke-interface {v3}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getOrigEdgeKeyLast()I

    move-result v13

    .line 18
    invoke-interface {v3, v6}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide v16

    invoke-interface {v3, v5}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getWeight(Z)D

    move-result-wide v18

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct/range {v7 .. v19}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;-><init>(IIIIIIIIDD)V

    .line 19
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, v0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, v1, v2}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$2;->apply(ILcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;)V

    return-void
.end method
