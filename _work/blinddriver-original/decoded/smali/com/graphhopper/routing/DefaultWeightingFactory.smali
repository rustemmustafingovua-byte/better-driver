.class public Lcom/graphhopper/routing/DefaultWeightingFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/WeightingFactory;


# instance fields
.field private final encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

.field private final graph:Lcom/graphhopper/storage/BaseGraph;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/util/EncodingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/DefaultWeightingFactory;->graph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/routing/DefaultWeightingFactory;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    return-void
.end method


# virtual methods
.method public createWeighting(Lcom/graphhopper/config/Profile;Lcom/graphhopper/util/PMap;Z)Lcom/graphhopper/routing/weighting/Weighting;
    .locals 6

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/graphhopper/util/PMap;->putAll(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/util/PMap;

    invoke-virtual {v0, p2}, Lcom/graphhopper/util/PMap;->putAll(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/util/PMap;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "custom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v2, "custom_model"

    invoke-virtual {p2, v2, v3}, Lcom/graphhopper/util/PMap;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/CustomModel;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/util/TurnCostsConfig;->isAllowTurnPenaltyInRequest()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The turn_penalty feature is not supported per request for "

    const-string p3, ". Set \'allow_turn_penalty_in_request\' to true in the \'turn_costs\' option in the config.yml."

    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getCustomModel()Lcom/graphhopper/util/CustomModel;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/graphhopper/util/CustomModel;->merge(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/util/CustomModel;

    move-result-object v2

    const-string v3, "heading_penalty"

    invoke-virtual {p2, v3}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-virtual {p2, v3, v4, v5}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/graphhopper/util/CustomModel;->setHeadingPenalty(D)Lcom/graphhopper/util/CustomModel;

    :cond_2
    iget-object p2, p0, Lcom/graphhopper/routing/DefaultWeightingFactory;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-static {v2, p2}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->createWeightingParameters(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/routing/ev/EncodedValueLookup;)Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;

    move-result-object p2

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->hasTurnCosts()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/graphhopper/routing/DefaultWeightingFactory;->encodingManager:Lcom/graphhopper/routing/util/EncodingManager;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/routing/ev/TurnRestriction;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getTurnBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/graphhopper/util/TurnCostsConfig;->getUTurnCosts()I

    move-result v2

    const-string v3, "u_turn_costs"

    invoke-virtual {v0, v3, v2}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/graphhopper/util/TurnCostsConfig;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/graphhopper/util/TurnCostsConfig;-><init>(Lcom/graphhopper/util/TurnCostsConfig;)V

    invoke-virtual {v3, v2}, Lcom/graphhopper/util/TurnCostsConfig;->setUTurnCosts(I)Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object p1

    new-instance v2, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;

    iget-object p0, p0, Lcom/graphhopper/routing/DefaultWeightingFactory;->graph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->getTurnPenaltyMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

    move-result-object v3

    invoke-direct {v2, p3, p0, p1, v3}, Lcom/graphhopper/routing/weighting/DefaultTurnCostProvider;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/storage/Graph;Lcom/graphhopper/util/TurnCostsConfig;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find turn restriction encoded value for "

    invoke-static {p2, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v2}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object v2, Lcom/graphhopper/routing/weighting/TurnCostProvider;->NO_TURN_COST_PROVIDER:Lcom/graphhopper/routing/weighting/TurnCostProvider;

    :goto_1
    const-string p0, "cm_version"

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/PMap;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, ""

    invoke-virtual {v0, p0, p1}, Lcom/graphhopper/util/PMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "2"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;

    invoke-direct {p0, v2, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting2;-><init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V

    :goto_2
    move-object v3, p0

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cm_version: \"2\" is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;

    invoke-direct {p0, v2, p2}, Lcom/graphhopper/routing/weighting/custom/CustomWeighting;-><init>(Lcom/graphhopper/routing/weighting/TurnCostProvider;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;)V

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The turn_penalty feature is not supported for "

    const-string p3, ". You have to enable this in \'turn_costs\' in config.yml."

    invoke-static {p2, p1, p3}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const-string p0, "shortest"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "fastest"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    const-string p0, "curvature"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "short_fastest"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_3
    if-eqz v3, :cond_9

    return-object v3

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Weighting \'"

    const-string p2, "\' not supported"

    invoke-static {p1, v1, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instead of weighting=short_fastest use weighting=custom with a distance_influence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The curvature weighting is no longer supported since 7.0. Use a custom model with the EncodedValue \'curvature\' instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instead of weighting=fastest use weighting=custom with a custom model that avoids road_access == DESTINATION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Instead of weighting=shortest use weighting=custom with a high distance_influence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You have to specify a weighting"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
