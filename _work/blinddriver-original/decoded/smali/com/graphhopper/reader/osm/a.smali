.class public final synthetic Lcom/graphhopper/reader/osm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/reader/osm/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMReader;->a(Lcom/graphhopper/reader/ReaderRelation$Member;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/reader/osm/RestrictionTagParser;

    invoke-virtual {p1}, Lcom/graphhopper/reader/osm/RestrictionTagParser;->getTurnRestrictionEnc()Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/reader/osm/OSMNodeData;->a(Ljava/util/Map$Entry;)Lcom/graphhopper/search/KVStorage$KValue;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
