.class public final Lorg/maplibre/geojson/Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/geojson/CoordinateContainer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/geojson/Point$GsonTypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/geojson/CoordinateContainer<",
        "Ljava/util/List<",
        "Ljava/lang/Double;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "Point"


# instance fields
.field private final bbox:Lorg/maplibre/geojson/BoundingBox;

.field private final coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/maplibre/geojson/BoundingBox;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/maplibre/geojson/Point;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/geojson/Point;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lorg/maplibre/geojson/Point;->coordinates:Ljava/util/List;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null coordinates"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null type"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Point;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/Point;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Point;

    return-object p0
.end method

.method public static fromLngLat(DD)Lorg/maplibre/geojson/Point;
    .locals 1

    .line 1
    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLat(DD)Ljava/util/List;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/maplibre/geojson/Point;

    const-string p2, "Point"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p0}, Lorg/maplibre/geojson/Point;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
.end method

.method public static fromLngLat(DDD)Lorg/maplibre/geojson/Point;
    .locals 7

    .line 5
    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object v0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLatAlt(DDD)Ljava/util/List;

    move-result-object p0

    .line 6
    new-instance p1, Lorg/maplibre/geojson/Point;

    const-string p2, "Point"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p0}, Lorg/maplibre/geojson/Point;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
.end method

.method public static fromLngLat(DDDLorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Point;
    .locals 7

    .line 7
    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object v0

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLatAlt(DDD)Ljava/util/List;

    move-result-object p0

    .line 8
    new-instance p1, Lorg/maplibre/geojson/Point;

    const-string p2, "Point"

    invoke-direct {p1, p2, p6, p0}, Lorg/maplibre/geojson/Point;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
.end method

.method public static fromLngLat(DDLorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Point;
    .locals 1

    .line 3
    invoke-static {}, Lorg/maplibre/geojson/shifter/CoordinateShifterManager;->getCoordinateShifter()Lorg/maplibre/geojson/shifter/CoordinateShifter;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/maplibre/geojson/shifter/CoordinateShifter;->shiftLonLat(DD)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance p1, Lorg/maplibre/geojson/Point;

    const-string p2, "Point"

    invoke-direct {p1, p2, p4, p0}, Lorg/maplibre/geojson/Point;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
.end method

.method public static fromLngLat([D)Lorg/maplibre/geojson/Point;
    .locals 10

    .line 9
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 10
    aget-wide v2, p0, v2

    aget-wide v0, p0, v1

    invoke-static {v2, v3, v0, v1}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    array-length v0, p0

    if-le v0, v3, :cond_1

    .line 12
    aget-wide v4, p0, v2

    aget-wide v6, p0, v1

    aget-wide v8, p0, v3

    invoke-static/range {v4 .. v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DDD)Lorg/maplibre/geojson/Point;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static typeAdapter(Lw7/l;)Lw7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw7/l;",
            ")",
            "Lw7/u;"
        }
    .end annotation

    new-instance v0, Lorg/maplibre/geojson/Point$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lorg/maplibre/geojson/Point$GsonTypeAdapter;-><init>(Lw7/l;)V

    return-object v0
.end method


# virtual methods
.method public altitude()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public bbox()Lorg/maplibre/geojson/BoundingBox;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Point;->bbox:Lorg/maplibre/geojson/BoundingBox;

    return-object p0
.end method

.method public bridge synthetic coordinates()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public coordinates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/geojson/Point;->coordinates:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/geojson/Point;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/maplibre/geojson/Point;

    iget-object v1, p0, Lorg/maplibre/geojson/Point;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/maplibre/geojson/Point;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Lorg/maplibre/geojson/Point;->coordinates:Ljava/util/List;

    invoke-virtual {p1}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hasAltitude()Z
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->altitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/maplibre/geojson/Point;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/Point;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/maplibre/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/geojson/Point;->coordinates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public latitude()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public longitude()D
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/Point;->coordinates()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw7/l;->f(Lorg/maplibre/geojson/GeoJson;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Point{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/Point;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/Point;->bbox:Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/Point;->coordinates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Point;->type:Ljava/lang/String;

    return-object p0
.end method
