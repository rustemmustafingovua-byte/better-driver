.class public Lcom/graphhopper/storage/index/InMemConstructionIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;,
        Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;,
        Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;
    }
.end annotation


# instance fields
.field final entries:[I

.field final keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

.field final pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

.field final root:Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

.field final shifts:[B


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/index/IndexStructureInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;-><init>(I)V

    iput-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->root:Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getEntries()[I

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->entries:[I

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getShifts()[B

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->shifts:[B

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getPixelGridTraversal()Lcom/graphhopper/storage/index/PixelGridTraversal;

    move-result-object v0

    iput-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/IndexStructureInfo;->getKeyAlgo()Lcom/graphhopper/geohash/SpatialKeyAlgo;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    return-void
.end method

.method public static synthetic a(Lcom/graphhopper/storage/index/InMemConstructionIndex;ILpb/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->lambda$addToAllTilesOnLine$0(ILpb/a;)V

    return-void
.end method

.method private synthetic lambda$addToAllTilesOnLine$0(ILpb/a;)V
    .locals 4

    iget-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    iget-wide v1, p2, Lpb/a;->l:D

    double-to-int v1, v1

    iget-wide v2, p2, Lpb/a;->m:D

    double-to-int p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->encode(II)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->put(JI)V

    return-void
.end method

.method private put(JLcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;II)V
    .locals 3

    .line 2
    invoke-interface {p3}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    check-cast p3, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;

    .line 4
    invoke-virtual {p3}, Lcom/carrotsearch/hppc/x;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3}, Lcom/carrotsearch/hppc/x;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Lcom/carrotsearch/hppc/x;->get(I)I

    move-result p0

    if-eq p0, p5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p3, p5}, Lcom/carrotsearch/hppc/x;->add(I)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->shifts:[B

    aget-byte v0, v0, p4

    rsub-int/lit8 v1, v0, 0x40

    ushr-long v1, p1, v1

    long-to-int v1, v1

    shl-long/2addr p1, v0

    .line 7
    check-cast p3, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    .line 8
    invoke-virtual {p3, v1}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->getSubEntry(I)Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;

    move-result-object v0

    add-int/lit8 p4, p4, 0x1

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->entries:[I

    array-length v2, v0

    if-ne p4, v2, :cond_3

    .line 10
    new-instance v0, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemLeafEntry;-><init>(I)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v2, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    aget v0, v0, p4

    invoke-direct {v2, v0}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;-><init>(I)V

    move-object v0, v2

    .line 12
    :goto_1
    invoke-virtual {p3, v1, v0}, Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;->setSubEntry(ILcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;)V

    :cond_4
    move-object p3, v0

    .line 13
    invoke-direct/range {p0 .. p5}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->put(JLcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;II)V

    return-void
.end method


# virtual methods
.method public addToAllTilesOnLine(IDDDD)V
    .locals 2

    sget-object v0, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    invoke-virtual {v0, p4, p5, p8, p9}, Lcom/graphhopper/util/DistanceCalcEarth;->isCrossBoundary(DD)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->pixelGridTraversal:Lcom/graphhopper/storage/index/PixelGridTraversal;

    new-instance v1, Lpb/a;

    invoke-direct {v1, p4, p5, p2, p3}, Lpb/a;-><init>(DD)V

    new-instance p2, Lpb/a;

    invoke-direct {p2, p8, p9, p6, p7}, Lpb/a;-><init>(DD)V

    new-instance p3, Lcom/graphhopper/storage/index/a;

    invoke-direct {p3, p0, p1}, Lcom/graphhopper/storage/index/a;-><init>(Lcom/graphhopper/storage/index/InMemConstructionIndex;I)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/graphhopper/storage/index/PixelGridTraversal;->traverse(Lpb/a;Lpb/a;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public put(JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->keyAlgo:Lcom/graphhopper/geohash/SpatialKeyAlgo;

    invoke-virtual {v0}, Lcom/graphhopper/geohash/SpatialKeyAlgo;->getBits()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    shl-long v2, p1, v0

    iget-object v4, p0, Lcom/graphhopper/storage/index/InMemConstructionIndex;->root:Lcom/graphhopper/storage/index/InMemConstructionIndex$InMemTreeEntry;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/graphhopper/storage/index/InMemConstructionIndex;->put(JLcom/graphhopper/storage/index/InMemConstructionIndex$InMemEntry;II)V

    return-void
.end method
