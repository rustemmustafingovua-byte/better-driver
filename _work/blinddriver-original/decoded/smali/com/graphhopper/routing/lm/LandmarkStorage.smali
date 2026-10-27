.class public Lcom/graphhopper/routing/lm/LandmarkStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;
    }
.end annotation


# static fields
.field private static final DOUBLE_MLTPL:D = 1000000.0

.field private static final LOGGER:Lnc/b;

.field static final PRECISION:J = 0x10000L

.field private static final SHORT_INFINITY:I = 0xffff

.field static final SHORT_MAX:I = 0xfffe

.field static final SORT_BY_WEIGHT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final UNCLEAR_SUBNETWORK:I = 0x0

.field private static final UNSET_SUBNETWORK:I = -0x1


# instance fields
.field private final FROM_OFFSET:I

.field private LM_ROW_LENGTH:J

.field private final TO_OFFSET:I

.field private areaIndex:Lcom/graphhopper/routing/util/AreaIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/lm/SplitArea;",
            ">;"
        }
    .end annotation
.end field

.field private final encodedValueLookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

.field private factor:D

.field private final graph:Lcom/graphhopper/storage/BaseGraph;

.field private initialized:Z

.field private final landmarkIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private landmarkSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LandmarkSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

.field private landmarks:I

.field private final lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

.field private lmSelectionWeighting:Lcom/graphhopper/routing/weighting/Weighting;

.field private logDetails:Z

.field private minimumNodes:I

.field private final na:Lcom/graphhopper/storage/NodeAccess;

.field private final subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

.field private final traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$2;

    invoke-direct {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$2;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->SORT_BY_WEIGHT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/Directory;Lcom/graphhopper/routing/lm/LMConfig;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkSuggestions:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->encodedValueLookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-virtual {p1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p1

    const/4 p2, 0x2

    div-int/2addr p1, p2

    const v1, 0x7a120

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    iput-object p4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    invoke-virtual {p4}, Lcom/graphhopper/routing/lm/LMConfig;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p1}, Lcom/graphhopper/routing/weighting/Weighting;->hasTurnCosts()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/graphhopper/routing/lm/LandmarkStorage$1;

    invoke-direct {v1, p0, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage$1;-><init>(Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;)V

    iput-object v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmSelectionWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    sget-object p1, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-virtual {p4}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "landmarks_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    iput p5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    mul-int/lit8 p5, p5, 0x4

    int-to-long v1, p5

    iput-wide v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    iput v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->FROM_OFFSET:I

    iput p2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->TO_OFFSET:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    new-instance p1, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {p4}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "landmarks_subnetwork_"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;-><init>(Lcom/graphhopper/storage/DataAccess;)V

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Landmark preparation cannot be used with weightings returning turn costs, because this can lead to wrong results during the (node-based) landmark calculation, see #1960"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->lambda$createLandmarks$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/routing/lm/LandmarkStorage;Lb0/b3;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->lambda$createLandmarks$1(Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/lm/LandmarkStorage;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    return-wide v0
.end method

.method private createLandmarksForSubnetwork(I[BLcom/graphhopper/routing/util/EdgeFilter;)Z
    .locals 20

    move-object/from16 v2, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget v9, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    new-array v10, v9, [I

    div-int/lit8 v1, v9, 0x2

    const/4 v11, 0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v13, 0x0

    if-nez v1, :cond_4

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, v0}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v3

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v1, v0}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/graphhopper/routing/lm/LandmarkSuggestion;

    invoke-virtual {v14}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->getBox()Lcom/graphhopper/util/shapes/BBox;

    move-result-object v15

    invoke-virtual {v15, v3, v4, v5, v6}, Lcom/graphhopper/util/shapes/BBox;->contains(DD)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->getNodeIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v9, :cond_3

    move v0, v13

    :goto_1
    if-ge v0, v9, :cond_2

    invoke-virtual {v14}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->getNodeIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Picked "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " landmark suggestions, skip finding landmarks"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    move-object/from16 v5, p3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Lcom/graphhopper/routing/lm/LandmarkSuggestion;->getNodeIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    const-string v3, "landmark suggestions are too few "

    const-string v4, " for requested landmarks "

    invoke-static {v3, v1, v4, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v1, "create"

    move-object/from16 v5, p3

    invoke-direct {v2, v10, v0, v5, v1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->findLandmarks([IILcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;)Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getFromCount()I

    move-result v1

    iget v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v7, v13}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setSubnetworks([BI)Z

    return v13

    :cond_5
    iget-boolean v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished searching landmarks for subnetwork "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_6
    :goto_2
    move v15, v13

    :goto_3
    if-ge v15, v9, :cond_b

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_a

    aget v14, v10, v15

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-virtual {v0, v14}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setStartNode(I)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->runAlgo()V

    iget-wide v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    iget v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->FROM_OFFSET:I

    move/from16 v19, v1

    move-wide/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v0

    invoke-virtual/range {v14 .. v19}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->initLandmarkWeights(IIJI)V

    move/from16 v14, v16

    if-nez v15, :cond_7

    invoke-virtual {v0, v7, v8}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setSubnetworks([BI)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v6, 0x1

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-virtual {v0, v14}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setStartNode(I)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->runAlgo()V

    iget-wide v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    iget v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->TO_OFFSET:I

    move/from16 v19, v1

    move-wide/from16 v17, v3

    move/from16 v16, v14

    move-object v14, v0

    invoke-virtual/range {v14 .. v19}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->initLandmarkWeights(IIJI)V

    if-nez v15, :cond_8

    invoke-virtual {v0, v7, v8}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setSubnetworks([BI)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_4
    return v13

    :cond_8
    iget-boolean v0, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v0, :cond_9

    rem-int v0, v15, v12

    if-nez v0, :cond_9

    sget-object v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    int-to-double v5, v15

    mul-double/2addr v5, v3

    int-to-double v3, v9

    div-double/2addr v5, v3

    double-to-int v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Set landmarks weights ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]. Progress "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p3

    goto/16 :goto_3

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Thread was interrupted for landmark "

    invoke-static {v15, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v11
.end method

.method public static createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 3

    new-instance v0, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/graphhopper/util/shapes/GHPoint;-><init>(DD)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/routing/lm/LandmarkStorage;)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public static bridge synthetic e()Lnc/b;
    .locals 1

    sget-object v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    return-object v0
.end method

.method private estimateMaxWeight(Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;)D
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/carrotsearch/hppc/x;",
            ">;",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            ")D"
        }
    .end annotation

    move-object/from16 v2, p0

    new-instance v7, Ljava/util/Random;

    const-wide/16 v0, 0x0

    invoke-direct {v7, v0, v1}, Ljava/util/Random;-><init>(J)V

    const/4 v8, 0x3

    new-array v9, v8, [I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/carrotsearch/hppc/x;

    invoke-virtual {v4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    iget v6, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    const/16 v5, 0x64

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    invoke-virtual {v4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v15

    const-wide/16 v16, 0x0

    const-string v11, "estimate "

    invoke-static {v6, v11}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v11, p2

    invoke-direct {v2, v9, v15, v11, v6}, Lcom/graphhopper/routing/lm/LandmarkStorage;->findLandmarks([IILcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;)Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getFromCount()I

    move-result v12

    iget v13, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    if-ge v12, v13, :cond_1

    sget-object v12, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    iget-object v13, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v13, v15}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getFromCount()I

    move-result v6

    iget v8, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    move-wide/from16 v18, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "method findLandmarks for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") resulted in too few visited nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs expected minimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", see #2256"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Lnc/b;->e(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v0, v18

    const/4 v8, 0x3

    goto :goto_1

    :cond_1
    move-wide/from16 v18, v0

    move v15, v8

    move-wide/from16 v12, v18

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v15, :cond_2

    aget v0, v9, v8

    move v1, v0

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    move v3, v1

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    move v4, v3

    iget-object v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    move v5, v4

    iget-object v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v6, 0x0

    move-object/from16 v20, v11

    move v11, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-virtual {v0, v11}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setStartNode(I)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->runAlgo()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getLastEntry()Lcom/graphhopper/routing/SPTEntry;

    move-result-object v0

    iget-wide v0, v0, Lcom/graphhopper/routing/SPTEntry;->weight:D

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, p2

    goto :goto_2

    :cond_2
    move-wide v0, v12

    goto :goto_3

    :cond_3
    move-wide/from16 v18, v0

    move v15, v8

    const-wide/16 v16, 0x0

    :goto_3
    move v3, v14

    move v8, v15

    goto/16 :goto_0

    :cond_4
    move-wide/from16 v18, v0

    const-wide/16 v16, 0x0

    cmpg-double v0, v18, v16

    if-gtz v0, :cond_6

    if-gtz v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    const-string v4, " subnetworks were searched (total "

    const-string v5, "), minimumNodes:"

    const-string v6, "max weight wasn\'t set although "

    invoke-static {v6, v3, v4, v1, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    const-wide v0, 0x3ff020c49ba5e354L    # 1.008

    mul-double v0, v0, v18

    return-wide v0
.end method

.method private findLandmarks([IILcom/graphhopper/routing/util/EdgeFilter;Ljava/lang/String;)Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;
    .locals 17

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    array-length v0, v7

    div-int/lit8 v0, v0, 0x2

    const/4 v9, 0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v3, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmSelectionWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    invoke-virtual {v0, v8}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setStartNode(I)V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->runAlgo()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getFromCount()I

    move-result v1

    iget v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    if-lt v1, v4, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getLastEntry()Lcom/graphhopper/routing/SPTEntry;

    move-result-object v1

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    const/4 v11, 0x0

    aput v1, v7, v11

    move v12, v11

    :goto_0
    array-length v1, v7

    sub-int/2addr v1, v9

    if-ge v12, v1, :cond_2

    new-instance v0, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;

    iget-object v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v4, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const/4 v6, 0x0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/util/TraversalMode;Lcom/graphhopper/routing/util/EdgeFilter;Z)V

    move v1, v11

    :goto_1
    add-int/lit8 v4, v12, 0x1

    if-ge v1, v4, :cond_0

    aget v4, v7, v1

    invoke-virtual {v0, v4}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->setStartNode(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->runAlgo()V

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage$LandmarkExplorer;->getLastEntry()Lcom/graphhopper/routing/SPTEntry;

    move-result-object v1

    iget v1, v1, Lcom/graphhopper/routing/SPTEntry;->adjNode:I

    aput v1, v7, v4

    iget-boolean v1, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v1, :cond_1

    rem-int v1, v12, v10

    if-nez v1, :cond_1

    sget-object v1, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    iget-object v5, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/graphhopper/routing/AbstractBidirAlgo;->getVisitedNodes()I

    move-result v6

    iget-object v13, v2, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v13, v8}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    move/from16 v16, v10

    int-to-double v9, v12

    mul-double/2addr v9, v14

    array-length v12, v7

    int-to-double v14, v12

    div-double/2addr v9, v14

    double-to-int v9, v9

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Finding landmarks ["

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] in network ["

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] for "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Start node:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")Progress "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "%, "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lnc/b;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object/from16 v5, p4

    move/from16 v16, v10

    :goto_2
    move v12, v4

    move/from16 v10, v16

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_2
    return-object v0
.end method

.method private static synthetic lambda$createLandmarks$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/carrotsearch/hppc/c0;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-interface {p2, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/carrotsearch/hppc/c0;->contains(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createLandmarks$1(Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    invoke-interface {p1, p2}, Lcom/graphhopper/routing/util/EdgeFilter;->accept(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p2, v0}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public _getInternalDA()Lcom/graphhopper/storage/DataAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    return-object p0
.end method

.method public chooseActiveLandmarks(II[IZ)Z
    .locals 6

    if-ltz p1, :cond_9

    if-ltz p2, :cond_9

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {v0, p1}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->getSubnetwork(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {v1, p2}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->getSubnetwork(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_8

    if-gtz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_0
    iget v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFromWeight(II)I

    move-result v3

    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getFromWeight(II)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getToWeight(II)I

    move-result v4

    invoke-virtual {p0, v1, p2}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getToWeight(II)I

    move-result v5

    sub-int/2addr v4, v5

    new-instance v5, Lcom/graphhopper/coll/MapEntry;

    if-eqz p4, :cond_1

    neg-int v3, v3

    neg-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v3, v4}, Lcom/graphhopper/coll/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->SORT_BY_WEIGHT:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    aget p0, p3, v2

    if-ltz p0, :cond_5

    new-instance p0, Lcom/carrotsearch/hppc/c0;

    array-length p1, p3

    invoke-direct {p0, p1, v2}, Lcom/carrotsearch/hppc/c0;-><init>(II)V

    invoke-virtual {p0, p3}, Lcom/carrotsearch/hppc/c0;->addAll([I)I

    array-length p1, p3

    const/4 p2, 0x2

    sub-int/2addr p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    move p2, v2

    :goto_2
    array-length p4, p3

    if-ge v2, p4, :cond_6

    array-length p4, p3

    sub-int/2addr p4, p1

    add-int/2addr p4, p2

    if-lt v2, p4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aput p4, p3, v2

    invoke-virtual {p0, p4}, Lcom/carrotsearch/hppc/c0;->contains(I)Z

    move-result p4

    if-eqz p4, :cond_4

    add-int/lit8 p2, p2, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    array-length p0, p3

    if-ge v2, p0, :cond_6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aput p0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    const/4 p0, 0x1

    return p0

    :cond_7
    new-instance p0, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;

    const-string p1, "Connection between locations not found. Different subnetworks "

    const-string p2, " vs. "

    invoke-static {p1, v0, p2, v1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    throw p0

    :cond_8
    :goto_5
    return v2

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p3, " and to "

    const-string p4, " nodes have to be 0 or positive to init landmarks"

    const-string v0, "from "

    invoke-static {v0, p1, p3, p2, p4}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->close()V

    return-void
.end method

.method public createLandmarks()V
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    mul-long/2addr v1, v3

    iget-object v3, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v4, 0x7d0

    invoke-interface {v3, v4, v5}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object v3, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v3, v1, v2}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    const-wide/16 v3, 0x0

    :goto_0
    cmp-long v5, v3, v1

    const/4 v6, -0x1

    if-gez v5, :cond_0

    iget-object v5, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v5, v3, v4, v6}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    new-array v3, v3, [I

    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    iget-object v4, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v3}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v4, v6}, Ljava/util/Arrays;->fill([BB)V

    iget-object v5, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    invoke-virtual {v5}, Lcom/graphhopper/routing/lm/LMConfig;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->encodedValueLookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-interface {v7, v5}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->encodedValueLookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-interface {v7, v5}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v5

    iget-object v7, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    const-string v8, "s, "

    if-eqz v7, :cond_1

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v7

    iget-object v9, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    invoke-virtual {v0, v9}, Lcom/graphhopper/routing/lm/LandmarkStorage;->findBorderEdgeIds(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/carrotsearch/hppc/c0;

    move-result-object v9

    iget-boolean v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    invoke-virtual {v9}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v11

    invoke-virtual {v7}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v7

    invoke-virtual {v7}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v7

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Made "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " edges inaccessible. Calculated country cut in "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Lnc/b;->k(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v9}, Lcom/carrotsearch/hppc/c0;-><init>()V

    :cond_2
    :goto_1
    new-instance v7, Lb0/b3;

    const/4 v10, 0x3

    invoke-direct {v7, v10, v5, v9}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lb0/b3;

    const/4 v9, 0x4

    invoke-direct {v5, v9, v0, v7}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v9

    iget-object v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    const/4 v11, 0x1

    invoke-static {v10, v5, v11}, Lcom/graphhopper/routing/subnetwork/TarjanSCC;->findComponents(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/util/EdgeFilter;Z)Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;

    move-result-object v5

    iget-boolean v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->getComponents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v9}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v9

    invoke-virtual {v9}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v9

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Calculated "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " subnetworks via tarjan in "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_3
    iget-wide v8, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    const-wide/16 v12, 0x0

    cmpg-double v8, v8, v12

    const-string v9, ""

    if-gtz v8, :cond_4

    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->getComponents()Ljava/util/List;

    move-result-object v8

    invoke-direct {v0, v8, v7}, Lcom/graphhopper/routing/lm/LandmarkStorage;->estimateMaxWeight(Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;)D

    move-result-wide v14

    invoke-virtual {v0, v14, v15}, Lcom/graphhopper/routing/lm/LandmarkStorage;->setMaximumWeight(D)Lcom/graphhopper/routing/lm/LandmarkStorage;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, ", maxWeight:"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " from quick estimation"

    invoke-static {v8, v14, v15, v10}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v9

    :goto_2
    iget-boolean v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    iget v14, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    move-wide v15, v12

    iget-wide v12, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    move-wide/from16 v17, v15

    new-instance v15, Ljava/lang/StringBuilder;

    move/from16 v16, v11

    const-string v11, "init landmarks for subnetworks with node count greater than "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " with factor:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Lnc/b;->k(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move/from16 v16, v11

    move-wide/from16 v17, v12

    :goto_3
    invoke-virtual {v5}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->getComponents()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/carrotsearch/hppc/x;

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v13

    add-int/2addr v11, v13

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v13

    iget v14, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    if-ge v13, v14, :cond_6

    move-wide/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move/from16 v24, v11

    goto/16 :goto_9

    :cond_6
    iget-wide v13, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    cmpg-double v13, v13, v17

    if-lez v13, :cond_d

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    :goto_5
    const-string v14, ", "

    if-ltz v13, :cond_b

    invoke-virtual {v12, v13}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v15

    aget-byte v10, v4, v15

    if-ne v10, v6, :cond_9

    iget-boolean v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v10, v15}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v10

    sget-object v6, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    move-wide/from16 v19, v1

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    move-object/from16 v21, v5

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v8

    iget-object v8, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    if-nez v8, :cond_7

    move-object v8, v9

    move-object/from16 v25, v8

    move/from16 v24, v11

    move-object/from16 v23, v12

    goto :goto_6

    :cond_7
    move/from16 v24, v11

    move-object/from16 v23, v12

    iget-wide v11, v10, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    move-object/from16 v25, v9

    iget-wide v9, v10, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-virtual {v8, v11, v12, v9, v10}, Lcom/graphhopper/routing/util/AreaIndex;->query(DD)Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " area:"

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "start node: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") subnetwork "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subnetwork size: "

    invoke-static {v9, v13, v1, v2, v14}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lnc/b;->k(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    move-wide/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move/from16 v24, v11

    move-object/from16 v23, v12

    :goto_7
    invoke-direct {v0, v15, v4, v7}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createLandmarksForSubnetwork(I[BLcom/graphhopper/routing/util/EdgeFilter;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_9
    move-wide/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move/from16 v24, v11

    move-object/from16 v23, v12

    :cond_a
    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v1, v19

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v12, v23

    move/from16 v11, v24

    move-object/from16 v9, v25

    const/4 v6, -0x1

    goto/16 :goto_5

    :cond_b
    move-wide/from16 v19, v1

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    move-object/from16 v25, v9

    move/from16 v24, v11

    move-object/from16 v23, v12

    :goto_8
    if-gez v13, :cond_c

    sget-object v1, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    invoke-virtual/range {v23 .. v23}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    move-object/from16 v12, v23

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v6

    iget-object v8, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v12, v5}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/graphhopper/routing/lm/LandmarkStorage;->createPoint(Lcom/graphhopper/storage/Graph;I)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "next start node not found in big enough network of size "

    const-string v9, ", first element is "

    invoke-static {v8, v2, v9, v6, v14}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnc/b;->l(Ljava/lang/String;)V

    :cond_c
    :goto_9
    move-wide/from16 v1, v19

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move/from16 v11, v24

    move-object/from16 v9, v25

    const/4 v6, -0x1

    goto/16 :goto_4

    :cond_d
    move-object/from16 v21, v5

    new-instance v1, Ljava/lang/IllegalStateException;

    iget-wide v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    invoke-virtual/range {v21 .. v21}, Lcom/graphhopper/routing/subnetwork/TarjanSCC$ConnectedComponents;->getComponents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v0, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    invoke-virtual {v12}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "factor wasn\'t initialized "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", subnetworks:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minimumNodes:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current size:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-wide/from16 v19, v1

    iget-object v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    int-to-long v5, v1

    iget v7, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-long v5, v5, v19

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    invoke-interface {v2, v5, v6}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    array-length v6, v5

    move-wide/from16 v12, v19

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v6, :cond_f

    aget v10, v5, v9

    iget-object v14, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v14, v12, v13, v10}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    add-long/2addr v12, v7

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_f
    move-wide/from16 v19, v12

    goto :goto_a

    :cond_10
    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    iget-object v5, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v5}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/4 v5, 0x4

    iget v7, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    invoke-interface {v2, v5, v7}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0x8

    invoke-interface {v2, v5, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-wide v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    const-wide v7, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v7

    const-wide v9, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v5, v1, v9

    if-gtz v5, :cond_13

    iget-object v5, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xc

    invoke-interface {v5, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v2

    int-to-long v7, v2

    invoke-virtual {v1, v7, v8}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->create(J)Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    move v10, v6

    :goto_c
    if-ge v10, v3, :cond_11

    iget-object v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    aget-byte v2, v4, v10

    invoke-virtual {v1, v10, v2}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->setSubnetwork(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_11
    iget-boolean v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    if-eqz v1, :cond_12

    sget-object v1, Lcom/graphhopper/routing/lm/LandmarkStorage;->LOGGER:Lnc/b;

    iget-object v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished landmark creation. Subnetwork node count sum "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs. nodes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_12
    move/from16 v1, v16

    iput-boolean v1, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->initialized:Z

    return-void

    :cond_13
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    iget-wide v2, v0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    mul-double/2addr v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "landmark weight factor cannot be bigger than Integer.MAX_VALUE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EncodedValue \'"

    const-string v2, "\' does not exist. For Landmarks this is currently required (also used in PrepareRoutingSubnetworks). See #2256"

    invoke-static {v1, v5, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Initialize the landmark storage only once!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findBorderEdgeIds(Lcom/graphhopper/routing/util/AreaIndex;)Lcom/carrotsearch/hppc/c0;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/lm/SplitArea;",
            ">;)",
            "Lcom/carrotsearch/hppc/c0;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object v0

    new-instance v1, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v1}, Lcom/carrotsearch/hppc/c0;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    iget-object v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v3, v2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v3

    iget-object v5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v5, v2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/graphhopper/routing/util/AreaIndex;->query(DD)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move-object v2, v5

    goto :goto_1

    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/routing/lm/SplitArea;

    :goto_1
    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    iget-object v6, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v6, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v6

    iget-object v8, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v8, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v8

    invoke-virtual {p1, v6, v7, v8, v9}, Lcom/graphhopper/routing/util/AreaIndex;->query(DD)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/graphhopper/routing/lm/SplitArea;

    :goto_2
    if-eq v2, v5, :cond_0

    invoke-interface {v0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->flush()V

    return-void
.end method

.method public getBaseNodes()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p0

    return p0
.end method

.method public getCapacity()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {p0}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->getCapacity()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getFactor()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    return-wide v0
.end method

.method public getFromWeight(II)I
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    int-to-long v1, p2

    iget-wide v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    mul-long/2addr v1, v3

    int-to-long p1, p1

    const-wide/16 v3, 0x4

    mul-long/2addr p1, v3

    add-long/2addr p1, v1

    iget p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->FROM_OFFSET:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const p0, 0xfffe

    :cond_0
    return p0
.end method

.method public getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmConfig:Lcom/graphhopper/routing/lm/LMConfig;

    return-object p0
.end method

.method public getLandmarkCount()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    return p0
.end method

.method public getLandmarks(I)[I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getLandmarksAsGeoJSON()Ljava/lang/String;
    .locals 10

    const-string v0, ""

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget v4, v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v5, v4}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v5

    iget-object v7, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->na:Lcom/graphhopper/storage/NodeAccess;

    invoke-interface {v7, v4}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{ \"type\": \"Feature\", \"geometry\": {\"type\": \"Point\", \"coordinates\": ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]},"

    invoke-static {v9, v7, v8, v0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  \"properties\":{\"node_index\":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"subnetwork\":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\"lm_index\":"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "{ \"type\": \"FeatureCollection\", \"features\": ["

    const-string v1, "]}"

    invoke-static {p0, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLmSelectionWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmSelectionWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public getMinimumNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    return p0
.end method

.method public getSubnetworksWithLandmarks()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getToWeight(II)I
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    int-to-long v1, p2

    iget-wide v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    mul-long/2addr v1, v3

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    add-long/2addr v1, p1

    iget p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->TO_OFFSET:I

    int-to-long p0, p0

    add-long/2addr v1, p0

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const p0, 0xfffe

    :cond_0
    return p0
.end method

.method public getWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInfinity(J)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->initialized:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 10

    invoke-virtual {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->subnetworkStorage:Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;

    invoke-virtual {v0}, Lcom/graphhopper/routing/subnetwork/SubnetworkStorage;->loadExisting()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    iput v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    iget-object v2, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    iget-object v4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    iget v4, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    mul-int/2addr v4, v3

    int-to-long v3, v4

    iput-wide v3, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->LM_ROW_LENGTH:J

    int-to-long v5, v0

    mul-long/2addr v3, v5

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget v5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarks:I

    new-array v6, v5, [I

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_0

    iget-object v8, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v8, v3, v4}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v8

    aput v8, v6, v7

    const-wide/16 v8, 0x4

    add-long/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->initialized:Z

    return v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p0

    const-string v2, "Cannot load landmark data as written for different graph storage with "

    const-string v3, " nodes, not "

    invoke-static {v2, v0, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "landmark weights loaded but not the subnetworks!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v1

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call PrepareLandmarks.loadExisting if already initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAreaIndex(Lcom/graphhopper/routing/util/AreaIndex;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/util/AreaIndex<",
            "Lcom/graphhopper/routing/lm/SplitArea;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->areaIndex:Lcom/graphhopper/routing/util/AreaIndex;

    return-void
.end method

.method public setLMSelectionWeighting(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->lmSelectionWeighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method public setLandmarkSuggestions(Ljava/util/List;)Lcom/graphhopper/routing/lm/LandmarkStorage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/lm/LandmarkSuggestion;",
            ">;)",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkSuggestions:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "landmark suggestions cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLogDetails(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->logDetails:Z

    return-void
.end method

.method public setMaximumWeight(D)Lcom/graphhopper/routing/lm/LandmarkStorage;
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    const-wide/high16 v0, 0x40f0000000000000L    # 65536.0

    div-double v0, p1, v0

    iput-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-wide v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    const-string p0, "Illegal factor "

    const-string v3, " calculated from maximum weight "

    invoke-static {v1, v2, p0, v3}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setMinimumNodes(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->minimumNodes:I

    return-void
.end method

.method public final setWeight(JD)Z
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    div-double v0, p3, v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_1

    const-wide p3, 0x40efffc000000000L    # 65534.0

    cmpl-double p3, v0, p3

    if-ltz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    const/4 p3, -0x2

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkWeightDA:Lcom/graphhopper/storage/DataAccess;

    double-to-int p3, v0

    int-to-short p3, p3

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-wide v1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->factor:D

    const-string p0, "Cannot store infinity explicitly, pointer="

    const-string v3, ", value="

    invoke-static {p0, p1, p2, v3}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", factor="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage;->landmarkIDs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method
