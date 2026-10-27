.class public Lcom/graphhopper/storage/TurnCostStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/TurnCostStorage$Itr;,
        Lcom/graphhopper/storage/TurnCostStorage$Iterator;
    }
.end annotation


# static fields
.field private static final BYTES_PER_ENTRY:I = 0x10

.field static final NO_TURN_ENTRY:I = -0x1

.field private static final TC_FLAGS:I = 0x8

.field private static final TC_FROM:I = 0x0

.field private static final TC_NEXT:I = 0xc

.field private static final TC_TO:I = 0x4


# instance fields
.field private final baseGraph:Lcom/graphhopper/storage/BaseGraph;

.field private final edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

.field private final turnCosts:Lcom/graphhopper/storage/DataAccess;

.field private turnCostsCount:I


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/DataAccess;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/graphhopper/storage/TurnCostStorage;->createEdgeIntAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    iput-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    iput-object p2, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/BaseGraph;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/storage/TurnCostStorage;)Lcom/graphhopper/storage/DataAccess;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/graphhopper/storage/TurnCostStorage;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide p0

    return-wide p0
.end method

.method private createEdgeIntAccess()Lcom/graphhopper/routing/ev/EdgeIntAccess;
    .locals 1

    new-instance v0, Lcom/graphhopper/storage/TurnCostStorage$1;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/TurnCostStorage$1;-><init>(Lcom/graphhopper/storage/TurnCostStorage;)V

    return-object v0
.end method

.method private ensureTurnCostIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide p0

    invoke-interface {v0, p0, p1}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    return-void
.end method

.method private findIndex(III)I
    .locals 7

    invoke-static {p1}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ltz p2, :cond_3

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v0}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v4, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v4

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v5, 0x4

    add-long/2addr v5, v2

    invoke-interface {v4, v5, v6}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v4

    if-ne p3, v4, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v4, 0xc

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Turn cost list for node: "

    const-string p3, " is longer than expected, max: 1000"

    invoke-static {p2, p1, p3}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "via node cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "from and to edge cannot be NO_EDGE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private findOrCreateTurnCostEntry(III)I
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/storage/TurnCostStorage;->findIndex(III)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/TurnCostStorage;->ensureTurnCostIndex(I)V

    iget-object v1, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v1}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v2}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v2

    invoke-interface {v2, p2, v0}, Lcom/graphhopper/storage/NodeAccess;->setTurnCostIndex(II)V

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v2

    iget-object p2, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p2, v2, v3, p1}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v4, 0x4

    add-long/2addr v4, v2

    invoke-interface {p1, v4, v5, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 p2, 0xc

    add-long/2addr v2, p2

    invoke-interface {p1, v2, v3, v1}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    :cond_0
    return v0
.end method

.method private toPointer(I)J
    .locals 2

    int-to-long p0, p1

    const-wide/16 v0, 0x10

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public create(J)Lcom/graphhopper/storage/TurnCostStorage;
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    return-object p0
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x4

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x8

    iget v2, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public get(Lcom/graphhopper/routing/ev/DecimalEncodedValue;III)D
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/graphhopper/storage/TurnCostStorage;->findIndex(III)I

    move-result p2

    if-gez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const/4 p3, 0x0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, p3, p2, p0}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->getDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)D

    move-result-wide p0

    return-wide p0
.end method

.method public get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;III)Z
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3, p4}, Lcom/graphhopper/storage/TurnCostStorage;->findIndex(III)I

    move-result p2

    const/4 p3, 0x0

    if-gez p2, :cond_0

    return p3

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, p3, p2, p0}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->getBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;)Z

    move-result p0

    return p0
.end method

.method public getAllTurnCosts()Lcom/graphhopper/storage/TurnCostStorage$Iterator;
    .locals 2

    new-instance v0, Lcom/graphhopper/storage/TurnCostStorage$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/graphhopper/storage/TurnCostStorage$Itr;-><init>(Lcom/graphhopper/storage/TurnCostStorage;I)V

    return-object v0
.end method

.method public getCapacity()J
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTurnCostsCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    return p0
.end method

.method public getTurnCostsCount(I)I
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v1

    .line 4
    iget-object p1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    invoke-interface {p1, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public loadExisting()Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v2, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result p0

    const-string v1, "Number of bytes per turn cost entry does not match the current configuration: "

    const-string v2, " vs. 16"

    invoke-static {p0, v1, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/graphhopper/routing/ev/BooleanEncodedValue;IIIZ)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/graphhopper/storage/TurnCostStorage;->findOrCreateTurnCostEntry(III)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 p2, 0x0

    .line 2
    iget-object p0, p0, Lcom/graphhopper/storage/TurnCostStorage;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    invoke-interface {p1, p2, v0, p0, p5}, Lcom/graphhopper/routing/ev/BooleanEncodedValue;->setBool(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Z)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid index: "

    const-string p5, " at ("

    .line 4
    const-string v1, ", "

    invoke-static {p1, v0, p5, p2, v1}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public set(Lcom/graphhopper/routing/ev/DecimalEncodedValue;IIID)V
    .locals 2

    move v0, p2

    .line 12
    invoke-direct {p0, v0, p3, p4}, Lcom/graphhopper/storage/TurnCostStorage;->findOrCreateTurnCostEntry(III)I

    move-result p2

    if-ltz p2, :cond_0

    move-object v1, p0

    move-object p0, p1

    const/4 p1, 0x0

    .line 13
    iget-object p3, v1, Lcom/graphhopper/storage/TurnCostStorage;->edgeIntAccess:Lcom/graphhopper/routing/ev/EdgeIntAccess;

    move-wide p4, p5

    invoke-interface/range {p0 .. p5}, Lcom/graphhopper/routing/ev/DecimalEncodedValue;->setDecimal(ZILcom/graphhopper/routing/ev/EdgeIntAccess;D)V

    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid index: "

    const-string p5, " at ("

    .line 15
    const-string p6, ", "

    invoke-static {p1, p2, p5, v0, p6}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sortEdges(Ljava/util/function/IntUnaryOperator;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v3, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object v3, p0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v4, 0x4

    add-long/2addr v1, v4

    invoke-interface {v3, v1, v2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sortNodes()V
    .locals 24

    move-object/from16 v0, p0

    new-instance v1, Lcom/carrotsearch/hppc/x;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    new-instance v3, Lcom/carrotsearch/hppc/x;

    invoke-direct {v3, v2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    new-instance v4, Lcom/carrotsearch/hppc/x;

    invoke-direct {v4, v2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    new-instance v5, Lcom/carrotsearch/hppc/x;

    invoke-direct {v5, v2}, Lcom/carrotsearch/hppc/x;-><init>(I)V

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    iget v7, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    const-wide/16 v8, 0x8

    const-wide/16 v10, 0x4

    const-wide/16 v12, 0xc

    if-ge v6, v7, :cond_0

    invoke-direct {v0, v6}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v14

    iget-object v7, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v7, v14, v15}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v7, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v10, v14

    invoke-interface {v7, v10, v11}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v7, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v8, v14

    invoke-interface {v7, v8, v9}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/carrotsearch/hppc/x;->add(I)V

    iget-object v7, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v14, v12

    invoke-interface {v7, v14, v15}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/carrotsearch/hppc/x;->add(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    int-to-long v6, v7

    iput v2, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    move v14, v2

    :goto_1
    iget-object v15, v0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v15}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result v15

    if-ge v14, v15, :cond_3

    iget-object v15, v0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v15}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v15

    invoke-interface {v15, v14}, Lcom/graphhopper/storage/NodeAccess;->getTurnCostIndex(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v17, v16

    :goto_2
    const/4 v2, -0x1

    if-eq v15, v2, :cond_2

    if-eqz v17, :cond_1

    move-wide/from16 v18, v8

    iget-object v8, v0, Lcom/graphhopper/storage/TurnCostStorage;->baseGraph:Lcom/graphhopper/storage/BaseGraph;

    invoke-virtual {v8}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object v8

    iget v9, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-interface {v8, v14, v9}, Lcom/graphhopper/storage/NodeAccess;->setTurnCostIndex(II)V

    move-wide/from16 v20, v10

    goto :goto_3

    :cond_1
    move-wide/from16 v18, v8

    iget v8, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-direct {v0, v8}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v8

    move-wide/from16 v20, v10

    iget-object v10, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long/2addr v8, v12

    iget v11, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-interface {v10, v8, v9, v11}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    :goto_3
    iget v8, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-direct {v0, v8}, Lcom/graphhopper/storage/TurnCostStorage;->toPointer(I)J

    move-result-wide v8

    iget-object v10, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    invoke-virtual {v1, v15}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v11

    invoke-interface {v10, v8, v9, v11}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object v10, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    move-wide/from16 v22, v12

    add-long v12, v8, v20

    invoke-virtual {v3, v15}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v11

    invoke-interface {v10, v12, v13, v11}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object v10, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long v11, v8, v18

    invoke-virtual {v4, v15}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object v10, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCosts:Lcom/graphhopper/storage/DataAccess;

    add-long v8, v8, v22

    invoke-interface {v10, v8, v9, v2}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget v2, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    invoke-virtual {v5, v15}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result v15

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    move-wide/from16 v12, v22

    const/16 v17, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    add-int/lit8 v14, v14, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_3
    iget v1, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    int-to-long v1, v1

    cmp-long v1, v6, v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v0, v0, Lcom/graphhopper/storage/TurnCostStorage;->turnCostsCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Turn cost count changed unexpectedly: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "turn_cost"

    return-object p0
.end method
