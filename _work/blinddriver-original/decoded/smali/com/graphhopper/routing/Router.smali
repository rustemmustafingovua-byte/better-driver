.class public Lcom/graphhopper/routing/Router;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/Router$Solver;,
        Lcom/graphhopper/routing/Router$FlexSolver;,
        Lcom/graphhopper/routing/Router$CHSolver;,
        Lcom/graphhopper/routing/Router$LMSolver;
    }
.end annotation


# instance fields
.field protected final chEnabled:Z

.field protected final chGraphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;"
        }
    .end annotation
.end field

.field protected final encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

.field protected final graph:Lcom/graphhopper/storage/BaseGraph;

.field protected final landmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;"
        }
    .end annotation
.end field

.field protected final lmEnabled:Z

.field protected final locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

.field protected final pathDetailsBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

.field protected final profilesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation
.end field

.field protected final routerConfig:Lcom/graphhopper/routing/RouterConfig;

.field protected final translationMap:Lcom/graphhopper/util/TranslationMap;

.field protected final weightingFactory:Lcom/graphhopper/routing/WeightingFactory;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Lcom/graphhopper/util/TranslationMap;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/WeightingFactory;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/util/details/PathDetailsBuilderFactory;",
            "Lcom/graphhopper/util/TranslationMap;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iput-object p3, p0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    iput-object p4, p0, Lcom/graphhopper/routing/Router;->profilesByName:Ljava/util/Map;

    iput-object p5, p0, Lcom/graphhopper/routing/Router;->pathDetailsBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    iput-object p6, p0, Lcom/graphhopper/routing/Router;->translationMap:Lcom/graphhopper/util/TranslationMap;

    iput-object p7, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    iput-object p8, p0, Lcom/graphhopper/routing/Router;->weightingFactory:Lcom/graphhopper/routing/WeightingFactory;

    iput-object p9, p0, Lcom/graphhopper/routing/Router;->chGraphs:Ljava/util/Map;

    iput-object p10, p0, Lcom/graphhopper/routing/Router;->landmarks:Ljava/util/Map;

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/Router;->chEnabled:Z

    invoke-interface {p10}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/routing/Router;->lmEnabled:Z

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/graphhopper/routing/util/EncodingManager;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "\' needs an EncodedValue \'"

    const-string p4, "\'"

    const-string p5, "The profile \'"

    invoke-static {p5, p1, p3, p2, p4}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/util/PMap;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/Router;->getPassThrough(Lcom/graphhopper/util/PMap;)Z

    move-result p0

    return p0
.end method

.method private checkAtLeastOnePoint(Lcom/graphhopper/GHRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You have to pass at least one point"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkCurbsides(Lcom/graphhopper/GHRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you pass curbside, you need to pass exactly one curbside for every point, empty curbsides will be ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkCustomModel(Lcom/graphhopper/GHRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->isInternal()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CustomModel of query cannot be internal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkHeadings(Lcom/graphhopper/GHRequest;)V
    .locals 3

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "The number of \'heading\' parameters must be zero, one or equal to the number of points ("

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/graphhopper/GHRequest;->isAzimuthValue(D)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Heading for point "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " must be in range [0,360) or NaN, but was: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private checkIfPointsAreInBoundsAndNotNull(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/shapes/GHPoint;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getBounds()Lcom/graphhopper/util/shapes/BBox;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/shapes/GHPoint;

    const-string v2, "Point "

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLat()D

    move-result-wide v3

    invoke-virtual {v1}, Lcom/graphhopper/util/shapes/GHPoint;->getLon()D

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/graphhopper/util/shapes/BBox;->contains(DD)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/graphhopper/util/exceptions/PointOutOfBoundsException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is out of bounds: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", the bounds are: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/graphhopper/util/exceptions/PointOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " is null"

    invoke-static {v0, v2, p1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private checkNoBlockArea(Lcom/graphhopper/GHRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string p1, "block_area"

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The `block_area` parameter is no longer supported. Use a custom model with `areas` instead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkNoLegacyParameters(Lcom/graphhopper/GHRequest;)V
    .locals 1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string v0, "vehicle"

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string v0, "weighting"

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string v0, "turn_costs"

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string p1, "edge_based"

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GHRequest may no longer contain the edge_based=true/false parameter, use the profile parameter instead, see docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GHRequest may no longer contain the turn_costs=true/false parameter, use the profile parameter instead, see docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GHRequest may no longer contain a weighting, use the profile parameter instead, see docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GHRequest may no longer contain a vehicle, use the profile parameter instead, see docs/core/profiles.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkPointHints(Lcom/graphhopper/GHRequest;)V
    .locals 0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPointHints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPointHints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you pass point_hint, you need to pass exactly one hint for every point, empty hints will be ignored"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private concatenatePaths(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/GHRequest;",
            "Lcom/graphhopper/routing/weighting/Weighting;",
            "Lcom/graphhopper/routing/querygraph/QueryGraph;",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;",
            "Lcom/graphhopper/util/PointList;",
            ")",
            "Lcom/graphhopper/ResponsePath;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/Router;->createPathMerger(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    iget-object p3, p0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object p0, p0, Lcom/graphhopper/routing/Router;->translationMap:Lcom/graphhopper/util/TranslationMap;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/TranslationMap;->getWithFallBack(Ljava/util/Locale;)Lcom/graphhopper/util/Translation;

    move-result-object p0

    invoke-virtual {p2, p5, p4, p3, p0}, Lcom/graphhopper/util/PathMerger;->doWork(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/Translation;)Lcom/graphhopper/ResponsePath;

    move-result-object p0

    return-object p0
.end method

.method private createPathMerger(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/util/PathMerger;
    .locals 8

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/RouterConfig;->isInstructionsEnabled()Z

    move-result v1

    const-string v2, "instructions"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v2}, Lcom/graphhopper/routing/RouterConfig;->isCalcPoints()Z

    move-result v2

    const-string v3, "calc_points"

    invoke-virtual {v1, v3, v2}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v2

    const-string v3, "way_point_max_distance"

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v2, v3, v4, v5}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v4

    iget-object v5, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v5}, Lcom/graphhopper/routing/RouterConfig;->getElevationWayPointMaxDistance()D

    move-result-wide v5

    const-string v7, "elevation_way_point_max_distance"

    invoke-virtual {v4, v7, v5, v6}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    new-instance v6, Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-direct {v6}, Lcom/graphhopper/util/RamerDouglasPeucker;-><init>()V

    invoke-virtual {v6, v2, v3}, Lcom/graphhopper/util/RamerDouglasPeucker;->setMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/graphhopper/util/RamerDouglasPeucker;->setElevationMaxDistance(D)Lcom/graphhopper/util/RamerDouglasPeucker;

    move-result-object v4

    new-instance v5, Lcom/graphhopper/util/PathMerger;

    invoke-direct {v5, p3, p2}, Lcom/graphhopper/util/PathMerger;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {v5, v1}, Lcom/graphhopper/util/PathMerger;->setCalcPoints(Z)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/graphhopper/util/PathMerger;->setRamerDouglasPeucker(Lcom/graphhopper/util/RamerDouglasPeucker;)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/graphhopper/util/PathMerger;->setEnableInstructions(Z)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    iget-object p3, p0, Lcom/graphhopper/routing/Router;->pathDetailsBuilderFactory:Lcom/graphhopper/util/details/PathDetailsBuilderFactory;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPathDetails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/graphhopper/util/PathMerger;->setPathDetailsBuilders(Lcom/graphhopper/util/details/PathDetailsBuilderFactory;Ljava/util/List;)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    iget-object p0, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/RouterConfig;->isSimplifyResponse()Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmpl-double p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    invoke-virtual {p2, p0}, Lcom/graphhopper/util/PathMerger;->setSimplifyResponse(Z)Lcom/graphhopper/util/PathMerger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/util/PathMerger;->setFavoredHeading(D)V

    :cond_1
    return-object p0
.end method

.method private static getCurbsideStrictness(Lcom/graphhopper/util/PMap;)Ljava/lang/String;
    .locals 3

    const-string v0, "curbside_strictness"

    invoke-virtual {p0, v0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "strict"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "force_curbside"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    :cond_1
    const-string p0, "soft"

    return-object p0
.end method

.method private static getDisableCH(Lcom/graphhopper/util/PMap;)Z
    .locals 2

    const-string v0, "ch.disable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getDisableLM(Lcom/graphhopper/util/PMap;)Z
    .locals 2

    const-string v0, "lm.disable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getPassThrough(Lcom/graphhopper/util/PMap;)Z
    .locals 2

    const-string v0, "pass_through"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getWaypoints(Ljava/util/List;)Lcom/graphhopper/util/PointList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/graphhopper/storage/index/Snap;",
            ">;)",
            "Lcom/graphhopper/util/PointList;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/util/PointList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/util/PointList;-><init>(IZ)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/PointList;->add(Lcom/graphhopper/util/shapes/GHPoint;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createCHSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Ljava/util/Map;)Lcom/graphhopper/routing/Router$Solver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/GHRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;)",
            "Lcom/graphhopper/routing/Router$Solver;"
        }
    .end annotation

    new-instance p0, Lcom/graphhopper/routing/Router$CHSolver;

    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/routing/Router$CHSolver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)V

    return-object p0
.end method

.method public createFlexSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;)Lcom/graphhopper/routing/Router$Solver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/GHRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            ")",
            "Lcom/graphhopper/routing/Router$Solver;"
        }
    .end annotation

    new-instance p0, Lcom/graphhopper/routing/Router$FlexSolver;

    invoke-direct/range {p0 .. p7}, Lcom/graphhopper/routing/Router$FlexSolver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;)V

    return-object p0
.end method

.method public createLMSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;)Lcom/graphhopper/routing/Router$Solver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/GHRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;",
            "Lcom/graphhopper/routing/RouterConfig;",
            "Lcom/graphhopper/routing/util/EncodingManager;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;)",
            "Lcom/graphhopper/routing/Router$Solver;"
        }
    .end annotation

    new-instance p0, Lcom/graphhopper/routing/Router$LMSolver;

    invoke-direct/range {p0 .. p8}, Lcom/graphhopper/routing/Router$LMSolver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;)V

    return-object p0
.end method

.method public createSolver(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/routing/Router$Solver;
    .locals 9

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/Router;->getDisableCH(Lcom/graphhopper/util/PMap;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/routing/Router;->getDisableLM(Lcom/graphhopper/util/PMap;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/graphhopper/routing/Router;->chEnabled:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/graphhopper/routing/Router;->profilesByName:Ljava/util/Map;

    iget-object v6, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    iget-object v7, p0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v8, p0, Lcom/graphhopper/routing/Router;->chGraphs:Ljava/util/Map;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/graphhopper/routing/Router;->createCHSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Ljava/util/Map;)Lcom/graphhopper/routing/Router$Solver;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, p0

    move-object v4, p1

    iget-boolean p0, v0, Lcom/graphhopper/routing/Router;->lmEnabled:Z

    if-eqz p0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/graphhopper/routing/Router;->profilesByName:Ljava/util/Map;

    iget-object v3, v0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    move-object v1, v4

    iget-object v4, v0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v5, v0, Lcom/graphhopper/routing/Router;->weightingFactory:Lcom/graphhopper/routing/WeightingFactory;

    iget-object v6, v0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v7, v0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    iget-object v8, v0, Lcom/graphhopper/routing/Router;->landmarks:Ljava/util/Map;

    invoke-virtual/range {v0 .. v8}, Lcom/graphhopper/routing/Router;->createLMSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;)Lcom/graphhopper/routing/Router$Solver;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v1, v4

    iget-object v2, v0, Lcom/graphhopper/routing/Router;->profilesByName:Ljava/util/Map;

    iget-object v3, v0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    iget-object v4, v0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v5, v0, Lcom/graphhopper/routing/Router;->weightingFactory:Lcom/graphhopper/routing/WeightingFactory;

    iget-object v6, v0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    iget-object v7, v0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-virtual/range {v0 .. v7}, Lcom/graphhopper/routing/Router;->createFlexSolver(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;)Lcom/graphhopper/routing/Router$Solver;

    move-result-object p0

    return-object p0
.end method

.method public route(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/GHResponse;
    .locals 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkNoLegacyParameters(Lcom/graphhopper/GHRequest;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkAtLeastOnePoint(Lcom/graphhopper/GHRequest;)V

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/Router;->checkIfPointsAreInBoundsAndNotNull(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkHeadings(Lcom/graphhopper/GHRequest;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkPointHints(Lcom/graphhopper/GHRequest;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkCurbsides(Lcom/graphhopper/GHRequest;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkNoBlockArea(Lcom/graphhopper/GHRequest;)V

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/Router;->checkCustomModel(Lcom/graphhopper/GHRequest;)V

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Router;->createSolver(Lcom/graphhopper/GHRequest;)Lcom/graphhopper/routing/Router$Solver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/graphhopper/routing/Router$Solver;->checkRequest()V

    invoke-static {v0}, Lcom/graphhopper/routing/Router$Solver;->b(Lcom/graphhopper/routing/Router$Solver;)V

    const-string v1, "round_trip"

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/graphhopper/routing/Router$FlexSolver;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/graphhopper/routing/Router$FlexSolver;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/Router;->routeRoundTrip(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$FlexSolver;)Lcom/graphhopper/GHResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "algorithm=round_trip only works with a flexible algorithm"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "alternative_route"

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/Router;->routeAlt(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$Solver;)Lcom/graphhopper/GHResponse;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/Router;->routeVia(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$Solver;)Lcom/graphhopper/GHResponse;

    move-result-object p0
    :try_end_0
    .catch Lcom/graphhopper/routing/MultiplePointsNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lcom/graphhopper/GHResponse;

    invoke-direct {p1}, Lcom/graphhopper/GHResponse;-><init>()V

    invoke-virtual {p1, p0}, Lcom/graphhopper/GHResponse;->addError(Ljava/lang/Throwable;)Lcom/graphhopper/GHResponse;

    return-object p1

    :goto_0
    new-instance v0, Lcom/graphhopper/GHResponse;

    invoke-direct {v0}, Lcom/graphhopper/GHResponse;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/MultiplePointsNotFoundException;->getPointsNotFound()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/a;

    new-instance v2, Lcom/graphhopper/util/exceptions/PointNotFoundException;

    iget v3, v1, Ln5/a;->b:I

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v4

    iget v5, v1, Ln5/a;->b:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot find point "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Ln5/a;->b:I

    invoke-direct {v2, v3, v1}, Lcom/graphhopper/util/exceptions/PointNotFoundException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/graphhopper/GHResponse;->addError(Ljava/lang/Throwable;)Lcom/graphhopper/GHResponse;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public routeAlt(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$Solver;)Lcom/graphhopper/GHResponse;
    .locals 11

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_4

    new-instance v0, Lcom/graphhopper/GHResponse;

    invoke-direct {v0}, Lcom/graphhopper/GHResponse;-><init>()V

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {p2}, Lcom/graphhopper/routing/Router$Solver;->createDirectedEdgeFilter()Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    move-result-object v5

    iget-object v2, p0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2}, Lcom/graphhopper/routing/Router$Solver;->createSnapFilter()Lcom/graphhopper/routing/util/EdgeFilter;

    move-result-object v4

    move-object v8, v5

    iget-object v5, p0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getSnapPreventions()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPointHints()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/graphhopper/routing/ViaRouting;->lookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/List;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "idLookup:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/GHResponse;->addDebugInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v1, v4}, Lcom/graphhopper/routing/querygraph/QueryGraph;->create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/graphhopper/routing/Router$Solver;->createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;

    move-result-object v6

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/routing/Router;->getPassThrough(Lcom/graphhopper/util/PMap;)Z

    move-result v10

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/routing/Router;->getCurbsideStrictness(Lcom/graphhopper/util/PMap;)Ljava/lang/String;

    move-result-object v1

    if-nez v10, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v9

    move-object v5, v8

    move-object v8, v1

    invoke-static/range {v2 .. v10}, Lcom/graphhopper/routing/ViaRouting;->calcPaths(Ljava/util/List;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/routing/PathCalculator;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Lcom/graphhopper/routing/ViaRouting$Result;

    move-result-object v1

    iget-object v2, v1, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p2, p2, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-direct {p0, p1, p2, v3}, Lcom/graphhopper/routing/Router;->createPathMerger(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/Graph;)Lcom/graphhopper/util/PathMerger;

    move-result-object p2

    iget-object v2, v1, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/Path;

    invoke-direct {p0, v4}, Lcom/graphhopper/routing/Router;->getWaypoints(Ljava/util/List;)Lcom/graphhopper/util/PointList;

    move-result-object v5

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    iget-object v7, p0, Lcom/graphhopper/routing/Router;->translationMap:Lcom/graphhopper/util/TranslationMap;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/graphhopper/util/TranslationMap;->getWithFallBack(Ljava/util/Locale;)Lcom/graphhopper/util/Translation;

    move-result-object v7

    invoke-virtual {p2, v5, v3, v6, v7}, Lcom/graphhopper/util/PathMerger;->doWork(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/Translation;)Lcom/graphhopper/ResponsePath;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/graphhopper/GHResponse;->add(Lcom/graphhopper/ResponsePath;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    iget-wide p1, v1, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "visited_nodes.sum"

    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    iget-wide p1, v1, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    long-to-float p1, p1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "visited_nodes.average"

    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Empty paths for alternative route calculation not expected"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Alternative paths do not support the curbside parameter yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Alternative paths and pass_through at the same time is currently not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string p2, "Currently alternative routes work only with start and end point. You tried to use: "

    const-string v0, " points"

    invoke-static {p1, p2, v0}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public routeRoundTrip(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$FlexSolver;)Lcom/graphhopper/GHResponse;
    .locals 9

    new-instance v0, Lcom/graphhopper/GHResponse;

    invoke-direct {v0}, Lcom/graphhopper/GHResponse;-><init>()V

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    new-instance v4, Lcom/graphhopper/routing/RoundTripRouting$Params;

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v5

    iget-object v6, p0, Lcom/graphhopper/routing/Router;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v6}, Lcom/graphhopper/routing/RouterConfig;->getMaxRoundTripRetries()I

    move-result v6

    invoke-direct {v4, v5, v2, v3, v6}, Lcom/graphhopper/routing/RoundTripRouting$Params;-><init>(Lcom/graphhopper/util/PMap;DI)V

    invoke-virtual {p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/graphhopper/routing/Router$Solver;->createSnapFilter()Lcom/graphhopper/routing/util/EdgeFilter;

    move-result-object v3

    iget-object v5, p0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-static {v2, v3, v5, v4}, Lcom/graphhopper/routing/RoundTripRouting;->lookup(Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;Lcom/graphhopper/routing/RoundTripRouting$Params;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "idLookup:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/GHResponse;->addDebugInfo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v1, v2}, Lcom/graphhopper/routing/querygraph/QueryGraph;->create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/graphhopper/routing/Router$FlexSolver;->createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/FlexiblePathCalculator;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/graphhopper/routing/RoundTripRouting;->calcPaths(Ljava/util/List;Lcom/graphhopper/routing/FlexiblePathCalculator;)Lcom/graphhopper/routing/RoundTripRouting$Result;

    move-result-object v1

    iget-object v5, p2, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v7, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->paths:Ljava/util/List;

    iget-object v8, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->wayPoints:Lcom/graphhopper/util/PointList;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/graphhopper/routing/Router;->concatenatePaths(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/GHResponse;->add(Lcom/graphhopper/ResponsePath;)V

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    iget-wide p1, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->visitedNodes:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "visited_nodes.sum"

    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    invoke-virtual {v0}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    iget-wide p1, v1, Lcom/graphhopper/routing/RoundTripRouting$Result;->visitedNodes:J

    long-to-float p1, p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "visited_nodes.average"

    invoke-virtual {p0, p2, p1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object v0
.end method

.method public routeVia(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/Router$Solver;)Lcom/graphhopper/GHResponse;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v6, Lcom/graphhopper/GHResponse;

    invoke-direct {v6}, Lcom/graphhopper/GHResponse;-><init>()V

    invoke-static {}, La6/q;->f()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    invoke-virtual {v1}, Lcom/graphhopper/routing/Router$Solver;->createDirectedEdgeFilter()Lcom/graphhopper/routing/util/DirectedEdgeFilter;

    move-result-object v13

    iget-object v7, v0, Lcom/graphhopper/routing/Router;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/graphhopper/routing/Router$Solver;->createSnapFilter()Lcom/graphhopper/routing/util/EdgeFilter;

    move-result-object v9

    iget-object v10, v0, Lcom/graphhopper/routing/Router;->locationIndex:Lcom/graphhopper/storage/index/LocationIndex;

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getSnapPreventions()Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getPointHints()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v14

    invoke-static/range {v7 .. v14}, Lcom/graphhopper/routing/ViaRouting;->lookup(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/List;Lcom/graphhopper/routing/util/EdgeFilter;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/List;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->stop()Lcom/graphhopper/util/StopWatch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/StopWatch;->getSeconds()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "idLookup:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/graphhopper/GHResponse;->addDebugInfo(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/graphhopper/routing/Router;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-static {v2, v9}, Lcom/graphhopper/routing/querygraph/QueryGraph;->create(Lcom/graphhopper/storage/BaseGraph;Ljava/util/List;)Lcom/graphhopper/routing/querygraph/QueryGraph;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/graphhopper/routing/Router$Solver;->createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/Router;->getPassThrough(Lcom/graphhopper/util/PMap;)Z

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/Router;->getCurbsideStrictness(Lcom/graphhopper/util/PMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v14

    move-object v8, v3

    move-object v10, v13

    move-object v13, v2

    invoke-static/range {v7 .. v15}, Lcom/graphhopper/routing/ViaRouting;->calcPaths(Ljava/util/List;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/routing/util/DirectedEdgeFilter;Lcom/graphhopper/routing/PathCalculator;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Z)Lcom/graphhopper/routing/ViaRouting$Result;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v7, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v2, v1, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v4, v7, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-direct {v0, v9}, Lcom/graphhopper/routing/Router;->getWaypoints(Ljava/util/List;)Lcom/graphhopper/util/PointList;

    move-result-object v5

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/routing/Router;->concatenatePaths(Lcom/graphhopper/GHRequest;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/querygraph/QueryGraph;Ljava/util/List;Lcom/graphhopper/util/PointList;)Lcom/graphhopper/ResponsePath;

    move-result-object v0

    iget-object v1, v7, Lcom/graphhopper/routing/ViaRouting$Result;->debug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/graphhopper/ResponsePath;->addDebugInfo(Ljava/lang/String;)Lcom/graphhopper/ResponsePath;

    invoke-virtual {v6, v0}, Lcom/graphhopper/GHResponse;->add(Lcom/graphhopper/ResponsePath;)V

    invoke-virtual {v6}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    iget-wide v1, v7, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "visited_nodes.sum"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    invoke-virtual {v6}, Lcom/graphhopper/GHResponse;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    iget-wide v1, v7, Lcom/graphhopper/routing/ViaRouting$Result;->visitedNodes:J

    long-to-float v1, v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "visited_nodes.average"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object v6

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual/range {p1 .. p1}, Lcom/graphhopper/GHRequest;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v7, Lcom/graphhopper/routing/ViaRouting$Result;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "There should be exactly one more point than paths. points:"

    const-string v4, ", paths:"

    invoke-static {v3, v1, v4, v2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
