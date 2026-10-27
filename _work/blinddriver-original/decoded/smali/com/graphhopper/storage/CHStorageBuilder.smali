.class public Lcom/graphhopper/storage/CHStorageBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final storage:Lcom/graphhopper/storage/CHStorage;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/CHStorage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    return-void
.end method

.method private checkNewShortcut(II)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->checkNodeId(I)V

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->checkNodeId(I)V

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v0

    iget-object v1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result v1

    const-string v2, ": "

    const-string v3, "Invalid level for node "

    if-ge v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v0

    if-ltz v0, :cond_6

    const-string v0, " and "

    if-eq p1, p2, :cond_1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v4

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result p0

    const-string v3, "Different nodes must not have the same level, got levels "

    const-string v4, " for nodes "

    invoke-static {v3, v2, v0, p0, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eq p1, p2, :cond_3

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v4

    if-gt v1, v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result p0

    const-string v3, "The level of nodeA must be smaller than the level of nodeB, but got: "

    const-string v4, ". When inserting shortcut: "

    invoke-static {v3, v2, v0, p0, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p2}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getNodeA(J)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result v1

    if-lt v1, v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result p0

    const-string v4, ". The level must be equal to or larger than the lower level node of the previous shortcut (node: "

    invoke-static {v3, p1, v2, p0, v4}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    return-void

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->getLevel(I)I

    move-result p0

    const-string v0, ". Node a must be assigned a valid level before we add shortcuts a->b or a<-b"

    invoke-static {v3, p1, v2, p0, v0}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private checkNodeId(I)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v0}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result p0

    const-string v1, " is invalid. Not in [0,"

    const-string v2, ")"

    const-string v3, "node "

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLevel(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->checkNodeId(I)V

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/graphhopper/storage/CHStorage;->getLevel(J)I

    move-result p0

    return p0
.end method

.method private setLastShortcut(II)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/graphhopper/storage/CHStorage;->setLastShortcut(JI)V

    return-void
.end method


# virtual methods
.method public addShortcutEdgeBased(IIIDIIII)I
    .locals 10

    invoke-direct/range {p0 .. p2}, Lcom/graphhopper/storage/CHStorageBuilder;->checkNewShortcut(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/graphhopper/storage/CHStorage;->shortcutEdgeBased(IIIDIIII)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->setLastShortcut(II)V

    return p2
.end method

.method public addShortcutNodeBased(IIIDII)I
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/storage/CHStorageBuilder;->checkNewShortcut(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/graphhopper/storage/CHStorage;->shortcutNodeBased(IIIDII)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->setLastShortcut(II)V

    return p1
.end method

.method public replaceSkippedEdges(Ljava/util/function/IntUnaryOperator;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getShortcuts()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1, v0}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v1

    iget-object v3, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge1(J)I

    move-result v3

    iget-object v4, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v4, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge2(J)I

    move-result v4

    iget-object v5, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-interface {p1, v3}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v3

    invoke-interface {p1, v4}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v4

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/graphhopper/storage/CHStorage;->setSkippedEdges(JII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIdentityLevels()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, v0}, Lcom/graphhopper/storage/CHStorageBuilder;->setLevel(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLevel(II)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/graphhopper/storage/CHStorage;->setLevel(JI)V

    return-void
.end method

.method public setLevelForAllNodes(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/storage/CHStorageBuilder;->storage:Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {v1}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/graphhopper/storage/CHStorageBuilder;->setLevel(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
