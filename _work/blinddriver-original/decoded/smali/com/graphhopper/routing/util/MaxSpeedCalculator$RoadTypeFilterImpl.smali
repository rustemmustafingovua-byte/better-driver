.class Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp8/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/MaxSpeedCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoadTypeFilterImpl"
.end annotation


# instance fields
.field private filter:Ljava/lang/String;

.field private fuzzyFilter:Ljava/lang/String;

.field private relationFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->filter:Ljava/lang/String;

    return-object p0
.end method

.method public getFuzzyFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->fuzzyFilter:Ljava/lang/String;

    return-object p0
.end method

.method public getRelationFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->relationFilter:Ljava/lang/String;

    return-object p0
.end method

.method public setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->filter:Ljava/lang/String;

    return-void
.end method

.method public setFuzzyFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->fuzzyFilter:Ljava/lang/String;

    return-void
.end method

.method public setRelationFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/util/MaxSpeedCalculator$RoadTypeFilterImpl;->relationFilter:Ljava/lang/String;

    return-void
.end method
