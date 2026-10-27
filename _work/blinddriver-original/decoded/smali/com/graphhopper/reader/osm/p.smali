.class public final synthetic Lcom/graphhopper/reader/osm/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongToIntFunction;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/p;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    return-void
.end method


# virtual methods
.method public final applyAsInt(J)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/p;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->getInternalNodeIdOfOSMNode(J)I

    move-result p0

    return p0
.end method
