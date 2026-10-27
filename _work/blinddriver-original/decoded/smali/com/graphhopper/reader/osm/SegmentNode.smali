.class Lcom/graphhopper/reader/osm/SegmentNode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:J

.field osmNodeId:J

.field tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/graphhopper/reader/osm/SegmentNode;->osmNodeId:J

    iput-wide p3, p0, Lcom/graphhopper/reader/osm/SegmentNode;->id:J

    iput-object p5, p0, Lcom/graphhopper/reader/osm/SegmentNode;->tags:Ljava/util/Map;

    return-void
.end method
