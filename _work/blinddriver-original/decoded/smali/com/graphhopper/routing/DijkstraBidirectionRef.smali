.class public Lcom/graphhopper/routing/DijkstraBidirectionRef;
.super Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;)V

    return-void
.end method


# virtual methods
.method public createEntry(Lcom/graphhopper/util/EdgeIteratorState;DLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 1

    new-instance p0, Lcom/graphhopper/routing/SPTEntry;

    move-object p5, p1

    invoke-interface {p5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    invoke-interface {p5}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p5

    move v0, p5

    move-object p5, p4

    move-wide p3, p2

    move p2, v0

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    return-object p0
.end method

.method public createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    new-instance p0, Lcom/graphhopper/routing/SPTEntry;

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/SPTEntry;-><init>(ID)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dijkstrabi"

    return-object p0
.end method

.method public getParent(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/routing/SPTEntry;->getParent()Lcom/graphhopper/routing/SPTEntry;

    move-result-object p0

    return-object p0
.end method
