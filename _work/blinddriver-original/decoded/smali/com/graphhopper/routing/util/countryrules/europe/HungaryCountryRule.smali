.class public Lcom/graphhopper/routing/util/countryrules/europe/HungaryCountryRule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/countryrules/CountryRule;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess(Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/routing/util/TransportationMode;Lcom/graphhopper/routing/ev/RoadAccess;)Lcom/graphhopper/routing/ev/RoadAccess;
    .locals 0

    sget-object p0, Lcom/graphhopper/routing/util/TransportationMode;->FOOT:Lcom/graphhopper/routing/util/TransportationMode;

    if-eq p2, p0, :cond_3

    sget-object p0, Lcom/graphhopper/routing/util/TransportationMode;->BIKE:Lcom/graphhopper/routing/util/TransportationMode;

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/graphhopper/routing/ev/RoadAccess;->YES:Lcom/graphhopper/routing/ev/RoadAccess;

    if-eq p3, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "highway"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/graphhopper/routing/ev/RoadClass;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/RoadClass;

    move-result-object p1

    sget-object p2, Lcom/graphhopper/routing/ev/RoadClass;->LIVING_STREET:Lcom/graphhopper/routing/ev/RoadClass;

    if-ne p1, p2, :cond_2

    sget-object p0, Lcom/graphhopper/routing/ev/RoadAccess;->DESTINATION:Lcom/graphhopper/routing/ev/RoadAccess;

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object p3
.end method
