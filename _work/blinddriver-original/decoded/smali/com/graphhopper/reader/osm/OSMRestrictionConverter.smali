.class public Lcom/graphhopper/reader/osm/OSMRestrictionConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_LONG_ARRAY_LIST:[J

.field private static final LOGGER:Lnc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->LOGGER:Lnc/b;

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->EMPTY_LONG_ARRAY_LIST:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->lambda$getRestrictedWayIds$0(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->lambda$getViaNodeIfViaNodeRestriction$2(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0
.end method

.method public static buildRestrictionTopologyForGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongFunction;)Lcom/graphhopper/reader/osm/Triple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/reader/ReaderRelation;",
            "Ljava/util/function/LongFunction<",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;>;)",
            "Lcom/graphhopper/reader/osm/Triple<",
            "Lcom/graphhopper/reader/ReaderRelation;",
            "Lcom/graphhopper/reader/osm/RestrictionTopology;",
            "Lcom/graphhopper/reader/osm/RestrictionMembers;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->isTurnRestriction(Lcom/graphhopper/reader/ReaderRelation;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->extractMembers(Lcom/graphhopper/reader/ReaderRelation;)Lcom/graphhopper/reader/osm/RestrictionMembers;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->membersExist(Lcom/graphhopper/reader/osm/RestrictionMembers;Ljava/util/function/LongFunction;Lcom/graphhopper/reader/ReaderRelation;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/graphhopper/reader/osm/WayToEdgeConverter;

    invoke-direct {v1, p0, p2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;-><init>(Lcom/graphhopper/storage/BaseGraph;Ljava/util/function/LongFunction;)V

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->isViaWay()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->containsDuplicateWays(Lcom/graphhopper/reader/osm/RestrictionMembers;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getFromWays()Lcom/carrotsearch/hppc/t0;

    move-result-object p0

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getViaWays()Lcom/carrotsearch/hppc/t0;

    move-result-object p2

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getToWays()Lcom/carrotsearch/hppc/t0;

    move-result-object v2

    invoke-virtual {v1, p0, p2, v2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->convertForViaWays(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;

    move-result-object p0

    new-instance p2, Lcom/graphhopper/reader/osm/Triple;

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v3

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;->getNodes()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-static {v1, v2, v3, p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->way(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;

    move-result-object p0

    invoke-direct {p2, p1, p0, v0}, Lcom/graphhopper/reader/osm/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_0
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "contains duplicate from-/via-/to-members"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "graphhopper:via_node"

    invoke-virtual {p1, p2, p0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_2

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getFromWays()Lcom/carrotsearch/hppc/t0;

    move-result-object p2

    invoke-virtual {v0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getToWays()Lcom/carrotsearch/hppc/t0;

    move-result-object v2

    invoke-virtual {v1, p2, p0, v2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->convertForViaNode(Lcom/carrotsearch/hppc/t0;ILcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;

    move-result-object p2

    new-instance v1, Lcom/graphhopper/reader/osm/Triple;

    invoke-virtual {p2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v2

    invoke-virtual {p2}, Lcom/graphhopper/reader/osm/WayToEdgeConverter$NodeResult;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-static {v2, p0, p2}, Lcom/graphhopper/reader/osm/RestrictionTopology;->node(Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;

    move-result-object p0

    invoke-direct {v1, p1, p0, v0}, Lcom/graphhopper/reader/osm/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    const-string v0, "For some reason we did not set graphhopper:via_node for this relation: "

    invoke-static {p1, p2, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {}, Lcom/graphhopper/reader/osm/OSMRestrictionException;->withoutWarning()Lcom/graphhopper/reader/osm/OSMRestrictionException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "expected a turn restriction: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static buildRestrictionsForOSMRestriction(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/osm/RestrictionTopology;Lcom/graphhopper/reader/osm/RestrictionType;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/reader/osm/RestrictionTopology;",
            "Lcom/graphhopper/reader/osm/RestrictionType;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/graphhopper/reader/osm/RestrictionType;->NO:Lcom/graphhopper/reader/osm/RestrictionType;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_4

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->isViaWayRestriction()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln5/a;

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    new-instance v3, Lcom/carrotsearch/hppc/x;

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v4

    invoke-virtual {v4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    iget v4, p2, Ln5/a;->b:I

    invoke-virtual {v3, v4}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    iget v2, v2, Ln5/a;->b:I

    invoke-virtual {v3, v2}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-static {v3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->createViaEdgeRestriction(Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln5/a;

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln5/a;

    iget v4, p2, Ln5/a;->b:I

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaNodes()Lcom/carrotsearch/hppc/x;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    iget v3, v3, Ln5/a;->b:I

    invoke-static {v4, v5, v3}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->createViaNodeRestriction(III)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    sget-object v1, Lcom/graphhopper/reader/osm/RestrictionType;->ONLY:Lcom/graphhopper/reader/osm/RestrictionType;

    if-ne p2, v1, :cond_7

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_6

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p2

    if-gt p2, v1, :cond_6

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->isViaWayRestriction()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->createRestrictionsForViaEdgeOnlyRestriction(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/osm/RestrictionTopology;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaNodes()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p1

    invoke-static {p0, p2, v1, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->createRestrictionsForViaNodeOnlyRestriction(Lcom/graphhopper/util/EdgeExplorer;III)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'Only\' restrictions with multiple from- or to- edges are not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected restriction type: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic c(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->lambda$getRestrictedWayIds$1(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0
.end method

.method public static checkIfTopologyIsCompatibleWithRestriction(Lcom/graphhopper/reader/osm/RestrictionTopology;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "no_entry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has multiple members with role \'from\' even though it is not a \'no_entry\' restriction"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    if-le p0, v1, :cond_3

    const-string p0, "no_exit"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has multiple members with role \'to\' even though it is not a \'no_exit\' restriction"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static checkTags(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/carrotsearch/hppc/t0;",
            "Lcom/carrotsearch/hppc/t0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "restriction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "no_entry"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "no_exit"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    if-le p0, v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has multiple members with role \'from\' even though it is not a \'no_entry\' restriction"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iget p0, p1, Lcom/carrotsearch/hppc/t0;->m:I

    if-le p0, v3, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has multiple members with role \'to\' even though it is not a \'no_exit\' restriction"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method private static collectEdges(Lcom/graphhopper/reader/osm/RestrictionTopology;)Lcom/carrotsearch/hppc/x;
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/x;

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getFromEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->addAll(Lcom/carrotsearch/hppc/z;)I

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getToEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-object v0
.end method

.method private static containsDuplicateWays(Lcom/graphhopper/reader/osm/RestrictionMembers;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getAllWays()Lcom/carrotsearch/hppc/t0;

    move-result-object p0

    new-instance v0, Lcom/carrotsearch/hppc/w0;

    iget v1, p0, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/carrotsearch/hppc/w0;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/w0;->addAll(Lcom/carrotsearch/hppc/v0;)I

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w0;->size()I

    move-result v0

    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method private static createRestrictionsForViaEdgeOnlyRestriction(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/reader/osm/RestrictionTopology;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/BaseGraph;",
            "Lcom/graphhopper/reader/osm/RestrictionTopology;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaEdges()Lcom/carrotsearch/hppc/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->createEdgeExplorer()Lcom/graphhopper/util/EdgeExplorer;

    move-result-object p0

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->collectEdges(Lcom/graphhopper/reader/osm/RestrictionTopology;)Lcom/carrotsearch/hppc/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaNodes()Lcom/carrotsearch/hppc/x;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    invoke-static {p0, v2, v3, v5}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->createRestrictionsForViaNodeOnlyRestriction(Lcom/graphhopper/util/EdgeExplorer;III)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTopology;->getViaNodes()Lcom/carrotsearch/hppc/x;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v5

    invoke-interface {p0, v5}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v7

    invoke-virtual {v0, v6}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v8

    if-eq v7, v8, :cond_0

    new-instance v7, Lcom/carrotsearch/hppc/x;

    add-int/lit8 v8, v3, 0x1

    invoke-direct {v7, v8}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    move v8, v1

    :goto_2
    if-ge v8, v3, :cond_1

    invoke-virtual {v0, v8}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v5}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/carrotsearch/hppc/x;->add(I)V

    invoke-virtual {v7}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    invoke-virtual {v7, v1}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v8

    invoke-virtual {v7}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v7, v9}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v7}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->createViaEdgeRestriction(Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Via-edge restrictions must have at least one via-edge"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createRestrictionsForViaNodeOnlyRestriction(Lcom/graphhopper/util/EdgeExplorer;III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/EdgeExplorer;",
            "III)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    if-eq v1, p3, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-interface {p0}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->createViaNodeRestriction(III)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic d(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->lambda$getViaNodeIfViaNodeRestriction$3(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0
.end method

.method public static extractMembers(Lcom/graphhopper/reader/ReaderRelation;)Lcom/graphhopper/reader/osm/RestrictionMembers;
    .locals 12

    new-instance v0, Lcom/carrotsearch/hppc/t0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    new-instance v2, Lcom/carrotsearch/hppc/t0;

    invoke-direct {v2, v1}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    new-instance v3, Lcom/carrotsearch/hppc/t0;

    invoke-direct {v3, v1}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v4, -0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/graphhopper/reader/ReaderRelation$Member;

    const-string v9, "from"

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "\', but it should be of type \'way\'"

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v7

    sget-object v8, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/carrotsearch/hppc/t0;->a(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "has a member with role \'from\' and type \'"

    invoke-static {v1, v0, v10}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v9, "to"

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v7

    sget-object v8, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/carrotsearch/hppc/t0;->a(J)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "has a member with role \'to\' and type \'"

    invoke-static {v1, v0, v10}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v9, "via"

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v9

    sget-object v10, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne v9, v10, :cond_5

    cmp-long v4, v4, v7

    if-gez v4, :cond_4

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v4

    goto/16 :goto_0

    :cond_4
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has multiple members with role \'via\' and type \'node\', but multiple via-members are only allowed when they are of type: \'way\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v7

    sget-object v8, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/carrotsearch/hppc/t0;->a(J)V

    goto/16 :goto_0

    :cond_6
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "has a member with role \'via\' and type \'"

    const-string v2, "\', but it should be of type \'node\' or \'way\'"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v7, "location_hint"

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_9

    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has a member with an empty role"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    invoke-virtual {v6}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v0

    const-string v1, "has a member with an unknown role \'"

    const-string v2, "\'"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_1

    :cond_b
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has no member with role \'from\' and \'to\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_1
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v3}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    iget v1, v0, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v6, 0x1

    if-le v1, v6, :cond_e

    iget v1, v3, Lcom/carrotsearch/hppc/t0;->m:I

    if-gt v1, v6, :cond_d

    goto :goto_2

    :cond_d
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has multiple members with role \'from\' and \'to\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_2
    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v3, p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->checkTags(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Ljava/util/Map;)V

    cmp-long p0, v4, v7

    if-ltz p0, :cond_10

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_3

    :cond_f
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has members with role \'via\' of type \'node\' and \'way\', but only one type is allowed"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_3
    if-ltz p0, :cond_11

    invoke-static {v4, v5, v0, v3}, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaNode(JLcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/RestrictionMembers;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {v2}, Lcom/carrotsearch/hppc/t0;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    invoke-static {v0, v2, v3}, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaWay(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/RestrictionMembers;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has no member with role \'via\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has no member with role \'to\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v0, "has no member with role \'from\'"

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRestrictedWayIds(Lcom/graphhopper/reader/ReaderRelation;)[J
    .locals 2

    invoke-static {p0}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->isTurnRestriction(Lcom/graphhopper/reader/ReaderRelation;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->EMPTY_LONG_ARRAY_LIST:[J

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation;->getMembers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public static getViaNodeIfViaNodeRestriction(Lcom/graphhopper/reader/ReaderRelation;)J
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation;->getMembers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->findFirst()Ljava/util/OptionalLong;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/OptionalLong;->orElse(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static isTurnRestriction(Lcom/graphhopper/reader/ReaderRelation;)Z
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "restriction"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getRestrictedWayIds$0(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object p0

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$getRestrictedWayIds$1(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 2

    const-string v0, "from"

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "via"

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "to"

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getViaNodeIfViaNodeRestriction$2(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object p0

    sget-object v0, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getViaNodeIfViaNodeRestriction$3(Lcom/graphhopper/reader/ReaderRelation$Member;)Z
    .locals 1

    const-string v0, "via"

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static membersExist(Lcom/graphhopper/reader/osm/RestrictionMembers;Ljava/util/function/LongFunction;Lcom/graphhopper/reader/ReaderRelation;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/osm/RestrictionMembers;",
            "Ljava/util/function/LongFunction<",
            "Ljava/util/Iterator<",
            "Ln5/a;",
            ">;>;",
            "Lcom/graphhopper/reader/ReaderRelation;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/RestrictionMembers;->getAllWays()Lcom/carrotsearch/hppc/t0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/f;

    iget-wide v1, v0, Ln5/f;->b:J

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->LOGGER:Lnc/b;

    invoke-virtual {p2}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p1

    iget-wide v0, v0, Ln5/f;->b:J

    const-string v2, "Restriction relation "

    const-string v3, " uses excluded way "

    invoke-static {v2, p1, p2, v3}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ". Relation ignored."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnc/b;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
