.class public final synthetic Lcom/graphhopper/isochrone/algorithm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-static {p1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->d(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)J

    move-result-wide p0

    return-wide p0
.end method
