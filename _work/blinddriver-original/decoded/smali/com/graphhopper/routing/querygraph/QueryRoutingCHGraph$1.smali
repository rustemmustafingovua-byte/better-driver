.class Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHEdgeExplorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->createEdgeExplorer(Lcom/graphhopper/storage/RoutingCHEdgeExplorer;Lcom/carrotsearch/hppc/o0;)Lcom/graphhopper/storage/RoutingCHEdgeExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

.field final synthetic val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

.field final synthetic val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

.field final synthetic val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;Lcom/carrotsearch/hppc/o0;Lcom/graphhopper/storage/RoutingCHEdgeExplorer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    iput-object p3, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    iput-object p4, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->e(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->c(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;

    invoke-static {v1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;->b(Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;)Lcom/graphhopper/storage/RoutingCHGraph;

    move-result-object v1

    invoke-interface {v1}, Lcom/graphhopper/storage/RoutingCHGraph;->getNodes()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->reset(Ljava/util/List;)V

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$virtualEdgesAtRealNodes:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$explorer:Lcom/graphhopper/storage/RoutingCHEdgeExplorer;

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/RoutingCHEdgeExplorer;->setBaseNode(I)Lcom/graphhopper/storage/RoutingCHEdgeIterator;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    invoke-virtual {p1, v0}, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;->reset(Ljava/util/List;)V

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$1;->val$iterator:Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIterator;

    return-object p0
.end method
