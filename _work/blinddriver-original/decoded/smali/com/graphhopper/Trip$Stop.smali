.class public Lcom/graphhopper/Trip$Stop;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/Trip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stop"
.end annotation


# instance fields
.field public final arrivalCancelled:Z

.field public final arrivalTime:Ljava/util/Date;

.field public final departureCancelled:Z

.field public final departureTime:Ljava/util/Date;

.field public final geometry:Lpb/w;

.field public final plannedArrivalTime:Ljava/util/Date;

.field public final plannedDepartureTime:Ljava/util/Date;

.field public final predictedArrivalTime:Ljava/util/Date;

.field public final predictedDepartureTime:Ljava/util/Date;

.field public final stop_id:Ljava/lang/String;

.field public final stop_name:Ljava/lang/String;

.field public final stop_sequence:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lpb/w;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;ZLjava/util/Date;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/Trip$Stop;->stop_id:Ljava/lang/String;

    iput p2, p0, Lcom/graphhopper/Trip$Stop;->stop_sequence:I

    iput-object p3, p0, Lcom/graphhopper/Trip$Stop;->stop_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/graphhopper/Trip$Stop;->geometry:Lpb/w;

    iput-object p5, p0, Lcom/graphhopper/Trip$Stop;->arrivalTime:Ljava/util/Date;

    iput-object p6, p0, Lcom/graphhopper/Trip$Stop;->plannedArrivalTime:Ljava/util/Date;

    iput-object p7, p0, Lcom/graphhopper/Trip$Stop;->predictedArrivalTime:Ljava/util/Date;

    iput-boolean p8, p0, Lcom/graphhopper/Trip$Stop;->arrivalCancelled:Z

    iput-object p9, p0, Lcom/graphhopper/Trip$Stop;->departureTime:Ljava/util/Date;

    iput-object p10, p0, Lcom/graphhopper/Trip$Stop;->plannedDepartureTime:Ljava/util/Date;

    iput-object p11, p0, Lcom/graphhopper/Trip$Stop;->predictedDepartureTime:Ljava/util/Date;

    iput-boolean p12, p0, Lcom/graphhopper/Trip$Stop;->departureCancelled:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/Trip$Stop;->stop_id:Ljava/lang/String;

    iget v1, p0, Lcom/graphhopper/Trip$Stop;->stop_sequence:I

    iget-object v2, p0, Lcom/graphhopper/Trip$Stop;->arrivalTime:Ljava/util/Date;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/graphhopper/Trip$Stop;->departureTime:Ljava/util/Date;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stop{stop_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', stop_sequence="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", arrivalTime="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", departureTime="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
