.class public Lcom/graphhopper/routing/RouterConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activeLandmarkCount:I

.field private calcPoints:Z

.field private elevationWayPointMaxDistance:D

.field private instructionsEnabled:Z

.field private maxRoundTripRetries:I

.field private maxVisitedNodes:I

.field private nonChMaxWaypointDistance:I

.field private simplifyResponse:Z

.field private timeoutMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/graphhopper/routing/RouterConfig;->maxVisitedNodes:I

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/graphhopper/routing/RouterConfig;->timeoutMillis:J

    const/4 v1, 0x3

    iput v1, p0, Lcom/graphhopper/routing/RouterConfig;->maxRoundTripRetries:I

    iput v0, p0, Lcom/graphhopper/routing/RouterConfig;->nonChMaxWaypointDistance:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/routing/RouterConfig;->calcPoints:Z

    iput-boolean v0, p0, Lcom/graphhopper/routing/RouterConfig;->instructionsEnabled:Z

    iput-boolean v0, p0, Lcom/graphhopper/routing/RouterConfig;->simplifyResponse:Z

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lcom/graphhopper/routing/RouterConfig;->elevationWayPointMaxDistance:D

    const/16 v0, 0x8

    iput v0, p0, Lcom/graphhopper/routing/RouterConfig;->activeLandmarkCount:I

    return-void
.end method


# virtual methods
.method public getActiveLandmarkCount()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/RouterConfig;->activeLandmarkCount:I

    return p0
.end method

.method public getElevationWayPointMaxDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/RouterConfig;->elevationWayPointMaxDistance:D

    return-wide v0
.end method

.method public getMaxRoundTripRetries()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/RouterConfig;->maxRoundTripRetries:I

    return p0
.end method

.method public getMaxVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/RouterConfig;->maxVisitedNodes:I

    return p0
.end method

.method public getNonChMaxWaypointDistance()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/RouterConfig;->nonChMaxWaypointDistance:I

    return p0
.end method

.method public getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/RouterConfig;->timeoutMillis:J

    return-wide v0
.end method

.method public isCalcPoints()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/RouterConfig;->calcPoints:Z

    return p0
.end method

.method public isInstructionsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/RouterConfig;->instructionsEnabled:Z

    return p0
.end method

.method public isSimplifyResponse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/routing/RouterConfig;->simplifyResponse:Z

    return p0
.end method

.method public setActiveLandmarkCount(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/RouterConfig;->activeLandmarkCount:I

    return-void
.end method

.method public setCalcPoints(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/RouterConfig;->calcPoints:Z

    return-void
.end method

.method public setElevationWayPointMaxDistance(D)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/RouterConfig;->elevationWayPointMaxDistance:D

    return-void
.end method

.method public setInstructionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/RouterConfig;->instructionsEnabled:Z

    return-void
.end method

.method public setMaxRoundTripRetries(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/RouterConfig;->maxRoundTripRetries:I

    return-void
.end method

.method public setMaxVisitedNodes(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/RouterConfig;->maxVisitedNodes:I

    return-void
.end method

.method public setNonChMaxWaypointDistance(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/RouterConfig;->nonChMaxWaypointDistance:I

    return-void
.end method

.method public setSimplifyResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/routing/RouterConfig;->simplifyResponse:Z

    return-void
.end method

.method public setTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/RouterConfig;->timeoutMillis:J

    return-void
.end method
