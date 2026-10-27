.class public final synthetic Lcom/graphhopper/routing/ev/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ev/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->L(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->j0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->h1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->J0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->k(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->x0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->D(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->Q(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->k0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->E0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->q0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->l0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->w(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->q(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->b1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->f0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->A0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->P0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->Z0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->O0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_13
    new-instance p0, Lcom/graphhopper/routing/util/parsers/FootAccessParser;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/FootAccessParser;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lcom/graphhopper/routing/util/parsers/MountainBikeAccessParser;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/MountainBikeAccessParser;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lcom/graphhopper/routing/util/parsers/RacingBikeAccessParser;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/RacingBikeAccessParser;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->O(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_17
    new-instance p0, Lcom/graphhopper/routing/util/parsers/BikeAccessParser;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/BikeAccessParser;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lcom/graphhopper/routing/util/parsers/CarAccessParser;

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/routing/util/parsers/CarAccessParser;-><init>(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)V

    return-object p0

    :pswitch_19
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->T0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->Y(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->c1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    check-cast p2, Lcom/graphhopper/routing/ev/RoadAccess;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/RoadAccess;->countryHook(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/RoadAccess;)Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object p0

    return-object p0

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
