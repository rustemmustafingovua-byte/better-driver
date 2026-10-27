.class Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/RoundTripRouting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundTripCalculator"
.end annotation


# instance fields
.field private final pathCalculator:Lcom/graphhopper/routing/FlexiblePathCalculator;

.field private final previousEdges:Lcom/carrotsearch/hppc/r0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/FlexiblePathCalculator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/carrotsearch/hppc/c0;

    invoke-direct {v0}, Lcom/carrotsearch/hppc/c0;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;->previousEdges:Lcom/carrotsearch/hppc/r0;

    iput-object p1, p0, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;->pathCalculator:Lcom/graphhopper/routing/FlexiblePathCalculator;

    new-instance p0, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;

    invoke-virtual {p1}, Lcom/graphhopper/routing/FlexiblePathCalculator;->getWeighting()Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    const-wide/high16 v1, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->setEdgePenaltyFactor(D)Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;->setAvoidedEdges(Lcom/carrotsearch/hppc/r0;)Lcom/graphhopper/routing/weighting/AvoidEdgesWeighting;

    invoke-virtual {p1, p0}, Lcom/graphhopper/routing/FlexiblePathCalculator;->setWeighting(Lcom/graphhopper/routing/weighting/Weighting;)V

    return-void
.end method


# virtual methods
.method public calcPath(II)Lcom/graphhopper/routing/Path;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;->pathCalculator:Lcom/graphhopper/routing/FlexiblePathCalculator;

    new-instance v1, Lcom/graphhopper/routing/EdgeRestrictions;

    invoke-direct {v1}, Lcom/graphhopper/routing/EdgeRestrictions;-><init>()V

    invoke-virtual {v0, p1, p2, v1}, Lcom/graphhopper/routing/FlexiblePathCalculator;->calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/routing/Path;

    invoke-virtual {p1}, Lcom/graphhopper/routing/Path;->getEdges()Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    iget-object v1, p0, Lcom/graphhopper/routing/RoundTripRouting$RoundTripCalculator;->previousEdges:Lcom/carrotsearch/hppc/r0;

    iget v0, v0, Ln5/a;->b:I

    invoke-interface {v1, v0}, Lcom/carrotsearch/hppc/r0;->add(I)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method
