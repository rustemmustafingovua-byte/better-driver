.class public Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/RelationTagParser;


# instance fields
.field private final bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;",
            "Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string v1, "mtb"

    const-string v2, "route_relation"

    invoke-static {v1, v2}, Lcom/graphhopper/routing/util/EncodingManager;->getKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/graphhopper/routing/ev/RouteNetwork;

    invoke-direct {v0, v1, v2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {v0, p2}, Lcom/graphhopper/routing/ev/IntEncodedValueImpl;->init(Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)I

    return-void
.end method


# virtual methods
.method public getTransformerRouteRelEnc()Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RouteNetwork;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-object p0
.end method

.method public handleRelationTags(Lcom/graphhopper/storage/IntsRef;Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 5

    new-instance v0, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;

    invoke-direct {v0, p1}, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;-><init>(Lcom/graphhopper/storage/IntsRef;)V

    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2, v0}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/ev/RouteNetwork;

    const-string v3, "route"

    const-string v4, "mtb"

    invoke-virtual {p2, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network"

    const-string v4, ""

    invoke-virtual {p2, v3, v4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/graphhopper/util/Helper;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/graphhopper/routing/util/parsers/BikeNetworkParserHelper;->determine(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RouteNetwork;

    move-result-object p2

    sget-object v3, Lcom/graphhopper/routing/ev/RouteNetwork;->MISSING:Lcom/graphhopper/routing/ev/RouteNetwork;

    if-eq p1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-le p1, v3, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_1
    return-void
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 2

    new-instance p3, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;

    invoke-direct {p3, p4}, Lcom/graphhopper/routing/ev/IntsRefEdgeIntAccess;-><init>(Lcom/graphhopper/storage/IntsRef;)V

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->transformerRouteRelEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object p3

    check-cast p3, Lcom/graphhopper/routing/ev/RouteNetwork;

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMMtbNetworkTagParser;->bikeRouteEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void
.end method
