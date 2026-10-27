.class public interface abstract Lcom/graphhopper/isochrone/algorithm/Triangulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;
    }
.end annotation


# virtual methods
.method public abstract triangulate(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;Ljava/util/function/ToDoubleFunction;D)Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/storage/index/Snap;",
            "Lcom/graphhopper/routing/querygraph/QueryGraph;",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;",
            "Ljava/util/function/ToDoubleFunction<",
            "Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;",
            ">;D)",
            "Lcom/graphhopper/isochrone/algorithm/Triangulator$Result;"
        }
    .end annotation
.end method
