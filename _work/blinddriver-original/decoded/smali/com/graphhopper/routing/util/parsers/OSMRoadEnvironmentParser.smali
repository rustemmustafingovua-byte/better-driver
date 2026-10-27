.class public Lcom/graphhopper/routing/util/parsers/OSMRoadEnvironmentParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
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
            "Lcom/graphhopper/routing/ev/RoadEnvironment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadEnvironmentParser;->roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 6

    sget-object p4, Lcom/graphhopper/routing/ev/RoadEnvironment;->OTHER:Lcom/graphhopper/routing/ev/RoadEnvironment;

    invoke-static {p3}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->FERRY:Lcom/graphhopper/routing/ev/RoadEnvironment;

    goto/16 :goto_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "bridge"

    invoke-virtual {p3, v2, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const-string v3, "no"

    if-eqz v0, :cond_1

    invoke-virtual {p3, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->BRIDGE:Lcom/graphhopper/routing/ev/RoadEnvironment;

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "tunnel"

    invoke-virtual {p3, v2, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, v2, v3}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->TUNNEL:Lcom/graphhopper/routing/ev/RoadEnvironment;

    goto :goto_1

    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    const-string v2, "ford"

    invoke-virtual {p3, v2, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "highway"

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "node_tags"

    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p3, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v4, "gh:barrier_edge"

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p3, v4, v5}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    goto :goto_1

    :cond_4
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->ROAD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    goto :goto_1

    :cond_5
    move-object p3, p4

    goto :goto_1

    :cond_6
    :goto_0
    sget-object p3, Lcom/graphhopper/routing/ev/RoadEnvironment;->FORD:Lcom/graphhopper/routing/ev/RoadEnvironment;

    :goto_1
    if-eq p3, p4, :cond_7

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadEnvironmentParser;->roadEnvEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_7
    return-void
.end method
