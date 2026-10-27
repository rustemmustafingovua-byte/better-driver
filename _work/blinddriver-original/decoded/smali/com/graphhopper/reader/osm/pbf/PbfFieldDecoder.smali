.class public Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COORDINATE_SCALING_FACTOR:D = 1.0E-9


# instance fields
.field private coordGranularity:I

.field private coordLatitudeOffset:J

.field private coordLongitudeOffset:J

.field private dateGranularity:I

.field private strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmc/e0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmc/e0;->q:I

    iput v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordGranularity:I

    iget-wide v0, p1, Lmc/e0;->r:J

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordLatitudeOffset:J

    iget-wide v0, p1, Lmc/e0;->s:J

    iput-wide v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordLongitudeOffset:J

    iget v0, p1, Lmc/e0;->t:I

    iput v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->dateGranularity:I

    iget-object p1, p1, Lmc/e0;->o:Lmc/o0;

    if-nez p1, :cond_0

    sget-object p1, Lmc/o0;->p:Lmc/o0;

    :cond_0
    iget-object v0, p1, Lmc/o0;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->strings:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->strings:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lmc/o0;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/j;

    invoke-virtual {v2}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public decodeLatitude(J)D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordLatitudeOffset:J

    iget p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordGranularity:I

    int-to-long v2, p0

    mul-long/2addr v2, p1

    add-long/2addr v2, v0

    long-to-double p0, v2

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public decodeLongitude(J)D
    .locals 4

    iget-wide v0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordLongitudeOffset:J

    iget p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->coordGranularity:I

    int-to-long v2, p0

    mul-long/2addr v2, p1

    add-long/2addr v2, v0

    long-to-double p0, v2

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public decodeString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->strings:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public decodeTimestamp(J)Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfFieldDecoder;->dateGranularity:I

    int-to-long v1, p0

    mul-long/2addr v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
