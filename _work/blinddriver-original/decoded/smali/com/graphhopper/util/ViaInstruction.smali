.class public Lcom/graphhopper/util/ViaInstruction;
.super Lcom/graphhopper/util/Instruction;
.source "SourceFile"


# instance fields
.field private viaPosition:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/Instruction;)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/util/Instruction;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/util/ViaInstruction;-><init>(Ljava/lang/String;Lcom/graphhopper/util/PointList;)V

    .line 4
    invoke-virtual {p1}, Lcom/graphhopper/util/Instruction;->getDistance()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/Instruction;->setDistance(D)Lcom/graphhopper/util/Instruction;

    .line 5
    invoke-virtual {p1}, Lcom/graphhopper/util/Instruction;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/util/Instruction;->setTime(J)Lcom/graphhopper/util/Instruction;

    .line 6
    iget-object p1, p1, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    iput-object p1, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/util/PointList;)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0, p1, p2}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/graphhopper/util/ViaInstruction;->viaPosition:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTurnDescription(Lcom/graphhopper/util/Translation;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/util/Instruction;->rawName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/ViaInstruction;->getViaCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "stopover"

    invoke-interface {p1, v0, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getViaCount()I
    .locals 2

    iget v0, p0, Lcom/graphhopper/util/ViaInstruction;->viaPosition:I

    if-ltz v0, :cond_0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Uninitialized via count in instruction "

    invoke-static {v1, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViaCount(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/ViaInstruction;->viaPosition:I

    return-void
.end method
