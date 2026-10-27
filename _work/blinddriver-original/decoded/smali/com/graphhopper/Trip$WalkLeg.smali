.class public Lcom/graphhopper/Trip$WalkLeg;
.super Lcom/graphhopper/Trip$Leg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/Trip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WalkLeg"
.end annotation


# instance fields
.field private final arrivalTime:Ljava/util/Date;

.field private final departureTime:Ljava/util/Date;

.field public final details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation
.end field

.field public final instructions:Lcom/graphhopper/util/InstructionList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Lpb/i;DLcom/graphhopper/util/InstructionList;Ljava/util/Map;Ljava/util/Date;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lpb/i;",
            "D",
            "Lcom/graphhopper/util/InstructionList;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    const-string v1, "walk"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/Trip$Leg;-><init>(Ljava/lang/String;Ljava/lang/String;Lpb/i;D)V

    iput-object p6, v0, Lcom/graphhopper/Trip$WalkLeg;->instructions:Lcom/graphhopper/util/InstructionList;

    iput-object p2, v0, Lcom/graphhopper/Trip$WalkLeg;->departureTime:Ljava/util/Date;

    iput-object p7, v0, Lcom/graphhopper/Trip$WalkLeg;->details:Ljava/util/Map;

    iput-object p8, v0, Lcom/graphhopper/Trip$WalkLeg;->arrivalTime:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getArrivalTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/Trip$WalkLeg;->arrivalTime:Ljava/util/Date;

    return-object p0
.end method

.method public getDepartureTime()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/Trip$WalkLeg;->departureTime:Ljava/util/Date;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/Trip$WalkLeg;->departureTime:Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/Trip$WalkLeg;->arrivalTime:Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", arrivalTime="

    const-string v2, "}"

    const-string v3, "WalkLeg{departureTime="

    invoke-static {v3, v0, v1, p0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
