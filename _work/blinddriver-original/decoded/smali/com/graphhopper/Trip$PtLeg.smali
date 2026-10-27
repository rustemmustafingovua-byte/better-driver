.class public Lcom/graphhopper/Trip$PtLeg;
.super Lcom/graphhopper/Trip$Leg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/Trip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PtLeg"
.end annotation


# instance fields
.field public final feed_id:Ljava/lang/String;

.field public final isInSameVehicleAsPrevious:Z

.field public final route_id:Ljava/lang/String;

.field public final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/Trip$Stop;",
            ">;"
        }
    .end annotation
.end field

.field public final travelTime:J

.field public final trip_headsign:Ljava/lang/String;

.field public final trip_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;DJLpb/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/Trip$Stop;",
            ">;DJ",
            "Lpb/i;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/Trip$Stop;

    iget-object v2, v0, Lcom/graphhopper/Trip$Stop;->stop_name:Ljava/lang/String;

    const-string v1, "pt"

    move-object v0, p0

    move-wide v4, p7

    move-object/from16 v3, p11

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/Trip$Leg;-><init>(Ljava/lang/String;Ljava/lang/String;Lpb/i;D)V

    iput-object p1, p0, Lcom/graphhopper/Trip$PtLeg;->feed_id:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/graphhopper/Trip$PtLeg;->isInSameVehicleAsPrevious:Z

    iput-object p3, p0, Lcom/graphhopper/Trip$PtLeg;->trip_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/graphhopper/Trip$PtLeg;->route_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/graphhopper/Trip$PtLeg;->trip_headsign:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, p0, Lcom/graphhopper/Trip$PtLeg;->travelTime:J

    iput-object p6, p0, Lcom/graphhopper/Trip$PtLeg;->stops:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getArrivalTime()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/Trip$PtLeg;->stops:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/Trip$Stop;

    iget-object p0, p0, Lcom/graphhopper/Trip$Stop;->arrivalTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDepartureTime()Ljava/util/Date;
    .locals 1

    iget-object p0, p0, Lcom/graphhopper/Trip$PtLeg;->stops:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/Trip$Stop;

    iget-object p0, p0, Lcom/graphhopper/Trip$Stop;->departureTime:Ljava/util/Date;

    return-object p0
.end method
