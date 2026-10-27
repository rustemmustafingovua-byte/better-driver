.class public Lcom/graphhopper/util/CustomModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String; = "custom_model"


# instance fields
.field private areas:Lcom/graphhopper/util/JsonFeatureCollection;

.field private distanceInfluence:Ljava/lang/Double;

.field private headingPenalty:Ljava/lang/Double;

.field private internal:Z
    .annotation runtime Lr5/v;
    .end annotation
.end field

.field private priorityStatements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private speedStatements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private turnPenaltyStatements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-direct {v0}, Lcom/graphhopper/util/JsonFeatureCollection;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/CustomModel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-direct {v0}, Lcom/graphhopper/util/JsonFeatureCollection;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/graphhopper/util/CustomModel;->internal:Z

    .line 12
    iget-object v0, p1, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    .line 13
    iget-object v0, p1, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    .line 14
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/util/CustomModel;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    .line 15
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/util/CustomModel;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    .line 16
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/util/CustomModel;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getAreas()Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/CustomModel;->addAreas(Lcom/graphhopper/util/JsonFeatureCollection;)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/util/JsonFeature;Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/util/JsonFeature;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/util/CustomModel;->lambda$getAreasAsMap$0(Lcom/graphhopper/util/JsonFeature;Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/util/JsonFeature;

    move-result-object p0

    return-object p0
.end method

.method private createContentString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    iget-object v1, p0, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    iget-object v2, p0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "distanceInfluence="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|headingPenalty="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "|speedStatements="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|priorityStatements="

    const-string v1, "|turnPenaltyStatements="

    invoke-static {v5, v2, v0, v3, v1}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|areas="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private deepCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/graphhopper/util/CustomModel;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    instance-of v0, p1, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/LinkedHashMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_1
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/graphhopper/util/CustomModel;->deepCopy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object v0

    :cond_4
    return-object p1
.end method

.method public static getAreasAsMap(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/JsonFeatureCollection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/util/JsonFeature;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/routing/ev/f;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/util/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/graphhopper/util/a;-><init>(I)V

    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static synthetic lambda$getAreasAsMap$0(Lcom/graphhopper/util/JsonFeature;Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/util/JsonFeature;
    .locals 1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cannot handle duplicate area "

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static merge(Lcom/graphhopper/util/CustomModel;Lcom/graphhopper/util/CustomModel;)Lcom/graphhopper/util/CustomModel;
    .locals 2

    new-instance v0, Lcom/graphhopper/util/CustomModel;

    invoke-direct {v0, p0}, Lcom/graphhopper/util/CustomModel;-><init>(Lcom/graphhopper/util/CustomModel;)V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getDistanceInfluence()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    iput-object p0, v0, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    :cond_1
    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getHeadingPenalty()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    iput-object p0, v0, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    :cond_2
    iget-object p0, v0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/graphhopper/util/CustomModel;->getAreas()Lcom/graphhopper/util/JsonFeatureCollection;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/graphhopper/util/CustomModel;->addAreas(Lcom/graphhopper/util/JsonFeatureCollection;)V

    return-object v0
.end method


# virtual methods
.method public addAreas(Lcom/graphhopper/util/JsonFeatureCollection;)V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {v0}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ev/f;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/JsonFeature;

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/graphhopper/util/JsonFeature;->isValidId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {v2}, Lcom/graphhopper/util/JsonFeatureCollection;->getFeatures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "area "

    const-string v1, " already exists"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "The area \'"

    const-string v1, "\' has an invalid id. Only letters, numbers and underscore are allowed."

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public addToPriority(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getPriority()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addToSpeed(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getSpeed()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addToTurnPenalty(Lcom/graphhopper/json/Statement;)Lcom/graphhopper/util/CustomModel;
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/util/CustomModel;->getTurnPenalty()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getAreas()Lcom/graphhopper/util/JsonFeatureCollection;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    return-object p0
.end method

.method public getDistanceInfluence()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    return-object p0
.end method

.method public getHeadingPenalty()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    return-object p0
.end method

.method public getPriority()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->priorityStatements:Ljava/util/List;

    return-object p0
.end method

.method public getSpeed()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->speedStatements:Ljava/util/List;

    return-object p0
.end method

.method public getTurnPenalty()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/json/Statement;",
            ">;"
        }
    .end annotation

    .annotation runtime Lr5/i0;
        value = "turn_penalty"
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/CustomModel;->turnPenaltyStatements:Ljava/util/List;

    return-object p0
.end method

.method public internal()Lcom/graphhopper/util/CustomModel;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/util/CustomModel;->internal:Z

    return-object p0
.end method

.method public isInternal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/CustomModel;->internal:Z

    return p0
.end method

.method public setAreas(Lcom/graphhopper/util/JsonFeatureCollection;)Lcom/graphhopper/util/CustomModel;
    .locals 0
    .annotation runtime Lc6/f;
        using = Lcom/graphhopper/jackson/CustomModelAreasDeserializer;
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/util/CustomModel;->areas:Lcom/graphhopper/util/JsonFeatureCollection;

    return-object p0
.end method

.method public setDistanceInfluence(Ljava/lang/Double;)Lcom/graphhopper/util/CustomModel;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/CustomModel;->distanceInfluence:Ljava/lang/Double;

    return-object p0
.end method

.method public setHeadingPenalty(D)Lcom/graphhopper/util/CustomModel;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/util/CustomModel;->headingPenalty:Ljava/lang/Double;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/util/CustomModel;->createContentString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
