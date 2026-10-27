.class public final synthetic Lcom/graphhopper/routing/ev/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ev/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->e0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->I(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->g1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->U0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->w0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->h0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->M(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->s0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->p(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->f1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->t(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->z0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->g0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    check-cast p2, Lcom/graphhopper/routing/ev/BikeRoadAccess;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->y(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/BikeRoadAccess;)Lcom/graphhopper/routing/ev/BikeRoadAccess;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->n(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->B(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->W(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->t0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->D0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->c(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->v0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->a0(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->d1(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->J(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/graphhopper/reader/ReaderWay;

    check-cast p2, Lcom/graphhopper/routing/ev/FootRoadAccess;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->o(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/ev/FootRoadAccess;)Lcom/graphhopper/routing/ev/FootRoadAccess;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p2, Lcom/graphhopper/util/PMap;

    invoke-static {p1, p2}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->T(Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/util/parsers/TagParser;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
