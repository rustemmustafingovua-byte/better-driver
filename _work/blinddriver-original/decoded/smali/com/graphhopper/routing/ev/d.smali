.class public final synthetic Lcom/graphhopper/routing/ev/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ev/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->n0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/BikeRoadAccess;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/BikeRoadAccess;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->V0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->K(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->R(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->i(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->l(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->H0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->F(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->G0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->u(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->s(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/FootRoadAccess;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/FootRoadAccess;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->p0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->S0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->N0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->o0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->c0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->G(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->f(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->x(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->e1(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->y0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->Z(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->a(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->z(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->r0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->j(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->Q0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->d0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
