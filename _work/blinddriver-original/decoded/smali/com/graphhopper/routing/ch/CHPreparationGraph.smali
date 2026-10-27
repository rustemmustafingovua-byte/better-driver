.class public Lcom/graphhopper/routing/ch/CHPreparationGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;,
        Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigEdgeIteratorImpl;
    }
.end annotation


# instance fields
.field private degrees:[I

.field private final edgeBased:Z

.field private final edges:I

.field private neighborSet:Lcom/carrotsearch/hppc/r0;

.field private nextShortcutId:I

.field private final nodes:I

.field private origGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

.field private origGraphBuilder:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

.field private prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

.field private ready:Z

.field private shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

.field private final turnCostFunction:Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;


# direct methods
.method private constructor <init>(IIZLcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->turnCostFunction:Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;

    iput p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nodes:I

    iput p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edges:I

    iput-boolean p3, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    new-array p4, p1, [Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-object p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    new-array p4, p1, [Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-object p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    new-instance p4, Lcom/carrotsearch/hppc/x;

    const/4 v0, 0x4

    invoke-direct {p4, v0}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iput-object p4, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    if-eqz p3, :cond_0

    new-instance p1, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

    invoke-direct {p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraphBuilder:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

    new-instance p1, Lcom/carrotsearch/hppc/q0;

    invoke-direct {p1, v0}, Lcom/carrotsearch/hppc/q0;-><init>(I)V

    iput-object p1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    iput p2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nextShortcutId:I

    return-void
.end method

.method public static synthetic a(III)D
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->lambda$nodeBased$0(III)D

    move-result-wide p0

    return-wide p0
.end method

.method private addInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    invoke-interface {p2, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setNextIn(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aput-object p2, v0, p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    aget p2, p0, p1

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    return-void
.end method

.method private addOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    invoke-interface {p2, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setNextOut(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aput-object p2, v0, p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    aget p2, p0, p1

    add-int/lit8 p2, p2, 0x1

    aput p2, p0, p1

    return-void
.end method

.method private static applySortOrder([I[I)[I
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-gt v0, v1, :cond_1

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    aget v3, p1, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sort order must not be shorter than array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic b(Lcom/carrotsearch/hppc/x;[I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->sortAndTrim(Lcom/carrotsearch/hppc/x;[I)V

    return-void
.end method

.method public static buildFromGraph(Lcom/graphhopper/routing/ch/CHPreparationGraph;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 9

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result v1

    const-string v2, " vs. "

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v5

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v7

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addEdge(IIIDD)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareForContraction()V

    return-void

    :cond_1
    move-object v1, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result p1

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getOriginalEdges()I

    move-result p2

    const-string v0, "Cannot initialize from given graph. The number of edges does not match: "

    invoke-static {v0, p1, v2, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-object v1, p0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p1

    invoke-virtual {v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->getNodes()I

    move-result p2

    const-string v0, "Cannot initialize from given graph. The number of nodes does not match: "

    invoke-static {v0, p1, v2, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildTurnCostFunctionFromTurnCostStorage(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/graphhopper/routing/ch/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/ch/a;-><init>(ILjava/lang/Object;)V

    return-object p0
.end method

.method private checkNotReady()V
    .locals 1

    iget-boolean p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->ready:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot call this method after calling prepareForContraction()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkReady()V
    .locals 1

    iget-boolean p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->ready:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You need to call prepareForContraction() before calling this method"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static edgeBased(IILcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;)Lcom/graphhopper/routing/ch/CHPreparationGraph;
    .locals 2

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/graphhopper/routing/ch/CHPreparationGraph;-><init>(IIZLcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;)V

    return-object v0
.end method

.method private static synthetic lambda$nodeBased$0(III)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static nodeBased(II)Lcom/graphhopper/routing/ch/CHPreparationGraph;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph;

    new-instance v1, Lc2/c0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lc2/c0;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph;-><init>(IIZLcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;)V

    return-object v0
.end method

.method private removeInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v3

    aput-object v3, v2, p1

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setNextIn(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    :goto_1
    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    aget v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p1

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-ne v0, p2, :cond_1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v3

    aput-object v3, v2, p1

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->setNextOut(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    :goto_1
    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    aget v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, p1

    goto :goto_2

    :cond_1
    move-object v1, v0

    :goto_2
    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static sortAndTrim(Lcom/carrotsearch/hppc/x;[I)V
    .locals 1

    iget-object v0, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    invoke-static {p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->applySortOrder([I[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/carrotsearch/hppc/x;->buffer:[I

    array-length p1, p1

    iput p1, p0, Lcom/carrotsearch/hppc/x;->elementsCount:I

    return-void
.end method


# virtual methods
.method public addEdge(IIIDD)V
    .locals 6

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkNotReady()V

    if-eq p1, p2, :cond_4

    move-wide v0, p4

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p4

    invoke-static {p6, p7}, Ljava/lang/Double;->isFinite(D)Z

    move-result p5

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v0

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;

    double-to-float v4, v1

    double-to-float v5, p6

    move v2, p1

    move v3, p2

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareBaseEdge;-><init>(IIIFF)V

    if-eqz p4, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    invoke-direct {p0, p2, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    :cond_1
    if-eqz p5, :cond_2

    if-eq p1, p2, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    :cond_2
    iget-boolean p6, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    if-eqz p6, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraphBuilder:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

    invoke-virtual/range {p0 .. p5}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->addEdge(IIIZZ)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Loop edges are no longer supported since #2862"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addShortcut(IIIIIIDI)I
    .locals 11

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;

    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nextShortcutId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v6, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/graphhopper/routing/ch/CHPreparationGraph$EdgeBasedPrepareShortcut;-><init>(IIIIIDIII)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;

    iget v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nextShortcutId:I

    const/4 v9, 0x0

    move v2, p1

    move v3, p2

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v4, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareShortcut;-><init>(IIIDIIII)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    if-eq p1, p2, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->addInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    :cond_1
    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nextShortcutId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nextShortcutId:I

    return v0
.end method

.method public close()V
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    iget-boolean v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    :cond_0
    return-void
.end method

.method public createInEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;-><init>([Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;Z)V

    return-object v0
.end method

.method public createInOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->createInOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "orig in explorer is not available for node-based graph"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createOutEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphEdgeExplorer;
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    new-instance v0, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareGraphEdgeExplorerImpl;-><init>([Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;Z)V

    return-object v0
.end method

.method public createOutOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;
    .locals 1

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    invoke-virtual {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;->createOutOrigEdgeExplorer()Lcom/graphhopper/routing/ch/PrepareGraphOrigEdgeExplorer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "orig out explorer is not available for node-based graph"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnect(I)Lcom/carrotsearch/hppc/z;
    .locals 3

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkReady()V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v0}, Lcom/carrotsearch/hppc/y;->clear()V

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeB()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeA()I

    move-result v1

    :cond_0
    if-ne v1, p1, :cond_1

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->removeInEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v2, v1}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextOut(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aget-object v0, v0, p1

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeB()I

    move-result v1

    if-ne v1, p1, :cond_3

    invoke-interface {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNodeA()I

    move-result v1

    :cond_3
    if-ne v1, p1, :cond_4

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->removeOutEdge(ILcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;)V

    iget-object v2, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    invoke-interface {v2, v1}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    invoke-interface {v0, p1}, Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;->getNextIn(I)Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesOut:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->prepareEdgesIn:[Lcom/graphhopper/routing/ch/CHPreparationGraph$PrepareEdge;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->neighborSet:Lcom/carrotsearch/hppc/r0;

    return-object p0
.end method

.method public getDegree(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->degrees:[I

    aget p0, p0, p1

    return p0
.end method

.method public getNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->nodes:I

    return p0
.end method

.method public getOriginalEdges()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edges:I

    return p0
.end method

.method public getShortcutForPrepareEdge(I)I
    .locals 1

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edges:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    return p0
.end method

.method public getTurnWeight(III)D
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->turnCostFunction:Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p1

    invoke-static {p3}, Lcom/graphhopper/util/GHUtility;->getEdgeFromEdgeKey(I)I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;->getTurnWeight(III)D

    move-result-wide p0

    return-wide p0
.end method

.method public prepareForContraction()V
    .locals 2

    invoke-direct {p0}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->checkNotReady()V

    iget-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edgeBased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraphBuilder:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;->build()Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraph:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph;

    iput-object v1, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->origGraphBuilder:Lcom/graphhopper/routing/ch/CHPreparationGraph$OrigGraph$Builder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->ready:Z

    return-void
.end method

.method public setShortcutForPrepareEdge(II)V
    .locals 2

    iget v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->edges:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->resize(I)V

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/ch/CHPreparationGraph;->shortcutsByPrepareEdges:Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0, p1, p2}, Lcom/carrotsearch/hppc/x;->set(II)I

    return-void
.end method
