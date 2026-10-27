.class public Lcom/graphhopper/routing/ch/AStarCHEntry;
.super Lcom/graphhopper/routing/ch/CHEntry;
.source "SourceFile"


# instance fields
.field public weightOfVisitedPath:D


# direct methods
.method public constructor <init>(IDD)V
    .locals 9

    const/4 v2, -0x1

    const/4 v8, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/routing/ch/AStarCHEntry;-><init>(IIIDDLcom/graphhopper/routing/SPTEntry;)V

    return-void
.end method

.method public constructor <init>(IIIDDLcom/graphhopper/routing/SPTEntry;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p8

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/ch/CHEntry;-><init>(IIIDLcom/graphhopper/routing/SPTEntry;)V

    .line 3
    iput-wide p6, v0, Lcom/graphhopper/routing/ch/AStarCHEntry;->weightOfVisitedPath:D

    return-void
.end method


# virtual methods
.method public bridge synthetic getParent()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/AStarCHEntry;->getParent()Lcom/graphhopper/routing/ch/AStarCHEntry;

    move-result-object p0

    return-object p0
.end method

.method public getParent()Lcom/graphhopper/routing/ch/AStarCHEntry;
    .locals 0

    .line 3
    invoke-super {p0}, Lcom/graphhopper/routing/ch/CHEntry;->getParent()Lcom/graphhopper/routing/ch/CHEntry;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ch/AStarCHEntry;

    return-object p0
.end method

.method public bridge synthetic getParent()Lcom/graphhopper/routing/ch/CHEntry;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/AStarCHEntry;->getParent()Lcom/graphhopper/routing/ch/AStarCHEntry;

    move-result-object p0

    return-object p0
.end method

.method public getWeightOfVisitedPath()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/AStarCHEntry;->weightOfVisitedPath:D

    return-wide v0
.end method
