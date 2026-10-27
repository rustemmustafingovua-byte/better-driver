.class public final synthetic Lcom/graphhopper/reader/osm/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/d;->a:I

    iput-object p2, p0, Lcom/graphhopper/reader/osm/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/reader/osm/d;->a:I

    iget-object p0, p0, Lcom/graphhopper/reader/osm/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/graphhopper/reader/osm/RestrictionTagParser;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->b(Lcom/graphhopper/reader/osm/RestrictionTagParser;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/graphhopper/reader/osm/OSMReader;

    check-cast p1, Lcom/graphhopper/reader/ReaderNode;

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->isBarrierNode(Lcom/graphhopper/reader/ReaderNode;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/graphhopper/reader/osm/OSMReader;

    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->acceptWay(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
