.class public final synthetic Lcom/graphhopper/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/graphhopper/GraphHopper;


# direct methods
.method public synthetic constructor <init>(Lcom/graphhopper/GraphHopper;I)V
    .locals 0

    iput p2, p0, Lcom/graphhopper/g;->a:I

    iput-object p1, p0, Lcom/graphhopper/g;->b:Lcom/graphhopper/GraphHopper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/graphhopper/g;->a:I

    iget-object p0, p0, Lcom/graphhopper/g;->b:Lcom/graphhopper/GraphHopper;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->D(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->p(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->e(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/routing/ev/EncodedValue$InitializerConfig;)Lcom/graphhopper/routing/util/parsers/RelationTagParser;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->f(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/Profile;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/config/Profile;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->u(Lcom/graphhopper/GraphHopper;Lcom/graphhopper/config/Profile;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
