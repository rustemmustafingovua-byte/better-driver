.class public final synthetic Lcom/graphhopper/isochrone/algorithm/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lcom/graphhopper/isochrone/algorithm/c;->a:I

    iput-object p1, p0, Lcom/graphhopper/isochrone/algorithm/c;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/graphhopper/isochrone/algorithm/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/graphhopper/isochrone/algorithm/c;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/graphhopper/isochrone/algorithm/c;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/isochrone/algorithm/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/reader/osm/WayToEdgeConverter;

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/carrotsearch/hppc/x;

    iget-object v2, p0, Lcom/graphhopper/isochrone/algorithm/c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/carrotsearch/hppc/x;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/c;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Ln5/a;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/graphhopper/reader/osm/WayToEdgeConverter;->f(Lcom/graphhopper/reader/osm/WayToEdgeConverter;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Ljava/util/List;Ln5/a;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/graphhopper/isochrone/algorithm/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/ToDoubleFunction;

    iget-object v1, p0, Lcom/graphhopper/isochrone/algorithm/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/graphhopper/storage/NodeAccess;

    iget-object v2, p0, Lcom/graphhopper/isochrone/algorithm/c;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/graphhopper/isochrone/algorithm/c;->e:Ljava/lang/Object;

    check-cast p0, Lcom/graphhopper/routing/querygraph/QueryGraph;

    check-cast p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/graphhopper/isochrone/algorithm/JTSTriangulator;->a(Ljava/util/function/ToDoubleFunction;Lcom/graphhopper/storage/NodeAccess;Ljava/util/ArrayList;Lcom/graphhopper/routing/querygraph/QueryGraph;Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
