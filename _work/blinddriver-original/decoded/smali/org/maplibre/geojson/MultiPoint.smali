.class public final Lorg/maplibre/geojson/MultiPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/geojson/CoordinateContainer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/geojson/MultiPoint$GsonTypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/geojson/CoordinateContainer<",
        "Ljava/util/List<",
        "Lorg/maplibre/geojson/Point;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "MultiPoint"


# instance fields
.field private final bbox:Lorg/maplibre/geojson/BoundingBox;

.field private final coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
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
            "Lorg/maplibre/geojson/Point;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/maplibre/geojson/MultiPoint;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/geojson/MultiPoint;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/maplibre/geojson/MultiPoint;->coordinates:Ljava/util/List;

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

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/MultiPoint;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/MultiPoint;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/MultiPoint;

    return-object p0
.end method

.method public static fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/MultiPoint;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;)",
            "Lorg/maplibre/geojson/MultiPoint;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/geojson/MultiPoint;

    const-string v1, "MultiPoint"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/maplibre/geojson/MultiPoint;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats(Ljava/util/List;Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/MultiPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;",
            "Lorg/maplibre/geojson/BoundingBox;",
            ")",
            "Lorg/maplibre/geojson/MultiPoint;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/geojson/MultiPoint;

    const-string v1, "MultiPoint"

    invoke-direct {v0, v1, p1, p0}, Lorg/maplibre/geojson/MultiPoint;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats([[D)Lorg/maplibre/geojson/MultiPoint;
    .locals 3

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 5
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/maplibre/geojson/Point;->fromLngLat([D)Lorg/maplibre/geojson/Point;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lorg/maplibre/geojson/MultiPoint;

    const-string v1, "MultiPoint"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/maplibre/geojson/MultiPoint;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

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

    new-instance v0, Lorg/maplibre/geojson/MultiPoint$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lorg/maplibre/geojson/MultiPoint$GsonTypeAdapter;-><init>(Lw7/l;)V

    return-object v0
.end method


# virtual methods
.method public bbox()Lorg/maplibre/geojson/BoundingBox;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->bbox:Lorg/maplibre/geojson/BoundingBox;

    return-object p0
.end method

.method public bridge synthetic coordinates()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/MultiPoint;->coordinates()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public coordinates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->coordinates:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/geojson/MultiPoint;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/maplibre/geojson/MultiPoint;

    iget-object v1, p0, Lorg/maplibre/geojson/MultiPoint;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/maplibre/geojson/MultiPoint;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/maplibre/geojson/MultiPoint;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/geojson/MultiPoint;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/geojson/MultiPoint;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->coordinates:Ljava/util/List;

    invoke-virtual {p1}, Lorg/maplibre/geojson/MultiPoint;->coordinates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/maplibre/geojson/MultiPoint;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/MultiPoint;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/maplibre/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->coordinates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
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

    const-string v1, "MultiPoint{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/MultiPoint;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/MultiPoint;->bbox:Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->coordinates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/MultiPoint;->type:Ljava/lang/String;

    return-object p0
.end method
