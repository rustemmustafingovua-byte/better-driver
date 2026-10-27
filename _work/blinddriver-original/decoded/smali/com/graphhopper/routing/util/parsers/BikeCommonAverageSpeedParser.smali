.class public abstract Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;
.super Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final CYCLEWAY_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final MIN_SPEED:I = 0x2

.field protected static final PUSHING_SECTION_SPEED:I = 0x4


# instance fields
.field private final highwaySpeeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final pushingSectionsHighways:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Smoothness;",
            ">;"
        }
    .end annotation
.end field

.field private final smoothnessFactor:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/graphhopper/routing/ev/Smoothness;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceSpeeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final trackTypeSpeeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "cycleway"

    const-string v1, "cycleway:left"

    const-string v2, "cycleway:both"

    const-string v3, "cycleway:right"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "duplicate element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->CYCLEWAY_KEYS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/EnumEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 10
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

    invoke-direct {p0, p1, p3}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->pushingSectionsHighways:Ljava/util/HashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->trackTypeSpeeds:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->surfaceSpeeds:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->smoothnessFactor:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->highwaySpeeds:Ljava/util/Map;

    const-string v0, "no"

    const-string v1, "agricultural"

    const-string v2, "forestry"

    const-string v3, "restricted"

    const-string v4, "military"

    const-string v5, "emergency"

    const-string v6, "private"

    const-string v7, "permit"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    new-instance p3, Ljava/util/HashSet;

    const/16 v0, 0x8

    invoke-direct {p3, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "duplicate element: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->restrictedValues:Ljava/util/Set;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const-string p1, "footway"

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    const-string p2, "pedestrian"

    invoke-virtual {p0, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    const-string p3, "steps"

    invoke-virtual {p0, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    const-string v1, "platform"

    invoke-virtual {p0, v1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->addPushingSection(Ljava/lang/String;)V

    const-string v2, "grade1"

    const/16 v3, 0x12

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    const-string v2, "grade2"

    const/16 v4, 0xc

    invoke-virtual {p0, v2, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    const-string v2, "grade3"

    invoke-virtual {p0, v2, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    const-string v2, "grade4"

    const/4 v5, 0x6

    invoke-virtual {p0, v2, v5}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    const-string v2, "grade5"

    const/4 v6, 0x4

    invoke-virtual {p0, v2, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setTrackTypeSpeed(Ljava/lang/String;I)V

    const-string v2, "paved"

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "asphalt"

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "cobblestone"

    invoke-virtual {p0, v2, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "cobblestone:flattened"

    const/16 v7, 0xa

    invoke-virtual {p0, v2, v7}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "sett"

    invoke-virtual {p0, v2, v7}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "concrete"

    invoke-virtual {p0, v2, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "concrete:lanes"

    const/16 v8, 0x10

    invoke-virtual {p0, v2, v8}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "concrete:plates"

    invoke-virtual {p0, v2, v8}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "paving_stones"

    invoke-virtual {p0, v2, v8}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "paving_stones:30"

    invoke-virtual {p0, v2, v8}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "unpaved"

    invoke-virtual {p0, v2, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "compacted"

    const/16 v9, 0xe

    invoke-virtual {p0, v2, v9}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "dirt"

    invoke-virtual {p0, v2, v7}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "earth"

    invoke-virtual {p0, v2, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "fine_gravel"

    invoke-virtual {p0, v2, v9}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "grass"

    invoke-virtual {p0, v2, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v2, "grass_paver"

    invoke-virtual {p0, v2, v0}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "gravel"

    invoke-virtual {p0, v0, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "ground"

    invoke-virtual {p0, v0, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "ice"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "metal"

    invoke-virtual {p0, v0, v7}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "mud"

    invoke-virtual {p0, v0, v7}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "pebblestone"

    invoke-virtual {p0, v0, v9}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "salt"

    invoke-virtual {p0, v0, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "sand"

    invoke-virtual {p0, v0, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "wood"

    invoke-virtual {p0, v0, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSurfaceSpeed(Ljava/lang/String;I)V

    const-string v0, "living_street"

    invoke-virtual {p0, v0, v5}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    invoke-virtual {p0, p3, v2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p3, "cycleway"

    invoke-virtual {p0, p3, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p3, "path"

    invoke-virtual {p0, p3, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    invoke-virtual {p0, v1, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    invoke-virtual {p0, p2, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "track"

    invoke-virtual {p0, p1, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "service"

    invoke-virtual {p0, p1, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "residential"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "unclassified"

    invoke-virtual {p0, p1, v8}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "road"

    invoke-virtual {p0, p1, v4}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "trunk"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "trunk_link"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "primary"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "primary_link"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "secondary"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "secondary_link"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "tertiary"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "tertiary_link"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "motorway"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "motorway_link"

    invoke-virtual {p0, p1, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    const-string p1, "bridleway"

    invoke-virtual {p0, p1, v6}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setHighwaySpeed(Ljava/lang/String;I)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->MISSING:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->OTHER:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide v0, 0x3fe6666666666666L    # 0.7

    invoke-virtual {p0, p1, v0, v1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->EXCELLENT:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide v2, 0x3ff199999999999aL    # 1.1

    invoke-virtual {p0, p1, v2, v3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->GOOD:Lcom/graphhopper/routing/ev/Smoothness;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->INTERMEDIATE:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->BAD:Lcom/graphhopper/routing/ev/Smoothness;

    invoke-virtual {p0, p1, v0, v1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->VERY_BAD:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3fd3333333333333L    # 0.3

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->VERY_HORRIBLE:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide p2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    sget-object p1, Lcom/graphhopper/routing/ev/Smoothness;->IMPASSABLE:Lcom/graphhopper/routing/ev/Smoothness;

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->lambda$handleWayTags$0(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handleWayTags$0(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "track"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addPushingSection(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->pushingSectionsHighways:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D
    .locals 0

    invoke-static {p1, p4}, Lcom/graphhopper/routing/util/parsers/OSMMaxSpeedParser;->parseMaxSpeed(Lcom/graphhopper/reader/ReaderWay;Z)D

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    const-string v1, "highway"

    invoke-virtual {v6, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "platform"

    const-string v9, "railway"

    const/4 v10, 0x0

    if-nez v7, :cond_2

    invoke-static {v6}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->isFerry(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->ferrySpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1, v10, v2, v3}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide v4

    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-static {v4, v5, v1}, Lcom/graphhopper/routing/util/FerrySpeedCalculator;->minmax(DLcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    move-object/from16 v3, p2

    :cond_1
    :goto_0
    invoke-virtual {v6, v9, v8}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "man_made"

    const-string v4, "pier"

    invoke-virtual {v6, v1, v4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->highwaySpeeds:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v4, v1

    const-string v1, "surface"

    invoke-virtual {v6, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "tracktype"

    invoke-virtual {v6, v12}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "vehicle"

    const-string v14, ""

    invoke-virtual {v6, v13, v14}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v13

    iget-object v14, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->restrictedValues:Ljava/util/Set;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/graphhopper/a;

    const/4 v10, 0x2

    invoke-direct {v15, v10, v14}, Lcom/graphhopper/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v13, v15}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v10

    const-string v13, "steps"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v14, "bicycle"

    if-eqz v13, :cond_4

    :cond_3
    move-wide/from16 v16, v4

    goto :goto_2

    :cond_4
    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->pushingSectionsHighways:Ljava/util/HashSet;

    invoke-virtual {v13, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "designated"

    invoke-virtual {v6, v14, v13}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "official"

    invoke-virtual {v6, v14, v13}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "segregated"

    const-string v15, "yes"

    invoke-virtual {v6, v13, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    sget-object v13, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->CYCLEWAY_KEYS:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v13

    move-wide/from16 v16, v4

    new-instance v4, Lcom/graphhopper/a;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v6}, Lcom/graphhopper/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v13, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v6, v14, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v4, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->trackTypeSpeeds:Ljava/util/Map;

    iget-object v5, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->highwaySpeeds:Ljava/util/Map;

    const-string v13, "cycleway"

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v12, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    goto :goto_3

    :cond_7
    :goto_2
    move-wide/from16 v4, v16

    :goto_3
    iget-object v13, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->surfaceSpeeds:Ljava/util/Map;

    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v13, 0x0

    new-array v15, v13, [Ljava/lang/String;

    invoke-virtual {v6, v1, v15}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v11, :cond_e

    :cond_8
    const-string v1, "dismount"

    invoke-virtual {v6, v14, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v6, v9, v8}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v10, :cond_9

    sget-object v1, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->INTENDED:Ljava/util/Collection;

    invoke-virtual {v6, v14, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_9
    const-string v1, "service"

    const/4 v13, 0x0

    new-array v8, v13, [Ljava/lang/String;

    invoke-virtual {v6, v1, v8}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const-string v1, "track"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "bridleway"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v11, :cond_f

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v7, v1

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    goto :goto_7

    :cond_c
    :goto_4
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    int-to-double v4, v1

    goto :goto_7

    :cond_d
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->trackTypeSpeeds:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->trackTypeSpeeds:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_5

    :cond_e
    :goto_6
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v2, v3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->getEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/routing/ev/Smoothness;

    iget-object v7, v0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->smoothnessFactor:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    mul-double/2addr v7, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v8, v13}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    iget-object v1, v0, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->avgSpeedEnc:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-interface {v1}, Lcom/graphhopper/routing/ev/EncodedValue;->isStoreTwoDirections()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v7, v8, v1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->applyMaxSpeed(Lcom/graphhopper/reader/ReaderWay;DZ)D

    move-result-wide v4

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/graphhopper/routing/util/parsers/AbstractAverageSpeedParser;->setSpeed(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    :cond_10
    :goto_8
    return-void
.end method

.method public setHighwaySpeed(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->highwaySpeeds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSmoothnessSpeedFactor(Lcom/graphhopper/routing/ev/Smoothness;D)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->smoothnessFactor:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSurfaceSpeed(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->surfaceSpeeds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTrackTypeSpeed(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->trackTypeSpeeds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
