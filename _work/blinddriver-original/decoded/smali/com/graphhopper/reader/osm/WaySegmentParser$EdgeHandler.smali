.class public interface abstract Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WaySegmentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EdgeHandler"
.end annotation


# virtual methods
.method public abstract handleEdge(IILcom/graphhopper/util/PointList;Lcom/graphhopper/reader/ReaderWay;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/util/PointList;",
            "Lcom/graphhopper/reader/ReaderWay;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation
.end method
