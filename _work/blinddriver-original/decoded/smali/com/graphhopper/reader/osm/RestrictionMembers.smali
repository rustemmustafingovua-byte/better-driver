.class public Lcom/graphhopper/reader/osm/RestrictionMembers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fromWays:Lcom/carrotsearch/hppc/t0;

.field private final isViaWay:Z

.field private final toWays:Lcom/carrotsearch/hppc/t0;

.field private final viaOSMNode:J

.field private final viaWays:Lcom/carrotsearch/hppc/t0;


# direct methods
.method private constructor <init>(ZJLcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->isViaWay:Z

    iput-wide p2, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaOSMNode:J

    iput-object p4, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->fromWays:Lcom/carrotsearch/hppc/t0;

    iput-object p5, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaWays:Lcom/carrotsearch/hppc/t0;

    iput-object p6, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->toWays:Lcom/carrotsearch/hppc/t0;

    return-void
.end method

.method public static viaNode(JLcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/RestrictionMembers;
    .locals 7

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionMembers;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/RestrictionMembers;-><init>(ZJLcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)V

    return-object v0
.end method

.method public static viaWay(Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)Lcom/graphhopper/reader/osm/RestrictionMembers;
    .locals 7

    new-instance v0, Lcom/graphhopper/reader/osm/RestrictionMembers;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/graphhopper/reader/osm/RestrictionMembers;-><init>(ZJLcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;Lcom/carrotsearch/hppc/t0;)V

    return-object v0
.end method


# virtual methods
.method public getAllWays()Lcom/carrotsearch/hppc/t0;
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/t0;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->fromWays:Lcom/carrotsearch/hppc/t0;

    iget v1, v1, Lcom/carrotsearch/hppc/t0;->m:I

    iget-object v2, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->toWays:Lcom/carrotsearch/hppc/t0;

    iget v2, v2, Lcom/carrotsearch/hppc/t0;->m:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->isViaWay:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaWays:Lcom/carrotsearch/hppc/t0;

    iget v2, v2, Lcom/carrotsearch/hppc/t0;->m:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/t0;-><init>(I)V

    iget-object v1, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->fromWays:Lcom/carrotsearch/hppc/t0;

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/t0;->addAll(Lcom/carrotsearch/hppc/v0;)I

    iget-boolean v1, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->isViaWay:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaWays:Lcom/carrotsearch/hppc/t0;

    invoke-virtual {v0, v1}, Lcom/carrotsearch/hppc/t0;->addAll(Lcom/carrotsearch/hppc/v0;)I

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->toWays:Lcom/carrotsearch/hppc/t0;

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/t0;->addAll(Lcom/carrotsearch/hppc/v0;)I

    return-object v0
.end method

.method public getFromWays()Lcom/carrotsearch/hppc/t0;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->fromWays:Lcom/carrotsearch/hppc/t0;

    return-object p0
.end method

.method public getToWays()Lcom/carrotsearch/hppc/t0;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->toWays:Lcom/carrotsearch/hppc/t0;

    return-object p0
.end method

.method public getViaOSMNode()J
    .locals 2

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaOSMNode:J

    return-wide v0
.end method

.method public getViaWays()Lcom/carrotsearch/hppc/t0;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->viaWays:Lcom/carrotsearch/hppc/t0;

    return-object p0
.end method

.method public isViaWay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/RestrictionMembers;->isViaWay:Z

    return p0
.end method
