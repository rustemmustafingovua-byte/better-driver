.class public final synthetic Lcom/graphhopper/reader/osm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/OSMReader;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/OSMReader;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/e;->a:Lcom/graphhopper/reader/osm/OSMReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/e;->a:Lcom/graphhopper/reader/osm/OSMReader;

    invoke-virtual/range {p0 .. p5}, Lcom/graphhopper/reader/osm/OSMReader;->addEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V

    return-void
.end method

.method public preprocessWay(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/e;->a:Lcom/graphhopper/reader/osm/OSMReader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/reader/osm/OSMReader;->preprocessWay(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;)V

    return-void
.end method

.method public processRelation(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/e;->a:Lcom/graphhopper/reader/osm/OSMReader;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/OSMReader;->processRelation(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/function/LongToIntFunction;)V

    return-void
.end method
