.class Lcom/graphhopper/storage/index/LocationIndex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/LocationIndex$TileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/storage/index/LocationIndex;->createBBoxTileFilter(Lcom/graphhopper/util/shapes/BBox;)Lcom/graphhopper/storage/index/LocationIndex$TileFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$queryBBox:Lcom/graphhopper/util/shapes/BBox;


# direct methods
.method public constructor <init>(Lcom/graphhopper/util/shapes/BBox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/storage/index/LocationIndex$1;->val$queryBBox:Lcom/graphhopper/util/shapes/BBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptAll(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndex$1;->val$queryBBox:Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/shapes/BBox;->contains(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result p0

    return p0
.end method

.method public acceptPartially(Lcom/graphhopper/util/shapes/BBox;)Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LocationIndex$1;->val$queryBBox:Lcom/graphhopper/util/shapes/BBox;

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/shapes/BBox;->intersects(Lcom/graphhopper/util/shapes/BBox;)Z

    move-result p0

    return p0
.end method
