.class public Lcom/graphhopper/config/Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hints:Lcom/graphhopper/util/PMap;

.field private name:Ljava/lang/String;

.field private turnCostsConfig:Lcom/graphhopper/util/TurnCostsConfig;

.field private weighting:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "custom"

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/config/Profile;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "custom"

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    .line 12
    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/config/Profile;->setName(Ljava/lang/String;)Lcom/graphhopper/config/Profile;

    .line 13
    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/config/Profile;->setTurnCostsConfig(Lcom/graphhopper/util/TurnCostsConfig;)Lcom/graphhopper/config/Profile;

    .line 14
    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getWeighting()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/config/Profile;->setWeighting(Ljava/lang/String;)Lcom/graphhopper/config/Profile;

    .line 15
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "custom"

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    .line 7
    invoke-virtual {p0, p1}, Lcom/graphhopper/config/Profile;->setName(Ljava/lang/String;)Lcom/graphhopper/config/Profile;

    .line 8
    new-instance p1, Lcom/graphhopper/util/CustomModel;

    invoke-direct {p1}, Lcom/graphhopper/util/CustomModel;-><init>()V

    invoke-virtual {p0, p1}, Lcom/graphhopper/config/Profile;->setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;

    return-void
.end method

.method private createContentString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/graphhopper/util/PMap;

    iget-object v1, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    invoke-direct {v0, v1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    new-instance v1, Lcom/graphhopper/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lcom/graphhopper/c;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/graphhopper/config/Profile;->turnCostsConfig:Lcom/graphhopper/util/TurnCostsConfig;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "|turn_costs={"

    const-string v3, "}|weighting="

    const-string v4, "name="

    invoke-static {v4, p1, v2, v1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|hints="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static validateProfileName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "^[a-z0-9_\\-]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Profile names may only contain lower case letters, numbers and underscores, given: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/graphhopper/config/Profile;

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCustomModel()Lcom/graphhopper/util/CustomModel;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p0

    const-string v0, "custom_model"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/PMap;->getObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/util/CustomModel;

    return-object p0
.end method

.method public getHints()Lcom/graphhopper/util/PMap;
    .locals 0
    .annotation runtime Lr5/v;
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTurnCostsConfig()Lcom/graphhopper/util/TurnCostsConfig;
    .locals 0
    .annotation runtime Lr5/i0;
        value = "turn_costs"
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->turnCostsConfig:Lcom/graphhopper/util/TurnCostsConfig;

    return-object p0
.end method

.method public getVersion()I
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/graphhopper/config/Profile;->getVersion(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public getVersion(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/graphhopper/config/Profile;->createContentString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->staticHashCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getWeighting()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    return-object p0
.end method

.method public hasTurnCosts()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->turnCostsConfig:Lcom/graphhopper/util/TurnCostsConfig;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public putHint(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/config/Profile;
    .locals 1
    .annotation runtime Lr5/f;
    .end annotation

    const-string v0, "u_turn_costs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vehicle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/config/Profile;->hints:Lcom/graphhopper/util/PMap;

    invoke-virtual {v0, p1, p2}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "vehicle no longer accepted in profile, see docs/migration/config-migration-08-09.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "u_turn_costs no longer accepted in profile. Use the turn costs configuration instead, see docs/migration/config-migration-08-09.md"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCustomModel(Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/config/Profile;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->internal()Lcom/graphhopper/util/CustomModel;

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/config/Profile;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object v0

    const-string v1, "custom_model"

    invoke-virtual {v0, v1, p1}, Lcom/graphhopper/util/PMap;->putObject(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/config/Profile;->validateProfileName(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/graphhopper/config/Profile;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setTurnCostsConfig(Lcom/graphhopper/util/TurnCostsConfig;)Lcom/graphhopper/config/Profile;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/config/Profile;->turnCostsConfig:Lcom/graphhopper/util/TurnCostsConfig;

    return-object p0
.end method

.method public setWeighting(Ljava/lang/String;)Lcom/graphhopper/config/Profile;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/config/Profile;->weighting:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/graphhopper/config/Profile;->createContentString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
