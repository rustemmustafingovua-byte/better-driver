.class public Lcom/graphhopper/routing/util/EncodingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EncodedValueLookup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/EncodingManager$Builder;
    }
.end annotation


# instance fields
.field private bytesForFlags:I

.field private final encodedValueMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation
.end field

.field private intsForTurnCostFlags:I

.field private final turnEncodedValueMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/graphhopper/routing/util/EncodingManager;-><init>(IILjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    .line 4
    iput-object p4, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    .line 5
    iput p1, p0, Lcom/graphhopper/routing/util/EncodingManager;->bytesForFlags:I

    .line 6
    iput p2, p0, Lcom/graphhopper/routing/util/EncodingManager;->intsForTurnCostFlags:I

    return-void
.end method

.method public static synthetic a(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$fromProperties$0(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V

    return-void
.end method

.method public static synthetic b(Lcom/graphhopper/routing/util/EncodingManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$getVehicles$5(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$getVehicles$3(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValue;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$getVehicles$4(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValue;)Z

    move-result p0

    return p0
.end method

.method private static deserializeEncodedValueList(Ljava/lang/String;)Lp6/a;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/graphhopper/jackson/Jackson;->newObjectMapper()Lb6/c0;

    move-result-object v0

    const-class v1, Lp6/a;

    invoke-virtual {v0, v1, p0}, Lb6/c0;->q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp6/a;
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static synthetic e(Lcom/graphhopper/routing/ev/EncodedValue;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$getVehicles$2(Lcom/graphhopper/routing/ev/EncodedValue;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/routing/util/EncodingManager;->lambda$fromProperties$1(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V

    return-void
.end method

.method public static fromProperties(Lcom/graphhopper/storage/StorableProperties;)Lcom/graphhopper/routing/util/EncodingManager;
    .locals 6

    invoke-virtual {p0}, Lcom/graphhopper/storage/StorableProperties;->containsVersion()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "graph.em.version"

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "graph.encoded_values"

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/util/EncodingManager;->deserializeEncodedValueList(Ljava/lang/String;)Lp6/a;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Lcom/graphhopper/routing/util/e;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0, v2}, Lcom/graphhopper/routing/util/e;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-interface {v1, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "graph.turn_encoded_values"

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/graphhopper/routing/util/EncodingManager;->deserializeEncodedValueList(Ljava/lang/String;)Lp6/a;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Lcom/graphhopper/routing/util/e;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, v3}, Lcom/graphhopper/routing/util/e;-><init>(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    invoke-interface {v1, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Lcom/graphhopper/routing/util/EncodingManager;

    const-string v1, "graph.em.bytes_for_flags"

    invoke-static {p0, v1}, Lcom/graphhopper/routing/util/EncodingManager;->getIntegerProperty(Lcom/graphhopper/storage/StorableProperties;Ljava/lang/String;)I

    move-result v1

    const-string v4, "graph.em.ints_for_turn_cost_flags"

    invoke-static {p0, v4}, Lcom/graphhopper/routing/util/EncodingManager;->getIntegerProperty(Lcom/graphhopper/storage/StorableProperties;Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/graphhopper/routing/util/EncodingManager;-><init>(IILjava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/storage/StorableProperties;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/storage/Directory;->getLocation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "missing"

    :cond_2
    const-string v2, "\', delete the folder, or run a new import with another location.  Stored encoding version: "

    const-string v3, ", used encoding version: 4"

    const-string v4, "Incompatible encoding version. You need to use the same GraphHopper version you used to import the graph in \'"

    invoke-static {v4, p0, v2, v0, v3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The GraphHopper file format is not compatible with the data you are trying to load. You either need to use an older version of GraphHopper or run a new import"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic g(Lcom/graphhopper/routing/util/EncodingManager;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method private static getIntegerProperty(Lcom/graphhopper/storage/StorableProperties;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/StorableProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing EncodingManager property: \'"

    const-string v1, "\'"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    invoke-static {p0, v0, p1}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/graphhopper/routing/util/EncodingManager;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/graphhopper/routing/util/EncodingManager;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/util/EncodingManager;->bytesForFlags:I

    return-void
.end method

.method public static bridge synthetic j(Lcom/graphhopper/routing/util/EncodingManager;I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/util/EncodingManager;->intsForTurnCostFlags:I

    return-void
.end method

.method private static synthetic lambda$fromProperties$0(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V
    .locals 2

    invoke-virtual {p2}, Lb6/q;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->deserializeEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p2

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Duplicate encoded value name: "

    const-string v1, " in: graph.encoded_values="

    invoke-static {v0, p2, v1, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$fromProperties$1(Ljava/util/LinkedHashMap;Ljava/lang/String;Lb6/q;)V
    .locals 2

    invoke-virtual {p2}, Lb6/q;->F()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/routing/ev/EncodedValueSerializer;->deserializeEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p2

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {p2}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Duplicate turn encoded value name: "

    const-string v1, " in: graph.turn_encoded_values="

    invoke-static {v0, p2, v1, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$getVehicles$2(Lcom/graphhopper/routing/ev/EncodedValue;)Z
    .locals 1

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getVehicles$3(Lcom/graphhopper/routing/ev/EncodedValue;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_access"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getVehicles$4(Ljava/lang/String;Lcom/graphhopper/routing/ev/EncodedValue;)Z
    .locals 0

    invoke-interface {p1}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getVehicles$5(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/routing/util/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/graphhopper/routing/util/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static putEncodingManagerIntoProperties(Lcom/graphhopper/routing/util/EncodingManager;Lcom/graphhopper/storage/StorableProperties;)V
    .locals 2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "graph.em.version"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    iget v0, p0, Lcom/graphhopper/routing/util/EncodingManager;->bytesForFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "graph.em.bytes_for_flags"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    iget v0, p0, Lcom/graphhopper/routing/util/EncodingManager;->intsForTurnCostFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "graph.em.ints_for_turn_cost_flags"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/graphhopper/storage/StorableProperties;

    const-string v0, "graph.encoded_values"

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager;->toEncodedValuesAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    const-string v0, "graph.turn_encoded_values"

    invoke-direct {p0}, Lcom/graphhopper/routing/util/EncodingManager;->toTurnEncodedValuesAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/graphhopper/storage/StorableProperties;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/graphhopper/storage/StorableProperties;

    return-void
.end method

.method public static start()Lcom/graphhopper/routing/util/EncodingManager$Builder;
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/EncodingManager$Builder;

    invoke-direct {v0}, Lcom/graphhopper/routing/util/EncodingManager$Builder;-><init>()V

    return-object v0
.end method

.method private toTurnEncodedValuesAsString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/routing/util/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/util/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/graphhopper/jackson/Jackson;->newObjectMapper()Lb6/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb6/c0;->x(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method


# virtual methods
.method public createEdgeFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 5

    new-instance v0, Lcom/graphhopper/storage/IntsRef;

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager;->getBytesForFlags()I

    move-result p0

    int-to-double v1, p0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/IntsRef;-><init>(I)V

    return-object v0
.end method

.method public createRelationFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 1

    new-instance p0, Lcom/graphhopper/storage/IntsRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/IntsRef;-><init>(I)V

    return-object p0
.end method

.method public getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public getBytesForFlags()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->bytesForFlags:I

    return p0
.end method

.method public getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method

.method public getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p2, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot find EncodedValue \'"

    const-string v1, "\' in collection: "

    invoke-static {v0, p1, v1, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getEncodedValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "TT;>;"
        }
    .end annotation

    const-class p2, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-object p0
.end method

.method public getIntEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/IntEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-object p0
.end method

.method public getStringEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/StringEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/StringEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/StringEncodedValue;

    return-object p0
.end method

.method public getTurnBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getTurnEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public getTurnDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;
    .locals 1

    const-class v0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/EncodingManager;->getTurnEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-object p0
.end method

.method public getTurnEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p2, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/graphhopper/routing/ev/EncodedValue;

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot find Turn-EncodedValue "

    const-string v1, " in collection: "

    invoke-static {v0, p1, v1, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getTurnEncodedValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/ev/EncodedValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVehicles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager;->getEncodedValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/util/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/util/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/util/b;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/util/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/graphhopper/routing/util/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public hasEncodedValue(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasTurnEncodedValue(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->turnEncodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needsTurnCostsSupport()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->intsForTurnCostFlags:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toEncodedValuesAsString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/util/EncodingManager;->encodedValueMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/routing/util/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/util/b;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    :try_start_0
    invoke-static {}, Lcom/graphhopper/jackson/Jackson;->newObjectMapper()Lb6/c0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb6/c0;->x(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ","

    invoke-virtual {p0}, Lcom/graphhopper/routing/util/EncodingManager;->getVehicles()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
