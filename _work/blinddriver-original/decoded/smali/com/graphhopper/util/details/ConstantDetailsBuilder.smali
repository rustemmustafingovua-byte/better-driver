.class public Lcom/graphhopper/util/details/ConstantDetailsBuilder;
.super Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;
.source "SourceFile"


# instance fields
.field private firstEdge:Z

.field private lastIndex:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->firstEdge:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->lastIndex:I

    iput-object p2, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Ljava/util/Map$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/graphhopper/util/details/PathDetail;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->firstEdge:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/graphhopper/util/details/PathDetail;

    iget-object v1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->value:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/graphhopper/util/details/PathDetail;-><init>(Ljava/lang/Object;)V

    iget v1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->lastIndex:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/util/details/PathDetail;->setFirst(I)V

    iget v1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->lastIndex:I

    invoke-virtual {v0, v1}, Lcom/graphhopper/util/details/PathDetail;->setLast(I)V

    new-instance v1, Lcom/graphhopper/coll/MapEntry;

    invoke-virtual {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/util/ArrayList;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2}, Lcom/graphhopper/coll/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->build()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public endInterval(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->lastIndex:I

    invoke-super {p0, p1}, Lcom/graphhopper/util/details/AbstractPathDetailsBuilder;->endInterval(I)V

    return-void
.end method

.method public getCurrentValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->value:Ljava/lang/Object;

    return-object p0
.end method

.method public isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->firstEdge:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/graphhopper/util/details/ConstantDetailsBuilder;->firstEdge:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method
