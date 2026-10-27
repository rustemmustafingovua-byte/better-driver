.class public Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;
    }
.end annotation


# instance fields
.field private final SIZE:I

.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;",
            ">;"
        }
    .end annotation
.end field

.field private externalAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

.field private final speeds:Lp8/d;

.field private urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public constructor <init>(Lp8/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->SIZE:I

    new-instance v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0xbb9

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$1;-><init>(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;IFZ)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->cache:Ljava/util/Map;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->speeds:Lp8/d;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->lambda$handleWayTags$2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->lambda$handleWayTags$1(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->lambda$handleWayTags$0(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private filter(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->speeds:Lp8/d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "key"

    invoke-static {v2, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lp8/d;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v3, v3, Lp8/d;->d:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_2
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lr9/i;

    invoke-virtual {v6, v2}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_3
    :goto_1
    const-string v3, "country"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "country_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "maxspeed:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ":conditional"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private static synthetic lambda$handleWayTags$0(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "rural"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$handleWayTags$1(Ljava/lang/String;Li9/a;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "urban"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$handleWayTags$2(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;
    .locals 6

    const/16 p3, 0x96

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->speeds:Lp8/d;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v2, Lb0/u2;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lb0/u2;-><init>(I)V

    invoke-virtual {v1, p1, p2, v2}, Lp8/d;->b(Ljava/lang/String;Ljava/util/Map;Li9/e;)Lp8/a;

    move-result-object v1

    const-string v2, "maxspeed:advisory"

    const-string v3, "130"

    const-string v4, "maxspeed"

    if-eqz v1, :cond_0

    iget-object v1, v1, Lp8/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->rural:Ljava/lang/Integer;

    if-nez v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p3, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->rural:Ljava/lang/Integer;

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->speeds:Lp8/d;

    new-instance v1, Lb0/u2;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lb0/u2;-><init>(I)V

    invoke-virtual {p0, p1, p2, v1}, Lp8/d;->b(Ljava/lang/String;Ljava/util/Map;Li9/e;)Lp8/a;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lp8/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->urban:Ljava/lang/Integer;

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iput-object p3, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->urban:Ljava/lang/Integer;

    :cond_1
    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->externalAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    sget-object v2, Lcom/graphhopper/routing/ev/Country;->MISSING:Lcom/graphhopper/routing/ev/Country;

    const-string v3, "country"

    invoke-virtual {v1, v3, v2}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/routing/ev/Country;

    sget-object v6, Lcom/graphhopper/routing/ev/State;->MISSING:Lcom/graphhopper/routing/ev/State;

    const-string v7, "country_state"

    invoke-virtual {v1, v7, v6}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/graphhopper/routing/ev/State;

    if-eq v3, v2, :cond_2

    if-ne v7, v6, :cond_0

    invoke-virtual {v3}, Lcom/graphhopper/routing/ev/Country;->getAlpha2()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/graphhopper/routing/ev/State;->getStateCode()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->filter(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v6, Lcom/graphhopper/routing/ev/Country;->GBR:Lcom/graphhopper/routing/ev/Country;

    if-ne v3, v6, :cond_1

    const-string v3, "lit"

    const-string v6, "yes"

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->cache:Ljava/util/Map;

    new-instance v6, Lcom/graphhopper/routing/util/parsers/a;

    invoke-direct {v6, v0, v2, v1}, Lcom/graphhopper/routing/util/parsers/a;-><init>(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v3, v1, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;

    iget-object v2, v1, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->rural:Ljava/lang/Integer;

    iget-object v1, v1, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;->urban:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object v1, v2

    :goto_1
    iget-object v6, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v9, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->externalAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    if-nez v1, :cond_3

    move-wide v10, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v7, v1

    move-wide v10, v7

    :goto_2
    const/4 v7, 0x0

    move/from16 v8, p1

    invoke-interface/range {v6 .. v11}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v12, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iget-object v15, v0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->externalAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    if-nez v2, :cond_4

    :goto_3
    move-wide/from16 v16, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    goto :goto_3

    :goto_4
    const/4 v13, 0x0

    move/from16 v14, p1

    invoke-interface/range {v12 .. v17}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Call init before using "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public init(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EdgeIntAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->ruralMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->urbanMaxSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    iput-object p3, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;->externalAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    return-void
.end method
