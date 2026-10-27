.class public abstract Lcom/graphhopper/routing/Router$Solver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/Router;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Solver"
.end annotation


# instance fields
.field protected final lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

.field protected profile:Lcom/graphhopper/config/Profile;

.field private final profilesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/config/Profile;",
            ">;"
        }
    .end annotation
.end field

.field protected final request:Lcom/graphhopper/GHRequest;

.field private final routerConfig:Lcom/graphhopper/routing/RouterConfig;

.field protected weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/GHRequest;Ljava/util/Map;Lcom/graphhopper/routing/RouterConfig;Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    iput-object p2, p0, Lcom/graphhopper/routing/Router$Solver;->profilesByName:Ljava/util/Map;

    iput-object p3, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    iput-object p4, p0, Lcom/graphhopper/routing/Router$Solver;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/Router$Solver;Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/Router$Solver;->lambda$createDirectedEdgeFilter$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/Router$Solver;)V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/Router$Solver;->init()V

    return-void
.end method

.method private checkMaxVisitedNodes()V
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/Router$Solver;->getMaxVisitedNodes(Lcom/graphhopper/util/PMap;)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v1}, Lcom/graphhopper/routing/RouterConfig;->getMaxVisitedNodes()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/RouterConfig;->getMaxVisitedNodes()I

    move-result p0

    const-string v1, "The max_visited_nodes parameter has to be below or equal to:"

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkProfileSpecified()V
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {p0}, Lcom/graphhopper/GHRequest;->getProfile()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You need to specify a profile to perform a routing request, see docs/core/profiles.md"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTurnCostProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->profilesByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/routing/Router$Solver;->getProfile()Lcom/graphhopper/config/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {p0}, Lcom/graphhopper/routing/Router$Solver;->checkProfileCompatibility()V

    invoke-virtual {p0}, Lcom/graphhopper/routing/Router$Solver;->createWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method

.method private synthetic lambda$createDirectedEdgeFilter$0(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)Z
    .locals 0

    invoke-interface {p2, p1}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p2, p3}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public checkProfileCompatibility()V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getCurbsides()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Lcom/graphhopper/routing/Router$Solver;->getTurnCostProfiles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "To make use of the curbside parameter you need to use a profile that supports turn costs\nThe following profiles do support turn costs: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getProfile()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object p0

    const-string v2, "The requested profile \'"

    const-string v3, "\' cannot be used with `custom_model`, because it has weighting="

    invoke-static {v2, v1, v3, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v0}, Lcom/graphhopper/GHRequest;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    const-string v1, "u_turn_costs"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v0}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Lcom/graphhopper/routing/Router$Solver;->getTurnCostProfiles()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Finite u-turn costs can only be used for edge-based routing, you need to use a profile that supports turn costs. Currently the following profiles that support turn costs are available: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public checkRequest()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/routing/Router$Solver;->checkProfileSpecified()V

    invoke-direct {p0}, Lcom/graphhopper/routing/Router$Solver;->checkMaxVisitedNodes()V

    return-void
.end method

.method public createDirectedEdgeFilter()Lcom/graphhopper/routing/util/DirectedEdgeFilter;
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {v1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v0

    new-instance v1, Lb0/b3;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, v0}, Lb0/b3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public abstract createPathCalculator(Lcom/graphhopper/routing/querygraph/QueryGraph;)Lcom/graphhopper/routing/PathCalculator;
.end method

.method public createSnapFilter()Lcom/graphhopper/routing/util/EdgeFilter;
    .locals 3

    new-instance v0, Lcom/graphhopper/routing/util/DefaultSnapFilter;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    iget-object v2, p0, Lcom/graphhopper/routing/Router$Solver;->lookup:Lcom/graphhopper/routing/ev/EncodedValueLookup;

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->profile:Lcom/graphhopper/config/Profile;

    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/routing/ev/Subnetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/routing/util/DefaultSnapFilter;-><init>(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    return-object v0
.end method

.method public abstract createWeighting()Lcom/graphhopper/routing/weighting/Weighting;
.end method

.method public getMaxVisitedNodes(Lcom/graphhopper/util/PMap;)I
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/RouterConfig;->getMaxVisitedNodes()I

    move-result p0

    const-string v0, "max_visited_nodes"

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getProfile()Lcom/graphhopper/config/Profile;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->profilesByName:Ljava/util/Map;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/config/Profile;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/graphhopper/routing/Router$Solver;->request:Lcom/graphhopper/GHRequest;

    invoke-virtual {v1}, Lcom/graphhopper/GHRequest;->getProfile()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->profilesByName:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "The requested profile \'"

    const-string v3, "\' does not exist.\nAvailable profiles: "

    invoke-static {v2, v1, v3, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTimeoutMillis(Lcom/graphhopper/util/PMap;)J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {v0}, Lcom/graphhopper/routing/RouterConfig;->getTimeoutMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/routing/Router$Solver;->routerConfig:Lcom/graphhopper/routing/RouterConfig;

    invoke-virtual {p0}, Lcom/graphhopper/routing/RouterConfig;->getTimeoutMillis()J

    move-result-wide v2

    const-string p0, "timeout_ms"

    invoke-virtual {p1, p0, v2, v3}, Lcom/graphhopper/util/PMap;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method
