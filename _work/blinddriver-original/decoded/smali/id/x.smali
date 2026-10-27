.class public final synthetic Lid/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;
.implements Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lcom/graphhopper/routing/ev/DecimalEncodedValue;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/routing/ev/DecimalEncodedValue;I)V
    .locals 0

    iput p2, p0, Lid/x;->l:I

    iput-object p1, p0, Lid/x;->m:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calcMax()D
    .locals 2

    iget v0, p0, Lid/x;->l:I

    iget-object p0, p0, Lid/x;->m:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lua/nav/routing/PhoneGraphHopper;->H(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    return-wide v0

    :pswitch_0
    invoke-static {p0}, Lua/nav/routing/PhoneGraphHopper;->O(Lcom/graphhopper/routing/ev/DecimalEncodedValue;)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public get(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 1

    iget v0, p0, Lid/x;->l:I

    iget-object p0, p0, Lid/x;->m:Lcom/graphhopper/routing/ev/DecimalEncodedValue;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->M(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lua/nav/routing/PhoneGraphHopper;->P(Lcom/graphhopper/routing/ev/DecimalEncodedValue;Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
