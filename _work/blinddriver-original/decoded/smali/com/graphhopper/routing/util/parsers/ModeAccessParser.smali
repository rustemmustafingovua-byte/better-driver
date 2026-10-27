.class public Lcom/graphhopper/routing/util/parsers/ModeAccessParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final CAR_BARRIERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTENDED:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ONEWAYS_FW:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final barriers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreOnewayKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final skipEmergency:Z

.field private final vehicleBackward:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleForward:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v9, "sump_buster"

    const-string v10, "jersey_barrier"

    const-string v0, "kissing_gate"

    const-string v1, "fence"

    const-string v2, "bollard"

    const-string v3, "stile"

    const-string v4, "turnstile"

    const-string v5, "cycle_barrier"

    const-string v6, "motorcycle_barrier"

    const-string v7, "block"

    const-string v8, "bus_trap"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "duplicate element: "

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->CAR_BARRIERS:Ljava/util/Set;

    const-string v6, "yes"

    const-string v7, "designated"

    const-string v8, "official"

    const-string v9, "permissive"

    const-string v10, "private"

    const-string v11, "permit"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v6, v0, v4

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->INTENDED:Ljava/util/Set;

    const-string v0, "yes"

    const-string v1, "true"

    const-string v2, "1"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->ONEWAYS_FW:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/graphhopper/routing/ev/BooleanEncodedValue;ZLcom/graphhopper/routing/ev/BooleanEncodedValue;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Z",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/graphhopper/routing/ev/f;

    const/16 v0, 0xc

    invoke-direct {p4, v0}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p2}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->vehicleForward:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/graphhopper/routing/ev/f;

    const/16 v0, 0xd

    invoke-direct {p4, v0}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {p2}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->vehicleBackward:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/graphhopper/routing/ev/f;

    const/16 p4, 0xe

    invoke-direct {p2, p4}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lwa/h;->w(Ljava/util/stream/Stream;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->ignoreOnewayKeys:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "no"

    const-string p2, "restricted"

    const-string p4, "military"

    const-string p5, "emergency"

    filled-new-array {p1, p2, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    const/4 p4, 0x4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object v0, p1, p5

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "duplicate element: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p5

    :cond_2
    iput-object p5, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p6, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->CAR_BARRIERS:Ljava/util/Set;

    :cond_3
    iput-object p6, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->barriers:Ljava/util/Set;

    const-string p1, ""

    invoke-interface {p5, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean p3, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->skipEmergency:Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "restriction values cannot contain empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->lambda$new$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->lambda$new$1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->lambda$new$2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstPriorityNodeTag(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static synthetic lambda$new$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":forward"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":backward"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "oneway:"

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 6

    const-string p4, "highway"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-boolean v0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->skipEmergency:Z

    if-eqz v0, :cond_0

    const-string v0, "service"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "emergency_access"

    invoke-virtual {p3, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getFirstIndex(Ljava/util/List;)I

    move-result p4

    const-string v0, ""

    if-gez p4, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    sget-object v3, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->INTENDED:Ljava/util/Set;

    invoke-static {p3, p4, v2, v3}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p4, "gh:barrier_edge"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p3, p4, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    const-string v3, "yes"

    if-eqz p4, :cond_4

    new-array p4, v2, [Ljava/lang/String;

    const-string v4, "node_tags"

    invoke-virtual {p3, v4, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, 0x0

    invoke-virtual {p3, v4, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    invoke-static {p4, v1}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->getFirstPriorityNodeTag(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "barrier"

    invoke-interface {p4, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictedValues:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->barriers:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "locked"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    sget-object p4, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->INTENDED:Ljava/util/Set;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->restrictionKeys:Ljava/util/List;

    const-string v4, "motorcar"

    invoke-interface {p4, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    sget-object v4, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->INTENDED:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz p4, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "foot"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p3, v1, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "bicycle"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p3, v1, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    if-eqz p4, :cond_6

    const-string p4, "hgv"

    invoke-virtual {p3, p4, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v2, p1, p2, v0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v0, p1, p2, v0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    :cond_8
    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->roundaboutEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p4, v2, p1, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p4

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->ignoreOnewayKeys:Ljava/util/List;

    invoke-virtual {p3, v1}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "no"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->isBackwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v3

    if-nez v1, :cond_a

    if-nez v3, :cond_9

    if-nez p4, :cond_9

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->isForwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p3

    if-eqz p3, :cond_a

    :cond_9
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v3, p1, p2, v0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    :cond_a
    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v2, p1, p2, v0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->accessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v0, p1, p2, v0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void
.end method

.method public isBackwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "oneway"

    const-string v1, "-1"

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->vehicleForward:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "no"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isForwardOneway(Lcom/graphhopper/reader/ReaderWay;)Z
    .locals 2

    const-string v0, "oneway"

    sget-object v1, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->ONEWAYS_FW:Ljava/util/Set;

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->vehicleBackward:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/graphhopper/reader/ReaderElement;->getFirstValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "no"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
