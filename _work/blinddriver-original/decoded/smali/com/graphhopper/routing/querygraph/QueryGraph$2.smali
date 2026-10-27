.class Lcom/graphhopper/routing/querygraph/QueryGraph$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryGraph;->buildVirtualEdgesAtRealNodes(Lcom/graphhopper/util/EdgeExplorer;)Lcom/carrotsearch/hppc/o0;
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


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

.field final synthetic val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field final synthetic val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/util/EdgeExplorer;Lcom/carrotsearch/hppc/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

    iput-object p3, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;)V
    .locals 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getAdditionalEdges()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {v1, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p2}, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;->getRemovedEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v2

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/carrotsearch/hppc/x;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-interface {v1, v2}, Lcom/graphhopper/util/EdgeIteratorState;->detach(Z)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {p0, p1, v0}, Lcom/carrotsearch/hppc/o0;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryGraph$2;->apply(ILcom/graphhopper/routing/querygraph/QueryOverlay$EdgeChanges;)V

    return-void
.end method
