.class public final synthetic Lcom/graphhopper/reader/osm/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/reader/osm/s;->a:I

    iput-object p2, p0, Lcom/graphhopper/reader/osm/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/reader/osm/s;->a:I

    iget-object p0, p0, Lcom/graphhopper/reader/osm/s;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/graphhopper/reader/osm/OSMReader;

    check-cast p1, Lcom/graphhopper/reader/ReaderRelation;

    invoke-virtual {p0, p1}, Lcom/graphhopper/reader/osm/OSMReader;->preprocessRelations(Lcom/graphhopper/reader/ReaderRelation;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;

    check-cast p1, Lcom/carrotsearch/hppc/x;

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->g(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;

    check-cast p1, Lcom/carrotsearch/hppc/x;

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->c(Lcom/graphhopper/reader/osm/WayToEdgeConverter$EdgeResult;Lcom/carrotsearch/hppc/x;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
