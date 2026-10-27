.class public interface abstract Lcom/graphhopper/routing/PathCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract calcPaths(IILcom/graphhopper/routing/EdgeRestrictions;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/graphhopper/routing/EdgeRestrictions;",
            ")",
            "Ljava/util/List<",
            "Lcom/graphhopper/routing/Path;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDebugString()Ljava/lang/String;
.end method

.method public abstract getVisitedNodes()I
.end method
