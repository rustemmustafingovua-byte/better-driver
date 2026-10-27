.class public Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private edgeQuotientWeight:F

.field private hierarchyDepthWeight:F

.field private maxPollFactorContraction:D

.field private maxPollFactorHeuristic:D

.field private originalEdgeQuotientWeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->edgeQuotientWeight:F

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->originalEdgeQuotientWeight:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->hierarchyDepthWeight:F

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->edgeQuotientWeight:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->hierarchyDepthWeight:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    return-wide v0
.end method

.method public static bridge synthetic e(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->originalEdgeQuotientWeight:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->edgeQuotientWeight:F

    return-void
.end method

.method public static bridge synthetic g(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->hierarchyDepthWeight:F

    return-void
.end method

.method public static bridge synthetic h(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-void
.end method

.method public static bridge synthetic i(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    return-void
.end method

.method public static bridge synthetic j(Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/EdgeBasedNodeContractor$Params;->originalEdgeQuotientWeight:F

    return-void
.end method
