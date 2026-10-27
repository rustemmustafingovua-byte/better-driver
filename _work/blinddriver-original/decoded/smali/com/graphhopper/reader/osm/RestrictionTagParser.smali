.class public Lcom/graphhopper/reader/osm/RestrictionTagParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;
    }
.end annotation


# instance fields
.field private final turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final vehicleTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/ev/BooleanEncodedValue;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;->vehicleTypes:Ljava/util/List;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;->turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/graphhopper/reader/osm/RestrictionTagParser;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$4(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static buildResult(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;
    .locals 2

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->parseRestrictionValue(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionType;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;-><init>(Lcom/graphhopper/reader/osm/RestrictionType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$3(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->lambda$parseRestrictionTags$1(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parseRestrictionTags$0(Ljava/util/Map$Entry;)Z
    .locals 1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "restriction:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parseRestrictionTags$1(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "give_way"

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$parseRestrictionTags$2(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "restriction:conditional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parseRestrictionTags$3(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "conditional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$parseRestrictionTags$4(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;->vehicleTypes:Ljava/util/List;

    const-string v0, "restriction:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parseRestrictionTags$5(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static parseRestrictionValue(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionType;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "no_exit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "no_left_turn_on_red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "no_entry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "only_right_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "no_u_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "no_right_turn_on_red"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "only_left_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "no_left_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "no_right_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "no_straight_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "only_straight_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "only_u_turn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v1, "uses unknown restriction value: \'"

    const-string v2, "\'"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {}, Lcom/graphhopper/reader/osm/OSMRestrictionException;->withoutWarning()Lcom/graphhopper/reader/osm/OSMRestrictionException;

    move-result-object p0

    throw p0

    :pswitch_1
    sget-object p0, Lcom/graphhopper/reader/osm/RestrictionType;->NO:Lcom/graphhopper/reader/osm/RestrictionType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/graphhopper/reader/osm/RestrictionType;->ONLY:Lcom/graphhopper/reader/osm/RestrictionType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6472a206 -> :sswitch_b
        -0x561d76cf -> :sswitch_a
        -0x4e07003a -> :sswitch_9
        -0x3f83c202 -> :sswitch_8
        -0x136bef49 -> :sswitch_7
        0x1996f8e2 -> :sswitch_6
        0x1a349392 -> :sswitch_5
        0x2e925e45 -> :sswitch_4
        0x33d65b33 -> :sswitch_3
        0x3a746474 -> :sswitch_2
        0x3ec5eeb9 -> :sswitch_1
        0x7dc1d4dc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getTurnRestrictionEnc()Lcom/graphhopper/routing/ev/BooleanEncodedValue;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;->turnRestrictionEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-object p0
.end method

.method public parseRestrictionTags(Ljava/util/Map;)Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;"
        }
    .end annotation

    const-string v0, "restriction"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/osm/h;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/osm/h;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/osm/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/graphhopper/reader/osm/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/graphhopper/reader/osm/h;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    const-string v3, "except"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/graphhopper/d;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/graphhopper/d;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;->vehicleTypes:Ljava/util/List;

    invoke-static {p0, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->buildResult(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has a \'restriction\' tag, but also \'restriction:\' tags"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v2, :cond_4

    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "neither has a \'restriction\' nor \'restriction:\' tags"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Lcom/graphhopper/reader/osm/OSMRestrictionException;->withoutWarning()Lcom/graphhopper/reader/osm/OSMRestrictionException;

    move-result-object p0

    throw p0

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/graphhopper/reader/osm/h;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string p1, "has an \'except\', but no \'restriction\' or \'restriction:conditional\' tag"

    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/h;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/graphhopper/reader/osm/h;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/reader/osm/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/graphhopper/reader/osm/d;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/osm/j;

    invoke-direct {v0, p1}, Lcom/graphhopper/reader/osm/j;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_9

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :goto_2
    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->buildResult(Ljava/lang/String;)Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p1, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "contains multiple different restriction values: \'"

    const-string v1, "\'"

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
