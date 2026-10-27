.class public Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/ch/NodeBasedNodeContractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private edgeDifferenceWeight:F

.field private maxPollFactorContraction:D

.field private maxPollFactorHeuristic:D

.field private originalEdgesCountWeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->edgeDifferenceWeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->originalEdgesCountWeight:F

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->edgeDifferenceWeight:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-wide v0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    return-wide v0
.end method

.method public static bridge synthetic d(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;)F
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->originalEdgesCountWeight:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->edgeDifferenceWeight:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorContraction:D

    return-void
.end method

.method public static bridge synthetic g(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->maxPollFactorHeuristic:D

    return-void
.end method

.method public static bridge synthetic h(Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;F)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/ch/NodeBasedNodeContractor$Params;->originalEdgesCountWeight:F

    return-void
.end method
