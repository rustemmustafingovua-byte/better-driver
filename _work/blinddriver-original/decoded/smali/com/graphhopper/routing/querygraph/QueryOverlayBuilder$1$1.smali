.class Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;->apply(ILjava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/graphhopper/storage/index/Snap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;

.field final synthetic val$fullPL:Lcom/graphhopper/util/PointList;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;Lcom/graphhopper/util/PointList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->this$1:Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1;

    iput-object p2, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->val$fullPL:Lcom/graphhopper/util/PointList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private distanceOfSnappedPointToPillarNode(Lcom/graphhopper/storage/index/Snap;)D
    .locals 12

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getSnappedPoint()Lcom/graphhopper/util/shapes/GHPoint3D;

    move-result-object v0

    iget-object v1, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->val$fullPL:Lcom/graphhopper/util/PointList;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v4

    iget-object p0, p0, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->val$fullPL:Lcom/graphhopper/util/PointList;

    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v6

    sget-object v3, Lcom/graphhopper/util/DistancePlaneProjection;->DIST_PLANE:Lcom/graphhopper/util/DistancePlaneProjection;

    iget-wide v8, v0, Lcom/graphhopper/util/shapes/GHPoint;->lat:D

    iget-wide v10, v0, Lcom/graphhopper/util/shapes/GHPoint;->lon:D

    invoke-virtual/range {v3 .. v11}, Lcom/graphhopper/util/DistancePlaneProjection;->calcNormalizedDist(DDDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public compare(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/storage/index/Snap;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v0

    invoke-virtual {p2}, Lcom/graphhopper/storage/index/Snap;->getWayIndex()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->distanceOfSnappedPointToPillarNode(Lcom/graphhopper/storage/index/Snap;)D

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->distanceOfSnappedPointToPillarNode(Lcom/graphhopper/storage/index/Snap;)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/storage/index/Snap;

    check-cast p2, Lcom/graphhopper/storage/index/Snap;

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/routing/querygraph/QueryOverlayBuilder$1$1;->compare(Lcom/graphhopper/storage/index/Snap;Lcom/graphhopper/storage/index/Snap;)I

    move-result p0

    return p0
.end method
