.class public interface abstract Lcom/graphhopper/storage/index/LocationIndex$Visitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/storage/index/LocationIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Visitor"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public isTileInfo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onEdge(I)V
.end method

.method public onTile(Lcom/graphhopper/util/shapes/BBox;I)V
    .locals 0

    return-void
.end method
