.class public Lcom/graphhopper/routing/AlgorithmOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private hints:Lcom/graphhopper/util/PMap;

.field private maxVisitedNodes:I

.field private timeoutMillis:J

.field private traversalMode:Lcom/graphhopper/routing/util/TraversalMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->hints:Lcom/graphhopper/util/PMap;

    .line 3
    const-string v0, "dijkstrabi"

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->algorithm:Ljava/lang/String;

    .line 4
    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->maxVisitedNodes:I

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    iput-wide v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->timeoutMillis:J

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/routing/AlgorithmOptions;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0}, Lcom/graphhopper/util/PMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->hints:Lcom/graphhopper/util/PMap;

    .line 9
    const-string v0, "dijkstrabi"

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->algorithm:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/graphhopper/routing/util/TraversalMode;->NODE_BASED:Lcom/graphhopper/routing/util/TraversalMode;

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    const v0, 0x7fffffff

    .line 11
    iput v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->maxVisitedNodes:I

    const-wide v0, 0x7fffffffffffffffL

    .line 12
    iput-wide v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->timeoutMillis:J

    .line 13
    invoke-virtual {p1}, Lcom/graphhopper/routing/AlgorithmOptions;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AlgorithmOptions;->setAlgorithm(Ljava/lang/String;)Lcom/graphhopper/routing/AlgorithmOptions;

    .line 14
    invoke-virtual {p1}, Lcom/graphhopper/routing/AlgorithmOptions;->getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AlgorithmOptions;->setTraversalMode(Lcom/graphhopper/routing/util/TraversalMode;)Lcom/graphhopper/routing/AlgorithmOptions;

    .line 15
    invoke-virtual {p1}, Lcom/graphhopper/routing/AlgorithmOptions;->getMaxVisitedNodes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/graphhopper/routing/AlgorithmOptions;->setMaxVisitedNodes(I)Lcom/graphhopper/routing/AlgorithmOptions;

    .line 16
    invoke-virtual {p1}, Lcom/graphhopper/routing/AlgorithmOptions;->getHints()Lcom/graphhopper/util/PMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/routing/AlgorithmOptions;->setHints(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/AlgorithmOptions;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public getHints()Lcom/graphhopper/util/PMap;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->hints:Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public getMaxVisitedNodes()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->maxVisitedNodes:I

    return p0
.end method

.method public getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->timeoutMillis:J

    return-wide v0
.end method

.method public getTraversalMode()Lcom/graphhopper/routing/util/TraversalMode;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    return-object p0
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/AlgorithmOptions;->algorithm:Ljava/lang/String;

    return-object p0
.end method

.method public setHints(Lcom/graphhopper/util/PMap;)Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 1

    new-instance v0, Lcom/graphhopper/util/PMap;

    invoke-direct {v0, p1}, Lcom/graphhopper/util/PMap;-><init>(Lcom/graphhopper/util/PMap;)V

    iput-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->hints:Lcom/graphhopper/util/PMap;

    return-object p0
.end method

.method public setMaxVisitedNodes(I)Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 0

    iput p1, p0, Lcom/graphhopper/routing/AlgorithmOptions;->maxVisitedNodes:I

    return-object p0
.end method

.method public setTimeoutMillis(J)Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 0

    iput-wide p1, p0, Lcom/graphhopper/routing/AlgorithmOptions;->timeoutMillis:J

    return-object p0
.end method

.method public setTraversalMode(Lcom/graphhopper/routing/util/TraversalMode;)Lcom/graphhopper/routing/AlgorithmOptions;
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/AlgorithmOptions;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->algorithm:Ljava/lang/String;

    iget-object p0, p0, Lcom/graphhopper/routing/AlgorithmOptions;->traversalMode:Lcom/graphhopper/routing/util/TraversalMode;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
