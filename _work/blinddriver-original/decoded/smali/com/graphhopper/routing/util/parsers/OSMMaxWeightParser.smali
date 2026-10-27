.class public Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final HGV_RESTRICTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_WEIGHT_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final weightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "maxweightrating:hgv"

    const-string v1, "maxgcweight"

    const-string v2, "maxweight"

    const-string v3, "maxweightrating"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->MAX_WEIGHT_TAGS:Ljava/util/List;

    sget-object v0, Lcom/graphhopper/routing/util/TransportationMode;->HGV:Lcom/graphhopper/routing/util/TransportationMode;

    invoke-static {v0}, Lcom/graphhopper/routing/util/parsers/OSMRoadAccessParser;->toOSMRestrictions(Lcom/graphhopper/routing/util/TransportationMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ev/f;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->HGV_RESTRICTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->weightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->lambda$static$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ":conditional"

    invoke-static {p0, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 9

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->weightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    sget-object v0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->MAX_WEIGHT_TAGS:Ljava/util/List;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->extractTons(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/DecimalEncodedValue;Ljava/util/List;)V

    sget-object p4, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->HGV_RESTRICTIONS:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-static {v0}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->conditionalWeightToTons(Ljava/lang/String;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->weightEncoder:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    invoke-interface/range {v3 .. v8}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    goto :goto_1

    :cond_0
    move v5, p1

    move-object v6, p2

    :goto_1
    move p1, v5

    move-object p2, v6

    goto :goto_0

    :cond_1
    return-void
.end method
