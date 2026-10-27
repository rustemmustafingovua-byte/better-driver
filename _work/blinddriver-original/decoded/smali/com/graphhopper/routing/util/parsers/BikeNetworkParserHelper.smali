.class public Lcom/graphhopper/routing/util/parsers/BikeNetworkParserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determine(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RouteNetwork;
    .locals 2

    sget-object v0, Lcom/graphhopper/routing/ev/RouteNetwork;->LOCAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    const-string v1, "lcn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "rcn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/graphhopper/routing/ev/RouteNetwork;->REGIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    return-object p0

    :cond_1
    const-string v1, "ncn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/graphhopper/routing/ev/RouteNetwork;->NATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    return-object p0

    :cond_2
    const-string v1, "icn"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/graphhopper/routing/ev/RouteNetwork;->INTERNATIONAL:Lcom/graphhopper/routing/ev/RouteNetwork;

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method
