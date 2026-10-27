.class public Lcom/graphhopper/coll/GHSortedCollection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final map:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/graphhopper/coll/GHIntHashSet;",
            ">;"
        }
    .end annotation
.end field

.field private size:I

.field private final slidingMeanValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->slidingMeanValue:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    return p0
.end method

.method public getSlidingMeanValue()I
    .locals 0

    const/16 p0, 0x14

    return p0
.end method

.method public insert(II)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/coll/GHIntHashSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v1, Lcom/graphhopper/coll/GHIntHashSet;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/graphhopper/coll/GHIntHashSet;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "use update if you want to update "

    invoke-static {p1, p2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public peekKey()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/carrotsearch/hppc/c0;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/a;

    iget p0, p0, Ln5/a;->b:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "internal set is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "collection is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public peekValue()I
    .locals 1

    iget v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "internal set is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "collection is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pollKey()I
    .locals 3

    iget v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/c0;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/a;

    iget v2, v2, Ln5/a;->b:I

    invoke-virtual {v1, v2}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "internal set is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "collection is already empty!?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(II)V
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/coll/GHIntHashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/c0;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget p1, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/c0;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, " with value "

    const-string v1, " - did you insert "

    const-string v2, "cannot remove key "

    invoke-static {v2, p1, v0, p2, v1}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " before?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/graphhopper/coll/GHIntHashSet;

    invoke-virtual {v3}, Lcom/carrotsearch/hppc/c0;->size()I

    move-result v3

    if-le v1, v3, :cond_1

    move v1, v3

    :cond_1
    if-ge v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/graphhopper/coll/GHSortedCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHSortedCollection;->peekKey()I

    move-result v0

    invoke-virtual {p0}, Lcom/graphhopper/coll/GHSortedCollection;->peekValue()I

    move-result v3

    const-string v4, "=>"

    const-string v5, ")"

    const-string v6, ", minEntry=("

    invoke-static {v6, v0, v4, v3, v5}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    iget v3, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    iget-object v4, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    iget v5, p0, Lcom/graphhopper/coll/GHSortedCollection;->size:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget-object p0, p0, Lcom/graphhopper/coll/GHSortedCollection;->map:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v5, p0

    const-string p0, ", treeMap.size="

    const-string v6, ", averageNo="

    const-string v7, "size="

    invoke-static {v7, v3, p0, v4, v6}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", minNo="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxNo="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0, p0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(III)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/coll/GHSortedCollection;->remove(II)V

    invoke-virtual {p0, p1, p3}, Lcom/graphhopper/coll/GHSortedCollection;->insert(II)V

    return-void
.end method
