.class public Lcom/graphhopper/routing/DijkstraBidirectionCHNoSOD;
.super Lcom/graphhopper/routing/AbstractBidirCHAlgo;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/AbstractBidirCHAlgo;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/util/TraversalMode;)V

    return-void
.end method


# virtual methods
.method public createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    new-instance p0, Lcom/graphhopper/routing/SPTEntry;

    move-wide p3, p4

    move-object p5, p6

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

    const-string p0, "dijkstrabi|ch|no_sod"

    return-object p0
.end method

.method public getParent(Lcom/graphhopper/routing/SPTEntry;)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/routing/SPTEntry;->getParent()Lcom/graphhopper/routing/SPTEntry;

    move-result-object p0

    return-object p0
.end method
