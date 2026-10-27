.class Lcom/graphhopper/routing/Router$CHSolver;
.super Lcom/graphhopper/routing/Router$Solver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHSolver"
.end annotation


# instance fields
.field private final chGraphs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/util/Map;)V
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/RoutingCHGraph;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/graphhopper/routing/Router$Solver;-><init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V

    iput-object p5, p0, Lcom/graphhopper/routing/Router$CHSolver;->chGraphs:Ljava/util/Map;

    return-void
.end method

.method private getRoutingCHGraph(Ljava/lang/String;)Lcom/graphhopper/storage/RoutingCHGraph;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/Router$CHSolver;->chGraphs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/storage/RoutingCHGraph;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/Router$CHSolver;->chGraphs:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot find CH preparation for the requested profile: \'"

    const-string v2, "\'\nYou can try disabling CH using ch.disable=true\navailable CH profiles: "

    invoke-static {v1, p1, v2, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkRequest()V
    .locals 1

    invoke-super {p0}, Lcom/graphhopper/routing/Router$Solver;->checkRequest()V

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getHeadings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/Router;->a(Lcom/graphhopper/util/PMap;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {p0}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "round_trip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "algorithm=round_trip cannot be used with CH"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The \'custom_model\' parameter is currently not supported for speed mode, you need to disable speed mode with `ch.disable=true`."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The \'pass_through\' parameter is currently not supported for speed mode, you need to disable speed mode with `ch.disable=true`. See issue #1765"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The \'heading\' parameter is currently not supported for speed mode, you need to disable speed mode with `ch.disable=true`. See issue #483"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;
    .locals 4

    new-instance v0, Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "algorithm"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Router$Solver;->getMaxVisitedNodes(Lcom/graphhopper/util/PMap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_visited_nodes"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/Router$Solver;->getTimeoutMillis(Lcom/graphhopper/util/PMap;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeout_ms"

    invoke-virtual {v0, v2, v1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    new-instance v1, Lcom/graphhopper/routing/CHPathCalculator;

    new-instance v2, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;

    iget-object v3, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v3}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/graphhopper/routing/Router$CHSolver;->getRoutingCHGraph(Ljava/lang/String;)Lcom/graphhopper/storage/RoutingCHGraph;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;-><init>(Lcom/graphhopper/storage/RoutingCHGraph;Lcom/graphhopper/routing/querygraph/QueryGraph;)V

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/routing/CHPathCalculator;-><init>(Lcom/graphhopper/routing/ch/CHRoutingAlgorithmFactory;Lcom/graphhopper/util/PMap;)V

    return-object v1
.end method

.method public createWeighting()Lcom/graphhopper/routing/weighting/Weighting;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/routing/Router$CHSolver;->getRoutingCHGraph(Ljava/lang/String;)Lcom/graphhopper/storage/RoutingCHGraph;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/RoutingCHGraph;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0
.end method
