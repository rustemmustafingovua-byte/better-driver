.class public Lcom/graphhopper/reader/osm/PillarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ELE:I = 0x8

.field private static final LAT:I = 0x0

.field private static final LON:I = 0x4


# instance fields
.field private final da:Lcom/graphhopper/storage/DataAccess;

.field private final dir:Lcom/graphhopper/storage/Directory;

.field private final enabled3D:Z

.field private final rowSizeInBytes:I


# direct methods
.method public constructor <init>(ZLcom/graphhopper/storage/Directory;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/graphhopper/reader/osm/PillarInfo;->enabled3D:Z

    iput-object p2, p0, Lcom/graphhopper/reader/osm/PillarInfo;->dir:Lcom/graphhopper/storage/Directory;

    const-string p1, "tmp_pillar_info"

    invoke-interface {p2, p1}, Lcom/graphhopper/storage/Directory;->create(Ljava/lang/String;)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-interface {p1, v0, v1}, Lcom/graphhopper/storage/DataAccess;->create(J)Lcom/graphhopper/storage/DataAccess;

    move-result-object p1

    iput-object p1, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/PillarInfo;->getDimension()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->dir:Lcom/graphhopper/storage/Directory;

    iget-object p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-interface {p0}, Lcom/graphhopper/storage/DataAccess;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/graphhopper/storage/Directory;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public ensureNode(J)V
    .locals 3

    iget v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    int-to-long v1, v0

    mul-long/2addr p1, v1

    iget-object p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    int-to-long v0, v0

    add-long/2addr p1, v0

    invoke-interface {p0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->ensureCapacity(J)Z

    return-void
.end method

.method public getDimension()I
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->enabled3D:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public getEle(J)D
    .locals 3

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/PillarInfo;->is3D()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    int-to-long v1, p0

    mul-long/2addr p1, v1

    const-wide/16 v1, 0x8

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->uIntToEle(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLat(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    int-to-long v1, p0

    mul-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getLon(J)D
    .locals 3

    iget-object v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    iget p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    int-to-long v1, p0

    mul-long/2addr p1, v1

    const-wide/16 v1, 0x4

    add-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/graphhopper/storage/DataAccess;->getInt(J)I

    move-result p0

    invoke-static {p0}, Lcom/graphhopper/util/Helper;->intToDegree(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public is3D()Z
    .locals 0

    iget-boolean p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->enabled3D:Z

    return p0
.end method

.method public setNode(JDDD)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/reader/osm/PillarInfo;->ensureNode(J)V

    iget v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->rowSizeInBytes:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    iget-object v0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    invoke-static {p3, p4}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    iget-object p3, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 v0, 0x4

    add-long/2addr v0, p1

    invoke-static {p5, p6}, Lcom/graphhopper/util/Helper;->degreeToInt(D)I

    move-result p4

    invoke-interface {p3, v0, v1, p4}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    invoke-virtual {p0}, Lcom/graphhopper/reader/osm/PillarInfo;->is3D()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/PillarInfo;->da:Lcom/graphhopper/storage/DataAccess;

    const-wide/16 p3, 0x8

    add-long/2addr p1, p3

    invoke-static {p7, p8}, Lcom/graphhopper/util/Helper;->eleToUInt(D)I

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lcom/graphhopper/storage/DataAccess;->setInt(JI)V

    :cond_0
    return-void
.end method
