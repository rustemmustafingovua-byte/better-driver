.class public final synthetic Lcom/graphhopper/reader/osm/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    check-cast p1, Lcom/graphhopper/reader/ReaderNode;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->c(Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide p0

    return-wide p0
.end method
