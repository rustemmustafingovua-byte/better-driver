.class public Lcom/graphhopper/util/PathSimplification;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/util/PathSimplification$Interval;,
        Lcom/graphhopper/util/PathSimplification$Partition;
    }
.end annotation


# instance fields
.field private final currIntervalEnd:[I

.field private final currIntervalIndex:[I

.field private final currIntervalStart:[I

.field private final numPartitions:I

.field private final partitionFinished:[Z

.field private final partitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/util/PathSimplification$Partition;",
            ">;"
        }
    .end annotation
.end field

.field private final pointList:Lcom/graphhopper/util/PointList;

.field private final ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

.field private final removedPointsInCurrInterval:[I

.field private final removedPointsInPrevIntervals:[I


# direct methods
.method private constructor <init>(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/util/RamerDouglasPeucker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/PointList;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/PathSimplification$Partition;",
            ">;",
            "Lcom/graphhopper/util/RamerDouglasPeucker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    iput-object p3, p0, Lcom/graphhopper/util/PathSimplification;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/graphhopper/util/PathSimplification;->numPartitions:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalIndex:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalStart:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->partitionFinished:[Z

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInCurrInterval:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInPrevIntervals:[I

    return-void
.end method

.method private static assertConsistencyOfInstructions(Lcom/graphhopper/util/InstructionList;I)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/Instruction;

    invoke-virtual {v1}, Lcom/graphhopper/util/Instruction;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inconsistent instructions, total interval length: "

    const-string v2, " vs. point list length "

    invoke-static {v1, v0, v2, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private assertConsistencyOfIntervals()V
    .locals 7

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/util/PathSimplification$Partition;

    move v4, v1

    move v5, v4

    :goto_1
    invoke-interface {v3}, Lcom/graphhopper/util/PathSimplification$Partition;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    invoke-interface {v3, v4}, Lcom/graphhopper/util/PathSimplification$Partition;->getIntervalLength(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-ne v5, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, " vs. "

    const-string v3, " for intervals with index: "

    const-string v4, "Simplified intervals are inconsistent: "

    invoke-static {v4, v5, v1, v0, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private static assertConsistencyOfPathDetails(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/details/PathDetail;

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/graphhopper/util/details/PathDetail;->getLast()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/graphhopper/util/details/PathDetail;

    invoke-virtual {v5}, Lcom/graphhopper/util/details/PathDetail;->getFirst()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/graphhopper/util/details/PathDetail;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, " is inconsistent due to entries "

    const-string v4, " vs. "

    const-string v5, "PathDetail list "

    invoke-static {v5, v0, v3, v2, v4}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method public static simplify(Lcom/graphhopper/ResponsePath;Lcom/graphhopper/util/RamerDouglasPeucker;Z)Lcom/graphhopper/util/PointList;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getWaypointIndices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 5
    new-instance v5, Lcom/graphhopper/util/PathSimplification$Interval;

    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getWaypointIndices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getWaypointIndices()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/graphhopper/util/PathSimplification$Interval;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance v4, Lcom/graphhopper/util/PathSimplification$1;

    invoke-direct {v4, v2}, Lcom/graphhopper/util/PathSimplification$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getInstructions()Lcom/graphhopper/util/InstructionList;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/graphhopper/util/PathSimplification$2;

    invoke-direct {v5, v4, v0}, Lcom/graphhopper/util/PathSimplification$2;-><init>(Lcom/graphhopper/util/InstructionList;Lcom/graphhopper/util/PointList;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getPathDetails()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 11
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v8

    if-gt v8, v6, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "PathDetails "

    const-string v0, " must not be empty"

    .line 13
    invoke-static {p2, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    :goto_2
    new-instance v5, Lcom/graphhopper/util/PathSimplification$3;

    invoke-direct {v5, v7}, Lcom/graphhopper/util/PathSimplification$3;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object v4

    invoke-static {v4, v1, p1}, Lcom/graphhopper/util/PathSimplification;->simplify(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/util/RamerDouglasPeucker;)V

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/PathSimplification$Interval;

    iget v1, v1, Lcom/graphhopper/util/PathSimplification$Interval;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/graphhopper/util/PathSimplification$Interval;

    .line 20
    iget v4, v4, Lcom/graphhopper/util/PathSimplification$Interval;->end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p0, p1}, Lcom/graphhopper/ResponsePath;->setWaypointIndices(Ljava/util/List;)Lcom/graphhopper/ResponsePath;

    .line 22
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getPathDetails()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/graphhopper/util/PathSimplification;->assertConsistencyOfPathDetails(Ljava/util/Map;)V

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getInstructions()Lcom/graphhopper/util/InstructionList;

    move-result-object p1

    invoke-virtual {p0}, Lcom/graphhopper/ResponsePath;->getPoints()Lcom/graphhopper/util/PointList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->size()I

    move-result p0

    invoke-static {p1, p0}, Lcom/graphhopper/util/PathSimplification;->assertConsistencyOfInstructions(Lcom/graphhopper/util/InstructionList;I)V

    :cond_6
    return-object v0
.end method

.method private simplify()V
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 31
    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    iget-object v2, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v2}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/graphhopper/util/RamerDouglasPeucker;->simplify(Lcom/graphhopper/util/PointList;II)I

    .line 34
    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {p0}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    return-void

    :cond_1
    move v0, v1

    .line 35
    :goto_0
    iget v2, p0, Lcom/graphhopper/util/PathSimplification;->numPartitions:I

    if-ge v0, v2, :cond_2

    .line 36
    iget-object v2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/util/PathSimplification$Partition;

    iget-object v4, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalIndex:[I

    aget v4, v4, v0

    invoke-interface {v3, v4}, Lcom/graphhopper/util/PathSimplification$Partition;->getIntervalLength(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v0

    .line 37
    :goto_1
    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v3}, Lcom/graphhopper/util/PointList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    move v3, v1

    .line 38
    :goto_2
    iget v4, p0, Lcom/graphhopper/util/PathSimplification;->numPartitions:I

    if-ge v3, v4, :cond_5

    .line 39
    iget-object v4, p0, Lcom/graphhopper/util/PathSimplification;->partitionFinished:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    goto :goto_3

    .line 40
    :cond_3
    iget-object v4, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    aget v4, v4, v3

    if-ne v0, v4, :cond_4

    .line 41
    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->ramerDouglasPeucker:Lcom/graphhopper/util/RamerDouglasPeucker;

    iget-object v5, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v3, v5, v2, v4, v1}, Lcom/graphhopper/util/RamerDouglasPeucker;->simplify(Lcom/graphhopper/util/PointList;IIZ)I

    move-result v2

    move v3, v2

    move v2, v0

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_4
    move v4, v1

    .line 42
    :goto_5
    iget v5, p0, Lcom/graphhopper/util/PathSimplification;->numPartitions:I

    if-ge v4, v5, :cond_9

    .line 43
    iget-object v5, p0, Lcom/graphhopper/util/PathSimplification;->partitionFinished:[Z

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_6

    goto :goto_6

    .line 44
    :cond_6
    iget-object v5, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInCurrInterval:[I

    aget v6, v5, v4

    add-int/2addr v6, v3

    aput v6, v5, v4

    .line 45
    :cond_7
    iget-object v5, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    aget v5, v5, v4

    if-ne v0, v5, :cond_8

    .line 46
    invoke-direct {p0, v0, v4}, Lcom/graphhopper/util/PathSimplification;->updateInterval(II)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-static {v0}, Lcom/graphhopper/util/RamerDouglasPeucker;->removeNaN(Lcom/graphhopper/util/PointList;)V

    .line 48
    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->pointList:Lcom/graphhopper/util/PointList;

    invoke-virtual {v0}, Lcom/graphhopper/util/PointList;->makeImmutable()Lcom/graphhopper/util/PointList;

    .line 49
    invoke-direct {p0}, Lcom/graphhopper/util/PathSimplification;->assertConsistencyOfIntervals()V

    return-void
.end method

.method public static simplify(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/util/RamerDouglasPeucker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/util/PointList;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/PathSimplification$Partition;",
            ">;",
            "Lcom/graphhopper/util/RamerDouglasPeucker;",
            ")V"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/graphhopper/util/PathSimplification;

    invoke-direct {v0, p0, p1, p2}, Lcom/graphhopper/util/PathSimplification;-><init>(Lcom/graphhopper/util/PointList;Ljava/util/List;Lcom/graphhopper/util/RamerDouglasPeucker;)V

    invoke-direct {v0}, Lcom/graphhopper/util/PathSimplification;->simplify()V

    return-void
.end method

.method private updateInterval(II)Z
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalStart:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInPrevIntervals:[I

    aget v1, v1, p2

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    aget v2, v2, p2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInCurrInterval:[I

    aget v1, v1, p2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/PathSimplification$Partition;

    iget-object v3, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalIndex:[I

    aget v3, v3, p2

    invoke-interface {v1, v3, v0, v2}, Lcom/graphhopper/util/PathSimplification$Partition;->setInterval(III)V

    iget-object v0, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInPrevIntervals:[I

    aget v1, v0, p2

    iget-object v2, p0, Lcom/graphhopper/util/PathSimplification;->removedPointsInCurrInterval:[I

    aget v3, v2, p2

    add-int/2addr v1, v3

    aput v1, v0, p2

    const/4 v0, 0x0

    aput v0, v2, p2

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalIndex:[I

    aget v2, v1, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v1, p2

    iget-object v2, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalStart:[I

    aput p1, v2, p2

    aget p1, v1, p2

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/util/PathSimplification$Partition;

    invoke-interface {v1}, Lcom/graphhopper/util/PathSimplification$Partition;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification;->partitionFinished:[Z

    aput-boolean v3, p0, p2

    return v0

    :cond_0
    iget-object p1, p0, Lcom/graphhopper/util/PathSimplification;->partitions:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/graphhopper/util/PathSimplification$Partition;

    iget-object v1, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalIndex:[I

    aget v1, v1, p2

    invoke-interface {p1, v1}, Lcom/graphhopper/util/PathSimplification$Partition;->getIntervalLength(I)I

    move-result p1

    iget-object p0, p0, Lcom/graphhopper/util/PathSimplification;->currIntervalEnd:[I

    aget v1, p0, p2

    add-int/2addr v1, p1

    aput v1, p0, p2

    if-nez p1, :cond_1

    return v3

    :cond_1
    return v0
.end method
