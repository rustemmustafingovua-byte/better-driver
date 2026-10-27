.class public Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WaySegmentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/PointAccess;Lcom/graphhopper/storage/Directory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/reader/osm/WaySegmentParser;

    new-instance v1, Lcom/graphhopper/reader/osm/OSMNodeData;

    invoke-direct {v1, p1, p2}, Lcom/graphhopper/reader/osm/OSMNodeData;-><init>(Lcom/graphhopper/util/PointAccess;Lcom/graphhopper/storage/Directory;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;-><init>(Lcom/graphhopper/reader/osm/OSMNodeData;I)V

    iput-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    return-void
.end method


# virtual methods
.method public build()Lcom/graphhopper/reader/osm/WaySegmentParser;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    return-object p0
.end method

.method public setEdgeHandler(Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->p(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$EdgeHandler;)V

    return-object p0
.end method

.method public setElevationProvider(Ljava/util/function/ToDoubleFunction;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToDoubleFunction<",
            "Lcom/graphhopper/reader/ReaderNode;",
            ">;)",
            "Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->q(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/ToDoubleFunction;)V

    return-object p0
.end method

.method public setRelationPreprocessor(Ljava/util/function/Consumer;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/reader/ReaderRelation;",
            ">;)",
            "Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->r(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public setRelationProcessor(Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->s(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$RelationProcessor;)V

    return-object p0
.end method

.method public setSplitNodeFilter(Ljava/util/function/Predicate;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/graphhopper/reader/ReaderNode;",
            ">;)",
            "Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->t(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Predicate;)V

    return-object p0
.end method

.method public setWayFilter(Ljava/util/function/Predicate;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/graphhopper/reader/ReaderWay;",
            ">;)",
            "Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->v(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/function/Predicate;)V

    return-object p0
.end method

.method public setWayPreprocessor(Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->w(Lcom/graphhopper/reader/osm/WaySegmentParser;Lcom/graphhopper/reader/osm/WaySegmentParser$WayPreprocessor;)V

    return-object p0
.end method

.method public setWorkerThreads(I)Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Builder;->waySegmentParser:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->x(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V

    return-object p0
.end method
