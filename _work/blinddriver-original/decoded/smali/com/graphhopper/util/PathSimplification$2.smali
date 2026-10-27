.class Lcom/graphhopper/util/PathSimplification$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/PathSimplification$Partition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/util/PathSimplification;->simplify(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/RamerDouglasPeucker;Z)Lcom/graphhopper/util/PointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$instructions:Lcom/graphhopper/util/InstructionList;

.field final synthetic val$pointList:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/InstructionList;Lcom/graphhopper/util/PointList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/util/PathSimplification$2;->val$instructions:Lcom/graphhopper/util/InstructionList;

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification$2;->val$pointList:Lcom/graphhopper/util/PointList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntervalLength(I)I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$2;->val$instructions:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/util/Instruction;->getLength()I

    move-result p0

    return p0
.end method

.method public setInterval(III)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification$2;->val$instructions:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {v0, p1}, Lcom/graphhopper/util/InstructionList;->get(I)Lcom/graphhopper/util/Instruction;

    move-result-object p1

    instance-of v0, p1, Lcom/graphhopper/util/ViaInstruction;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/graphhopper/util/FinishInstruction;

    if-eqz v0, :cond_1

    :cond_0
    if-ne p2, p3, :cond_2

    add-int/lit8 p3, p3, 0x1

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$2;->val$pointList:Lcom/graphhopper/util/PointList;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/graphhopper/util/PointList;->shallowCopy(IIZ)Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/graphhopper/util/Instruction;->setPoints(Lcom/graphhopper/util/PointList;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "via- and finish-instructions are expected to have zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification$2;->val$instructions:Lcom/graphhopper/util/InstructionList;

    invoke-virtual {p0}, Lcom/graphhopper/util/InstructionList;->size()I

    move-result p0

    return p0
.end method
