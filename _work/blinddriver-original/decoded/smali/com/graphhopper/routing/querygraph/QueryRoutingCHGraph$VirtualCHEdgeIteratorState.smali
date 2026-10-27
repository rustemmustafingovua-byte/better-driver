.class Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualCHEdgeIteratorState"
.end annotation


# instance fields
.field private final adjNode:I

.field private final baseNode:I

.field private final edge:I

.field private final origEdge:I

.field private final origEdgeKeyFirst:I

.field private final origEdgeKeyLast:I

.field private final skippedEdge1:I

.field private final skippedEdge2:I

.field private final weightBwd:D

.field private final weightFwd:D


# direct methods
.method public constructor <init>(IIIIIIIIDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->edge:I

    iput p2, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdge:I

    iput p3, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->baseNode:I

    iput p4, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->adjNode:I

    iput p5, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdgeKeyFirst:I

    iput p6, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdgeKeyLast:I

    iput p7, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->skippedEdge1:I

    iput p8, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->skippedEdge2:I

    iput-wide p9, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightFwd:D

    iput-wide p11, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightBwd:D

    return-void
.end method


# virtual methods
.method public getAdjNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->adjNode:I

    return p0
.end method

.method public getBaseNode()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->baseNode:I

    return p0
.end method

.method public getEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->edge:I

    return p0
.end method

.method public getOrigEdge()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdge:I

    return p0
.end method

.method public getOrigEdgeKeyFirst()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdgeKeyFirst:I

    return p0
.end method

.method public getOrigEdgeKeyLast()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdgeKeyLast:I

    return p0
.end method

.method public getSkippedEdge1()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->skippedEdge1:I

    return p0
.end method

.method public getSkippedEdge2()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->skippedEdge2:I

    return p0
.end method

.method public getWeight(Z)D
    .locals 0

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightBwd:D

    return-wide p0

    :cond_0
    iget-wide p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightFwd:D

    return-wide p0
.end method

.method public isShortcut()Z
    .locals 1

    iget p0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdge:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->edge:I

    iget v1, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->baseNode:I

    iget v2, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->adjNode:I

    iget v3, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->origEdge:I

    iget-wide v4, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightFwd:D

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v4

    iget-wide v6, p0, Lcom/graphhopper/routing/querygraph/QueryRoutingCHGraph$VirtualCHEdgeIteratorState;->weightBwd:D

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->round2(D)D

    move-result-wide v6

    const-string p0, ": "

    const-string v8, "->"

    const-string v9, "virtual: "

    invoke-static {v9, v0, p0, v1, v8}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", orig: "

    const-string v1, ", weightFwd: "

    invoke-static {p0, v2, v0, v3, v1}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", weightBwd: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
