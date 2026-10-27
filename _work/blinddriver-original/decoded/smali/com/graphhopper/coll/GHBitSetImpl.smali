.class public Lcom/graphhopper/coll/GHBitSetImpl;
.super Ljava/util/BitSet;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/coll/GHBitSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/BitSet;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/util/BitSet;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public final contains(I)Z
    .locals 0

    invoke-super {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public final copyTo(Lcom/graphhopper/coll/GHBitSet;)Lcom/graphhopper/coll/GHBitSet;
    .locals 1

    invoke-interface {p1}, Lcom/graphhopper/coll/GHBitSet;->clear()V

    instance-of v0, p1, Lcom/graphhopper/coll/GHBitSetImpl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/graphhopper/coll/GHBitSetImpl;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    add-int/lit8 v0, v0, 0x1

    invoke-super {p0, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final getCardinality()I
    .locals 0

    invoke-super {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    return p0
.end method

.method public final next(I)I
    .locals 0

    invoke-super {p0, p1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p0

    return p0
.end method

.method public final nextClear(I)I
    .locals 0

    invoke-super {p0, p1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p0

    return p0
.end method

.method public remove(I)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method
