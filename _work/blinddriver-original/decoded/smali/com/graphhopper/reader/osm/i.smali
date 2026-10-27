.class public final synthetic Lcom/graphhopper/reader/osm/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderRelation$Member;->getRef()J

    move-result-wide p0

    return-wide p0
.end method
