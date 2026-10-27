.class Lcom/graphhopper/storage/index/LineIntIndex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/LocationIndex$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/storage/index/LineIntIndex;->query(Lcom/graphhopper/storage/index/LocationIndex$TileFilter;Lcom/graphhopper/storage/index/LocationIndex$Visitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/storage/index/LineIntIndex;

.field final synthetic val$function:Lcom/graphhopper/storage/index/LocationIndex$Visitor;

.field final synthetic val$set:Lcom/carrotsearch/hppc/c0;


# direct methods
.method public constructor <init>(Lcom/graphhopper/storage/index/LineIntIndex;Lcom/graphhopper/storage/index/LocationIndex$Visitor;Lcom/carrotsearch/hppc/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->this$0:Lcom/graphhopper/storage/index/LineIntIndex;

    iput-object p2, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$function:Lcom/graphhopper/storage/index/LocationIndex$Visitor;

    iput-object p3, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$set:Lcom/carrotsearch/hppc/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTileInfo()Z
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$function:Lcom/graphhopper/storage/index/LocationIndex$Visitor;

    invoke-interface {p0}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->isTileInfo()Z

    move-result p0

    return p0
.end method

.method public onEdge(I)V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$set:Lcom/carrotsearch/hppc/c0;

    invoke-virtual {v0, p1}, Lcom/carrotsearch/hppc/c0;->add(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$function:Lcom/graphhopper/storage/index/LocationIndex$Visitor;

    invoke-interface {p0, p1}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->onEdge(I)V

    :cond_0
    return-void
.end method

.method public onTile(Lcom/graphhopper/util/shapes/BBox;I)V
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/storage/index/LineIntIndex$1;->val$function:Lcom/graphhopper/storage/index/LocationIndex$Visitor;

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/index/LocationIndex$Visitor;->onTile(Lcom/graphhopper/util/shapes/BBox;I)V

    return-void
.end method
