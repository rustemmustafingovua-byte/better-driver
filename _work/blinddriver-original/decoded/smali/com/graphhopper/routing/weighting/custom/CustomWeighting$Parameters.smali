.class public Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/weighting/custom/CustomWeighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field private final distanceInfluence:D

.field private final edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

.field private final headingPenaltySeconds:D

.field private final maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

.field private final maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

.field private final turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    iput-object p2, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    iput-object p3, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    iput-object p4, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    iput-object p5, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

    iput-wide p6, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->distanceInfluence:D

    iput-wide p8, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->headingPenaltySeconds:D

    return-void
.end method


# virtual methods
.method public getDistanceInfluence()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->distanceInfluence:D

    return-wide v0
.end method

.method public getEdgeToPriorityMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->edgeToPriorityMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    return-object p0
.end method

.method public getEdgeToSpeedMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->edgeToSpeedMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$EdgeToDoubleMapping;

    return-object p0
.end method

.method public getHeadingPenaltySeconds()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->headingPenaltySeconds:D

    return-wide v0
.end method

.method public getMaxPrioCalc()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->maxPrioCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    return-object p0
.end method

.method public getMaxSpeedCalc()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->maxSpeedCalc:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$MaxCalc;

    return-object p0
.end method

.method public getTurnPenaltyMapping()Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/weighting/custom/CustomWeighting$Parameters;->turnPenaltyMapping:Lcom/graphhopper/routing/weighting/custom/CustomWeighting$TurnPenaltyMapping;

    return-object p0
.end method
