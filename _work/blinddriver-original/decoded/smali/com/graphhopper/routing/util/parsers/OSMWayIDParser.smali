.class public Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/IntEncodedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;->osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 4

    invoke-virtual {p3}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide v0

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;->osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p4}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getMaxStorableInt()I

    move-result p4

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-gtz p4, :cond_0

    invoke-virtual {p3}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toIntExact(J)I

    move-result p3

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;->osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    const/4 p4, 0x0

    invoke-interface {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/IntEncodedValue;->setInt(ZILcom/graphhopper/routing/ev/EdgeIntAccess;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p3}, Lcom/graphhopper/reader/ReaderElement;->getId()J

    move-result-wide p2

    iget-object p4, p0, Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;->osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p4}, Lcom/graphhopper/routing/ev/IntEncodedValue;->getMaxStorableInt()I

    move-result p4

    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMWayIDParser;->osmWayIdEnc:Lcom/graphhopper/routing/ev/IntEncodedValue;

    invoke-interface {p0}, Lcom/graphhopper/routing/ev/EncodedValue;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot store OSM way ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " as it is too large (> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "). You can disable "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " if you do not need to store the OSM way IDs"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
