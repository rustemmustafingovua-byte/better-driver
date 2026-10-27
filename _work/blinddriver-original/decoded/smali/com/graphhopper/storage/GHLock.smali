.class public interface abstract Lcom/graphhopper/storage/GHLock;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getObtainFailedReason()Ljava/lang/Exception;
.end method

.method public abstract isLocked()Z
.end method

.method public abstract release()V
.end method

.method public abstract tryLock()Z
.end method
