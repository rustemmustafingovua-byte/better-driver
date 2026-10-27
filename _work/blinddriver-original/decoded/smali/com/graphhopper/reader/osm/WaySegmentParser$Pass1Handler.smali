.class Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/reader/osm/WaySegmentParser$ReaderElementHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/WaySegmentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pass1Handler"
.end annotation


# instance fields
.field private acceptedWays:J

.field private handledRelations:Z

.field private handledWays:Z

.field private relationsCounter:J

.field final synthetic this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

.field private wayCounter:J


# direct methods
.method private constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->wayCounter:J

    .line 4
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->acceptedWays:J

    .line 5
    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->relationsCounter:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/graphhopper/reader/osm/WaySegmentParser;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;-><init>(Lcom/graphhopper/reader/osm/WaySegmentParser;)V

    return-void
.end method

.method public static synthetic a(ZJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->lambda$handleWay$0(ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static synthetic lambda$handleWay$0(ZJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x2

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x2

    return-wide p0
.end method


# virtual methods
.method public handleFileHeader(Lcom/graphhopper/reader/osm/OSMFileHeader;)V
    .locals 2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p1, v1}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/graphhopper/reader/osm/WaySegmentParser;->u(Lcom/graphhopper/reader/osm/WaySegmentParser;Ljava/util/Date;)V

    return-void
.end method

.method public handleRelation(Lcom/graphhopper/reader/ReaderRelation;)V
    .locals 5

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->handledRelations:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    const-string v1, "pass1 - start reading OSM relations"

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->handledRelations:Z

    :cond_0
    iget-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->relationsCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->relationsCounter:J

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->relationsCounter:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pass1 - processed relations: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {p0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->k(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public handleWay(Lcom/graphhopper/reader/ReaderWay;)V
    .locals 14

    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->handledWays:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    const-string v2, "pass1 - start reading OSM ways"

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->handledWays:Z

    :cond_0
    iget-boolean v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->handledRelations:Z

    if-nez v0, :cond_7

    iget-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->wayCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->wayCounter:J

    const-wide/32 v6, 0x989680

    rem-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->wayCounter:J

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->acceptedWays:J

    invoke-static {v8, v9}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v8}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/graphhopper/reader/osm/OSMNodeData;->getNodeCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ", accepted ways: "

    const-string v11, ", way nodes: "

    const-string v12, "pass1 - processed ways: "

    invoke-static {v12, v2, v10, v3, v11}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lnc/b;->k(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v0}, Lcom/graphhopper/reader/osm/WaySegmentParser;->n(Lcom/graphhopper/reader/osm/WaySegmentParser;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    iget-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->acceptedWays:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->acceptedWays:J

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/t0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v2, v0

    check-cast v2, Lcom/carrotsearch/hppc/d;

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/f;

    iget v3, v2, Ln5/f;->a:I

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v8

    iget v8, v8, Lcom/carrotsearch/hppc/t0;->m:I

    sub-int/2addr v8, v1

    if-ne v3, v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v1

    :goto_2
    iget-wide v9, v2, Ln5/f;->b:J

    iget-object v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v2}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v8

    if-eqz v3, :cond_5

    move-wide v11, v6

    goto :goto_3

    :cond_5
    move-wide v11, v4

    :goto_3
    new-instance v13, Lcom/graphhopper/reader/osm/n;

    invoke-direct {v13, v3}, Lcom/graphhopper/reader/osm/n;-><init>(Z)V

    invoke-virtual/range {v8 .. v13}, Lcom/graphhopper/reader/osm/OSMNodeData;->setOrUpdateNodeType(JJLjava/util/function/LongUnaryOperator;)V

    goto :goto_0

    :cond_6
    :goto_4
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "OSM way elements must be located before relation elements in OSM file"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFinish()V
    .locals 8

    invoke-static {}, Lcom/graphhopper/reader/osm/WaySegmentParser;->z()Lnc/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->wayCounter:J

    invoke-static {v1, v2}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->acceptedWays:J

    invoke-static {v2, v3}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->this$0:Lcom/graphhopper/reader/osm/WaySegmentParser;

    invoke-static {v3}, Lcom/graphhopper/reader/osm/WaySegmentParser;->j(Lcom/graphhopper/reader/osm/WaySegmentParser;)Lcom/graphhopper/reader/osm/OSMNodeData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/graphhopper/reader/osm/OSMNodeData;->getNodeCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/graphhopper/reader/osm/WaySegmentParser$Pass1Handler;->relationsCounter:J

    invoke-static {v4, v5}, Lcom/graphhopper/util/Helper;->nf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/graphhopper/util/Helper;->getMemInfo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ", accepted ways: "

    const-string v6, ", way nodes: "

    const-string v7, "pass1 - finished, processed ways: "

    invoke-static {v7, v1, v5, v2, v6}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", relations: "

    const-string v5, ", "

    invoke-static {v1, v3, v2, p0, v5}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method
