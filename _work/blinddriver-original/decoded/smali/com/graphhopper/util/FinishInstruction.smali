.class public Lcom/graphhopper/util/FinishInstruction;
.super Lcom/graphhopper/util/Instruction;
.source "SourceFile"


# direct methods
.method public constructor <init>(DDD)V
    .locals 9

    .line 2
    new-instance v0, Lcom/graphhopper/util/FinishInstruction$2;

    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const/4 v1, 0x2

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/util/FinishInstruction$2;-><init>(IZDDD)V

    const/4 p1, 0x4

    const-string p2, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/util/PointAccess;I)V
    .locals 7

    .line 6
    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v1

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v3

    .line 7
    invoke-interface {p1}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide p1

    :goto_0
    move-object v0, p0

    move-wide v5, p1

    goto :goto_1

    :cond_0
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 8
    :goto_1
    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/util/FinishInstruction;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 9

    .line 1
    new-instance v0, Lcom/graphhopper/util/FinishInstruction$1;

    invoke-static/range {p6 .. p7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const/4 v1, 0x2

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/graphhopper/util/FinishInstruction$1;-><init>(IZDDD)V

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1, v0}, Lcom/graphhopper/util/Instruction;-><init>(ILjava/lang/String;Lcom/graphhopper/util/PointList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/graphhopper/util/PointAccess;I)V
    .locals 8

    .line 3
    invoke-interface {p2, p3}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v2

    invoke-interface {p2, p3}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v4

    .line 4
    invoke-interface {p2}, Lcom/graphhopper/util/PointAccess;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p3}, Lcom/graphhopper/util/PointAccess;->getEle(I)D

    move-result-wide p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v6, p2

    goto :goto_1

    :cond_0
    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 5
    :goto_1
    invoke-direct/range {v0 .. v7}, Lcom/graphhopper/util/FinishInstruction;-><init>(Ljava/lang/String;DDD)V

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
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "finish"

    invoke-interface {p1, v0, p0}, Lcom/graphhopper/util/Translation;->tr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
