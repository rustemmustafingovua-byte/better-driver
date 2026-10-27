.class public final synthetic Lcom/graphhopper/reader/osm/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$CoordinateSupplier;
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$NodeTagSupplier;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/reader/osm/q;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoordinate(J)Lcom/graphhopper/util/shapes/GHPoint3D;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/q;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->c(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;J)Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object p0

    return-object p0
.end method

.method public getTags(J)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/q;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->b(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;J)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
