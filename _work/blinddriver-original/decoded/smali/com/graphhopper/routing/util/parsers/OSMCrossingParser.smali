.class public Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field protected final crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Crossing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Crossing;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 8

    const-string p4, "node_tags"

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 p4, 0x0

    move v0, p4

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "railway"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "crossing"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "no"

    if-nez v3, :cond_7

    const-string v3, "level_crossing"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v2, "crossing:signals"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    sget-object p3, Lcom/graphhopper/routing/ev/Crossing;->TRAFFIC_SIGNALS:Lcom/graphhopper/routing/ev/Crossing;

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_2
    const-string v6, "crossing:markings"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    sget-object p3, Lcom/graphhopper/routing/ev/Crossing;->MARKED:Lcom/graphhopper/routing/ev/Crossing;

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "highway"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "footway"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "cycleway"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    sget-object v2, Lcom/graphhopper/routing/ev/Crossing;->UNMARKED:Lcom/graphhopper/routing/ev/Crossing;

    invoke-virtual {v1, p4, p1, p2, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/graphhopper/routing/ev/Crossing;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Crossing;

    move-result-object v1

    sget-object v2, Lcom/graphhopper/routing/ev/Crossing;->MISSING:Lcom/graphhopper/routing/ev/Crossing;

    if-eq v1, v2, :cond_6

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {v2, p4, p1, p2, v1}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    const-string p3, "crossing:barrier"

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMCrossingParser;->crossingEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-static {p3}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_3

    :cond_8
    sget-object p3, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY_BARRIER:Lcom/graphhopper/routing/ev/Crossing;

    goto :goto_4

    :cond_9
    :goto_3
    sget-object p3, Lcom/graphhopper/routing/ev/Crossing;->RAILWAY:Lcom/graphhopper/routing/ev/Crossing;

    :goto_4
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_a
    :goto_5
    return-void
.end method
