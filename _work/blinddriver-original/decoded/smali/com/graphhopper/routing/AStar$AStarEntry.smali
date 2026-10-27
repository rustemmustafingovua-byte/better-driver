.class public Lcom/graphhopper/routing/AStar$AStarEntry;
.super Lcom/graphhopper/routing/SPTEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/AStar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AStarEntry"
.end annotation


# instance fields
.field weightOfVisitedPath:D


# direct methods
.method public constructor <init>(IIDD)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/routing/AStar$AStarEntry;-><init>(IIDDLcom/graphhopper/routing/SPTEntry;)V

    return-void
.end method

.method public constructor <init>(IIDDLcom/graphhopper/routing/SPTEntry;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p7

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/SPTEntry;-><init>(IIDLcom/graphhopper/routing/SPTEntry;)V

    .line 3
    iput-wide p5, v0, Lcom/graphhopper/routing/AStar$AStarEntry;->weightOfVisitedPath:D

    return-void
.end method


# virtual methods
.method public getParent()Lcom/graphhopper/routing/AStar$AStarEntry;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    check-cast p0, Lcom/graphhopper/routing/AStar$AStarEntry;

    return-object p0
.end method

.method public bridge synthetic getParent()Lcom/graphhopper/routing/SPTEntry;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/routing/AStar$AStarEntry;->getParent()Lcom/graphhopper/routing/AStar$AStarEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getWeightOfVisitedPath()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AStar$AStarEntry;->weightOfVisitedPath:D

    return-wide v0
.end method
