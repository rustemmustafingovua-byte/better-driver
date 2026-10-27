.class public Lcom/graphhopper/routing/RoundTripRouting$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/RoundTripRouting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field final distanceInMeter:D

.field final initialHeading:D

.field final maxRetries:I

.field final roundTripPointCount:I

.field final seed:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/routing/RoundTripRouting$Params;-><init>(Lcom/graphhopper/util/PMap;DI)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/PMap;DI)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "round_trip.distance"

    const-wide v1, 0x40c3880000000000L    # 10000.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/graphhopper/util/PMap;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/graphhopper/routing/RoundTripRouting$Params;->distanceInMeter:D

    .line 4
    const-string v2, "round_trip.seed"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/graphhopper/util/PMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/graphhopper/routing/RoundTripRouting$Params;->seed:J

    const-wide v2, 0x40e86a0000000000L    # 50000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    .line 5
    const-string v1, "round_trip.points"

    invoke-virtual {p1, v1, v0}, Lcom/graphhopper/util/PMap;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x14

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/graphhopper/routing/RoundTripRouting$Params;->roundTripPointCount:I

    .line 6
    iput-wide p2, p0, Lcom/graphhopper/routing/RoundTripRouting$Params;->initialHeading:D

    .line 7
    iput p4, p0, Lcom/graphhopper/routing/RoundTripRouting$Params;->maxRetries:I

    return-void
.end method
