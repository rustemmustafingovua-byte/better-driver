.class public final synthetic Lcom/graphhopper/reader/osm/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;


# virtual methods
.method public handleEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/graphhopper/reader/osm/WaySegmentParser;->e(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V

    return-void
.end method

.method public preprocessWay(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/graphhopper/reader/osm/WaySegmentParser;->b(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V

    return-void
.end method

.method public processRelation(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser;->f(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V

    return-void
.end method
