.class public Lcom/graphhopper/storage/CHStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGGER:Lnc/b;

.field private static final MAX_STORED_INTEGER_WEIGHT:J = 0xfffffffeL

.field private static final MAX_WEIGHT:D = 4294967.294

.field private static final MIN_WEIGHT:D = 0.001

.field private static final WEIGHT_FACTOR:D = 1000.0


# instance fields
.field private final N_LAST_SC:I

.field private final N_LEVEL:I

.field private final S_NODEA:I

.field private final S_NODEB:I

.field private final S_ORIG_KEY_FIRST:I

.field private final S_ORIG_KEY_LAST:I

.field private final S_SKIP_EDGE1:I

.field private final S_SKIP_EDGE2:I

.field private final S_WEIGHT:I

.field private edgeBased:Z

.field private lowShortcutWeightConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;",
            ">;"
        }
    .end annotation
.end field

.field private nodeCHEntryBytes:I

.field private nodeCount:I

.field private final nodesCH:Lcom/graphhopper/storage/DataAccess;

.field private numShortcutsExceedingWeight:I

.field private shortcutCount:I

.field private shortcutEntryBytes:I

.field private final shortcuts:Lcom/graphhopper/storage/DataAccess;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/storage/CHStorage;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/storage/CHStorage;->LOGGER:Lnc/b;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/storage/Directory;Ljava/lang/String;IZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    iput-boolean p4, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    const-string v1, "nodes_ch_"

    invoke-static {v1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p1, v1, v3}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object v1

    invoke-interface {p1, v2, v1, p3}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object v1

    iput-object v1, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    const-string v1, "shortcuts_"

    invoke-static {v1, p2}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v3}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object p2

    invoke-interface {p1, v2, p2, p3}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEA:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEB:I

    add-int p2, p1, p1

    iput p2, p0, Lcom/graphhopper/storage/CHStorage;->S_WEIGHT:I

    add-int/lit8 p3, p2, 0x4

    iput p3, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE1:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE2:I

    if-eqz p4, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    add-int/2addr p2, p3

    iput p2, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_FIRST:I

    if-eqz p4, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    add-int/2addr p2, p3

    iput p2, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_LAST:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->N_LEVEL:I

    iput p1, p0, Lcom/graphhopper/storage/CHStorage;->N_LAST_SC:I

    add-int/2addr p1, p1

    iput p1, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/graphhopper/storage/CHStorage;->lambda$fromGraph$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;)V

    return-void
.end method

.method public static fromGraph(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;)Lcom/graphhopper/storage/CHStorage;
    .locals 6

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/graphhopper/storage/CHConfig;->isEdgeBased()Z

    move-result p1

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/graphhopper/storage/CHStorage;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getDirectory()Lcom/graphhopper/storage/Directory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getSegmentSize()I

    move-result v3

    invoke-direct {v1, v2, v0, v3, p1}, Lcom/graphhopper/storage/CHStorage;-><init>(Lcom/graphhopper/storage/Directory;Ljava/lang/String;IZ)V

    new-instance p1, Lcom/graphhopper/c;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lcom/graphhopper/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/graphhopper/storage/CHStorage;->setLowShortcutWeightConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getEdges()I

    move-result p1

    int-to-double v2, p1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodes()I

    move-result p0

    double-to-int p1, v2

    invoke-virtual {v1, p0, p1}, Lcom/graphhopper/storage/CHStorage;->create(II)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "graph must be frozen before we can create ch graphs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static synthetic lambda$fromGraph$0(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;)V
    .locals 13

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraph;->getNodeAccess()Lcom/graphhopper/storage/NodeAccess;

    move-result-object p0

    sget-object v0, Lcom/graphhopper/storage/CHStorage;->LOGGER:Lnc/b;

    iget-wide v1, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->minWeight:D

    iget-wide v3, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->weight:D

    iget v5, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeA:I

    invoke-interface {p0, v5}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v5

    iget v7, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeA:I

    invoke-interface {p0, v7}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide v7

    iget v9, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeB:I

    invoke-interface {p0, v9}, Lcom/graphhopper/util/PointAccess;->getLat(I)D

    move-result-wide v9

    iget p1, p1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;->nodeB:I

    invoke-interface {p0, p1}, Lcom/graphhopper/util/PointAccess;->getLon(I)D

    move-result-wide p0

    const-string v11, "Setting weights smaller than "

    const-string v12, " is not allowed. You passed: "

    invoke-static {v1, v2, v11, v12}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " for the shortcut  nodeA ("

    const-string v3, ","

    invoke-static {v1, v2, v5, v6, v3}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " nodeB "

    invoke-static {v1, v2, v9, v10, v3}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->l(Ljava/lang/String;)V

    return-void
.end method

.method private setNodesAB(JIII)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEA:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    shl-int/lit8 p3, p3, 0x1

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScFwdDir()I

    move-result v3

    and-int/2addr v3, p5

    or-int/2addr p3, v3

    invoke-interface {v0, v1, v2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p3, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEB:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    shl-int/lit8 p0, p4, 0x1

    invoke-static {}, Lcom/graphhopper/routing/ch/PrepareEncoder;->getScBwdDir()I

    move-result p4

    and-int/2addr p4, p5

    shr-int/lit8 p4, p4, 0x1

    or-int/2addr p0, p4

    invoke-interface {p3, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method private setWeightInt(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_WEIGHT:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method private shortcut(IIIDII)I
    .locals 12

    iget v4, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    const v1, 0x7fffffff

    if-eq v4, v1, :cond_1

    iget-object v9, p0, Lcom/graphhopper/storage/CHStorage;->lowShortcutWeightConsumer:Ljava/util/function/Consumer;

    if-eqz v9, :cond_0

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p4, v1

    if-gez v1, :cond_0

    new-instance v1, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    move v2, p1

    move v3, p2

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;-><init>(IIIDD)V

    invoke-interface {v9, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-wide/from16 v5, p4

    :goto_0
    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    int-to-long v2, v1

    iget v4, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    int-to-long v7, v4

    mul-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    iget-object v7, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    int-to-long v8, v1

    int-to-long v10, v4

    mul-long/2addr v8, v10

    invoke-interface {v7, v8, v9}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    invoke-direct {p0, v5, v6}, Lcom/graphhopper/storage/CHStorage;->weightFromDouble(D)I

    move-result v6

    move-object v0, p0

    move v4, p2

    move v5, p3

    move-wide v1, v2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/storage/CHStorage;->setNodesAB(JIII)V

    invoke-direct {p0, v1, v2, v6}, Lcom/graphhopper/storage/CHStorage;->setWeightInt(JI)V

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/graphhopper/storage/CHStorage;->setSkippedEdges(JII)V

    iget v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    const-string v2, "Maximum shortcut count exceeded: "

    invoke-static {v0, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private weightFromDouble(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide v0, 0x4150624dd2d0e560L    # 4294967.294

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    iget p1, p0, Lcom/graphhopper/storage/CHStorage;->numShortcutsExceedingWeight:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/storage/CHStorage;->numShortcutsExceedingWeight:I

    const/4 p0, -0x2

    return p0

    :cond_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "weight cannot be negative but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private weightToDouble(I)D
    .locals 3

    int-to-long p0, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    const-wide v0, 0xfffffffeL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_0
    long-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    const-wide v0, 0x4150624dd2d0e560L    # 4294967.294

    cmpl-double v0, p0, v0

    if-gez v0, :cond_1

    return-wide p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "too large shortcut weight "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " should get infinity marker bits 4294967294"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public create(II)V
    .locals 5

    iget v0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    if-gez v0, :cond_2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    int-to-long v1, p1

    iget v3, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    int-to-long v3, v3

    mul-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iput p1, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/graphhopper/storage/CHStorage;->setLastShortcut(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, p2

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CHStorage must be created with a positive number of nodes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CHStorage can only be created once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public debugPrint()V
    .locals 13

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "nodesCH:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "N_LAST_SC"

    const-string v3, "N_LEVEL"

    const-string v4, "#"

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%12s | %12s | %12s \n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    const/16 v4, 0x64

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/CHStorage;->getLastShortcut(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/CHStorage;->getLevel(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v7, v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    if-le v1, v4, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, " ... %d more nodes"

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "shortcuts:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v9, "S_SKIP_EDGE1"

    const-string v10, "S_SKIP_EDGE2"

    const-string v5, "#"

    const-string v6, "E_NODEA"

    const-string v7, "E_NODEB"

    const-string v8, "S_WEIGHT"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%12s | %12s | %12s | %12s | %12s | %12s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->isEdgeBased()Z

    move-result v5

    const-string v6, " | %12s | %12s"

    if-eqz v5, :cond_2

    const-string v5, "S_ORIG_FIRST"

    const-string v7, "S_ORIG_LAST"

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide v1

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getNodeA(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getNodeB(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getWeight(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge1(J)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getSkippedEdge2(J)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-boolean v8, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    if-eqz v8, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getOrigEdgeKeyFirst(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/CHStorage;->getOrigEdgeKeyLast(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    if-le p0, v4, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, " ... %d more shortcut edges\n"

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_5
    return-void
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    const/16 v4, 0x8

    invoke-interface {v0, v4, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    invoke-interface {v0, v3, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    invoke-interface {v0, v4, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0xc

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->numShortcutsExceedingWeight:I

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x10

    iget-boolean v2, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    invoke-interface {v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public getBwdAccess(J)Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCapacity()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getFwdAccess(J)Z
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLastShortcut(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->N_LAST_SC:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getLevel(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->N_LEVEL:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getMB()I
    .locals 6

    iget v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    int-to-long v0, v0

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    int-to-long v2, v2

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    int-to-long v4, p0

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x400

    div-long/2addr v2, v0

    div-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method public getNodeA(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getNodeB(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_NODEB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getNodeOrderingProvider()Lcom/graphhopper/routing/ch/NodeOrderingProvider;
    .locals 5

    invoke-virtual {p0}, Lcom/graphhopper/storage/CHStorage;->getNodes()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/graphhopper/storage/CHStorage;->toNodePointer(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/graphhopper/storage/CHStorage;->getLevel(J)I

    move-result v3

    aput v2, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/graphhopper/routing/ch/NodeOrderingProvider;->fromArray([I)Lcom/graphhopper/routing/ch/NodeOrderingProvider;

    move-result-object p0

    return-object p0
.end method

.method public getNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    return p0
.end method

.method public getNumShortcutsExceedingWeight()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->numShortcutsExceedingWeight:I

    return p0
.end method

.method public getOrigEdgeKeyFirst(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_FIRST:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getOrigEdgeKeyLast(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_LAST:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getShortcuts()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    return p0
.end method

.method public getSkippedEdge1(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE1:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getSkippedEdge2(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE2:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getWeight(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->S_WEIGHT:I

    int-to-long v1, v1

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/graphhopper/storage/CHStorage;->weightToDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public isEdgeBased()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    return p0
.end method

.method public loadExisting()Z
    .locals 6

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iget-object v2, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v2}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iget-object v4, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v4}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v4, v5, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    const/16 v2, 0xc

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/CHStorage;->numShortcutsExceedingWeight:I

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public setLastShortcut(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->N_LAST_SC:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLevel(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->N_LEVEL:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLowShortcutWeightConsumer(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/graphhopper/storage/CHStorage$LowWeightShortcut;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/storage/CHStorage;->lowShortcutWeightConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setOrigEdgeKeys(JII)V
    .locals 3

    iget-boolean v0, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_FIRST:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p3, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_ORIG_KEY_LAST:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2, p4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Setting orig edge keys is only possible for edge-based CH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSkippedEdges(JII)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE1:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p3, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->S_SKIP_EDGE2:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2, p4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setWeight(JD)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lcom/graphhopper/storage/CHStorage;->weightFromDouble(D)I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/graphhopper/storage/CHStorage;->setWeightInt(JI)V

    return-void
.end method

.method public shortcutEdgeBased(IIIDIIII)I
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lcom/graphhopper/storage/CHStorage;->shortcut(IIIDII)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/CHStorage;->toShortcutPointer(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3, p8, p9}, Lcom/graphhopper/storage/CHStorage;->setOrigEdgeKeys(JII)V

    return p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add edge-based shortcuts to node-based CH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shortcutNodeBased(IIIDII)I
    .locals 1

    iget-boolean v0, p0, Lcom/graphhopper/storage/CHStorage;->edgeBased:Z

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lcom/graphhopper/storage/CHStorage;->shortcut(IIIDII)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add node-based shortcuts to edge-based CH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toDetailsString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutCount:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/storage/CHStorage;->shortcuts:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/graphhopper/storage/CHStorage;->nodeCount:I

    int-to-long v5, v2

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/graphhopper/storage/CHStorage;->nodesCH:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    const-string v3, "MB), nodesCH:"

    const-string v4, "shortcuts:"

    const-string v5, " ("

    invoke-static {v4, v0, v5, v1, v3}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "MB)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toNodePointer(I)J
    .locals 2

    int-to-long v0, p1

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->nodeCHEntryBytes:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public toShortcutPointer(I)J
    .locals 2

    int-to-long v0, p1

    iget p0, p0, Lcom/graphhopper/storage/CHStorage;->shortcutEntryBytes:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0
.end method
