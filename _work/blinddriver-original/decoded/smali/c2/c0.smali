.class public final synthetic Lc2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c2;
.implements Lcom/graphhopper/routing/weighting/custom/ClassHelper;
.implements Lcom/graphhopper/routing/ch/CHPreparationGraph$TurnCostFunction;
.implements Lcom/graphhopper/storage/CHEdgeFilter;
.implements Lcom/graphhopper/routing/util/EdgeFilter;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;
.implements Ln/v;
.implements Ln1/i;
.implements Lr0/f;
.implements Lu2/d0;
.implements Lv4/s;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc2/c0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp2/g;)Lu2/b0;
    .locals 1

    new-instance p0, Lu2/b0;

    sget-object v0, Lu2/p;->a:Lu2/c0;

    invoke-direct {p0, p1, v0}, Lu2/b0;-><init>(Lp2/g;Lu2/q;)V

    return-object p0
.end method

.method public accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/graphhopper/storage/CHEdgeFilter;->e(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method public accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    .line 2
    iget p0, p0, Lc2/c0;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->f(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->b(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(Lv4/r;Lv4/t;Z)V
    .locals 0

    iget p0, p0, Lc2/c0;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, Lv4/r;->e()V

    return-void

    :pswitch_0
    invoke-interface {p1}, Lv4/r;->b()V

    return-void

    :pswitch_1
    invoke-interface {p1, p2}, Lv4/r;->d(Lv4/t;)V

    return-void

    :pswitch_2
    invoke-interface {p1, p2}, Lv4/r;->c(Lv4/t;)V

    return-void

    :pswitch_3
    invoke-interface {p1, p2}, Lv4/r;->a(Lv4/t;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public calcMax()D
    .locals 2

    iget p0, p0, Lc2/c0;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lua/nav/routing/PhoneGraphHopper;->G()D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-static {}, Lua/nav/routing/PhoneGraphHopper;->Q()D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d(F)F
    .locals 0

    return p1
.end method

.method public g(D)D
    .locals 10

    iget p0, p0, Lc2/c0;->l:I

    const-wide/16 v0, 0x0

    const-wide v2, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    packed-switch p0, :pswitch_data_0

    return-wide p1

    :pswitch_0
    sget-object p0, Ln1/d;->a:[F

    sget-object p0, Ln1/d;->d:Ln1/r;

    invoke-static {p0, p1, p2}, Ln1/d;->c(Ln1/r;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_1
    sget-object p0, Ln1/d;->a:[F

    sget-object p0, Ln1/d;->d:Ln1/r;

    invoke-static {p0, p1, p2}, Ln1/d;->d(Ln1/r;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_2
    sget-object p0, Ln1/d;->a:[F

    sget-object p0, Ln1/d;->c:Ln1/r;

    invoke-static {p0, p1, p2}, Ln1/d;->a(Ln1/r;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_3
    sget-object p0, Ln1/d;->a:[F

    sget-object p0, Ln1/d;->c:Ln1/r;

    invoke-static {p0, p1, p2}, Ln1/d;->b(Ln1/r;D)D

    move-result-wide p0

    return-wide p0

    :pswitch_4
    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    neg-double v0, p1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double p0, v0, v8

    if-ltz p0, :cond_1

    mul-double/2addr v6, v0

    add-double/2addr v6, v4

    const-wide v0, 0x4003333333333333L    # 2.4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    mul-double/2addr v0, v2

    :goto_1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    :pswitch_5
    cmpg-double p0, p1, v0

    if-gez p0, :cond_2

    neg-double v0, p1

    goto :goto_2

    :cond_2
    move-wide v0, p1

    :goto_2
    const-wide v8, 0x3f69a5c61c57a063L    # 0.0031308049535603718

    cmpl-double p0, v0, v8

    if-ltz p0, :cond_3

    const-wide v2, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v4

    div-double/2addr v0, v6

    goto :goto_3

    :cond_3
    div-double/2addr v0, v2

    :goto_3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public get(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D
    .locals 0

    iget p0, p0, Lc2/c0;->l:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1, p2, p3, p4, p5}, Lua/nav/routing/PhoneGraphHopper;->N(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-static {p1, p2, p3, p4, p5}, Lua/nav/routing/PhoneGraphHopper;->L(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EdgeIntAccess;III)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTurnWeight(III)D
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/graphhopper/routing/ch/CHPreparationGraph;->a(III)D

    move-result-wide p0

    return-wide p0
.end method
