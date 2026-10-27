.class public Lcom/graphhopper/util/RoundaboutInstruction;
.super Lcom/graphhopper/util/Instruction;
.source "SourceFile"


# instance fields
.field private clockwise:I

.field private exitNumber:I

.field private exited:Z

.field private radian:D


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    iput p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    iput-boolean p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->radian:D

    return-void
.end method


# virtual methods
.method public getExitNumber()I
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget p0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    return p0
.end method

.method public getExtraInfoJSON()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/graphhopper/util/RoundaboutInstruction;->getExitNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exit_number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "exited"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/graphhopper/util/RoundaboutInstruction;->getTurnAngle()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    invoke-static {v1, v2, p0}, Lcom/graphhopper/util/Helper;->round(DI)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string v1, "turn_angle"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getTurnAngle()D
    .locals 4

    iget v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/graphhopper/util/RoundaboutInstruction;->radian:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getTurnDescription(Lcom/graphhopper/util/Translation;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/graphhopper/util/Instruction;->rawName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->_getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    if-nez v1, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "roundabout_enter"

    invoke-interface {p1, v0, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/graphhopper/util/RoundaboutInstruction;->getExitNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "roundabout_exit"

    invoke-interface {p1, v0, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/util/RoundaboutInstruction;->getExitNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "roundabout_exit_onto"

    invoke-interface {p1, v0, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "no roundabout indication"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public increaseExitNumber()Lcom/graphhopper/util/RoundaboutInstruction;
    .locals 1

    iget v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    return-object p0
.end method

.method public isExited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    return p0
.end method

.method public setDirOfRotation(D)Lcom/graphhopper/util/RoundaboutInstruction;
    .locals 5

    iget v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    cmpl-double p1, p1, v3

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    iput v1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    return-object p0

    :cond_1
    cmpl-double p1, p1, v3

    if-lez p1, :cond_2

    move v1, v2

    :cond_2
    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->clockwise:I

    :cond_3
    return-object p0
.end method

.method public setExitNumber(I)Lcom/graphhopper/util/RoundaboutInstruction;
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exitNumber:I

    return-object p0
.end method

.method public setExited()Lcom/graphhopper/util/RoundaboutInstruction;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/util/RoundaboutInstruction;->exited:Z

    return-object p0
.end method

.method public setRadian(D)Lcom/graphhopper/util/RoundaboutInstruction;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/util/RoundaboutInstruction;->radian:D

    return-object p0
.end method
