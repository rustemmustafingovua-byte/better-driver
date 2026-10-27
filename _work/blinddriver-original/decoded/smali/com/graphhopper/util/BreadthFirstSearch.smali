.class public abstract Lcom/graphhopper/util/BreadthFirstSearch;
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
    .locals 4

    new-instance v0, Lcom/graphhopper/util/SimpleIntDeque;

    invoke-direct {v0}, Lcom/graphhopper/util/SimpleIntDeque;-><init>()V

    invoke-virtual {p0}, Lcom/graphhopper/util/XFirstSearch;->createBitSet()Lcom/graphhopper/coll/GHBitSet;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    invoke-virtual {v0, p2}, Lcom/graphhopper/util/SimpleIntDeque;->push(I)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/graphhopper/util/SimpleIntDeque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/graphhopper/util/SimpleIntDeque;->pop()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/graphhopper/util/XFirstSearch;->goFurther(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lcom/graphhopper/util/EdgeExplorer;->setBaseNode(I)Lcom/graphhopper/util/EdgeIterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/graphhopper/util/EdgeIteratorState;->getAdjNode()I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/graphhopper/util/XFirstSearch;->checkAdjacent(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Lcom/graphhopper/coll/GHBitSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Lcom/graphhopper/coll/GHBitSet;->add(I)V

    invoke-virtual {v0, v2}, Lcom/graphhopper/util/SimpleIntDeque;->push(I)V

    goto :goto_1

    :cond_3
    return-void
.end method
