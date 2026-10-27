.class public Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;
    }
.end annotation


# instance fields
.field private final conditionals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lcom/graphhopper/reader/osm/conditional/DateRangeParser;

.field private final restrictionSetter:Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->conditionals:Ljava/util/Collection;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->restrictionSetter:Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "yyyy-MM-dd"

    invoke-static {p1}, Lcom/graphhopper/util/Helper;->createFormatter(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-static {p3}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->createInstance(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/DateRangeParser;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->parser:Lcom/graphhopper/reader/osm/conditional/DateRangeParser;

    return-void
.end method

.method private static acceptedAndInRange(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :try_start_0
    aget-object v2, p0, v1

    const/16 v3, 0x28

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    aget-object p0, p0, v1

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v2}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->getRange(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/DateRange;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    return v1

    :catch_0
    :cond_2
    return v0
.end method

.method public static hasPermissiveTemporalRestriction(Lcom/graphhopper/reader/ReaderWay;ILjava/util/List;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/ReaderWay;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    if-ltz p1, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":conditional"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->acceptedAndInRange(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isInRange(Lcom/graphhopper/reader/osm/conditional/DateRangeParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    const/16 v0, 0x28

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x29

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/conditional/DateRangeParser;->checkCondition(Ljava/lang/String;)Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/conditional/ConditionalValueParser$ConditionState;->isCheckPassed()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    return-object v1
.end method


# virtual methods
.method public getTemporaryAccess(Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->conditionals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->parser:Lcom/graphhopper/reader/osm/conditional/DateRangeParser;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->isInRange(Lcom/graphhopper/reader/osm/conditional/DateRangeParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "no"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    invoke-virtual {p3}, Lcom/graphhopper/reader/ReaderElement;->getTags()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->getTemporaryAccess(Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser;->restrictionSetter:Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/OSMTemporalAccessParser$Setter;->setBoolean(ILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_0
    return-void
.end method
