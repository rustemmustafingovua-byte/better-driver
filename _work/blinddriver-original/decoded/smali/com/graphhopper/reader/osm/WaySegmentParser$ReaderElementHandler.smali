.class interface abstract Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WaySegmentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReaderElementHandler"
.end annotation


# virtual methods
.method public handleElement(Lcom/graphhopper/reader/ReaderElement;)V
    .locals 2

    sget-object v0, Lcom/graphhopper/reader/osm/WaySegmentParser$1;->$SwitchMap$com$graphhopper$reader$ReaderElement$Type:[I

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/graphhopper/reader/osm/OSMFileHeader;

    invoke-interface {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->handleFileHeader(Lcom/graphhopper/reader/osm/OSMFileHeader;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderElement;->getType()Lcom/graphhopper/reader/ReaderElement$Type;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown reader element type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p1, Lcom/graphhopper/reader/ReaderRelation;

    invoke-interface {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->handleRelation(Lcom/graphhopper/reader/ReaderRelation;)V

    return-void

    :cond_2
    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    invoke-interface {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->handleWay(Lcom/graphhopper/reader/ReaderWay;)V

    return-void

    :cond_3
    check-cast p1, Lcom/graphhopper/reader/ReaderNode;

    invoke-interface {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;->handleNode(Lcom/graphhopper/reader/ReaderNode;)V

    return-void
.end method

.method public handleFileHeader(Lcom/graphhopper/reader/osm/OSMFileHeader;)V
    .locals 0

    return-void
.end method

.method public handleNode(Lcom/graphhopper/reader/ReaderNode;)V
    .locals 0

    return-void
.end method

.method public handleRelation(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 0

    return-void
.end method

.method public handleWay(Lcom/graphhopper/reader/ReaderWay;)V
    .locals 0

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method
