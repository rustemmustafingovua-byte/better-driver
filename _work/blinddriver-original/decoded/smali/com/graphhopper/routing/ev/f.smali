.class public final synthetic Lcom/graphhopper/routing/ev/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ev/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ev/f;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/util/details/IntersectionValues;

    invoke-static {p1}, Lcom/graphhopper/util/details/IntersectionValues;->a(Lcom/graphhopper/util/details/IntersectionValues;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/util/details/IntersectionValues;

    invoke-static {p1}, Lcom/graphhopper/util/details/IntersectionValues;->b(Lcom/graphhopper/util/details/IntersectionValues;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/json/Statement;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lj6/i;

    invoke-virtual {p1}, Lj6/i;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/util/JsonFeature;

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->a(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/util/shapes/GHPoint;

    invoke-static {p1}, Lcom/graphhopper/util/GHUtility;->d(Lcom/graphhopper/util/shapes/GHPoint;)Lpb/a;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/graphhopper/util/JsonFeature;

    invoke-virtual {p1}, Lcom/graphhopper/util/JsonFeature;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/OSMMaxWeightParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/ModeAccessParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/util/parsers/MaxWeightExceptParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/graphhopper/util/JsonFeature;

    invoke-static {p1}, Lcom/graphhopper/routing/lm/SplitArea;->fromJsonFeature(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/lm/SplitArea;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->j1(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->R0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->I0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->g(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->r(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->h(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->C(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_13
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->m0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->e(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->E(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
