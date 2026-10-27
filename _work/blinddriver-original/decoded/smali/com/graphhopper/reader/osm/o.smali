.class public final synthetic Lcom/graphhopper/reader/osm/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/DoubleSupplier;


# instance fields
.field public final synthetic a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

.field public final synthetic b:Lcom/graphhopper/reader/ReaderNode;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;Lcom/graphhopper/reader/ReaderNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/o;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/o;->b:Lcom/graphhopper/reader/ReaderNode;

    return-void
.end method


# virtual methods
.method public final getAsDouble()D
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/reader/osm/o;->a:Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/o;->b:Lcom/graphhopper/reader/ReaderNode;

    invoke-static {v0, p0}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;->a(Lcom/graphhopper/reader/osm/WaySegmentParser$Pass2Handler;Lcom/graphhopper/reader/ReaderNode;)D

    move-result-wide v0

    return-wide v0
.end method
