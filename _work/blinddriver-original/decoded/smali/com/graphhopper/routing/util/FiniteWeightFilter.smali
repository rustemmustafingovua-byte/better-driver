.class public Lcom/graphhopper/routing/util/FiniteWeightFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/EdgeFilter;


# instance fields
.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/FiniteWeightFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/routing/util/FiniteWeightFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/routing/util/FiniteWeightFilter;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    invoke-interface {p0, p1, v2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method
