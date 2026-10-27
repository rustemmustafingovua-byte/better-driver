.class public final synthetic Lcom/graphhopper/reader/osm/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/reader/osm/h;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/reader/ReaderNode;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->d(Lcom/graphhopper/reader/ReaderNode;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->a(Lcom/graphhopper/reader/ReaderWay;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    const-string p0, "give_way"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->f(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->c(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->d(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->b(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->c(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMRestrictionConverter;->a(Lcom/graphhopper/reader/ReaderRelation$Member;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
