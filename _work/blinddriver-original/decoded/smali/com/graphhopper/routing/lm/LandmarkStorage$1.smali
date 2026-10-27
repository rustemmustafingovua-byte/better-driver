.class Lcom/graphhopper/routing/lm/LandmarkStorage$1;
.super Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/lm/LandmarkStorage;-><init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/routing/ev/EncodedValueLookup;Lcom/graphhopper/storage/Directory;Lcom/graphhopper/routing/lm/LMConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/lm/LandmarkStorage;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/lm/LandmarkStorage;Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$1;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-direct {p0, p2}, Lcom/graphhopper/routing/weighting/AbstractAdjustedWeighting;-><init>(Lcom/graphhopper/routing/weighting/Weighting;)V

    return-void
.end method


# virtual methods
.method public calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$1;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->d(Lcom/graphhopper/routing/lm/LandmarkStorage;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/routing/weighting/Weighting;->calcEdgeWeight(Lcom/graphhopper/util/EdgeIteratorState;Z)D

    move-result-wide p0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double p0, p0, v0

    if-ltz p0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/routing/lm/LandmarkStorage$1;->this$0:Lcom/graphhopper/routing/lm/LandmarkStorage;

    invoke-static {p0}, Lcom/graphhopper/routing/lm/LandmarkStorage;->d(Lcom/graphhopper/routing/lm/LandmarkStorage;)Lcom/graphhopper/routing/weighting/Weighting;

    move-result-object p0

    invoke-interface {p0}, Lcom/graphhopper/routing/weighting/Weighting;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LM_BFS|"

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
