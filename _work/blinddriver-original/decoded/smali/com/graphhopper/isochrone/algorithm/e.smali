.class public final synthetic Lcom/graphhopper/isochrone/algorithm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/isochrone/algorithm/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .locals 0

    iget p0, p0, Lcom/graphhopper/isochrone/algorithm/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;

    invoke-static {p1}, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;->h(Lcom/graphhopper/routing/AlternativeRouteEdgeCH$PotentialAlternativeInfo;)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;

    invoke-static {p1}, Lcom/graphhopper/routing/AlternativeRouteCH;->d(Lcom/graphhopper/routing/AlternativeRouteCH$PotentialAlternativeInfo;)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;

    invoke-static {p1}, Lcom/graphhopper/routing/AlternativeRoute;->c(Lcom/graphhopper/routing/AlternativeRoute$AlternativeInfo;)D

    move-result-wide p0

    return-wide p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-static {p1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->a(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide p0

    return-wide p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-static {p1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->c(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide p0

    return-wide p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;

    invoke-static {p1}, Lcom/graphhopper/isochrone/algorithm/ShortestPathTree;->b(Lcom/graphhopper/isochrone/algorithm/ShortestPathTree$IsoLabel;)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
