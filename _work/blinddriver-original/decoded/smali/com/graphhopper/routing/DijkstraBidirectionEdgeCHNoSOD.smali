.class public Lcom/graphhopper/routing/DijkstraBidirectionEdgeCHNoSOD;
.super Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/RoutingCHGraph;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/AbstractBidirectionEdgeCHNoSOD;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/graphhopper/routing/DijkstraBidirectionEdgeCHNoSOD;->createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/ch/CHEntry;

    move-result-object p0

    return-object p0
.end method

.method public createEntry(IIIDLcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/ch/CHEntry;
    .locals 1

    .line 2
    new-instance p0, Lcom/graphhopper/routing/ch/CHEntry;

    move v0, p3

    move p3, p2

    move p2, v0

    invoke-direct/range {p0 .. p6}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(IIIDLcom/graphhopper/routing/SPTEntry;)V

    return-object p0
.end method

.method public bridge synthetic createStartEntry(IDZ)Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/DijkstraBidirectionEdgeCHNoSOD;->createStartEntry(IDZ)Lcom/graphhopper/routing/ch/CHEntry;

    move-result-object p0

    return-object p0
.end method

.method public createStartEntry(IDZ)Lcom/graphhopper/routing/ch/CHEntry;
    .locals 0

    .line 2
    new-instance p0, Lcom/graphhopper/routing/ch/CHEntry;

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(ID)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "dijkstrabi|ch|edge_based|no_sod"

    return-object p0
.end method

.method public updateEntry(Lcom/graphhopper/routing/SPTEntry;IIIDLcom/graphhopper/routing/SPTEntry;Z)V
    .locals 0

    iput p2, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    move-object p0, p1

    check-cast p0, Lcom/graphhopper/routing/ch/CHEntry;

    iput p4, p0, Lcom/graphhopper/routing/ch/CHEntry;->incEdge:I

    iput-wide p5, p1, Lcom/graphhopper/routing/SPTEntry;->weight:D

    iput-object p7, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    return-void
.end method
