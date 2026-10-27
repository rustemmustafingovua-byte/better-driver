.class public abstract Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final CYCLEWAY_BICYCLE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field protected final avoidHighwayTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;"
        }
    .end annotation
.end field

.field avoidSpeedLimit:I

.field bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private classBicycleKey:Ljava/lang/String;

.field protected final goodSurface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final preferHighwayTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final priorityEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field protected final pushingSectionsHighways:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field routeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final unpavedSurfaceTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "cycleway:bicycle"

    const-string v1, "cycleway:both:bicycle"

    const-string v2, "cycleway:left:bicycle"

    const-string v3, "cycleway:right:bicycle"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->CYCLEWAY_BICYCLE_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->pushingSectionsHighways:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    const-string v0, "paved"

    const-string v1, "asphalt"

    const-string v2, "concrete"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "duplicate element: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->goodSurface:Ljava/util/Set;

    iput-object p3, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->priorityEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const-string p1, "footway"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->addPushingSection(Ljava/lang/String;)V

    const-string p1, "pedestrian"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->addPushingSection(Ljava/lang/String;)V

    const-string p1, "steps"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->addPushingSection(Ljava/lang/String;)V

    const-string p1, "platform"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->addPushingSection(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "unpaved"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "gravel"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "ground"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "dirt"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "grass"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "compacted"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "earth"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "fine_gravel"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "grass_paver"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "ice"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "mud"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "salt"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "sand"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->unpavedSurfaceTags:Ljava/util/Set;

    const-string p2, "wood"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p3, "motorway"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "motorway_link"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "trunk"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "trunk_link"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p3, "primary"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "primary_link"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    const-string p3, "secondary"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "secondary_link"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    const-string p3, "bridleway"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object p3, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    sget-object p3, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    sget-object p2, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-static {p3, p1, p2}, La6/q;->t(Lcom/graphhopper/routing/util/PriorityCode;Ljava/util/Map;Lcom/graphhopper/routing/ev/RouteNetwork;)V

    const/16 p1, 0x47

    iput p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidSpeedLimit:I

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->lambda$collect$0(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertClassValueToPriority(Ljava/lang/String;)Lcom/graphhopper/routing/util/PriorityCode;
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x3

    if-eq p0, p1, :cond_5

    const/4 p1, -0x2

    if-eq p0, p1, :cond_4

    const/4 p1, -0x1

    if-eq p0, p1, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_1
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_2
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_3
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :cond_5
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->AVOID_MORE:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0

    :catch_0
    sget-object p0, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    return-object p0
.end method

.method private static synthetic lambda$collect$0(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addPushingSection(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->pushingSectionsHighways:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public collect(Lcom/graphhopper/reader/ReaderWay;DLjava/util/TreeMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/ReaderWay;",
            "D",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Double;",
            "Lcom/graphhopper/routing/util/PriorityCode;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "highway"

    invoke-virtual {v1, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->isDesignated(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "track"

    if-eqz v8, :cond_4

    const-string v8, "tracktype"

    const-string v12, ""

    invoke-virtual {v1, v8, v12}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v13, "grade1"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->goodSurface:Ljava/util/Set;

    const-string v13, "surface"

    invoke-virtual {v1, v13, v12}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    move v8, v10

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v9

    :goto_1
    const-string v12, "path"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    sget-object v8, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v8, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    const-string v8, "cycleway"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "segregated"

    const-string v14, "foot"

    const-string v15, "yes"

    if-eqz v12, :cond_5

    sget-object v12, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-virtual {v1, v14, v12}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v1, v13, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    sget-object v12, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    move-object/from16 v16, v13

    goto :goto_5

    :cond_6
    sget-object v12, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :goto_5
    invoke-static {v1, v10}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v12

    invoke-static {v1, v9}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v9

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    iget-object v12, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "tunnel"

    const-wide/high16 v17, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-nez v12, :cond_7

    cmpl-double v12, v9, v17

    if-eqz v12, :cond_8

    const-wide/high16 v19, 0x403e000000000000L    # 30.0

    cmpg-double v19, v9, v19

    if-gtz v19, :cond_8

    :cond_7
    move-wide/from16 v19, v9

    goto :goto_9

    :cond_8
    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v12, :cond_9

    iget v3, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidSpeedLimit:I

    move-wide/from16 v19, v9

    int-to-double v9, v3

    cmpl-double v3, v19, v9

    if-ltz v3, :cond_f

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_6

    :cond_9
    move-wide/from16 v19, v9

    goto :goto_a

    :cond_a
    move-wide/from16 v19, v9

    :goto_6
    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidHighwayTags:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/util/PriorityCode;

    if-nez v3, :cond_b

    sget-object v9, Lcom/graphhopper/routing/util/PriorityCode;->AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    goto :goto_7

    :cond_b
    move-object v9, v3

    :goto_7
    invoke-virtual {v2, v4, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-virtual {v1, v13, v9}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v3, :cond_c

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    goto :goto_8

    :cond_c
    invoke-virtual {v3}, Lcom/graphhopper/routing/util/PriorityCode;->worse()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/routing/util/PriorityCode;->worse()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v3

    :goto_8
    sget-object v9, Lcom/graphhopper/routing/util/PriorityCode;->EXCLUDE:Lcom/graphhopper/routing/util/PriorityCode;

    if-ne v3, v9, :cond_d

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    :cond_d
    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :goto_9
    cmpl-double v9, v19, v17

    if-eqz v9, :cond_e

    iget v9, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avoidSpeedLimit:I

    int-to-double v9, v9

    cmpg-double v9, v19, v9

    if-gez v9, :cond_f

    :cond_e
    sget-object v9, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-virtual {v1, v13, v9}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_f

    sget-object v9, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v3, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_a
    const-string v3, "use_sidepath"

    const-string v9, "bicycle"

    invoke-virtual {v1, v9, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->REACH_DESTINATION:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v3, "cycleway:both"

    const-string v10, "cycleway:right"

    const-string v12, "cycleway:left"

    filled-new-array {v8, v12, v3, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v8, Lcom/graphhopper/i;

    const/4 v10, 0x1

    invoke-direct {v8, v10, v1}, Lcom/graphhopper/i;-><init>(ILjava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    :cond_11
    const-string v8, "share_busway"

    const-string v10, "shoulder"

    const-string v11, "lane"

    const-string v12, "opposite_track"

    const-string v13, "shared_lane"

    filled-new-array {v11, v12, v13, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v10, Lcom/graphhopper/a;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v3}, Lcom/graphhopper/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_12

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_12
    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->pushingSectionsHighways:Ljava/util/HashSet;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "service"

    invoke-virtual {v1, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "parking_aisle"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_13
    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    const-string v7, "steps"

    invoke-virtual {v1, v6, v7}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->BAD:Lcom/graphhopper/routing/util/PriorityCode;

    goto :goto_c

    :cond_14
    invoke-virtual {v1, v9, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "permissive"

    invoke-virtual {v1, v9, v6}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->isDesignated(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v6

    if-eqz v6, :cond_17

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    goto :goto_c

    :cond_16
    :goto_b
    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->PREFER:Lcom/graphhopper/routing/util/PriorityCode;

    :cond_17
    :goto_c
    invoke-virtual {v1, v14, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v6, v16

    invoke-virtual {v1, v6, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v3}, Lcom/graphhopper/routing/util/PriorityCode;->worse()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v3

    :cond_18
    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    :goto_d
    const-string v3, "railway"

    const-string v6, "tram"

    invoke-virtual {v1, v3, v6}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->AVOID_MORE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v3, "lcn"

    invoke-virtual {v1, v3, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->VERY_NICE:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->classBicycleKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-direct {v0, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->convertClassValueToPriority(Ljava/lang/String;)Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1c
    const-string v3, "class:bicycle"

    invoke-virtual {v1, v3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-direct {v0, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->convertClassValueToPriority(Ljava/lang/String;)Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    :goto_e
    const-string v0, "scenic"

    invoke-virtual {v1, v0, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-wide/16 v0, 0x0

    cmpl-double v0, v19, v0

    if-lez v0, :cond_1f

    cmpg-double v0, v19, p2

    if-gtz v0, :cond_1f

    :cond_1e
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result v1

    sget-object v3, Lcom/graphhopper/routing/util/PriorityCode;->BEST:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v3}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result v3

    if-ge v1, v3, :cond_1f

    const-wide v3, 0x405b800000000000L    # 110.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Lcom/graphhopper/routing/util/PriorityCode;->better()Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

.method public final getPriorityEnc()Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->priorityEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method

.method public handlePriority(Lcom/graphhopper/reader/ReaderWay;DLjava/lang/Integer;)I
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-nez p4, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    sget-object v1, Lcom/graphhopper/routing/util/PriorityCode;->UNCHANGED:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {v0, p4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-wide v1, 0x405b800000000000L    # 110.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p4}, Lcom/graphhopper/routing/util/PriorityCode;->valueOf(I)Lcom/graphhopper/routing/util/PriorityCode;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->collect(Lcom/graphhopper/reader/ReaderWay;DLjava/util/TreeMap;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result p0

    return p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 9

    const-string p4, "highway"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->routeMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez p4, :cond_1

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/graphhopper/routing/util/PriorityCode;->SLIGHT_AVOID:Lcom/graphhopper/routing/util/PriorityCode;

    invoke-virtual {p4}, Lcom/graphhopper/routing/util/PriorityCode;->getValue()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {p4, v2, p1, p2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v1

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v3, 0x1

    invoke-interface {p4, v3, p1, p2}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->priorityEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {p0, p3, v1, v2, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->handlePriority(Lcom/graphhopper/reader/ReaderWay;DLjava/lang/Integer;)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/routing/util/PriorityCode;->getValue(I)D

    move-result-wide v7

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void
.end method

.method public isDesignated(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string p0, "bicycle"

    const-string v0, "designated"

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->CYCLEWAY_BICYCLE_KEYS:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bicycle_road"

    const-string v1, "yes"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cyclestreet"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "official"

    invoke-virtual {p1, p0, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

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

.method public setSpecificClassBicycle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "class:bicycle:"

    invoke-static {v0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->classBicycleKey:Ljava/lang/String;

    return-void
.end method
