.class public final synthetic Lcom/graphhopper/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/graphhopper/d;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->F0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->a1(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->C0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/RoadAccess;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadAccess;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->b(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->d(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->P(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->W0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->V(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->A(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->H(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->m(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->S(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->X0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->i0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lcom/graphhopper/util/PMap;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/DefaultImportRegistry;->L0(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lcom/graphhopper/json/Statement$Op;

    invoke-virtual {p1}, Lcom/graphhopper/json/Statement$Op;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lcom/graphhopper/jackson/Gpx$Trkpt;

    invoke-static {p1}, Lcom/graphhopper/jackson/Gpx$Trk;->a(Lcom/graphhopper/jackson/Gpx$Trkpt;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p1, Lcom/graphhopper/jackson/Gpx$Trkseg;

    invoke-static {p1}, Lcom/graphhopper/jackson/Gpx$Trk;->b(Lcom/graphhopper/jackson/Gpx$Trkseg;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_12
    new-instance p0, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    check-cast p1, Lic/a;

    invoke-direct {p0, p1}, Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;-><init>(Lic/a;)V

    return-object p0

    :pswitch_13
    check-cast p1, Lic/a;

    invoke-static {p1}, Lcom/graphhopper/isochrone/algorithm/ReadableQuadEdge;->wrap(Lic/a;)Lcom/graphhopper/isochrone/algorithm/QuadEdgeAsReadableQuadEdge;

    move-result-object p0

    return-object p0

    :pswitch_14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-virtual {p1}, Lcom/graphhopper/config/Profile;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p1, Lcom/graphhopper/util/JsonFeature;

    invoke-static {p1}, Lcom/graphhopper/routing/util/CustomArea;->fromJsonFeature(Lcom/graphhopper/util/JsonFeature;)Lcom/graphhopper/routing/util/CustomArea;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->k(Lcom/graphhopper/util/JsonFeatureCollection;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->b(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->l(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p1, Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-virtual {p1}, Lcom/graphhopper/routing/lm/LandmarkStorage;->getLMConfig()Lcom/graphhopper/routing/lm/LMConfig;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-static {p1}, Lcom/graphhopper/GraphHopper;->j(Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p1, Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

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
