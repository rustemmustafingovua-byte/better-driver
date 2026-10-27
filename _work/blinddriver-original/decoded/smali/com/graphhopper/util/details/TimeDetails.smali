.class public Lcom/graphhopper/util/details/TimeDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private prevEdgeId:I

.field private time:J

.field private final weighting:Lcom/graphhopper/routing/weighting/Weighting;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/weighting/Weighting;)V
    .locals 2

    const-string v0, "time"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/graphhopper/util/details/TimeDetails;->prevEdgeId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/util/details/TimeDetails;->time:J

    iput-object p1, p0, Lcom/graphhopper/util/details/TimeDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/details/TimeDetails;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/util/details/TimeDetails;->weighting:Lcom/graphhopper/routing/weighting/Weighting;

    const/4 v1, 0x0

    iget v2, p0, Lcom/graphhopper/util/details/TimeDetails;->prevEdgeId:I

    invoke-static {v0, p1, v1, v2}, Lcom/graphhopper/util/GHUtility;->calcMillisWithTurnMillis(Lcom/graphhopper/routing/weighting/Weighting;Lcom/graphhopper/util/EdgeIteratorState;ZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/util/details/TimeDetails;->time:J

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getEdge()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/util/details/TimeDetails;->prevEdgeId:I

    const/4 p0, 0x1

    return p0
.end method
