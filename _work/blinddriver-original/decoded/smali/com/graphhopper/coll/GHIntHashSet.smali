.class public Lcom/graphhopper/coll/GHIntHashSet;
.super Lcom/carrotsearch/hppc/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 1
    sget-object v2, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    const/16 v3, 0xa

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 2
    sget-object v2, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 1

    .line 3
    sget-object v0, Lcom/graphhopper/coll/GHIntObjectHashMap;->DETERMINISTIC:Lcom/carrotsearch/hppc/u;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(IDLcom/carrotsearch/hppc/u;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method

.method public constructor <init>(Lcom/carrotsearch/hppc/z;)V
    .locals 1

    .line 5
    invoke-interface {p1}, Lcom/carrotsearch/hppc/z;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/graphhopper/coll/GHIntHashSet;-><init>(I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->addAll(Lcom/carrotsearch/hppc/z;)I

    return-void
.end method

.method public static varargs from([I)Lcom/carrotsearch/hppc/c0;
    .locals 2

    new-instance v0, Lcom/graphhopper/coll/GHIntHashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/graphhopper/coll/GHIntHashSet;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/c0;->addAll([I)I

    return-object v0
.end method
