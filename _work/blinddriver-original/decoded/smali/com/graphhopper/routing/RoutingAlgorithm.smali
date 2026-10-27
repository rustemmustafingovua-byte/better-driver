.class public interface abstract Lcom/graphhopper/routing/RoutingAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract calcPath(II)Lcom/graphhopper/routing/Path;
.end method

.method public abstract calcPaths(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getVisitedNodes()I
.end method

.method public abstract setMaxVisitedNodes(I)V
.end method

.method public abstract setTimeoutMillis(J)V
.end method
