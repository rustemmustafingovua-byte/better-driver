.class public final synthetic Lcom/graphhopper/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/a;->a:I

    iput-object p2, p0, Lcom/graphhopper/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/graphhopper/a;->a:I

    iget-object p0, p0, Lcom/graphhopper/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/graphhopper/reader/ReaderWay;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/graphhopper/routing/util/parsers/BikeCommonAverageSpeedParser;->a(Lcom/graphhopper/reader/ReaderWay;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast p1, Lcom/graphhopper/routing/lm/LMConfig;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->c(Ljava/util/List;Lcom/graphhopper/routing/lm/LMConfig;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Ljava/util/Map;

    check-cast p1, Lcom/graphhopper/storage/CHConfig;

    invoke-static {p0, p1}, Lcom/graphhopper/GraphHopper;->a(Ljava/util/Map;Lcom/graphhopper/storage/CHConfig;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
