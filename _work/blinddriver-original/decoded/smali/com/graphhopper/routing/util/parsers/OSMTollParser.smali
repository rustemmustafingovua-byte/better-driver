.class public Lcom/graphhopper/routing/util/parsers/OSMTollParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# static fields
.field private static final HGV_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final tollEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Toll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "toll:N2"

    const-string v1, "toll:N3"

    const-string v2, "toll:hgv"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/util/parsers/OSMTollParser;->HGV_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Toll;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMTollParser;->tollEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method

.method private getCountryDefault(Lcom/graphhopper/routing/ev/Country;Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/ev/Toll;
    .locals 1

    sget-object p0, Lcom/graphhopper/routing/util/parsers/OSMTollParser$1;->$SwitchMap$com$graphhopper$routing$ev$Country:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const-string p1, ""

    const-string v0, "highway"

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_0
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_0
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_1
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_1
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_2
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_3

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_3

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_3
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_4

    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_4
    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_6

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->PRIMARY:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_6
    :goto_1
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_5
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_8

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_6
    invoke-virtual {p2, v0, p1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p0

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->MOTORWAY:Lcom/graphhopper/routing/ev/RoadClass;

    if-eq p0, p1, :cond_a

    sget-object p1, Lcom/graphhopper/routing/ev/RoadClass;->TRUNK:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :cond_a
    :goto_3
    sget-object p0, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 2

    const-string p4, "toll"

    const-string v0, "yes"

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p4, Lcom/graphhopper/routing/ev/Toll;->ALL:Lcom/graphhopper/routing/ev/Toll;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/graphhopper/routing/util/parsers/OSMTollParser;->HGV_TAGS:Ljava/util/List;

    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p4, Lcom/graphhopper/routing/ev/Toll;->HGV:Lcom/graphhopper/routing/ev/Toll;

    goto :goto_0

    :cond_1
    const-string v0, "no"

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->hasTag(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Lcom/graphhopper/routing/ev/Toll;->NO:Lcom/graphhopper/routing/ev/Toll;

    goto :goto_0

    :cond_2
    sget-object p4, Lcom/graphhopper/routing/ev/Toll;->MISSING:Lcom/graphhopper/routing/ev/Toll;

    :goto_0
    sget-object v0, Lcom/graphhopper/routing/ev/Toll;->MISSING:Lcom/graphhopper/routing/ev/Toll;

    if-ne p4, v0, :cond_3

    const-string p4, "country"

    sget-object v0, Lcom/graphhopper/routing/ev/Country;->MISSING:Lcom/graphhopper/routing/ev/Country;

    invoke-virtual {p3, p4, v0}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/graphhopper/routing/ev/Country;

    invoke-direct {p0, p4, p3}, Lcom/graphhopper/routing/util/parsers/OSMTollParser;->getCountryDefault(Lcom/graphhopper/routing/ev/Country;Lcom/graphhopper/reader/ReaderWay;)Lcom/graphhopper/routing/ev/Toll;

    move-result-object p4

    :cond_3
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMTollParser;->tollEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void
.end method
