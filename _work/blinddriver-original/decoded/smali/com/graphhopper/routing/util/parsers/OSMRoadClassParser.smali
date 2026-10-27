.class public Lcom/graphhopper/routing/util/parsers/OSMRoadClassParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field protected final roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/RoadClass;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadClassParser;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 3

    const-string p4, "highway"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p4

    sget-object v0, Lcom/graphhopper/routing/ev/RoadClass;->OTHER:Lcom/graphhopper/routing/ev/RoadClass;

    const/4 v1, 0x0

    if-ne p4, v0, :cond_1

    const-string v2, "_link"

    invoke-virtual {p3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x5

    invoke-virtual {p3, v1, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p4

    :cond_1
    if-eq p4, v0, :cond_2

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMRoadClassParser;->roadClassEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    :cond_2
    :goto_0
    return-void
.end method
