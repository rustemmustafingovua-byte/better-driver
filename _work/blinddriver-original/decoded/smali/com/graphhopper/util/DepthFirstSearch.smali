.class public abstract Lcom/graphhopper/util/DepthFirstSearch;
.super Lcom/graphhopper/util/XFirstSearch;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/graphhopper/util/XFirstSearch;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/graphhopper/util/EdgeExplorer;I)V
    .locals 5

    new-instance v0, Lcom/carrotsearch/hppc/w;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/w;-><init>(I)V

    invoke-virtual {p0}, Lcom/graphhopper/util/XFirstSearch;->createBitSet()Lcom/graphhopper/coll/GHBitSet;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/carrotsearch/hppc/w;->a(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w;->size()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/w;->j()I

    move-result p2

    invoke-interface {v1, p2}, Lcom/graphhopper/coll/GHBitSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/graphhopper/util/XFirstSearch;->goFurther(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/graphhopper/util/XFirstSearch;->checkAdjacent(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Lcom/carrotsearch/hppc/w;->a(I)V

    goto :goto_1

    :cond_2
    invoke-interface {v1, p2}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
