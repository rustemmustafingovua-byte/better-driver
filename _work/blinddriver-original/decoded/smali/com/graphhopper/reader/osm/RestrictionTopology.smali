.class public Lcom/graphhopper/reader/osm/RestrictionTopology;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fromEdges:Lcom/carrotsearch/hppc/x;

.field private final isViaWayRestriction:Z

.field private final toEdges:Lcom/carrotsearch/hppc/x;

.field private final viaEdges:Lcom/carrotsearch/hppc/x;

.field private final viaNodes:Lcom/carrotsearch/hppc/x;


# direct methods
.method private constructor <init>(ZLcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p5}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fromEdges and toEdges cannot be size > 1 at the same time"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p5}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "for node restrictions there must be exactly one via node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez p1, :cond_5

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "for node restrictions the viaEdges must be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p4}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "for way restrictions there must at least one via edge"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v0

    invoke-virtual {p4}, Lcom/carrotsearch/hppc/x;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v0, v2, :cond_8

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "for way restrictions there must be one via node more than there are via edges"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_4
    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->isViaWayRestriction:Z

    iput-object p2, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->viaNodes:Lcom/carrotsearch/hppc/x;

    iput-object p3, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->fromEdges:Lcom/carrotsearch/hppc/x;

    iput-object p4, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->viaEdges:Lcom/carrotsearch/hppc/x;

    iput-object p5, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->toEdges:Lcom/carrotsearch/hppc/x;

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fromEdges and toEdges must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static node(III)Lcom/graphhopper/reader/osm/RestrictionTopology;
    .locals 0

    .line 1
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {p2}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/RestrictionTopology;->node(Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;

    move-result-object p0

    return-object p0
.end method

.method public static node(Lcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;
    .locals 6

    .line 2
    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionTopology;

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/reader/osm/RestrictionTopology;-><init>(ZLcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-object v0
.end method

.method public static way(IIILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;
    .locals 0

    .line 1
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p1}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/reader/osm/RestrictionTopology;->way(ILcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;

    move-result-object p0

    return-object p0
.end method

.method public static way(ILcom/carrotsearch/hppc/x;ILcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;
    .locals 0

    .line 2
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p0

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-static {p2}, Lcom/carrotsearch/hppc/x;->from([I)Lcom/carrotsearch/hppc/x;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/graphhopper/reader/osm/RestrictionTopology;->way(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;

    move-result-object p0

    return-object p0
.end method

.method public static way(Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)Lcom/graphhopper/reader/osm/RestrictionTopology;
    .locals 6

    .line 3
    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionTopology;

    const/4 v1, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/graphhopper/reader/osm/RestrictionTopology;-><init>(ZLcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;Lcom/carrotsearch/hppc/x;)V

    return-object v0
.end method


# virtual methods
.method public getFromEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->fromEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getToEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->toEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getViaEdges()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->viaEdges:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public getViaNodes()Lcom/carrotsearch/hppc/x;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->viaNodes:Lcom/carrotsearch/hppc/x;

    return-object p0
.end method

.method public isViaWayRestriction()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/RestrictionTopology;->isViaWayRestriction:Z

    return p0
.end method
