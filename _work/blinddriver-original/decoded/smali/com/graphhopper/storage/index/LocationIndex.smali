.class public interface abstract Lcom/graphhopper/storage/index/LocationIndex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/storage/index/LocationIndex$TileFilter;,
        Lcom/graphhopper/storage/index/LocationIndex$Visitor;
    }
.end annotation


# direct methods
.method public static createBBoxTileFilter(Lcom/graphhopper/util/shapes/BBox;)Lcom/graphhopper/storage/index/LocationIndex$TileFilter;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/graphhopper/storage/index/LocationIndex$1;

    invoke-direct {v0, p0}, Lcom/graphhopper/storage/index/LocationIndex$1;-><init>(Lcom/graphhopper/util/shapes/BBox;)V

    return-object v0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract findClosest(DDLcom/graphhopper/routing/util/EdgeFilter;)Lcom/graphhopper/storage/index/Snap;
.end method

.method public abstract query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
.end method

.method public query(Lcom/graphhopper/util/shapes/BBox;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/graphhopper/storage/index/LocationIndex;->createBBoxTileFilter(Lcom/graphhopper/util/shapes/BBox;)Lcom/graphhopper/storage/index/LocationIndex$TileFilter;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/index/LocationIndex;->query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V

    return-void
.end method
