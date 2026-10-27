.class public Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final GET_OFF_BIKE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final INTENDED:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final bikeAccessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

.field private final getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/BooleanEncodedValue;Lcom/graphhopper/routing/ev/BooleanEncodedValue;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "official"

    const-string v1, "permissive"

    const-string v2, "designated"

    const-string v3, "yes"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->INTENDED:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "pedestrian"

    const-string v2, "platform"

    const-string v3, "footway"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->GET_OFF_BIKE:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iput-object p2, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->bikeAccessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 7

    const-string p4, "highway"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, ""

    const-string v1, "vehicle"

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->INTENDED:Ljava/util/List;

    const-string v3, "bicycle"

    invoke-virtual {p3, v3, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->GET_OFF_BIKE:Ljava/util/HashSet;

    invoke-virtual {v2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "railway"

    const-string v6, "platform"

    invoke-virtual {p3, v2, v6}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "cycleway"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "no"

    invoke-virtual {p3, v1, v2}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "forestry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "agricultural"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "path"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "foot"

    const-string v1, "designated"

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "segregated"

    const-string v1, "yes"

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    const-string v1, "steps"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p4, "dismount"

    invoke-virtual {p3, v3, p4}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v4, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v5, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_4
    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->bikeAccessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v4, p1, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p3

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->bikeAccessEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p4, v5, p1, p2}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p4

    if-eq p3, p4, :cond_6

    if-nez p3, :cond_5

    iget-object p3, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p3, v4, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_5
    if-nez p4, :cond_6

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMGetOffBikeParser;->getOffBikeEnc:Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    invoke-interface {p0, v5, p1, p2, v5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    :cond_6
    return-void
.end method
