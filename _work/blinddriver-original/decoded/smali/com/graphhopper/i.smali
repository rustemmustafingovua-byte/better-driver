.class public final synthetic Lcom/graphhopper/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/i;->a:I

    iput-object p2, p0, Lcom/graphhopper/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/graphhopper/i;->a:I

    iget-object p0, p0, Lcom/graphhopper/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Li9/c;

    invoke-static {p0, p1}, Ldadb/MessageQueue;->b(Li9/c;Ljava/lang/Object;)Ljava/util/Queue;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/graphhopper/routing/ev/EncodedValueLookup;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/weighting/custom/CustomModelParser;->e(Lcom/graphhopper/routing/ev/EncodedValueLookup;Ljava/lang/String;)Lcom/graphhopper/routing/ev/EncodedValue;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;

    check-cast p1, Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/RestrictionSetter;->b(Lcom/graphhopper/routing/util/parsers/RestrictionSetter;Lcom/graphhopper/routing/util/parsers/RestrictionSetter$Restriction;)Lcom/graphhopper/routing/util/parsers/RestrictionSetter$InternalRestriction;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/graphhopper/reader/ReaderWay;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonPriorityParser;->a(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->B(Ljava/util/Map;Ljava/util/Map$Entry;)Lcom/graphhopper/routing/ev/EncodedValue;

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
