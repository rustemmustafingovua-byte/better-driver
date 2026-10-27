.class public interface abstract Lcom/graphhopper/storage/Directory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract close()V
.end method

.method public abstract create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;
.end method

.method public abstract create(Ljava/lang/String;I)Lcom/graphhopper/storage/DataAccess;
.end method

.method public abstract create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)Lcom/graphhopper/storage/DataAccess;
.end method

.method public abstract create(Ljava/lang/String;Lcom/graphhopper/storage/DAType;I)Lcom/graphhopper/storage/DataAccess;
.end method

.method public abstract create()Lcom/graphhopper/storage/Directory;
.end method

.method public abstract getDAs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/graphhopper/storage/DataAccess;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultType()Lcom/graphhopper/storage/DAType;
.end method

.method public abstract getDefaultType(Ljava/lang/String;Z)Lcom/graphhopper/storage/DAType;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
