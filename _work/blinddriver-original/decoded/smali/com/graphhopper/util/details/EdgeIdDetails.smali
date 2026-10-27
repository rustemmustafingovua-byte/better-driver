.class public Lcom/graphhopper/util/details/EdgeIdDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private edgeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "edge_id"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/details/EdgeIdDetails;->edgeId:I

    return-void
.end method

.method private edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I
    .locals 0

    instance-of p0, p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;

    invoke-virtual {p1}, Lcom/graphhopper/routing/querygraph/VirtualEdgeIteratorState;->getOriginalEdgeKey()I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/details/EdgeIdDetails;->edgeId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/EdgeIdDetails;->edgeId(Lcom/graphhopper/util/EdgeIteratorState;)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/util/details/EdgeIdDetails;->edgeId:I

    const/4 p0, 0x1

    return p0
.end method
