.class public Lorg/maplibre/geojson/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final northeast:Lorg/maplibre/geojson/Point;

.field private final southwest:Lorg/maplibre/geojson/Point;


# direct methods
.method public constructor <init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null northeast"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null southwest"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromCoordinates(DDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static/range {p0 .. p7}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static fromCoordinates(DDDDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static/range {p0 .. p11}, Lorg/maplibre/geojson/BoundingBox;->fromLngLats(DDDDDD)Lorg/maplibre/geojson/BoundingBox;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/BoundingBox;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    new-instance v1, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    invoke-direct {v1}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lw7/m;->b(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/BoundingBox;

    return-object p0
.end method

.method public static fromLngLats(DDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    .line 1
    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    invoke-static {p0, p1, p2, p3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-static {p4, p5, p6, p7}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    return-object v0
.end method

.method public static fromLngLats(DDDDDD)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    .line 3
    invoke-static/range {p0 .. p5}, Lorg/maplibre/geojson/Point;->fromLngLat(DDD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    .line 4
    invoke-static/range {p6 .. p11}, Lorg/maplibre/geojson/Point;->fromLngLat(DDD)Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    return-object v0
.end method

.method public static fromPoints(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)Lorg/maplibre/geojson/BoundingBox;
    .locals 1

    new-instance v0, Lorg/maplibre/geojson/BoundingBox;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/geojson/BoundingBox;-><init>(Lorg/maplibre/geojson/Point;Lorg/maplibre/geojson/Point;)V

    return-object v0
.end method

.method public static typeAdapter(Lw7/l;)Lw7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l;",
            ")",
            "Lw7/u;"
        }
    .end annotation

    new-instance p0, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    invoke-direct {p0}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final east()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/geojson/BoundingBox;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lorg/maplibre/geojson/BoundingBox;

    iget-object v1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    invoke-virtual {p1}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    invoke-virtual {p1}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/geojson/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    invoke-virtual {v0}, Lorg/maplibre/geojson/Point;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final north()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->northeast()Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public northeast()Lorg/maplibre/geojson/Point;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    return-object p0
.end method

.method public final south()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->latitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public southwest()Lorg/maplibre/geojson/Point;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    return-object p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    new-instance v1, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;

    invoke-direct {v1}, Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lw7/m;->b(Lorg/maplibre/geojson/gson/BoundingBoxTypeAdapter;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, p0, v1}, Lw7/l;->e(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BoundingBox{southwest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/BoundingBox;->southwest:Lorg/maplibre/geojson/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", northeast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/BoundingBox;->northeast:Lorg/maplibre/geojson/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final west()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/BoundingBox;->southwest()Lorg/maplibre/geojson/Point;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->longitude()D

    move-result-wide v0

    return-wide v0
.end method
