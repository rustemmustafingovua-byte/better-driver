.class public interface abstract Lcom/graphhopper/util/details/PathDetailsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract build()Ljava/util/Map$Entry;
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
.end method

.method public abstract endInterval(I)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEdgeDifferentToLastEdge(Lcom/graphhopper/util/EdgeIteratorState;)Z
.end method

.method public abstract startInterval(I)V
.end method
