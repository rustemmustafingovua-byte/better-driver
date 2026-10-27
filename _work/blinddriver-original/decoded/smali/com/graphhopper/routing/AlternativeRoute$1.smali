.class Lcom/graphhopper/routing/AlternativeRoute$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/AlternativeRoute;->calcAlternatives(Lcom/graphhopper/routing/Path;IDDDDDD)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo5/b;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/AlternativeRoute;

.field final synthetic val$alternatives:Ljava/util/List;

.field final synthetic val$bestAlt:Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

.field final synthetic val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$maxPaths:I

.field final synthetic val$maxShareFactor:D

.field final synthetic val$maxWeight:D

.field final synthetic val$minPlateauFactor:D

.field final synthetic val$plateauInfluence:D

.field final synthetic val$shareInfluence:D

.field final synthetic val$startTID:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$traversalIdMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

.field final synthetic val$weightInfluence:D


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/AlternativeRoute;DDDDDDLjava/util/List;ILcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;Lcom/graphhopper/coll/GHIntObjectHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iput-wide p2, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxWeight:D

    iput-wide p4, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$minPlateauFactor:D

    iput-wide p6, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxShareFactor:D

    iput-wide p8, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$weightInfluence:D

    iput-wide p10, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$shareInfluence:D

    iput-wide p12, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$plateauInfluence:D

    iput-object p14, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    iput p15, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxPaths:I

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestAlt:Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$traversalIdMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$startTID:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(ILcom/graphhopper/routing/SPTEntry;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    .line 2
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v1, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/SPTEntry;

    const/4 v7, 0x1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v2, v2, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v1

    .line 4
    :goto_0
    iget v1, v3, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v2, v4, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v1, v2, :cond_2

    goto/16 :goto_5

    .line 5
    :cond_2
    invoke-virtual {v3}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v1

    invoke-virtual {v4}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v5

    add-double/2addr v5, v1

    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v1, v1, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget v2, v3, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v8, v3, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    iget v9, v4, Lcom/graphhopper/routing/SPTEntry;->edge:I

    .line 6
    invoke-interface {v1, v2, v8, v9}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide v1

    add-double/2addr v5, v1

    .line 7
    iget-wide v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxWeight:D

    cmpl-double v1, v5, v1

    if-lez v1, :cond_3

    goto/16 :goto_5

    .line 8
    :cond_3
    invoke-virtual {v0, v3}, Lcom/graphhopper/routing/AlternativeRoute$1;->isBestPath(Lcom/graphhopper/routing/SPTEntry;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_5

    .line 9
    :cond_4
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v1, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v1}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v3, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_8

    .line 10
    iget-object v2, v1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-nez v2, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    iget-object v8, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v9, v8, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iget-object v8, v8, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v2, v2, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {v8, v1, v2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-virtual {v9, v1, v7}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v1

    .line 12
    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v2, v2, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapTo:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v2, v1}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/SPTEntry;

    if-eqz v1, :cond_8

    .line 13
    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v2, v2, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v2}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    iget-object v1, v1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    .line 15
    :cond_7
    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v2, v3, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v1, v2, :cond_8

    goto/16 :goto_5

    :cond_8
    :goto_2
    const-wide/16 v1, 0x0

    move-wide/from16 v18, v1

    move-object v9, v3

    move-object v8, v4

    .line 16
    :goto_3
    iget-object v10, v8, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    const/4 v11, 0x0

    if-eqz v10, :cond_a

    .line 17
    iget-object v12, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v13, v12, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iget-object v12, v12, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v14, v8, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v10, v10, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {v12, v14, v10}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v10

    invoke-virtual {v13, v10, v11}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v10

    .line 18
    iget-object v12, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v12, v12, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeightMapFrom:Lcom/carrotsearch/hppc/o0;

    invoke-interface {v12, v10}, Lcom/carrotsearch/hppc/o0;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/graphhopper/routing/SPTEntry;

    if-eqz v10, :cond_a

    .line 19
    iget-object v12, v10, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-ne v12, v9, :cond_a

    iget v9, v10, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v12, v8, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-eq v9, v12, :cond_9

    goto :goto_4

    .line 20
    :cond_9
    invoke-virtual {v8}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v11

    iget-object v9, v8, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {v9}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v13

    sub-double/2addr v11, v13

    add-double v18, v11, v18

    .line 21
    iget-object v8, v8, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    move-object v9, v10

    goto :goto_3

    :cond_a
    :goto_4
    cmpg-double v1, v18, v1

    if-lez v1, :cond_f

    div-double v1, v18, v5

    .line 22
    iget-wide v8, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$minPlateauFactor:D

    cmpg-double v1, v1, v8

    if-gez v1, :cond_b

    goto/16 :goto_5

    .line 23
    :cond_b
    iget-object v1, v3, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-eqz v1, :cond_e

    .line 24
    invoke-virtual {v0, v1, v7}, Lcom/graphhopper/routing/AlternativeRoute$1;->getFirstShareEE(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v24

    .line 25
    iget-object v1, v4, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {v0, v1, v11}, Lcom/graphhopper/routing/AlternativeRoute$1;->getFirstShareEE(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;

    move-result-object v25

    .line 26
    invoke-virtual/range {v24 .. v24}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v1

    invoke-virtual/range {v25 .. v25}, Lcom/graphhopper/routing/SPTEntry;->getWeightOfVisitedPath()D

    move-result-wide v8

    add-double v14, v8, v1

    .line 27
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-wide v8, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->bestWeight:D

    div-double v8, v14, v8

    iget-wide v12, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxShareFactor:D

    cmpg-double v2, v8, v12

    if-gez v2, :cond_f

    .line 28
    iget-object v1, v1, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    invoke-static {v1, v3}, Lcom/graphhopper/routing/AlternativeRoute;->getAltNames(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/SPTEntry;)Ljava/util/List;

    move-result-object v28

    .line 29
    iget-wide v8, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$weightInfluence:D

    iget-wide v12, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$shareInfluence:D

    iget-wide v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$plateauInfluence:D

    move-wide/from16 v16, v1

    move v1, v11

    move-wide v10, v5

    invoke-static/range {v8 .. v19}, Lcom/graphhopper/routing/AlternativeRoute;->calcSortBy(DDDDDD)D

    move-result-wide v21

    .line 30
    invoke-virtual {v0}, Lcom/graphhopper/routing/AlternativeRoute$1;->getWorstSortBy()D

    move-result-wide v8

    cmpg-double v2, v21, v8

    if-ltz v2, :cond_c

    .line 31
    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v8, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxPaths:I

    if-ge v2, v8, :cond_f

    .line 32
    :cond_c
    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    move v8, v1

    iget-object v1, v2, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget-object v2, v2, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static/range {v1 .. v6}, Lcom/graphhopper/routing/DefaultBidirPathExtractor;->extractPath(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;D)Lcom/graphhopper/routing/Path;

    move-result-object v23

    .line 33
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    new-instance v20, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    move-wide/from16 v26, v14

    invoke-direct/range {v20 .. v28}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;-><init>(DLcom/graphhopper/routing/Path;Lcom/graphhopper/routing/SPTEntry;Lcom/graphhopper/routing/SPTEntry;DLjava/util/List;)V

    move-object/from16 v2, v20

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-static {}, Lcom/graphhopper/routing/AlternativeRoute;->d()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestAlt:Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    if-ne v1, v2, :cond_d

    .line 36
    iget-object v1, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$maxPaths:I

    if-le v1, v2, :cond_f

    .line 37
    iget-object v0, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v7

    .line 38
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestAlt:Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    invoke-static {v2}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->a(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)Lcom/graphhopper/routing/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v2

    iget-object v0, v0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    invoke-static {v0}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->a(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)Lcom/graphhopper/routing/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v4

    const-string v0, "best path should be always first entry "

    const-string v6, " vs "

    .line 39
    invoke-static {v2, v3, v0, v6}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented yet. in case of an edge based traversal the parent of fromSPTEntry could be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_5
    return v7
.end method

.method public bridge synthetic apply(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/graphhopper/routing/SPTEntry;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/AlternativeRoute$1;->apply(ILcom/graphhopper/routing/SPTEntry;)Z

    move-result p0

    return p0
.end method

.method public getFirstShareEE(Lcom/graphhopper/routing/SPTEntry;Z)Lcom/graphhopper/routing/SPTEntry;
    .locals 4

    :goto_0
    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v2, v1, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    iget-object v1, v1, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v3, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {v1, v3, v0}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lcom/graphhopper/routing/util/TraversalMode;->createTraversalId(Lcom/graphhopper/util/EdgeIteratorState;Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AlternativeRoute$1;->isAlreadyExisting(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public getWorstSortBy()D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$alternatives:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    invoke-static {p0}, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;->b(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Empty alternative list cannot happen"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAlreadyExisting(I)Z
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$traversalIdMap:Lcom/graphhopper/coll/GHIntObjectHashMap;

    new-instance v2, Lcom/graphhopper/routing/AlternativeRoute$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/graphhopper/routing/AlternativeRoute$1$1;-><init>(Lcom/graphhopper/routing/AlternativeRoute$1;ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/n0;->forEach(Lo5/b;)Lo5/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isBestPath(Lcom/graphhopper/routing/SPTEntry;)Z
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object v0, v0, Lcom/graphhopper/routing/AbstractBidirAlgo;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/TraversalMode;->isEdgeBased()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, " vs old: "

    const-string v4, "there can be only one best entry but was "

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$startTID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {v0}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result v0

    iget v5, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v0, v5, :cond_6

    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/SPTEntry;

    iget v0, v0, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget v5, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v6, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p0, v6, p1}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v1, v3, v5, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "best path must have no parent but was non-null: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p1, Lcom/graphhopper/routing/SPTEntry;->parent:Lcom/graphhopper/routing/SPTEntry;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$startTID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v5, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$bestEntry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->this$0:Lcom/graphhopper/routing/AlternativeRoute;

    iget-object p0, p0, Lcom/graphhopper/routing/AbstractNonCHBidirAlgo;->graph:Lcom/graphhopper/storage/Graph;

    iget v6, p1, Lcom/graphhopper/routing/SPTEntry;->edge:I

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    invoke-interface {p0, v6, p1}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v1, v3, v5, v2}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/routing/AlternativeRoute$1;->val$startTID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget p1, p1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start traversal ID has to be identical to root edge entry which is the plateau start of the best path but was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " vs. adjNode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method
