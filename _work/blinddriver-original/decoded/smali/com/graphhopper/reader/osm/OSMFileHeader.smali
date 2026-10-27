.class public Lcom/graphhopper/reader/osm/OSMFileHeader;
.super Lcom/graphhopper/reader/ReaderElement;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->FILEHEADER:Lcom/graphhopper/reader/ReaderElement$Type;

    invoke-direct {p0, v0, v1, v2}, Lcom/graphhopper/reader/ReaderElement;-><init>(JLcom/graphhopper/reader/ReaderElement$Type;)V

    return-void
.end method

.method public static create(JLjavax/xml/stream/XMLStreamReader;)Lcom/graphhopper/reader/osm/OSMFileHeader;
    .locals 0

    new-instance p0, Lcom/graphhopper/reader/osm/OSMFileHeader;

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/OSMFileHeader;-><init>()V

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    return-object p0
.end method


# virtual methods
.method public readFileHeader(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result p0

    :goto_0
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "osm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result p0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/graphhopper/reader/ReaderElement;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OSM File header:"

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
