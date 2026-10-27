.class public Lcom/graphhopper/coll/GHTBitSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/coll/GHBitSet;


# instance fields
.field private final tHash:Lcom/graphhopper/coll/GHIntHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x3e8

    .line 5
    invoke-direct {p0, v0}, Lcom/graphhopper/coll/GHTBitSet;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/graphhopper/coll/GHIntHashSet;

    const-wide v1, 0x3fe6666660000000L    # 0.699999988079071

    invoke-direct {v0, p1, v1, v2}, Lcom/graphhopper/coll/GHIntHashSet;-><init>(ID)V

    iput-object v0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    return-void
.end method

.method public constructor <init>(Lcom/graphhopper/coll/GHIntHashSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    return-void
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->clear()V

    return-void
.end method

.method public final contains(I)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final copyTo(Lcom/graphhopper/coll/GHBitSet;)Lcom/graphhopper/coll/GHBitSet;
    .locals 1

    invoke-interface {p1}, Lcom/graphhopper/coll/GHBitSet;->clear()V

    instance-of v0, p1, Lcom/graphhopper/coll/GHTBitSet;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/graphhopper/coll/GHTBitSet;

    iget-object v0, v0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {v0, p0}, Lcom/carrotsearch/hppc/c0;->addAll(Lcom/carrotsearch/hppc/z;)I

    return-object p1

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    iget v0, v0, Ln5/a;->b:I

    invoke-interface {p1, v0}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final getCardinality()I
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result p0

    return p0
.end method

.method public next(I)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported yet."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/coll/GHTBitSet;->tHash:Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
