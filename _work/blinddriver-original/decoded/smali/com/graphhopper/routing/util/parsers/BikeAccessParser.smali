.class public Lcom/graphhopper/routing/util/parsers/BikeAccessParser;
.super Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeCommonAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    .line 7
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string p2, "kissing_gate"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string p2, "stile"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->barriers:Ljava/util/Set;

    const-string p1, "turnstile"

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V
    .locals 2

    .line 1
    const-string v0, "bike"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/VehicleAccess;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object v0

    const-string v1, "roundabout"

    .line 2
    invoke-interface {p1, v1}, Lcom/graphhopper/routing/ev/EncodedValueLookup;->getBooleanEncodedValue(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/graphhopper/routing/util/parsers/BikeAccessParser;-><init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V

    .line 4
    const-string p1, "block_private"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockPrivate(Z)V

    .line 5
    const-string p1, "block_fords"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/graphhopper/util/PMap;->getBool(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/util/parsers/AbstractAccessParser;->blockFords(Z)V

    return-void
.end method
