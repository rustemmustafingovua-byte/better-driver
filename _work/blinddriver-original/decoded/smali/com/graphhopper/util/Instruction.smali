.class public Lcom/graphhopper/util/Instruction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONTINUE_ON_STREET:I = 0x0

.field public static final FERRY:I = 0x9

.field public static final FINISH:I = 0x4

.field public static final IGNORE:I = -0x80000000

.field public static final KEEP_LEFT:I = -0x7

.field public static final KEEP_RIGHT:I = 0x7

.field public static final LEAVE_ROUNDABOUT:I = -0x6

.field public static final PT_END_TRIP:I = 0x67

.field public static final PT_START_TRIP:I = 0x65

.field public static final PT_TRANSFER:I = 0x66

.field public static final REACHED_VIA:I = 0x5

.field public static final TURN_LEFT:I = -0x2

.field public static final TURN_RIGHT:I = 0x2

.field public static final TURN_SHARP_LEFT:I = -0x3

.field public static final TURN_SHARP_RIGHT:I = 0x3

.field public static final TURN_SLIGHT_LEFT:I = -0x1

.field public static final TURN_SLIGHT_RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x63

.field public static final USE_ROUNDABOUT:I = 0x6

.field public static final U_TURN_LEFT:I = -0x8

.field public static final U_TURN_RIGHT:I = 0x8

.field public static final U_TURN_UNKNOWN:I = -0x62


# instance fields
.field protected distance:D

.field protected extraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected points:Lcom/graphhopper/util/PointList;

.field protected rawName:Z

.field protected sign:I

.field protected time:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/graphhopper/util/Instruction;->name:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    iput p1, p0, Lcom/graphhopper/util/Instruction;->sign:I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/graphhopper/util/Instruction;->name:Ljava/lang/String;

    :cond_0
    iput-object p3, p0, Lcom/graphhopper/util/Instruction;->points:Lcom/graphhopper/util/PointList;

    return-void
.end method


# virtual methods
.method public _getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    const-string v1, "street_ref"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDistance()D
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/Instruction;->distance:D

    return-wide v0
.end method

.method public getExtraInfoJSON()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->points:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getPoints()Lcom/graphhopper/util/PointList;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->points:Lcom/graphhopper/util/PointList;

    return-object p0
.end method

.method public getSign()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/util/Instruction;->sign:I

    return p0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/util/Instruction;->time:J

    return-wide v0
.end method

.method public getTurnDescription(Lcom/graphhopper/util/Translation;)Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/graphhopper/util/Instruction;->rawName:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->_getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    const-string v2, "ferry"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getSign()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/graphhopper/util/Helper;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "continue"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_1
    const-string v2, "continue_onto"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    if-eqz v1, :cond_3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "no ferry information provided but sign is FERRY"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/16 v4, 0x65

    if-ne v2, v4, :cond_5

    const-string v2, "pt_start_trip"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x66

    if-ne v2, v4, :cond_6

    const-string v2, "pt_transfer_to"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x67

    if-ne v2, v4, :cond_7

    const-string v2, "pt_end_trip"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    const/16 v4, -0x62

    const-string v5, "u_turn"

    if-eq v2, v4, :cond_12

    const/4 v4, -0x8

    if-eq v2, v4, :cond_11

    const/4 v4, -0x7

    if-eq v2, v4, :cond_10

    const/4 v4, -0x3

    if-eq v2, v4, :cond_f

    const/4 v4, -0x2

    if-eq v2, v4, :cond_e

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    const/4 v4, 0x1

    if-eq v2, v4, :cond_c

    const/4 v4, 0x2

    if-eq v2, v4, :cond_b

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_9

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v5, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_9
    const-string v4, "keep_right"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_a
    const-string v4, "turn_sharp_right"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_b
    const-string v4, "turn_right"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_c
    const-string v4, "turn_slight_right"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_d
    const-string v4, "turn_slight_left"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_e
    const-string v4, "turn_left"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_f
    const-string v4, "turn_sharp_left"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_10
    const-string v4, "keep_left"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v4, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_11
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v5, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_12
    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v5, v3}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "unknown"

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v0, v3

    goto :goto_1

    :cond_14
    const-string v2, "turn_onto"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "leave_ferry"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    iget-object v1, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    const-string v2, "street_destination"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    const-string v2, "street_destination_ref"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v1, :cond_17

    if-eqz p0, :cond_16

    const-string v2, "toward_destination_with_ref"

    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "toward_destination"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    if-eqz p0, :cond_18

    const-string v1, "toward_destination_ref_only"

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v0
.end method

.method public setDistance(D)Lcom/graphhopper/util/Instruction;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/util/Instruction;->distance:D

    return-object p0
.end method

.method public setExtraInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/Instruction;->extraInfo:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/graphhopper/util/Instruction;->name:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPoints(Lcom/graphhopper/util/PointList;)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/util/Instruction;->points:Lcom/graphhopper/util/PointList;

    return-void
.end method

.method public setSign(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/Instruction;->sign:I

    return-void
.end method

.method public setTime(J)Lcom/graphhopper/util/Instruction;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/util/Instruction;->time:J

    return-object p0
.end method

.method public setUseRawName()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/util/Instruction;->rawName:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/graphhopper/util/Instruction;->sign:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/graphhopper/util/Instruction;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/graphhopper/util/Instruction;->distance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/graphhopper/util/Instruction;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
