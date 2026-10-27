.class Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WaySegmentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pass2Handler"
.end annotation


# instance fields
.field private acceptedNodes:J

.field private handledNodes:Z

.field private handledRelations:Z

.field private handledWays:Z

.field private ignoredSplitNodes:J

.field private nodeCounter:J

.field final synthetic this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

.field private wayCounter:J


# direct methods
.method private constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->nodeCounter:J

    .line 4
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->acceptedNodes:J

    .line 5
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->ignoredSplitNodes:J

    .line 6
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->wayCounter:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser;)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;Lcom/graphhopper/reader/ReaderNode;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->lambda$handleNode$0(Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic b(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;J)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->lambda$handleWay$2(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;J)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->lambda$handleWay$1(J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleNode$0(Lcom/graphhopper/reader/ReaderNode;)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->i(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/ToDoubleFunction;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide p0

    return-wide p0
.end method

.method private synthetic lambda$handleWay$1(J)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->getId(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/reader/osm/OSMNodeData;->getCoordinates(J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleWay$2(J)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->getTags(J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private splitLoopSegments(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/SegmentNode;",
            ">;",
            "Lcom/graphhopper/reader/ReaderWay;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v2, v2, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v6, v4, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object p0

    invoke-virtual {p2}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v0, p1, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lnc/b;->b(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitSegmentAtSplitNodes(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitSegmentAtSplitNodes(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitSegmentAtSplitNodes(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Segment size must be >= 2, but was: "

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private splitSegmentAtSplitNodes(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/SegmentNode;",
            ">;",
            "Lcom/graphhopper/reader/ReaderWay;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-object v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v4

    iget-wide v5, v2, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-virtual {v4, v5, v6}, Lcom/graphhopper/reader/osm/OSMNodeData;->isSplitNode(J)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v4

    iget-wide v5, v2, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-virtual {v4, v5, v6}, Lcom/graphhopper/reader/osm/OSMNodeData;->unsetSplitNode(J)V

    iget-object v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/graphhopper/reader/osm/OSMNodeData;->addCopyOfNode(Lcom/graphhopper/reader/osm/SegmentNode;)Lcom/graphhopper/reader/osm/SegmentNode;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v1, v5, :cond_0

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handleSegment(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "gh:barrier_edge"

    invoke-virtual {p2, v5, v3}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handleSegment(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    invoke-virtual {p2, v5}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    invoke-virtual {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handleSegment(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    :cond_4
    return-void
.end method

.method private splitWayAtJunctionsAndEmptySections(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/SegmentNode;",
            ">;",
            "Lcom/graphhopper/reader/ReaderWay;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v3, v1, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    invoke-static {v3, v4}, Lcom/graphhopper/reader/osm/OSMNodeData;->isNodeId(J)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitLoopSegments(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    iget-wide v2, v1, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    invoke-static {v2, v3}, Lcom/graphhopper/reader/osm/OSMNodeData;->isTowerNode(J)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitLoopSegments(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    invoke-direct {p0, v0, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitLoopSegments(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getInternalNodeIdOfOSMNode(J)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;->getId(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/OSMNodeData;->isTowerNode(J)Z

    move-result p2

    if-eqz p2, :cond_0

    long-to-int p0, p0

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x3

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public handleNode(Lcom/graphhopper/reader/ReaderNode;)V
    .locals 12

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledNodes:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    const-string v1, "pass2 - start reading OSM nodes"

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledNodes:Z

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledWays:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledRelations:Z

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->nodeCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->nodeCounter:J

    const-wide/32 v4, 0x989680

    rem-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->nodeCounter:J

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->acceptedNodes:J

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v5

    const-string v6, ", accepted nodes: "

    const-string v7, ", "

    const-string v8, "pass2 - processed nodes: "

    invoke-static {v8, v1, v6, v4, v7}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v4

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLat()D

    move-result-wide v7

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLon()D

    move-result-wide v9

    new-instance v11, Lcom/graphhopper/reader/osm/o;

    invoke-direct {v11, p0, p1}, Lcom/graphhopper/reader/osm/o;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;Lcom/graphhopper/reader/ReaderNode;)V

    invoke-virtual/range {v4 .. v11}, Lcom/graphhopper/reader/osm/OSMNodeData;->addCoordinatesIfMapped(JDDLjava/util/function/DoubleSupplier;)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->acceptedNodes:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->acceptedNodes:J

    iget-object v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->m(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x2

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLat()D

    move-result-wide v4

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderNode;->getLon()D

    move-result-wide v7

    invoke-static {v7, v8, v6}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->q([Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->ignoredSplitNodes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->ignoredSplitNodes:J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/reader/osm/OSMNodeData;->setSplitNode(J)Z

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->y()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "created_by"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    const-string v0, "source"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    const-string v0, "note"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    const-string v0, "fixme"

    invoke-virtual {p1, v0}, Lcom/graphhopper/reader/ReaderElement;->removeTag(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMNodeData;->setTags(Lcom/graphhopper/reader/ReaderNode;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OSM node elements must be located before relation elements in OSM file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OSM node elements must be located before way elements in OSM file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleRelation(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 2

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledRelations:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    const-string v1, "pass2 - start reading OSM relations"

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledRelations:Z

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->l(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/p;

    invoke-direct {v1, p0}, Lcom/graphhopper/reader/osm/p;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;)V

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;->processRelation(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V

    return-void
.end method

.method public handleSegment(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/osm/SegmentNode;",
            ">;",
            "Lcom/graphhopper/reader/ReaderWay;",
            ")V"
        }
    .end annotation

    new-instance v3, Lcom/graphhopper/util/PointList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/reader/osm/OSMNodeData;->is3D()Z

    move-result v1

    invoke-direct {v3, v0, v1}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v6, v4, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    invoke-static {v6, v7}, Lcom/graphhopper/reader/osm/OSMNodeData;->isNodeId(J)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v6, v7}, Lcom/graphhopper/reader/osm/OSMNodeData;->isPillarNode(J)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v8}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v8

    iget-wide v9, v4, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/graphhopper/reader/osm/OSMNodeData;->convertPillarToTowerNode(JJ)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToTowerNode(J)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_3

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v2}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/graphhopper/reader/osm/OSMNodeData;->idToTowerNode(J)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {v6, v7}, Lcom/graphhopper/reader/osm/OSMNodeData;->isTowerNode(J)Z

    move-result v8

    if-nez v8, :cond_4

    :goto_1
    iget-object v8, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v8}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v8

    invoke-virtual {v8, v6, v7, v3}, Lcom/graphhopper/reader/osm/OSMNodeData;->addCoordinatesToPointList(JLcom/graphhopper/util/PointList;)V

    iget-object v4, v4, Lcom/graphhopper/reader/osm/SegmentNode;->tags:Ljava/util/Map;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p2}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    const-string v0, "Tower nodes should only appear at the end of segments, way: "

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    iget-wide v0, v4, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid id for node: "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " when handling segment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for way: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ltz v1, :cond_7

    if-ltz v2, :cond_7

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->h(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;

    move-result-object v0

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;->handleEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V

    return-void

    :cond_7
    move-object v4, p2

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v4}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    const-string v0, "The first and last nodes of a segment must be tower nodes, way: "

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleWay(Lcom/graphhopper/reader/ReaderWay;)V
    .locals 11

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledWays:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    const-string v1, "pass2 - start reading OSM ways"

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledWays:Z

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->handledRelations:Z

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->wayCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->wayCounter:J

    const-wide/32 v2, 0x989680

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->wayCounter:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pass2 - processed ways: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->n(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v1

    iget v1, v1, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/f;

    new-instance v3, Lcom/graphhopper/reader/osm/SegmentNode;

    iget-wide v4, v2, Ln5/f;->b:J

    iget-object v6, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v6}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v6

    iget-wide v7, v2, Ln5/f;->b:J

    invoke-virtual {v6, v7, v8}, Lcom/graphhopper/reader/osm/OSMNodeData;->getId(J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v8}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v8

    iget-wide v9, v2, Ln5/f;->b:J

    invoke-virtual {v8, v9, v10}, Lcom/graphhopper/reader/osm/OSMNodeData;->getTags(J)Ljava/util/Map;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/graphhopper/reader/osm/SegmentNode;-><init>(JJLjava/util/Map;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->o(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/osm/q;

    invoke-direct {v2, p0}, Lcom/graphhopper/reader/osm/q;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;)V

    new-instance v3, Lcom/graphhopper/reader/osm/q;

    invoke-direct {v3, p0}, Lcom/graphhopper/reader/osm/q;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;->preprocessWay(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->splitWayAtJunctionsAndEmptySections(Ljava/util/List;Lcom/graphhopper/reader/ReaderWay;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OSM way elements must be located before relation elements in OSM file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFinish()V
    .locals 7

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->wayCounter:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->acceptedNodes:J

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v3}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/reader/osm/OSMNodeData;->getTaggedNodeCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v4}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/graphhopper/reader/osm/OSMNodeData;->getNodeTagCapacity()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->ignoredSplitNodes:J

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "pass2 - finished, processed ways: {}, way nodes: {}, nodes with tags: {}, node tag capacity: {}, ignored barriers at junctions: {}"

    invoke-interface {v0, v1, p0}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
