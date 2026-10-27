.class public Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;
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


# instance fields
.field private final mweEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/MaxWeightExcept;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/graphhopper/routing/util/TransportationMode;->HGV:Lcom/graphhopper/routing/util/TransportationMode;

    invoke-static {v0}, Lcom/graphhopper/routing/util/parsers/OSMRoadAccessParser;->toOSMRestrictions(Lcom/graphhopper/routing/util/TransportationMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/graphhopper/routing/ev/f;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/graphhopper/routing/ev/f;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->HGV_RESTRICTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/MaxWeightExcept;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->mweEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->lambda$static$0(Ljava/lang/String;)Ljava/lang/String;

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

    const-string p4, "maxweight:conditional"

    const-string v0, ""

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "@"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    array-length v1, p4

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    aget-object v1, p4, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aget-object p4, p4, v4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    const-string v5, "no"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "none"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const-string p3, "("

    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, ")"

    invoke-virtual {p4, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-virtual {p4, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->mweEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-static {p4}, Lcom/graphhopper/routing/ev/MaxWeightExcept;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/MaxWeightExcept;

    move-result-object p3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void

    :cond_2
    sget-object p4, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->HGV_RESTRICTIONS:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {v1}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->conditionalWeightToTons(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "maxweight"

    invoke-virtual {p3, v7, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToTons(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v7, v7, v5

    if-eqz v7, :cond_4

    const-string v7, "maxweightrating:hgv"

    invoke-virtual {p3, v7, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToTons(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v7, v7, v5

    if-eqz v7, :cond_4

    const-string v7, "maxgcweight"

    invoke-virtual {p3, v7, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/graphhopper/routing/util/parsers/helpers/OSMValueExtractor;->stringToTons(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v5, v7, v5

    if-nez v5, :cond_3

    :cond_4
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->mweEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/routing/ev/MaxWeightExcept;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/MaxWeightExcept;

    move-result-object p3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_5
    return-void
.end method
