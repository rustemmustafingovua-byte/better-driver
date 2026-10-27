.class public final synthetic Lcom/graphhopper/c;
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

    iput p1, p0, Lcom/graphhopper/c;->a:I

    iput-object p2, p0, Lcom/graphhopper/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/graphhopper/c;->a:I

    iget-object p0, p0, Lcom/graphhopper/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/graphhopper/util/PMap;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/graphhopper/storage/BaseGraph;

    check-cast p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;

    invoke-static {p0, p1}, Lcom/graphhopper/storage/CHStorage;->a(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;)V

    return-void

    :pswitch_1
    check-cast p0, Lmb/u3;

    check-cast p1, Lmb/f1;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->b(Lmb/u3;Lmb/f1;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/graphhopper/routing/Path;

    check-cast p1, Ln5/a;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/AlternativeRouteEdgeCH;->i(Lcom/graphhopper/routing/Path;Ln5/a;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/graphhopper/util/PointList;

    check-cast p1, Ln5/b;

    invoke-static {p0, p1}, Lcom/graphhopper/reader/dem/EdgeElevationSmoothingMovingAverage;->a(Lcom/graphhopper/util/PointList;Ln5/b;)V

    return-void

    :pswitch_4
    check-cast p0, Ljava/util/LinkedHashMap;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->t(Ljava/util/LinkedHashMap;Ljava/lang/String;)V

    return-void

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
