.class public Lcom/graphhopper/util/details/DistanceDetails;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private distance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "distance"

    invoke-direct {p0, v0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/graphhopper/util/details/DistanceDetails;->distance:D

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/details/DistanceDetails;->distance:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 2

    invoke-interface {p1}, Lcom/graphhopper/util/EdgeIteratorState;->getDistance()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/util/details/DistanceDetails;->distance:D

    const/4 p0, 0x1

    return p0
.end method
