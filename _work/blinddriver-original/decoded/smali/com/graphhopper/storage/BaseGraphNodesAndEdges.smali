.class Lcom/graphhopper/storage/BaseGraphNodesAndEdges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/ev/EdgeIntAccess;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INT_DIST_FACTOR:D = 1000.0

.field static MAX_DIST:D = 2147483.647


# instance fields
.field private final E_DIST:I

.field private final E_FLAGS:I

.field private final E_GEO:I

.field private final E_KV:I

.field private final E_LINKA:I

.field private final E_LINKB:I

.field private final E_NODEA:I

.field private final E_NODEB:I

.field private final N_EDGE_REF:I

.field private final N_ELE:I

.field private final N_LAT:I

.field private final N_LON:I

.field private final N_TC:I

.field public final bounds:Lcom/graphhopper/util/shapes/BBox;

.field private final bytesForFlags:I

.field private edgeCount:I

.field private edgeEntryBytes:I

.field private final edges:Lcom/graphhopper/storage/DataAccess;

.field private frozen:Z

.field private nodeCount:I

.field private nodeEntryBytes:I

.field private final nodes:Lcom/graphhopper/storage/DataAccess;

.field private final withElevation:Z

.field private final withTurnCosts:Z


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/Directory;ZZII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const-string v1, "nodes"

    invoke-interface {p1, v1, v0}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object v0

    invoke-interface {p1, v1, v0, p4}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const-string v0, "edges"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/storage/Directory;->getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;

    move-result-object v2

    invoke-interface {p1, v0, v2, p4}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iput p5, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    iput-boolean p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts:Z

    iput-boolean p2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    invoke-static {p2}, Lcom/graphhopper/util/shapes/BBox;->createInverse(Z)Lcom/graphhopper/util/shapes/BBox;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iput v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_EDGE_REF:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LAT:I

    const/16 p4, 0x8

    iput p4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LON:I

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    add-int/2addr p2, p4

    iput p2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_ELE:I

    if-eqz p3, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    add-int/2addr p2, p3

    iput p2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_TC:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeEntryBytes:I

    iput v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEA:I

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEB:I

    iput p4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKA:I

    const/16 p1, 0xc

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKB:I

    const/16 p1, 0x10

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_KV:I

    const/16 p1, 0x18

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    add-int/2addr p1, p5

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_GEO:I

    add-int/lit8 p5, p5, 0x1d

    iput p5, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeEntryBytes:I

    return-void
.end method

.method private distToInt(D)I
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-ltz p0, :cond_1

    sget-wide v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->MAX_DIST:D

    cmpl-double p0, p1, v0

    if-lez p0, :cond_0

    move-wide p1, v0

    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Distance cannot be negative: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getFlagInt(JI)I
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    if-ge p3, v0, :cond_3

    int-to-long v1, p3

    add-long/2addr p1, v1

    add-int/lit8 v1, p3, 0x3

    if-ne v1, v0, :cond_0

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    invoke-interface {p3, v0, v1}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p3

    shl-int/lit8 p3, p3, 0x8

    const v0, 0xffffff

    and-int/2addr p3, v0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    const-wide/16 v1, 0x2

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p3

    return p0

    :cond_0
    add-int/lit8 v1, p3, 0x2

    if-ne v1, v0, :cond_1

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getShort(J)S

    move-result p0

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_2
    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    const-string p2, "too large byteOffset "

    const-string v0, " vs "

    invoke-static {p2, p3, v0, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setFlagInt(JII)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    if-ge p3, v0, :cond_6

    int-to-long v1, p3

    add-long/2addr p1, v1

    add-int/lit8 v1, p3, 0x3

    const-string v2, "value at byteOffset "

    if-ne v1, v0, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, p4

    if-nez v0, :cond_0

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    shr-int/lit8 v2, p4, 0x8

    int-to-short v2, v2

    invoke-interface {p3, v0, v1, v2}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    const-wide/16 v0, 0x2

    add-long/2addr p1, v0

    int-to-byte p0, p4

    invoke-interface {p3, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " must not have the highest byte set but was "

    invoke-static {v2, p3, p1, p4}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 v1, p3, 0x2

    if-ne v1, v0, :cond_3

    const/high16 v0, -0x10000

    and-int/2addr v0, p4

    if-nez v0, :cond_2

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    int-to-short p0, p4

    invoke-interface {p3, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setShort(JS)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " must not have the 2 highest bytes set but was "

    invoke-static {v2, p3, p1, p4}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    add-int/lit8 v1, p3, 0x1

    if-ne v1, v0, :cond_5

    and-int/lit16 v0, p4, -0x100

    if-nez v0, :cond_4

    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    int-to-byte p0, p4

    invoke-interface {p3, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, " must not have the 3 highest bytes set but was "

    invoke-static {v2, p3, p1, p4}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_FLAGS:I

    int-to-long v0, p0

    add-long/2addr p1, v0

    invoke-interface {p3, p1, p2, p4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    const-string p2, "too large byteOffset "

    const-string p4, " vs "

    invoke-static {p2, p3, p4, p0}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->close()V

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->close()V

    return-void
.end method

.method public create(J)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    return-void
.end method

.method public createEdgeFlags()Lcom/graphhopper/storage/IntsRef;
    .locals 5

    new-instance v0, Lcom/graphhopper/storage/IntsRef;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getBytesForFlags()I

    move-result p0

    int-to-double v1, p0

    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/IntsRef;-><init>(I)V

    return-object v0
.end method

.method public debugPrint()V
    .locals 14

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "nodes:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "N_ELE"

    const-string v7, "N_TC"

    const-string v2, "#"

    const-string v3, "N_EDGE_REF"

    const-string v4, "N_LAT"

    const-string v5, "N_LON"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%12s | %12s | %12s | %12s | %12s | %12s\n"

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    const/16 v4, 0x64

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLat(J)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLon(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-boolean v11, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    if-eqz v11, :cond_0

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEle(J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    goto :goto_1

    :cond_0
    const-string v11, ""

    :goto_1
    iget-boolean v12, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts:Z

    if-eqz v12, :cond_1

    invoke-virtual {p0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getTurnCostRef(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2
    move-object v12, v4

    goto :goto_3

    :cond_1
    const-string v4, "-"

    goto :goto_2

    :goto_3
    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    if-le v1, v4, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, " ... %d more nodes\n"

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "edges:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "E_FLAGS"

    const-string v11, "E_DIST"

    const-string v5, "#"

    const-string v6, "E_NODEA"

    const-string v7, "E_NODEB"

    const-string v8, "E_LINKA"

    const-string v9, "E_LINKB"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%12s | %12s | %12s | %12s | %12s | %12s | %12s \n"

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->createEdgeFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v11

    :goto_4
    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v11}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->readFlags(JLcom/graphhopper/storage/IntsRef;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkA(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkB(J)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v1, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getDist(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v13, v5, v1}, Ljava/io/PrintStream;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    if-le p0, v4, :cond_5

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sub-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, " ... %d more edges"

    invoke-virtual {v0, v1, v2, p0}, Ljava/io/PrintStream;->printf(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_5
    return-void
.end method

.method public edge(II)I
    .locals 8

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_4

    if-eq p1, p2, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->ensureNodeCapacity(I)V

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    int-to-long v1, v0

    iget v3, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeEntryBytes:I

    int-to-long v4, v3

    mul-long/2addr v1, v4

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    iget-object v5, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    int-to-long v6, v4

    int-to-long v3, v3

    mul-long/2addr v6, v3

    invoke-interface {v5, v6, v7}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    invoke-virtual {p0, v1, v2, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeA(JI)V

    invoke-virtual {p0, v1, v2, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeB(JI)V

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v5

    invoke-static {v5}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {p0, v1, v2, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLinkA(JI)V

    invoke-virtual {p0, v3, v4, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEdgeRef(JI)V

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v3

    invoke-static {v3}, Lcom/graphhopper/util/EdgeIterator$Edge;->isValid(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v7, v3

    :cond_1
    invoke-virtual {p0, v1, v2, v7}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLinkB(JI)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEdgeRef(JI)V

    :cond_2
    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop edges are not supported, got: "

    const-string v1, " - "

    invoke-static {v0, p1, v1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    const-string p2, "Maximum edge count exceeded: "

    invoke-static {p0, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureNodeCapacity(I)V
    .locals 6

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    if-ge p1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    int-to-long v2, p1

    iget p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeEntryBytes:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    :goto_0
    iget p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    if-ge v0, p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    const/4 p1, -0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEdgeRef(JI)V

    iget-boolean v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setTurnCostRef(JI)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeEntryBytes:I

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    const/16 v4, 0x8

    invoke-interface {v0, v4, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v5, v1, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v1

    const/16 v5, 0xc

    invoke-interface {v0, v5, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v5, v1, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v1

    const/16 v5, 0x10

    invoke-interface {v0, v5, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v5, v1, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v1

    const/16 v5, 0x14

    invoke-interface {v0, v5, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v5, v1, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result v1

    const/16 v5, 0x18

    invoke-interface {v0, v5, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x1c

    iget-boolean v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    invoke-interface {v0, v1, v6}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-boolean v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v6, v1, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->eleToUInt(D)I

    move-result v1

    const/16 v6, 0x20

    invoke-interface {v0, v6, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-wide v6, v1, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    invoke-static {v6, v7}, Lcom/graphhopper/util/Helper;->eleToUInt(D)I

    move-result v1

    const/16 v6, 0x24

    invoke-interface {v0, v6, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v1, 0x28

    iget-boolean v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->frozen:Z

    invoke-interface {v0, v1, v6}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v2, v5}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeEntryBytes:I

    invoke-interface {v0, v3, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    invoke-interface {v0, v4, v1}, Lcom/graphhopper/storage/DataAccess;->setHeader(II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->flush()V

    return-void
.end method

.method public getBounds()Lcom/graphhopper/util/shapes/BBox;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    return-object p0
.end method

.method public getBytesForFlags()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bytesForFlags:I

    return p0
.end method

.method public getCapacity()J
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getDist(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    int-to-double p0, p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public getEdgeRef(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_EDGE_REF:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getEdges()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    return p0
.end method

.method public getEle(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_ELE:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->uIntToEle(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFrozen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->frozen:Z

    return p0
.end method

.method public getGeoRef(J)J
    .locals 5

    sget-object v0, Lcom/graphhopper/util/BitUtil;->LITTLE:Lcom/graphhopper/util/BitUtil;

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_GEO:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v1

    iget-object v2, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_GEO:I

    int-to-long v3, p0

    add-long/2addr p1, v3

    const-wide/16 v3, 0x4

    add-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getByte(J)B

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/graphhopper/util/BitUtil;->toLong(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getInt(II)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    mul-int/lit8 p2, p2, 0x4

    invoke-direct {p0, v0, v1, p2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getFlagInt(JI)I

    move-result p0

    return p0
.end method

.method public getKeyValuesRef(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_KV:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getLat(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LAT:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLinkA(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getLinkB(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getLon(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LON:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getNodeA(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getNodeB(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public getNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    return p0
.end method

.method public getTurnCostRef(J)I
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_TC:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    return p0
.end method

.method public isClosed()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->isClosed()Z

    move-result p0

    return p0
.end method

.method public loadExisting()Z
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0}, Lcom/graphhopper/storage/DataAccess;->loadExisting()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const-string v2, "nodes"

    const/16 v3, 0x9

    invoke-static {v2, v3, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeEntryBytes:I

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v3, 0x8

    invoke-interface {v0, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v4

    invoke-static {v4}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/graphhopper/util/shapes/BBox;->minLon:D

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v4

    invoke-static {v4}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/graphhopper/util/shapes/BBox;->maxLon:D

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0x14

    invoke-interface {v4, v5}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v4

    invoke-static {v4}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/graphhopper/util/shapes/BBox;->minLat:D

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v4, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v5, 0x18

    invoke-interface {v4, v5}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v4

    invoke-static {v4}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/graphhopper/util/shapes/BBox;->maxLat:D

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v4, 0x1c

    invoke-interface {v0, v4}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-boolean v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    if-ne v0, v6, :cond_4

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v7, 0x20

    invoke-interface {v6, v7}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v6

    invoke-static {v6}, Lcom/graphhopper/util/Helper;->uIntToEle(I)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/graphhopper/util/shapes/BBox;->minEle:D

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    iget-object v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v7, 0x24

    invoke-interface {v6, v7}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v6

    invoke-static {v6}, Lcom/graphhopper/util/Helper;->uIntToEle(I)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/graphhopper/util/shapes/BBox;->maxEle:D

    :cond_2
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    const/16 v6, 0x28

    invoke-interface {v0, v6}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->frozen:Z

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v1}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    const-string v1, "edges"

    invoke-static {v1, v5, v0}, Lcom/graphhopper/util/GHUtility;->checkDAVersion(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v2}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeEntryBytes:I

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v0, v3}, Lcom/graphhopper/storage/DataAccess;->getHeader(I)I

    move-result v0

    iput v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    return v4

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Configured dimension elevation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " is not equal to dimension of loaded graph elevation ="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    return v1
.end method

.method public readFlags(JLcom/graphhopper/storage/IntsRef;)V
    .locals 4

    iget-object v0, p3, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p3, Lcom/graphhopper/storage/IntsRef;->ints:[I

    mul-int/lit8 v3, v1, 0x4

    invoke-direct {p0, p1, p2, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getFlagInt(JI)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public relabelNodes(Ljava/util/function/IntUnaryOperator;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeA(JI)V

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeB(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodes()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    :goto_1
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodes()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {v3, v2}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {v0, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v6

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLat(J)D

    move-result-wide v7

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLon(J)D

    move-result-wide v9

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEle(J)D

    move-result-wide v14

    goto :goto_2

    :cond_2
    const-wide/high16 v14, 0x7ff8000000000000L    # Double.NaN

    :goto_2
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts()Z

    move-result v11

    const/16 v16, -0x1

    if-eqz v11, :cond_3

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getTurnCostRef(J)I

    move-result v4

    goto :goto_3

    :cond_3
    move/from16 v4, v16

    :goto_3
    move v5, v2

    :goto_4
    int-to-long v12, v5

    invoke-virtual {v3, v12, v13}, Lcom/carrotsearch/hppc/j;->h(J)V

    invoke-interface {v1, v5}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v13

    invoke-virtual {v0, v11, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLat(J)D

    move-result-wide v17

    invoke-virtual {v0, v11, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLon(J)D

    move-result-wide v19

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-virtual {v0, v11, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEle(J)D

    move-result-wide v21

    goto :goto_5

    :cond_4
    const-wide/high16 v21, 0x7ff8000000000000L    # Double.NaN

    :goto_5
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-virtual {v0, v11, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getTurnCostRef(J)I

    move-result v23

    goto :goto_6

    :cond_5
    move/from16 v23, v16

    :goto_6
    invoke-virtual {v0, v11, v12, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEdgeRef(JI)V

    invoke-virtual {v0, v11, v12, v7, v8}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLat(JD)V

    invoke-virtual {v0, v11, v12, v9, v10}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLon(JD)V

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v0, v11, v12, v14, v15}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEle(JD)V

    :cond_6
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v0, v11, v12, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setTurnCostRef(JI)V

    :cond_7
    if-ne v5, v2, :cond_8

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    move v6, v13

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-wide/from16 v14, v21

    move/from16 v4, v23

    goto :goto_4

    :cond_9
    return-void
.end method

.method public setDist(JD)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    int-to-long v1, v1

    add-long/2addr p1, v1

    invoke-direct {p0, p3, p4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->distToInt(D)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setEdgeRef(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_EDGE_REF:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setEle(JD)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_ELE:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-static {p3, p4}, Lcom/graphhopper/util/Helper;->eleToUInt(D)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->frozen:Z

    return-void
.end method

.method public setGeoRef(JJ)V
    .locals 4

    const/16 v0, 0x27

    ushr-long v0, p3, v0

    long-to-int v0, v0

    if-eqz v0, :cond_1

    const v1, 0x1ffffff

    if-eq v0, v1, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    const-string p1, "large "

    goto :goto_0

    :cond_0
    const-string p1, "small "

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geoRef is too "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_GEO:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_GEO:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    const-wide/16 v1, 0x4

    add-long/2addr p1, v1

    const/16 p0, 0x20

    shr-long/2addr p3, p0

    long-to-int p0, p3

    int-to-byte p0, p0

    invoke-interface {v0, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setByte(JB)V

    return-void
.end method

.method public setInt(III)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v0

    mul-int/lit8 p2, p2, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setFlagInt(JII)V

    return-void
.end method

.method public setKeyValuesRef(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_KV:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLat(JD)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LAT:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-static {p3, p4}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLinkA(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLinkB(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_LINKB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setLon(JD)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_LON:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-static {p3, p4}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result p0

    invoke-interface {v0, p1, p2, p0}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setNodeA(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEA:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setNodeB(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_NODEB:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public setTurnCostRef(JI)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->N_TC:I

    int-to-long v1, p0

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    return-void
.end method

.method public sortEdges(Ljava/util/function/IntUnaryOperator;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/carrotsearch/hppc/j;

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/carrotsearch/hppc/j;-><init>(J)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdges()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lcom/carrotsearch/hppc/j;->g(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v21, v2

    move v3, v4

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v7

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v8

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkA(J)I

    move-result v9

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkB(J)I

    move-result v10

    iget-object v11, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v12, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    int-to-long v12, v12

    add-long/2addr v12, v5

    invoke-interface {v11, v12, v13}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v11

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getKeyValuesRef(J)I

    move-result v12

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->createEdgeFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v13

    invoke-virtual {v0, v5, v6, v13}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->readFlags(JLcom/graphhopper/storage/IntsRef;)V

    invoke-virtual {v0, v5, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v5

    move v14, v4

    move/from16 v16, v14

    :goto_1
    int-to-long v3, v14

    invoke-virtual {v2, v3, v4}, Lcom/carrotsearch/hppc/j;->h(J)V

    invoke-interface {v1, v14}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v14

    invoke-virtual {v0, v14}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toEdgePointer(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeA(J)I

    move-result v17

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodeB(J)I

    move-result v18

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkA(J)I

    move-result v19

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getLinkB(J)I

    move-result v20

    iget-object v15, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    move-object/from16 v21, v2

    iget v2, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    move-wide/from16 v22, v5

    int-to-long v5, v2

    add-long/2addr v5, v3

    invoke-interface {v15, v5, v6}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result v2

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getKeyValuesRef(J)I

    move-result v5

    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->createEdgeFlags()Lcom/graphhopper/storage/IntsRef;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->readFlags(JLcom/graphhopper/storage/IntsRef;)V

    invoke-virtual {v0, v3, v4}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getGeoRef(J)J

    move-result-wide v24

    invoke-virtual {v0, v3, v4, v7}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeA(JI)V

    invoke-virtual {v0, v3, v4, v8}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setNodeB(JI)V

    const/4 v7, -0x1

    if-ne v9, v7, :cond_1

    move v8, v7

    goto :goto_2

    :cond_1
    invoke-interface {v1, v9}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v8

    :goto_2
    invoke-virtual {v0, v3, v4, v8}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLinkA(JI)V

    if-ne v10, v7, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v1, v10}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v7

    :goto_3
    invoke-virtual {v0, v3, v4, v7}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setLinkB(JI)V

    iget-object v7, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    iget v8, v0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->E_DIST:I

    int-to-long v8, v8

    add-long/2addr v8, v3

    invoke-interface {v7, v8, v9, v11}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    invoke-virtual {v0, v3, v4, v12}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setKeyValuesRef(JI)V

    invoke-virtual {v0, v3, v4, v13}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->writeFlags(JLcom/graphhopper/storage/IntsRef;)V

    move-wide/from16 v7, v22

    invoke-virtual {v0, v3, v4, v7, v8}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setGeoRef(JJ)V

    move/from16 v3, v16

    if-ne v14, v3, :cond_3

    :goto_4
    add-int/lit8 v4, v3, 0x1

    move-object/from16 v2, v21

    goto/16 :goto_0

    :cond_3
    move v11, v2

    move/from16 v16, v3

    move v12, v5

    move-object v13, v6

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v2, v21

    move-wide/from16 v5, v24

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v0}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getNodes()I

    move-result v2

    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->toNodePointer(I)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->getEdgeRef(J)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v2

    invoke-virtual {v0, v4, v5, v2}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setEdgeRef(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method public toDetailsString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edges:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v1}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iget v5, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodes:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {v6}, Lcom/graphhopper/storage/DataAccess;->getCapacity()J

    move-result-wide v6

    div-long/2addr v6, v3

    iget-object p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->bounds:Lcom/graphhopper/util/shapes/BBox;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "edges: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "MB), nodes: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "MB), bounds: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toEdgePointer(I)J
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    if-ge p1, v0, :cond_0

    int-to-long v0, p1

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeEntryBytes:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->edgeCount:I

    const-string v1, " out of bounds [0,"

    const-string v2, "["

    const-string v3, "edge: "

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toNodePointer(I)J
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    if-ge p1, v0, :cond_0

    int-to-long v0, p1

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeEntryBytes:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->nodeCount:I

    const-string v1, " out of bounds [0,"

    const-string v2, "["

    const-string v3, "node: "

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withElevation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withElevation:Z

    return p0
.end method

.method public withTurnCosts()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->withTurnCosts:Z

    return p0
.end method

.method public writeFlags(JLcom/graphhopper/storage/IntsRef;)V
    .locals 4

    iget-object v0, p3, Lcom/graphhopper/storage/IntsRef;->ints:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v1, 0x4

    iget-object v3, p3, Lcom/graphhopper/storage/IntsRef;->ints:[I

    aget v3, v3, v1

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/graphhopper/storage/BaseGraphNodesAndEdges;->setFlagInt(JII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
