.class public Lcom/graphhopper/routing/subnetwork/TarjanSCC;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;,
        Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bitUtil:Lcom/graphhopper/util/BitUtil;

.field private final components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

.field private currIndex:I

.field private final dfsStack:Lcom/carrotsearch/hppc/s0;

.field private dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

.field private final edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

.field private final excludeSingleNodeComponents:Z

.field private final explorer:Lcom/graphhopper/util/EdgeExplorer;

.field private final graph:Lcom/graphhopper/storage/Graph;

.field private final nodeIndex:[I

.field private final nodeLowLink:[I

.field private final nodeOnStack:Lcom/carrotsearch/hppc/j;

.field private final tarjanStack:Lcom/carrotsearch/hppc/w;

.field private v:I

.field private w:I


# direct methods
.method private constructor <init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->currIndex:I

    iput-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {p1, p2}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->explorer:Lcom/graphhopper/util/EdgeExplorer;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    const/4 v1, -0x1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    new-instance p2, Lcom/carrotsearch/hppc/j;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p2, v2, v3}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "hppc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/carrotsearch/hppc/w;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/carrotsearch/hppc/w;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    new-instance p2, Lcom/carrotsearch/hppc/s0;

    invoke-direct {p2}, Lcom/carrotsearch/hppc/s0;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    new-instance p2, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v1

    :goto_0
    invoke-direct {p2, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;-><init>(I)V

    iput-object p2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    iput-boolean p3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->excludeSingleNodeComponents:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Was meant to be hppc BitSet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private buildComponent(I)V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    aget v1, v1, p1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    iget-object v1, v0, Lcom/carrotsearch/hppc/w;->l:[I

    iget v2, v0, Lcom/carrotsearch/hppc/w;->n:I

    array-length v3, v1

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v3, -0x1

    :goto_0
    aget v1, v1, v2

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w;->j()I

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/carrotsearch/hppc/j;->f(J)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->c(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->g(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;I)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->d(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->h(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;I)V

    iget-boolean p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->excludeSingleNodeComponents:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->e(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/j;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/j;->h(J)V

    return-void

    :cond_1
    new-instance v0, Lcom/carrotsearch/hppc/x;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    :cond_2
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/w;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    int-to-long v5, v1

    invoke-virtual {v2, v5, v6}, Lcom/carrotsearch/hppc/j;->f(J)V

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->trimToSize()V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->c(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-static {p1, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->g(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;I)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->d(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)I

    move-result v1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->h(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;I)V

    iget-object p1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->b(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p1

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->a(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;)Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    if-le p1, v1, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    invoke-static {p0, v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->f(Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;Lcom/carrotsearch/hppc/x;)V

    :cond_3
    return-void
.end method

.method private findComponentForNode(I)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->setupNextNode(I)V

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->edgeFilter:Lcom/graphhopper/routing/util/EdgeFilter;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->findComponentForNode(I)V

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    aget v3, v2, p1

    aget v1, v2, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v2, p1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    invoke-virtual {v2, v1}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    aget v3, v2, p1

    iget-object v4, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    aget v1, v4, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v2, p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->buildComponent(I)V

    return-void
.end method

.method private findComponents()Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;
    .locals 7

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 3
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pushFindComponentForNode(I)V

    .line 5
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6
    invoke-direct {p0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pop()V

    .line 7
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 8
    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->buildComponent(I)V

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unknown state: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->setupNextNode(I)V

    .line 11
    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pushBuildComponent(I)V

    .line 12
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->explorer:Lcom/graphhopper/util/EdgeExplorer;

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-interface {v1, v3}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v1

    .line 13
    :goto_2
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pushHandleNeighbor(II)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    invoke-virtual {v1, v3}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    aget v4, v1, v3

    iget-object v5, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    iget v6, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    aget v5, v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v1, v3

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    aget v1, v1, v3

    if-ne v1, v2, :cond_1

    .line 18
    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    invoke-direct {p0, v1, v3}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pushUpdateLowLinks(II)V

    .line 19
    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->pushFindComponentForNode(I)V

    goto/16 :goto_1

    .line 20
    :cond_6
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    iget v3, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    aget v4, v1, v3

    iget v5, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    aget v5, v1, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 21
    :cond_8
    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    return-object p0
.end method

.method public static findComponents(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-direct {v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->findComponents()Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    move-result-object p0

    return-object p0
.end method

.method private findComponentsRecursive()Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;
    .locals 3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->graph:Lcom/graphhopper/storage/Graph;

    invoke-interface {v1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->findComponentForNode(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->components:Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    return-object p0
.end method

.method public static findComponentsRecursive(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;
    .locals 1

    .line 1
    new-instance v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-direct {v0}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->findComponentsRecursive()Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    move-result-object p0

    return-object p0
.end method

.method private hasNext()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/s0;->size()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method private pop()V
    .locals 9

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    iget v1, v0, Lcom/carrotsearch/hppc/s0;->m:I

    iget-object v2, v0, Lcom/carrotsearch/hppc/s0;->l:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v1, v4, :cond_0

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v3, -0x1

    :goto_0
    iput v1, v0, Lcom/carrotsearch/hppc/s0;->m:I

    aget-wide v5, v2, v1

    const-wide/16 v7, 0x0

    aput-wide v7, v2, v1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/util/BitUtil;->getIntLow(J)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    invoke-virtual {v1, v5, v6}, Lcom/graphhopper/util/BitUtil;->getIntHigh(J)I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    sget-object v2, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->HANDLE_NEIGHBOR:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    iput-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    return-void

    :cond_1
    if-lez v0, :cond_2

    if-gez v1, :cond_2

    sget-object v2, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->UPDATE:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    iput-object v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    neg-int v0, v1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    return-void

    :cond_2
    const/4 v2, -0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->BUILD_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    iput-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    iput v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    return-void

    :cond_3
    sget-object v1, Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;->FIND_COMPONENT:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    iput-object v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsState:Lcom/graphhopper/routing/subnetwork/TarjanSCC$State;

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->v:I

    iput v2, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->w:I

    return-void
.end method

.method private pushBuildComponent(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/carrotsearch/hppc/s0;->a(J)V

    return-void
.end method

.method private pushFindComponentForNode(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/carrotsearch/hppc/s0;->a(J)V

    return-void
.end method

.method private pushHandleNeighbor(II)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/carrotsearch/hppc/s0;->a(J)V

    return-void
.end method

.method private pushUpdateLowLinks(II)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->dfsStack:Lcom/carrotsearch/hppc/s0;

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->bitUtil:Lcom/graphhopper/util/BitUtil;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    neg-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/carrotsearch/hppc/s0;->a(J)V

    return-void
.end method

.method private setupNextNode(I)V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeIndex:[I

    iget v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->currIndex:I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeLowLink:[I

    aput v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->currIndex:I

    iget-object v0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->tarjanStack:Lcom/carrotsearch/hppc/w;

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/w;->a(I)V

    iget-object p0, p0, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->nodeOnStack:Lcom/carrotsearch/hppc/j;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/carrotsearch/hppc/j;->h(J)V

    return-void
.end method
