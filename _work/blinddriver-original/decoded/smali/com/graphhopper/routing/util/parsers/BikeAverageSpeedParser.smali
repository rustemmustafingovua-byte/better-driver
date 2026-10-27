.class public Lcom/graphhopper/routing/util/parsers/BikeAverageSpeedParser;
.super Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Smoothness;",
            ">;",
            "Lcom/graphhopper/routing/ev/DecimalEncodedValue;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    .line 6
    const-string p1, "path"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 3

    .line 1
    const-string v0, "bike"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleSpeed;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    const-string v1, "smoothness"

    const-class v2, Lcom/graphhopper/routing/ev/Smoothness;

    .line 2
    invoke-interface {p1, v1, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEnumEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EnumEncodedValue;

    move-result-object v1

    const-string v2, "ferry_speed"

    .line 3
    invoke-interface {p1, v2}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object p1

    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/BikeAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    return-void
.end method
