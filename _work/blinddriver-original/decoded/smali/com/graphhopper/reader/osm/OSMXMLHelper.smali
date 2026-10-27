.class public Lcom/graphhopper/reader/osm/OSMXMLHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMember(Ljavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderRelation$Member;
    .locals 5

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    const-string v3, "w"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    goto :goto_0

    :cond_0
    const-string v3, "r"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    :cond_1
    :goto_0
    const-string v0, "ref"

    invoke-interface {p0, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "role"

    invoke-interface {p0, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-direct {v0, v2, v3, v4, p0}, Lcom/graphhopper/reader/ReaderRelation$Member;-><init>(Lcom/graphhopper/reader/ReaderElement$Type;JLjava/lang/String;)V

    return-object v0
.end method

.method public static createNode(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderNode;
    .locals 7

    new-instance v0, Lcom/graphhopper/reader/ReaderNode;

    const-string v1, "lat"

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-string v1, "lon"

    invoke-interface {p2, v2, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/ReaderNode;-><init>(JDD)V

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    invoke-static {v0, p2}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->readTags(Lcom/graphhopper/reader/ReaderElement;Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public static createRelation(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderRelation;
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/ReaderRelation;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/reader/ReaderRelation;-><init>(J)V

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    invoke-static {v0, p2}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->readMembers(Lcom/graphhopper/reader/ReaderRelation;Ljavax/xml/stream/XMLStreamReader;)V

    invoke-static {v0, p2}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->readTags(Lcom/graphhopper/reader/ReaderElement;Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public static createWay(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderWay;
    .locals 1

    new-instance v0, Lcom/graphhopper/reader/ReaderWay;

    invoke-direct {v0, p0, p1}, Lcom/graphhopper/reader/ReaderWay;-><init>(J)V

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    invoke-static {v0, p2}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->readNodes(Lcom/graphhopper/reader/ReaderWay;Ljavax/xml/stream/XMLStreamReader;)V

    invoke-static {v0, p2}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->readTags(Lcom/graphhopper/reader/ReaderElement;Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method private static readMembers(Lcom/graphhopper/reader/ReaderRelation;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "member"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMXMLHelper;->createMember(Ljavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/ReaderRelation$Member;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/reader/ReaderRelation;->add(Lcom/graphhopper/reader/ReaderRelation$Member;)V

    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readNodes(Lcom/graphhopper/reader/ReaderWay;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "ref"

    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/carrotsearch/hppc/t0;->a(J)V

    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readTags(Lcom/graphhopper/reader/ReaderElement;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "k"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "v"

    invoke-interface {p1, v1, v2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void
.end method
