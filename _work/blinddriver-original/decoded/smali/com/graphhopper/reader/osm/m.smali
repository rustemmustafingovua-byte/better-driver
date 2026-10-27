.class public final synthetic Lcom/graphhopper/reader/osm/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/graphhopper/reader/ReaderRelation;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->g(Lcom/graphhopper/reader/ReaderRelation;)V

    return-void
.end method
