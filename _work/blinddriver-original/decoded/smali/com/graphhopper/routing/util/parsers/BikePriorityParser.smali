.class public Lcom/graphhopper/routing/util/parsers/BikePriorityParser;
.super Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    .line 6
    const-string p1, "path"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->addPushingSection(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "service"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "residential"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->preferHighwayTags:Ljava/util/Set;

    const-string p2, "unclassified"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    const-string p1, "touring"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->setSpecificClassBicycle(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 4

    .line 1
    const-string v0, "bike"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehiclePriority;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    sget-object v2, Lcom/graphhopper/routing/ev/BikeNetwork;->KEY:Ljava/lang/String;

    const-class v3, Lcom/graphhopper/routing/ev/RouteNetwork;

    .line 3
    invoke-interface {p1, v2, v3}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object p1

    .line 4
    invoke-direct {p0, v1, v0, p1}, Lcom/graphhopper/routing/util/parsers/BikePriorityParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    return-void
.end method
