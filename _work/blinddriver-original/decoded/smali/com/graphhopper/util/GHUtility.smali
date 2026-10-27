.class public Lcom/graphhopper/util/GHUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Lnc/b;

.field public static final OSM_WARNING_LOGGER:Lnc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.graphhopper.osm_warnings"

    invoke-static {v0}, Lnc/d;->c(Ljava/lang/String;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/GHUtility;->OSM_WARNING_LOGGER:Lnc/b;

    const-class v0, Lcom/graphhopper/util/GHUtility;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/util/GHUtility;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$readCountries$3(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;

    move-result-object p0

    return-object p0
.end method

.method public static addRandomTurnCosts(Lcom/graphhopper/storage/Graph;JLcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;ILcom/graphhopper/storage/TurnCostStorage;)V
    .locals 9

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p1, p2}, Ljava/util/Random;-><init>(J)V

    if-nez p3, :cond_0

    new-instance p1, Lc2/c0;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lc2/c0;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/graphhopper/routing/util/AccessFilter;->inEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;

    move-result-object p1

    :goto_0
    invoke-interface {p0, p1}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p1

    if-nez p3, :cond_1

    new-instance p2, Lc2/c0;

    const/4 p3, 0x5

    invoke-direct {p2, p3}, Lc2/c0;-><init>(I)V

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/graphhopper/routing/util/AccessFilter;->outEdges(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Lcom/graphhopper/routing/util/AccessFilter;

    move-result-object p2

    :goto_1
    invoke-interface {p0, p2}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer(Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p2

    const/4 p3, 0x0

    move v4, p3

    :goto_2
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result p3

    if-ge v4, p3, :cond_7

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide v5, 0x3fd3333333333333L    # 0.3

    cmpg-double p3, v1, v5

    if-gez p3, :cond_6

    invoke-interface {p1, v4}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2, v4}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v8

    :cond_3
    :goto_3
    invoke-interface {v8}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-interface {v8}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide v5, 0x3fe3333333333333L    # 0.6

    cmpg-double v1, v1, v5

    if-gez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_4
    move-wide v6, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v1

    int-to-double v5, p5

    mul-double/2addr v1, v5

    goto :goto_4

    :goto_5
    invoke-interface {p3}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v3

    invoke-interface {v8}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v5

    move-object v2, p4

    move-object v1, p6

    invoke-virtual/range {v1 .. v7}, Lcom/graphhopper/storage/TurnCostStorage;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;IIID)V

    goto :goto_3

    :cond_6
    move-object v2, p4

    move-object v1, p6

    add-int/lit8 v4, v4, 0x1

    move-object p6, v1

    move-object p4, v2

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static varargs asSet([I)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic b(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$addRandomTurnCosts$0(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public static buildRandomGraph(Lcom/graphhopper/storage/Graph;Ljava/util/Random;IDZLcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/lang/Double;DD)V
    .locals 21

    move/from16 v0, p2

    move-object/from16 v1, p6

    const/4 v2, 0x2

    if-lt v0, v2, :cond_9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_9

    const/4 v4, 0x0

    :goto_0
    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    if-ge v4, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    mul-double/2addr v7, v5

    const-wide v9, 0x4048b33333333333L    # 49.4

    add-double/2addr v7, v9

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    mul-double/2addr v9, v5

    const-wide v5, 0x4023666666666666L    # 9.7

    add-double/2addr v9, v5

    invoke-interface/range {p0 .. p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v3

    move-wide v5, v7

    move-wide v7, v9

    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/util/PointAccess;->setNode(IDD)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, p3

    int-to-double v7, v0

    mul-double/2addr v3, v7

    double-to-int v3, v3

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v9, 0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_8

    invoke-virtual/range {p1 .. p2}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    invoke-virtual/range {p1 .. p2}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    if-ne v11, v12, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/graphhopper/util/GHUtility;->getDistance(IILcom/graphhopper/storage/NodeAccess;)D

    move-result-wide v13

    move/from16 p3, v3

    if-nez p5, :cond_2

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    cmpg-double v2, v2, p10

    if-gez v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v13

    mul-double/2addr v2, v5

    add-double/2addr v13, v2

    :cond_3
    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    cmpg-double v2, v2, p8

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v3, p0

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    invoke-interface {v3, v11, v12}, Lcom/graphhopper/storage/Graph;->edge(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v11

    invoke-interface {v11, v13, v14}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide v15, 0x405b800000000000L    # 110.0

    mul-double/2addr v12, v15

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    add-double v12, v12, v17

    invoke-virtual/range {p1 .. p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v19

    mul-double v19, v19, v15

    add-double v19, v19, v17

    if-eqz p7, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    move-wide/from16 v19, v12

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {v11, v1, v12, v13}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v12

    if-eqz v12, :cond_7

    if-nez v2, :cond_6

    const-wide/16 v19, 0x0

    :cond_6
    move-wide/from16 v12, v19

    invoke-interface {v11, v1, v12, v13}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, p3

    goto/16 :goto_1

    :cond_8
    move-object/from16 v3, p0

    sget-object v0, Lcom/graphhopper/util/GHUtility;->LOGGER:Lnc/b;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-interface {v3}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3}, Lcom/graphhopper/storage/Graph;->getEdges()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Finished building random graph, nodes: %d, edges: %d , min distance: %.2f, max distance: %.2f\n"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->i(Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numNodes must be >= 2, meanDegree >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic c(I)[Lpb/a;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$createCircle$7(I)[Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public static calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J
    .locals 5

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeMillis(Lcom/graphhopper/util/EdgeIteratorState;Z)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v4

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-interface {p0, v4, p1, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-interface {p0, p3, p1, v4}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnMillis(III)J

    move-result-wide p0

    :goto_1
    cmp-long p2, p0, v2

    if-nez p2, :cond_3

    return-wide p0

    :cond_3
    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static calcWeightWithTurnWeight(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)D
    .locals 3

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v0

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p1

    invoke-interface {p0, p2, p1, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    invoke-interface {p0, p3, p2, p1}, Lcom/graphhopper/routing/weighting/Weighting;->calcTurnWeight(III)D

    move-result-wide p0

    :goto_0
    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static checkDAVersion(Ljava/lang/String;II)V
    .locals 3

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected version for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'. Got: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Make sure you are using the same GraphHopper version for reading the files that was used for creating them. See https://discuss.graphhopper.com/t/722"

    invoke-static {p1, p0, v1}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static comparePaths(Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/Path;IIJ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/Path;",
            "Lcom/graphhopper/routing/Path;",
            "IIJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    move-wide/from16 v2, p4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v7

    sub-double v9, v5, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v9, v9, v11

    const-string v10, "\ngiven:    "

    const-string v11, "\nexpected: "

    const-string v12, "->"

    if-lez v9, :cond_0

    sget-object v9, Lcom/graphhopper/util/GHUtility;->LOGGER:Lnc/b;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "expected: "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lnc/b;->l(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "given:    "

    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lnc/b;->l(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "seed: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Lnc/b;->l(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "wrong weight: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, v12, v1, v11}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "\nseed: "

    invoke-static {v9, v10, v7, v8, v5}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/util/GHUtility;->fail(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v5

    sub-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v5

    const-string v3, ", given: "

    const-string v5, ", expected: "

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v8

    const-string v2, "wrong distance "

    invoke-static {v2, v0, v12, v1, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x32

    cmp-long v2, v6, v8

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v8

    const-string v2, "wrong time "

    invoke-static {v2, v0, v12, v1, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->calcNodes()Lcom/carrotsearch/hppc/d0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getGraph()Lcom/graphhopper/storage/Graph;

    move-result-object v5

    invoke-virtual {p0}, Lcom/graphhopper/routing/Path;->getGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    if-eq v5, p0, :cond_3

    const-string p0, "path and refPath graphs are different"

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->fail(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/routing/Path;->getGraph()Lcom/graphhopper/storage/Graph;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/graphhopper/util/GHUtility;->pathsEqualExceptOneEdge(Lcom/graphhopper/storage/Graph;Lcom/carrotsearch/hppc/d0;Lcom/carrotsearch/hppc/d0;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wrong nodes "

    invoke-static {v3, v0, v12, v1, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v4
.end method

.method public static count(Lcom/graphhopper/storage/RoutingCHEdgeIterator;)I
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static count(Lcom/graphhopper/util/EdgeIterator;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static count(Lcom/graphhopper/util/EdgeIterator;I)I
    .locals 2

    const/4 v0, 0x0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createBBox(Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/shapes/BBox;
    .locals 11

    sget-object v0, Lcom/graphhopper/util/FetchMode;->TOWER_ONLY:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, v0}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v3

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v5

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v7

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v9

    invoke-static/range {v3 .. v10}, Lcom/graphhopper/util/shapes/BBox;->fromPoints(DDDD)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    return-object p0
.end method

.method public static createCircle(Ljava/lang/String;DDD)Lcom/graphhopper/util/JsonFeature;
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x25

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/util/d;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/graphhopper/util/d;-><init>(DDD)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/routing/ev/f;

    const/16 p3, 0x11

    invoke-direct {p2, p3}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/util/e;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lpb/a;

    new-instance p2, Lpb/m;

    invoke-direct {p2}, Lpb/m;-><init>()V

    invoke-virtual {p2, p1}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object p1

    new-instance p3, Lpb/x;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    new-instance p1, Lcom/graphhopper/util/JsonFeature;

    invoke-direct {p1}, Lcom/graphhopper/util/JsonFeature;-><init>()V

    invoke-virtual {p1, p0}, Lcom/graphhopper/util/JsonFeature;->setId(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/graphhopper/util/JsonFeature;->setGeometry(Lpb/i;)V

    return-object p1
.end method

.method public static createEdgeKey(IZ)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p1

    return p0
.end method

.method public static createRandomSnaps(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Random;IZLcom/graphhopper/routing/util/EdgeFilter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/shapes/BBox;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/Random;",
            "IZ",
            "Lcom/graphhopper/routing/util/EdgeFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;"
        }
    .end annotation

    mul-int/lit8 v0, p3, 0x64

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, p3, :cond_4

    if-gt v3, v0, :cond_3

    invoke-static {p1, p2, p0, p5}, Lcom/graphhopper/util/GHUtility;->getRandomSnap(Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Random;Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/graphhopper/storage/index/Snap;->isValid()Z

    move-result v5

    if-nez p4, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/graphhopper/storage/index/Snap;->getSnappedPosition()Lcom/graphhopper/storage/index/Snap$Position;

    move-result-object v5

    sget-object v6, Lcom/graphhopper/storage/index/Snap$Position;->TOWER:Lcom/graphhopper/storage/index/Snap$Position;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " random points. tries: "

    const-string p2, ", maxTries: "

    const-string p4, "Could not create "

    invoke-static {p4, p3, p1, v3, p2}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v1
.end method

.method public static createRectangle(Ljava/lang/String;DDDD)Lcom/graphhopper/util/JsonFeature;
    .locals 3

    new-instance v0, Lpb/a;

    invoke-direct {v0, p3, p4, p1, p2}, Lpb/a;-><init>(DD)V

    new-instance v1, Lpb/a;

    invoke-direct {v1, p3, p4, p5, p6}, Lpb/a;-><init>(DD)V

    new-instance v2, Lpb/a;

    invoke-direct {v2, p7, p8, p5, p6}, Lpb/a;-><init>(DD)V

    new-instance p5, Lpb/a;

    invoke-direct {p5, p7, p8, p1, p2}, Lpb/a;-><init>(DD)V

    new-instance p6, Lpb/a;

    invoke-direct {p6, p3, p4, p1, p2}, Lpb/a;-><init>(DD)V

    filled-new-array {v0, v1, v2, p5, p6}, [Lpb/a;

    move-result-object p1

    new-instance p2, Lpb/m;

    invoke-direct {p2}, Lpb/m;-><init>()V

    invoke-virtual {p2, p1}, Lpb/m;->b([Lpb/a;)Lpb/s;

    move-result-object p1

    new-instance p3, Lpb/x;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4, p2}, Lpb/x;-><init>(Lpb/s;[Lpb/s;Lpb/m;)V

    new-instance p1, Lcom/graphhopper/util/JsonFeature;

    invoke-direct {p1}, Lcom/graphhopper/util/JsonFeature;-><init>()V

    invoke-virtual {p1, p0}, Lcom/graphhopper/util/JsonFeature;->setId(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/graphhopper/util/JsonFeature;->setGeometry(Lpb/i;)V

    return-object p1
.end method

.method public static synthetic d(Lcom/graphhopper/util/shapes/GHPoint;)Lpb/a;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$createCircle$6(Lcom/graphhopper/util/shapes/GHPoint;)Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/HashSet;Lcom/graphhopper/util/JsonFeature;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/util/GHUtility;->lambda$readCountries$2(Ljava/util/Set;Lcom/graphhopper/util/JsonFeature;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$addRandomTurnCosts$1(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private static fail(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic g(Ljava/util/stream/Stream;)V
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->lambda$runConcurrently$4(Ljava/util/stream/Stream;)V

    return-void
.end method

.method public static getAdjNode(Lcom/graphhopper/storage/Graph;II)I
    .locals 1

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/Graph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getCommonNode(Lcom/graphhopper/storage/BaseGraph;II)I
    .locals 5

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v1

    invoke-virtual {p0, p2, v0}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object p0

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    const-string v3, " is a loop at node "

    const-string v4, "edge1: "

    if-eq v0, v2, :cond_8

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-eq v0, v2, :cond_7

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    const-string v3, " and edge2: "

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " form a circle"

    invoke-static {v4, p1, v3, p2, v0}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v2

    if-eq v0, v2, :cond_6

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    if-eq v0, v2, :cond_5

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " aren\'t connected"

    invoke-static {v4, p1, v3, p2, v0}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p0

    return p0

    :cond_6
    :goto_2
    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    return p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p0

    const-string v0, "edge2: "

    invoke-static {v0, p2, v3, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {v1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result p2

    invoke-static {v4, p1, v3, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDistance(IILcom/graphhopper/storage/NodeAccess;)D
    .locals 9

    invoke-interface {p2, p0}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    invoke-interface {p2, p0}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    invoke-interface {p2, p1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v5

    invoke-interface {p2, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v7

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistancePlaneProjection;->calcDist(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getEdge(Lcom/graphhopper/storage/Graph;II)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 2

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/graphhopper/util/GHUtility;->count(Lcom/graphhopper/util/EdgeIterator;I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p1

    if-ne p1, p2, :cond_1

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There should be an edge"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There are multiple edges between nodes "

    const-string v1, " and "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEdgeFromEdgeKey(I)I
    .locals 0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static getEdgeIds(Lcom/graphhopper/util/EdgeIterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeIterator;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getIdOrPropertiesId(Lcom/graphhopper/util/JsonFeature;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getProperties()Ljava/util/Map;

    move-result-object p0

    const-string v0, "id"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMinDist(Lcom/graphhopper/storage/Graph;II)D
    .locals 4

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getNeighbors(Lcom/graphhopper/storage/RoutingCHEdgeIterator;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/RoutingCHEdgeIterator;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getNeighbors(Lcom/graphhopper/util/EdgeIterator;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeIterator;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getProblems(Lcom/graphhopper/storage/Graph;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/Graph;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v1

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    :goto_0
    if-ge v3, v1, :cond_7

    invoke-interface {v2, v3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v4

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_0

    const-wide v6, -0x3fa9800000000000L    # -90.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "latitude is not within its bounds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v2, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_2

    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "longitude is not within its bounds "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p0, v3}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "edge of "

    if-lt v5, v1, :cond_5

    :try_start_1
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " has a node "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " greater or equal to getNodes"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v5

    if-gez v5, :cond_4

    invoke-interface {v4}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has a negative node "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "problem with node "

    invoke-static {v3, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getRandomSnap(Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Random;Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;
    .locals 10

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-wide v2, p2, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/graphhopper/util/GHUtility;->randomDoubleInRange(Ljava/util/Random;DD)D

    move-result-wide v5

    iget-wide v0, p2, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-wide v2, p2, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {p1, v0, v1, v2, v3}, Lcom/graphhopper/util/GHUtility;->randomDoubleInRange(Ljava/util/Random;DD)D

    move-result-wide v7

    move-object v4, p0

    move-object v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/graphhopper/storage/index/LocationIndex;->findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(DDDI)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/graphhopper/util/GHUtility;->lambda$createCircle$5(DDDI)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$addRandomTurnCosts$0(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$addRandomTurnCosts$1(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$createCircle$5(DDDI)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 9

    sget-object v0, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    int-to-double v1, p6

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v3

    const-wide v3, 0x4076800000000000L    # 360.0

    rem-double v7, v1, v3

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/util/DistanceCalcEarth;->projectCoordinate(DDDD)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createCircle$6(Lcom/graphhopper/util/shapes/GHPoint;)Lpb/a;
    .locals 5

    new-instance v0, Lpb/a;

    iget-wide v1, p0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    iget-wide v3, p0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    invoke-direct {v0, v1, v2, v3, v4}, Lpb/a;-><init>(DD)V

    return-object v0
.end method

.method private static synthetic lambda$createCircle$7(I)[Lpb/a;
    .locals 0

    new-array p0, p0, [Lpb/a;

    return-object p0
.end method

.method private static synthetic lambda$readCountries$2(Ljava/util/Set;Lcom/graphhopper/util/JsonFeature;)Z
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->getIdOrPropertiesId(Lcom/graphhopper/util/JsonFeature;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$readCountries$3(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;
    .locals 3

    invoke-static {p0}, Lcom/graphhopper/routing/util/CustomArea;->fromJsonFeature(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/graphhopper/util/GHUtility;->getIdOrPropertiesId(Lcom/graphhopper/util/JsonFeature;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/util/JsonFeature;->setId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/routing/util/CustomArea;->getProperties()Ljava/util/Map;

    move-result-object v1

    const-string v2, "ISO3166-2"

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic lambda$runConcurrently$4(Ljava/util/stream/Stream;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava/util/stream/Stream;

    new-instance v0, Lcom/graphhopper/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/graphhopper/f;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static loadCustomModelFromJar(Ljava/lang/String;)Lcom/graphhopper/util/CustomModel;
    .locals 5

    const-string v0, "\'"

    const-string v1, "There is no built-in custom model \'"

    const-string v2, "/com/graphhopper/custom_models/"

    :try_start_0
    const-class v3, Lcom/graphhopper/util/GHUtility;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->readJSONFileWithoutComments(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/jackson/Jackson;->newObjectMapper()Lb6/c0;

    move-result-object v2

    const-class v3, Lcom/graphhopper/util/CustomModel;

    invoke-virtual {v2, v3, v1}, Lb6/c0;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/CustomModel;

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Could not load built-in custom model \'"

    invoke-static {v3, p0, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static pathsEqualExceptOneEdge(Lcom/graphhopper/storage/Graph;Lcom/carrotsearch/hppc/d0;Lcom/carrotsearch/hppc/d0;)Z
    .locals 9

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-interface {p2}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v3

    invoke-interface {p2}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    move-object p1, p2

    :cond_2
    invoke-interface {v0}, Lcom/carrotsearch/hppc/z;->size()I

    move-result p2

    const/4 v3, 0x2

    if-ge p2, v3, :cond_3

    goto/16 :goto_2

    :cond_3
    new-instance p2, Lcom/carrotsearch/hppc/x;

    const/4 v3, 0x4

    invoke-direct {p2, v3}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    move v3, v2

    :goto_1
    invoke-interface {v0}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    sub-int v4, v3, v4

    invoke-interface {v0, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v4

    invoke-interface {p1, v3}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_4

    invoke-virtual {p2, v3}, Lcom/carrotsearch/hppc/x;->add(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v3

    if-eq v3, v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p2

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v4, p2, 0x1

    invoke-interface {v0, p2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v5

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v6

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p1, v3}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v5

    invoke-interface {p1, p2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v6

    invoke-static {p0, v5, v6}, Lcom/graphhopper/util/GHUtility;->getMinDist(Lcom/graphhopper/storage/Graph;II)D

    move-result-wide v5

    invoke-interface {p1, p2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v7

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v8

    invoke-static {p0, v7, v8}, Lcom/graphhopper/util/GHUtility;->getMinDist(Lcom/graphhopper/storage/Graph;II)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-interface {v0, v3}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v7

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v8

    invoke-static {p0, v7, v8}, Lcom/graphhopper/util/GHUtility;->getMinDist(Lcom/graphhopper/storage/Graph;II)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fb999999999999aL    # 0.1

    cmpl-double p0, v5, v7

    if-lez p0, :cond_8

    :goto_2
    return v1

    :cond_8
    sget-object p0, Lcom/graphhopper/util/GHUtility;->LOGGER:Lnc/b;

    invoke-interface {v0, v3}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v0

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v1

    invoke-interface {p1, v3}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result v3

    invoke-interface {p1, p2}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result p2

    invoke-interface {p1, v4}, Lcom/carrotsearch/hppc/d0;->get(I)I

    move-result p1

    const-string v4, "Distance "

    const-string v5, " is the same as distance "

    const-string v6, "-"

    invoke-static {v4, v0, v6, v1, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v3, v6, p2, v6}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> there are multiple possibilities for shortest paths"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->k(Ljava/lang/String;)V

    return v2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "paths are equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static printGraphForUnitTest(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/graphhopper/util/shapes/BBox;

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v7, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/util/shapes/BBox;-><init>(DDDD)V

    invoke-static {p0, p1, v0}, Lcom/graphhopper/util/GHUtility;->printGraphForUnitTest(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/shapes/BBox;)V

    return-void
.end method

.method public static printGraphForUnitTest(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/shapes/BBox;)V
    .locals 8

    .line 2
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodes()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    invoke-virtual {p2, v2, v3, v4, v5}, Lcom/graphhopper/util/shapes/BBox;->contains(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "na.setNode(%d, %f, %f);\n"

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getAllEdges()Lcom/graphhopper/routing/util/AllEdgesIterator;

    move-result-object p0

    .line 7
    :cond_2
    :goto_1
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/graphhopper/util/shapes/BBox;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/graphhopper/util/shapes/BBox;->contains(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-static {p1, p0}, Lcom/graphhopper/util/GHUtility;->printUnitTestEdge(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static printUnitTestEdge(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 10

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getBaseNode()I

    move-result v0

    :goto_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {p1, p0}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "graph.edge(%d, %d).setDistance(%f).set(speedEnc, %f, %f); // edgeId=%s\n"

    invoke-virtual {v2, v3, p1, p0}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    return-void
.end method

.method public static randomDoubleInRange(Ljava/util/Random;DD)D
    .locals 8

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    move-wide v6, p1

    move-wide v2, p1

    move-wide v0, p3

    invoke-static/range {v0 .. v7}, Lm/a;->b(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static readCountries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/CustomArea;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb6/c0;

    invoke-direct {v0}, Lb6/c0;-><init>()V

    new-instance v1, Lk5/a;

    invoke-direct {v1}, Lk5/a;-><init>()V

    invoke-virtual {v0, v1}, Lb6/c0;->s(Lb6/a0;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/graphhopper/routing/ev/Country;->values()[Lcom/graphhopper/routing/ev/Country;

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {}, Lcom/graphhopper/routing/ev/Country;->values()[Lcom/graphhopper/routing/ev/Country;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    sget-object v6, Lcom/graphhopper/routing/ev/Country;->MISSING:Lcom/graphhopper/routing/ev/Country;

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v5}, Lcom/graphhopper/routing/ev/Country;->getStates()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/graphhopper/routing/ev/Country;->getAlpha2()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/graphhopper/routing/ev/Country;->getStates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/routing/ev/State;

    invoke-virtual {v6}, Lcom/graphhopper/routing/ev/State;->getStateCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    const-class v3, Lcom/graphhopper/util/GHUtility;

    const-string v4, "/com/graphhopper/countries/countries.geojson"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v2}, Lb6/c0;->p(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {v0}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/graphhopper/util/f;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/graphhopper/util/f;-><init>(Ljava/util/HashSet;I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ev/f;

    const/16 v3, 0x12

    invoke-direct {v1, v3}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public static reverseEdgeKey(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static runConcurrently(Ljava/util/stream/Stream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/Runnable;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ForkJoinPool;-><init>(I)V

    :try_start_0
    new-instance p1, Landroidx/lifecycle/f0;

    const/4 v1, 0x3

    invoke-direct {p1, v1, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/ForkJoinTask;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ForkJoinPool;->shutdown()V

    throw p0
.end method

.method public static setSpeed(DZZLcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;)Lcom/graphhopper/util/EdgeIteratorState;
    .locals 2

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Zero speed is only allowed if edge will get inaccessible. Otherwise Weighting can produce inconsistent results"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p6, p4, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZZ)Lcom/graphhopper/util/EdgeIteratorState;

    if-eqz p2, :cond_2

    .line 19
    invoke-interface {p6, p5, p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_2
    if-eqz p3, :cond_3

    .line 20
    invoke-interface {p5}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 21
    invoke-interface {p6, p5, p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_3
    return-object p6
.end method

.method public static setSpeed(DDLcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Ljava/util/Collection<",
            "Lcom/graphhopper/util/EdgeIteratorState;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_6

    cmpg-double v2, p2, v0

    if-ltz v2, :cond_6

    .line 2
    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :cond_0
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/EdgeIteratorState;

    .line 3
    invoke-interface {v2, p5, p0, p1}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    cmpl-double v3, p0, v0

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 4
    invoke-interface {v2, p4, v4}, Lcom/graphhopper/util/EdgeIteratorState;->set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    :cond_1
    cmpl-double v3, p2, v0

    if-lez v3, :cond_4

    cmpl-double v5, p0, p2

    if-nez v5, :cond_2

    .line 5
    invoke-interface {p5}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6
    :cond_2
    invoke-interface {p5}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    invoke-interface {v2, p5, p2, p3}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/DecimalEncodedValue;D)Lcom/graphhopper/util/EdgeIteratorState;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p4, Ljava/lang/IllegalArgumentException;

    invoke-interface {p5}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "EncodedValue "

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " supports only one direction but two different speeds were specified "

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    :cond_4
    :goto_1
    if-lez v3, :cond_0

    .line 9
    invoke-interface {v2, p4, v4}, Lcom/graphhopper/util/EdgeIteratorState;->setReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Z)Lcom/graphhopper/util/EdgeIteratorState;

    goto :goto_0

    :cond_5
    return-void

    .line 10
    :cond_6
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string p5, "Speed must be positive but wasn\'t! fwdSpeed:"

    const-string p6, ", bwdSpeed:"

    .line 11
    invoke-static {p0, p1, p5, p6}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public static varargs setSpeed(DDLcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;[Lcom/graphhopper/util/EdgeIteratorState;)V
    .locals 0

    .line 1
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    invoke-static/range {p0 .. p6}, Lcom/graphhopper/util/GHUtility;->setSpeed(DDLcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/Collection;)V

    return-void
.end method

.method public static varargs updateDistancesFor(Lcom/graphhopper/storage/Graph;I[D)V
    .locals 8

    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    aget-wide v2, p2, v5

    aget-wide v4, p2, v4

    aget-wide v6, p2, v1

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/graphhopper/util/PointAccess;->setNode(IDDD)V

    goto :goto_0

    :cond_0
    move v1, v3

    array-length v2, p2

    if-ne v2, v1, :cond_3

    invoke-interface {v0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v1

    if-nez v1, :cond_2

    aget-wide v2, p2, v5

    aget-wide v4, p2, v4

    move v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/graphhopper/util/PointAccess;->setNode(IDD)V

    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/storage/Graph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/graphhopper/util/DistanceCalcEarth;->DIST_EARTH:Lcom/graphhopper/util/DistanceCalcEarth;

    sget-object p2, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {p0, p2}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/graphhopper/util/DistanceCalcEarth;->calcDistance(Lcom/graphhopper/util/PointList;)D

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/util/EdgeIteratorState;->setDistance(D)Lcom/graphhopper/util/EdgeIteratorState;

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "graph requires elevation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, p2

    const-string p2, "illegal number of arguments "

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
