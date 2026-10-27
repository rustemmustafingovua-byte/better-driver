.class Lcom/graphhopper/routing/querygraph/QueryGraph$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/EdgeExplorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryGraph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

.field final synthetic val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

.field final synthetic val$virtualEdgeIterator:Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;Lcom/graphhopper/util/EdgeExplorer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->val$virtualEdgeIterator:Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;

    iput-object p3, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->isVirtualNode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->c(Lcom/graphhopper/routing/querygraph/QueryGraph;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-static {v1}, Lcom/graphhopper/routing/querygraph/QueryGraph;->a(Lcom/graphhopper/routing/querygraph/QueryGraph;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->val$virtualEdgeIterator:Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->reset(Ljava/util/List;)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->this$0:Lcom/graphhopper/routing/querygraph/QueryGraph;

    invoke-static {v0}, Lcom/graphhopper/routing/querygraph/QueryGraph;->b(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/carrotsearch/hppc/o0;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->val$mainExplorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryGraph$1;->val$virtualEdgeIterator:Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIterator;->reset(Ljava/util/List;)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    return-object p0
.end method
