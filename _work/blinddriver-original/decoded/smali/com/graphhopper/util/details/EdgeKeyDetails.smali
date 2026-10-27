.class public Lcom/graphhopper/util/details/EdgeKeyDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private edgeKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "edge_key"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/details/EdgeKeyDetails;->edgeKey:I

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/details/EdgeKeyDetails;->edgeKey:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    instance-of v0, p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getOriginalEdgeKey()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdgeKey()I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/graphhopper/util/details/EdgeKeyDetails;->edgeKey:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/graphhopper/util/details/EdgeKeyDetails;->edgeKey:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
