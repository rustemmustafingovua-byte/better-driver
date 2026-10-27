.class Lcom/graphhopper/routing/Router$LMSolver;
.super Lcom/graphhopper/routing/Router$FlexSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LMSolver"
.end annotation


# instance fields
.field private final landmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;Ljava/util/Map;)V
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
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/routing/WeightingFactory;",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/storage/index/LocationIndex;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/lm/LandmarkStorage;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p7}, Lcom/graphhopper/routing/Router$FlexSolver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/WeightingFactory;Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/index/LocationIndex;)V

    iput-object p8, p0, Lcom/graphhopper/routing/Router$LMSolver;->landmarks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/FlexiblePathCalculator;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/graphhopper/routing/Router$LMSolver;->landmarks:Ljava/util/Map;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/lm/LandmarkStorage;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v1

    iget-object v2, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v2}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/routing/Router$Solver;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    invoke-static {v1, v2, v3}, Lcom/graphhopper/routing/weighting/custom/FindMinMax;->checkLMConstraints(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    .line 5
    :cond_0
    new-instance v1, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;

    invoke-direct {v1, v0}, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;-><init>(Lcom/graphhopper/routing/lm/LandmarkStorage;)V

    iget-object v0, p0, Lcom/graphhopper/routing/Router$FlexSolver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getActiveLandmarkCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;->setDefaultActiveLandmarks(I)Lcom/graphhopper/routing/lm/LMRoutingAlgorithmFactory;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/graphhopper/routing/FlexiblePathCalculator;

    iget-object v2, p0, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Router$FlexSolver;->getAlgoOpts()Lcom/graphhopper/routing/AlgorithmOptions;

    move-result-object p0

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/graphhopper/routing/FlexiblePathCalculator;-><init>(Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/routing/RoutingAlgorithmFactory;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/AlgorithmOptions;)V

    return-object v1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/routing/Router$LMSolver;->landmarks:Ljava/util/Map;

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot find LM preparation for the requested profile: \'"

    const-string v2, "\'\nYou can try disabling LM using lm.disable=true\navailable LM profiles: "

    .line 9
    invoke-static {v1, v0, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/Router$LMSolver;->createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/FlexiblePathCalculator;

    move-result-object p0

    return-object p0
.end method
