.class public Lcom/graphhopper/util/details/PathDetailsBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPathDetailsBuilders(Ljava/util/List;Lcom/graphhopper/routing/Path;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/storage/Graph;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/graphhopper/routing/Path;",
            "Lcom/graphhopper/routing/ev/EncodedValueLookup;",
            "Lcom/graphhopper/routing/weighting/Weighting;",
            "Lcom/graphhopper/storage/Graph;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetailsBuilder;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "leg_time"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/graphhopper/util/details/ConstantDetailsBuilder;

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/graphhopper/util/details/ConstantDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "leg_distance"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/graphhopper/util/details/ConstantDetailsBuilder;

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getDistance()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/graphhopper/util/details/ConstantDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "leg_weight"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/graphhopper/util/details/ConstantDetailsBuilder;

    invoke-virtual {p2}, Lcom/graphhopper/routing/Path;->getWeight()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lcom/graphhopper/util/details/ConstantDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p2, "change_angle"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/graphhopper/util/details/ChangeAngleDetails;

    const-string v0, "orientation"

    invoke-interface {p3, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getDecimalEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/graphhopper/util/details/ChangeAngleDetails;-><init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_conditional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/graphhopper/util/details/KVStringDetails;

    invoke-direct {v1, v0}, Lcom/graphhopper/util/details/KVStringDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string p2, "motorway_junction"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/graphhopper/util/details/KVStringDetails;

    invoke-direct {v0, p2}, Lcom/graphhopper/util/details/KVStringDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string p2, "street_name"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/graphhopper/util/details/KVStringDetails;

    invoke-direct {v0, p2}, Lcom/graphhopper/util/details/KVStringDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string p2, "street_ref"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/graphhopper/util/details/KVStringDetails;

    invoke-direct {v0, p2}, Lcom/graphhopper/util/details/KVStringDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string p2, "street_destination"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/graphhopper/util/details/KVStringDetails;

    invoke-direct {v0, p2}, Lcom/graphhopper/util/details/KVStringDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string p2, "average_speed"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Lcom/graphhopper/util/details/AverageSpeedDetails;

    invoke-direct {p2, p4}, Lcom/graphhopper/util/details/AverageSpeedDetails;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string p2, "edge_id"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Lcom/graphhopper/util/details/EdgeIdDetails;

    invoke-direct {p2}, Lcom/graphhopper/util/details/EdgeIdDetails;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string p2, "edge_key"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Lcom/graphhopper/util/details/EdgeKeyDetails;

    invoke-direct {p2}, Lcom/graphhopper/util/details/EdgeKeyDetails;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string p2, "time"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    new-instance p2, Lcom/graphhopper/util/details/TimeDetails;

    invoke-direct {p2, p4}, Lcom/graphhopper/util/details/TimeDetails;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string p2, "weight"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lcom/graphhopper/util/details/WeightDetails;

    invoke-direct {p2, p4}, Lcom/graphhopper/util/details/WeightDetails;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string p2, "distance"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    new-instance p2, Lcom/graphhopper/util/details/DistanceDetails;

    invoke-direct {p2}, Lcom/graphhopper/util/details/DistanceDetails;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string p2, "intersection"

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    new-instance p2, Lcom/graphhopper/util/details/IntersectionDetails;

    invoke-direct {p2, p5, p4}, Lcom/graphhopper/util/details/IntersectionDetails;-><init>(Lcom/graphhopper/storage/Graph;Lcom/graphhopper/routing/weighting/Weighting;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_17

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3, p4}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->hasEncodedValue(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_11

    goto :goto_1

    :cond_11
    const-class p5, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-interface {p3, p4, p5}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getEncodedValue(Ljava/lang/String;Ljava/lang/Class;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p5

    instance-of v0, p5, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/graphhopper/util/details/DecimalDetails;

    check-cast p5, Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-direct {v0, p4, p5}, Lcom/graphhopper/util/details/DecimalDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_12
    instance-of v0, p5, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    if-eqz v0, :cond_13

    new-instance v0, Lcom/graphhopper/util/details/BooleanDetails;

    check-cast p5, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-direct {v0, p4, p5}, Lcom/graphhopper/util/details/BooleanDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_13
    instance-of v0, p5, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    if-eqz v0, :cond_14

    new-instance v0, Lcom/graphhopper/util/details/EnumDetails;

    check-cast p5, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-direct {v0, p4, p5}, Lcom/graphhopper/util/details/EnumDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/EnumEncodedValue;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_14
    instance-of v0, p5, Lcom/graphhopper/routing/ev/StringEncodedValue;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/graphhopper/util/details/StringDetails;

    check-cast p5, Lcom/graphhopper/routing/ev/StringEncodedValue;

    invoke-direct {v0, p4, p5}, Lcom/graphhopper/util/details/StringDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/StringEncodedValue;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_15
    instance-of v0, p5, Lcom/graphhopper/routing/ev/IntEncodedValue;

    if-eqz v0, :cond_16

    new-instance v0, Lcom/graphhopper/util/details/IntDetails;

    check-cast p5, Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-direct {v0, p4, p5}, Lcom/graphhopper/util/details/IntDetails;-><init>(Ljava/lang/String;Lcom/graphhopper/routing/ev/IntEncodedValue;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unknown EncodedValue class "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-le p2, p3, :cond_19

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_18

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    add-int/lit8 p3, p3, 0x1

    check-cast p4, Lcom/graphhopper/util/details/PathDetailsBuilder;

    invoke-interface {p4}, Lcom/graphhopper/util/details/PathDetailsBuilder;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find the path details: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt p2, p3, :cond_1a

    return-object p0

    :cond_1a
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "It should not happen that there are more path details added "

    const-string p4, " than requested "

    invoke-static {p3, p0, p4, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
