.class public Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final log:Lnc/b;


# instance fields
.field private final blobType:Ljava/lang/String;

.field private final checkData:Z

.field private decodedEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/graphhopper/reader/ReaderElement;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;

.field private final rawBlob:[B

.field private final skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;

    invoke-static {v0}, Lnc/d;->b(Ljava/lang/Class;)Lnc/b;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->log:Lnc/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;Lcom/graphhopper/reader/osm/SkipOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->checkData:Z

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->blobType:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->rawBlob:[B

    iput-object p3, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->listener:Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;

    iput-object p4, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    return-void
.end method

.method private buildRelationMembers(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/reader/ReaderRelation;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lmc/k0;",
            ">;",
            "Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmc/k0;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->NODE:Lcom/graphhopper/reader/ReaderElement$Type;

    sget-object v3, Lmc/k0;->n:Lmc/k0;

    if-ne p4, v3, :cond_0

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->WAY:Lcom/graphhopper/reader/ReaderElement$Type;

    goto :goto_1

    :cond_0
    sget-object v3, Lmc/k0;->o:Lmc/k0;

    if-ne p4, v3, :cond_1

    sget-object v2, Lcom/graphhopper/reader/ReaderElement$Type;->RELATION:Lcom/graphhopper/reader/ReaderElement$Type;

    :cond_1
    :goto_1
    new-instance p4, Lcom/graphhopper/reader/ReaderRelation$Member;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p5, v3}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v2, v0, v1, v3}, Lcom/graphhopper/reader/ReaderRelation$Member;-><init>(Lcom/graphhopper/reader/ReaderElement$Type;JLjava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/graphhopper/reader/ReaderRelation;->add(Lcom/graphhopper/reader/ReaderRelation$Member;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private buildTags(Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private processNodes(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmc/b0;",
            ">;",
            "Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc/b0;

    .line 2
    iget-object v1, v0, Lmc/b0;->p:Lf8/c4;

    .line 3
    iget-object v2, v0, Lmc/b0;->q:Lf8/c4;

    .line 4
    invoke-direct {p0, v1, v2, p2}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->buildTags(Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)Ljava/util/Map;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/graphhopper/reader/ReaderNode;

    .line 6
    iget-wide v3, v0, Lmc/b0;->o:J

    .line 7
    iget-wide v5, v0, Lmc/b0;->s:J

    .line 8
    invoke-virtual {p2, v5, v6}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeLatitude(J)D

    move-result-wide v5

    .line 9
    iget-wide v7, v0, Lmc/b0;->t:J

    .line 10
    invoke-virtual {p2, v7, v8}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeLatitude(J)D

    move-result-wide v7

    invoke-direct/range {v2 .. v8}, Lcom/graphhopper/reader/ReaderNode;-><init>(JDD)V

    .line 11
    invoke-virtual {v2, v1}, Lcom/graphhopper/reader/ReaderElement;->setTags(Ljava/util/Map;)V

    .line 12
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processNodes(Lmc/p;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 13
    iget-object v2, v0, Lmc/p;->o:Lf8/e4;

    .line 14
    iget-object v3, v0, Lmc/p;->q:Lf8/e4;

    .line 15
    iget-object v4, v0, Lmc/p;->r:Lf8/e4;

    .line 16
    iget-object v5, v0, Lmc/p;->s:Lf8/c4;

    .line 17
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v10, v6

    move v12, v8

    move-wide v8, v10

    .line 18
    :goto_0
    move-object v13, v2

    check-cast v13, Lf8/l4;

    .line 19
    iget v13, v13, Lf8/l4;->n:I

    if-ge v12, v13, :cond_3

    .line 20
    move-object v13, v2

    check-cast v13, Lf8/l4;

    invoke-virtual {v13, v12}, Lf8/l4;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    add-long v17, v14, v6

    .line 21
    move-object v6, v3

    check-cast v6, Lf8/l4;

    invoke-virtual {v6, v12}, Lf8/l4;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v8, v6

    .line 22
    move-object v6, v4

    check-cast v6, Lf8/l4;

    invoke-virtual {v6, v12}, Lf8/l4;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v10, v6

    const/4 v6, 0x0

    .line 23
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_2

    .line 25
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v6, :cond_1

    .line 26
    new-instance v6, Ljava/util/HashMap;

    .line 27
    iget-object v15, v0, Lmc/p;->s:Lf8/c4;

    .line 28
    check-cast v15, Lf8/z3;

    .line 29
    iget v15, v15, Lf8/z3;->n:I

    .line 30
    div-int/lit8 v15, v15, 0x2

    mul-int/lit8 v15, v15, 0x2

    .line 31
    iget v0, v13, Lf8/l4;->n:I

    .line 32
    div-int/2addr v15, v0

    const/4 v0, 0x3

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    :cond_1
    invoke-virtual {v1, v7}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v14}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    goto :goto_1

    .line 34
    :cond_2
    :goto_2
    new-instance v16, Lcom/graphhopper/reader/ReaderNode;

    invoke-virtual {v1, v8, v9}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeLatitude(J)D

    move-result-wide v19

    invoke-virtual {v1, v10, v11}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->decodeLongitude(J)D

    move-result-wide v21

    invoke-direct/range {v16 .. v22}, Lcom/graphhopper/reader/ReaderNode;-><init>(JDD)V

    move-object/from16 v0, v16

    .line 35
    invoke-virtual {v0, v6}, Lcom/graphhopper/reader/ReaderElement;->setTags(Ljava/util/Map;)V

    move-object/from16 v6, p0

    .line 36
    iget-object v7, v6, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v6, v17

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private processOsmHeader([B)V
    .locals 6

    sget-object v0, Lmc/v;->y:Lmc/t;

    invoke-virtual {v0, p1}, Lf8/d;->b([B)Lf8/o4;

    move-result-object p1

    check-cast p1, Lmc/v;

    const-string v0, "OsmSchema-V0.6"

    const-string v1, "DenseNodes"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lmc/v;->p:Lf8/k4;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    new-instance v0, Lcom/graphhopper/reader/osm/OSMFileHeader;

    invoke-direct {v0}, Lcom/graphhopper/reader/osm/OSMFileHeader;-><init>()V

    iget-wide v1, p1, Lmc/v;->t:J

    invoke-static {}, Lcom/graphhopper/util/Helper;->createFormatter()Ljava/text/DateFormat;

    move-result-object p1

    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1}, Lcom/graphhopper/reader/ReaderElement;->setTag(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PBF file contains unsupported features "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processOsmPrimitives([B)V
    .locals 3

    sget-object v0, Lmc/e0;->w:Lmc/c0;

    invoke-virtual {v0, p1}, Lf8/d;->b([B)Lf8/o4;

    move-result-object p1

    check-cast p1, Lmc/e0;

    new-instance v0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;

    invoke-direct {v0, p1}, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;-><init>(Lmc/e0;)V

    iget-object p1, p1, Lmc/e0;->p:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmc/h0;

    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/SkipOptions;->isSkipNodes()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lmc/h0;->p:Lmc/p;

    if-nez v2, :cond_1

    sget-object v2, Lmc/p;->u:Lmc/p;

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processNodes(Lmc/p;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V

    iget-object v2, v1, Lmc/h0;->o:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processNodes(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V

    :cond_2
    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/SkipOptions;->isSkipWays()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lmc/h0;->q:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processWays(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V

    :cond_3
    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->skipOptions:Lcom/graphhopper/reader/osm/SkipOptions;

    invoke-virtual {v2}, Lcom/graphhopper/reader/osm/SkipOptions;->isSkipRelations()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Lmc/h0;->r:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processRelations(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private processRelations(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmc/l0;",
            ">;",
            "Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc/l0;

    iget-object v1, v0, Lmc/l0;->p:Lf8/c4;

    iget-object v2, v0, Lmc/l0;->q:Lf8/c4;

    invoke-direct {p0, v1, v2, p2}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->buildTags(Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lcom/graphhopper/reader/ReaderRelation;

    iget-wide v4, v0, Lmc/l0;->o:J

    invoke-direct {v3, v4, v5}, Lcom/graphhopper/reader/ReaderRelation;-><init>(J)V

    invoke-virtual {v3, v1}, Lcom/graphhopper/reader/ReaderElement;->setTags(Ljava/util/Map;)V

    iget-object v4, v0, Lmc/l0;->t:Lf8/e4;

    iget-object v5, v0, Lmc/l0;->s:Lf8/c4;

    new-instance v6, Lf8/d4;

    iget-object v0, v0, Lmc/l0;->u:Ljava/util/List;

    sget-object v1, Lmc/l0;->w:Lmb/q;

    invoke-direct {v6, v0}, Lf8/d4;-><init>(Ljava/util/List;)V

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->buildRelationMembers(Lcom/graphhopper/reader/ReaderRelation;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V

    iget-object p0, v2, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processWays(Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmc/r0;",
            ">;",
            "Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmc/r0;

    iget-object v1, v0, Lmc/r0;->p:Lf8/c4;

    iget-object v2, v0, Lmc/r0;->q:Lf8/c4;

    invoke-direct {p0, v1, v2, p2}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->buildTags(Ljava/util/List;Ljava/util/List;Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/graphhopper/reader/ReaderWay;

    iget-wide v3, v0, Lmc/r0;->o:J

    invoke-direct {v2, v3, v4}, Lcom/graphhopper/reader/ReaderWay;-><init>(J)V

    invoke-virtual {v2, v1}, Lcom/graphhopper/reader/ReaderElement;->setTags(Ljava/util/Map;)V

    invoke-virtual {v2}, Lcom/graphhopper/reader/ReaderWay;->getNodes()Lcom/carrotsearch/hppc/t0;

    move-result-object v1

    iget-object v0, v0, Lmc/r0;->s:Lf8/e4;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/carrotsearch/hppc/t0;->a(J)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private readBlobContent()[B
    .locals 4

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->rawBlob:[B

    sget-object v0, Lmc/c;->v:Lmc/a;

    invoke-virtual {v0, p0}, Lf8/d;->b([B)Lf8/o4;

    move-result-object p0

    check-cast p0, Lmc/c;

    invoke-virtual {p0}, Lmc/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lmc/c;->o:Lf8/j;

    invoke-virtual {p0}, Lf8/j;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lf8/f4;->c:[B

    return-object p0

    :cond_0
    new-array v1, v0, [B

    invoke-virtual {p0, v0, v1}, Lf8/j;->d(I[B)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lmc/c;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iget-object v1, p0, Lmc/c;->q:Lf8/j;

    invoke-virtual {v1}, Lf8/j;->size()I

    move-result v2

    if-nez v2, :cond_2

    sget-object v1, Lf8/f4;->c:[B

    goto :goto_0

    :cond_2
    new-array v3, v2, [B

    invoke-virtual {v1, v2, v3}, Lf8/j;->d(I[B)V

    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    iget p0, p0, Lmc/c;->p:I

    new-array p0, p0, [B

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->inflate([B)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "PBF blob contains incomplete compressed data."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to decompress PBF blob."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "PBF blob uses unsupported compression, only raw or zlib may be used."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private runAndTrapExceptions()V
    .locals 3

    const-string v0, "Skipping unrecognised blob type "

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    const-string v1, "OSMHeader"

    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->blobType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->readBlobContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processOsmHeader([B)V

    return-void

    :cond_0
    const-string v1, "OSMData"

    iget-object v2, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->blobType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->readBlobContent()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->processOsmPrimitives([B)V

    return-void

    :cond_1
    sget-object v1, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->log:Lnc/b;

    invoke-interface {v1}, Lnc/b;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->blobType:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lnc/b;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to process PBF blob"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->runAndTrapExceptions()V

    iget-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->listener:Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;

    iget-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->decodedEntities:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;->complete(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoder;->listener:Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;

    invoke-interface {p0, v0}, Lcom/graphhopper/reader/osm/pbf/PbfBlobDecoderListener;->error(Ljava/lang/Exception;)V

    return-void
.end method
