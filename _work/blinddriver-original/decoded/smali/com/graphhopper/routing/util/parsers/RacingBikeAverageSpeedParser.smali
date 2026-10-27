.class public Lcom/graphhopper/routing/util/parsers/RacingBikeAverageSpeedParser;
.super Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 2
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
    const-string p1, "grade1"

    const/16 p2, 0x14

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    .line 7
    const-string p1, "grade2"

    const/16 p3, 0xa

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    .line 8
    const-string p1, "grade3"

    const/4 p3, 0x4

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    .line 9
    const-string p1, "grade4"

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    .line 10
    const-string p1, "grade5"

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    .line 11
    const-string p1, "paved"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 12
    const-string p1, "asphalt"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 13
    const-string p1, "concrete"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 14
    const-string p1, "concrete:lanes"

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 15
    const-string p1, "concrete:plates"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 16
    const-string p1, "unpaved"

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 17
    const-string p1, "compacted"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 18
    const-string p1, "dirt"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 19
    const-string p1, "earth"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 20
    const-string p1, "fine_gravel"

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 21
    const-string p1, "grass"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 22
    const-string p1, "grass_paver"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 23
    const-string p1, "gravel"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 24
    const-string p1, "ground"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 25
    const-string p1, "ice"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 26
    const-string p1, "metal"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 27
    const-string p1, "mud"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 28
    const-string p1, "pebblestone"

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 29
    const-string p1, "salt"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 30
    const-string p1, "sand"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    .line 31
    const-string p1, "wood"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const/16 p1, 0x8

    .line 32
    const-string v1, "path"

    invoke-virtual {p0, v1, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 33
    const-string p1, "footway"

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 34
    const-string p1, "track"

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 35
    const-string p1, "trunk"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 36
    const-string p1, "trunk_link"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 37
    const-string p1, "primary"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 38
    const-string p1, "primary_link"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 39
    const-string p1, "secondary"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 40
    const-string p1, "secondary_link"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 41
    const-string p1, "tertiary"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 42
    const-string p1, "tertiary_link"

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->EXCELLENT:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3ff3333333333333L    # 1.2

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    .line 45
    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->VERY_BAD:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    .line 46
    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    .line 47
    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->VERY_HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;)V
    .locals 3

    .line 1
    const-string v0, "racingbike"

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
    invoke-direct {p0, v0, v1, p1}, Lcom/graphhopper/routing/util/parsers/RacingBikeAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    return-void
.end method
