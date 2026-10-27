.class public final Lorg/maplibre/geojson/Polygon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/geojson/CoordinateContainer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/geojson/Polygon$GsonTypeAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/maplibre/geojson/CoordinateContainer<",
        "Ljava/util/List<",
        "Ljava/util/List<",
        "Lorg/maplibre/geojson/Point;",
        ">;>;>;"
    }
.end annotation


# static fields
.field private static final TYPE:Ljava/lang/String; = "Polygon"


# instance fields
.field private final bbox:Lorg/maplibre/geojson/BoundingBox;

.field private final coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;"
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
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/maplibre/geojson/Polygon;->type:Ljava/lang/String;

    iput-object p2, p0, Lorg/maplibre/geojson/Polygon;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lorg/maplibre/geojson/Polygon;->coordinates:Ljava/util/List;

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

.method private static ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V
    .locals 2

    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/geojson/Point;

    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/maplibre/geojson/Point;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string v0, "LinearRings require first and last coordinate to be identical."

    invoke-direct {p0, v0}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/maplibre/geojson/exception/GeoJsonException;

    const-string v0, "LinearRings need to be made up of 4 or more coordinates."

    invoke-direct {p0, v0}, Lorg/maplibre/geojson/exception/GeoJsonException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJson(Ljava/lang/String;)Lorg/maplibre/geojson/Polygon;
    .locals 2

    new-instance v0, Lw7/m;

    invoke-direct {v0}, Lw7/m;-><init>()V

    invoke-static {}, Lorg/maplibre/geojson/gson/GeoJsonAdapterFactory;->create()Lw7/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw7/m;->c(Lw7/v;)V

    invoke-virtual {v0}, Lw7/m;->a()Lw7/l;

    move-result-object v0

    const-class v1, Lorg/maplibre/geojson/Polygon;

    invoke-virtual {v0, v1, p0}, Lw7/l;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/maplibre/geojson/Polygon;

    return-object p0
.end method

.method public static fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/Polygon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;)",
            "Lorg/maplibre/geojson/Polygon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/maplibre/geojson/Polygon;

    const-string v1, "Polygon"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats(Ljava/util/List;Lorg/maplibre/geojson/BoundingBox;)Lorg/maplibre/geojson/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;",
            "Lorg/maplibre/geojson/BoundingBox;",
            ")",
            "Lorg/maplibre/geojson/Polygon;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/maplibre/geojson/Polygon;

    const-string v1, "Polygon"

    invoke-direct {v0, v1, p1, p0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object v0
.end method

.method public static fromLngLats([[[D)Lorg/maplibre/geojson/Polygon;
    .locals 9

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v4, v7

    .line 7
    invoke-static {v8}, Lorg/maplibre/geojson/Point;->fromLngLat([D)Lorg/maplibre/geojson/Point;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lorg/maplibre/geojson/Polygon;

    const-string v1, "Polygon"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p0
.end method

.method public static fromOuterInner(Lorg/maplibre/geojson/LineString;Ljava/util/List;)Lorg/maplibre/geojson/Polygon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/geojson/LineString;",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/LineString;",
            ">;)",
            "Lorg/maplibre/geojson/Polygon;"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 22
    const-string v1, "Polygon"

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/geojson/LineString;

    .line 24
    invoke-static {v2}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 25
    invoke-virtual {v2}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p1, v1, p0, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1

    .line 27
    :cond_2
    :goto_1
    new-instance p1, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p1, v1, p0, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
.end method

.method public static fromOuterInner(Lorg/maplibre/geojson/LineString;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)Lorg/maplibre/geojson/Polygon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/geojson/LineString;",
            "Lorg/maplibre/geojson/BoundingBox;",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/LineString;",
            ">;)",
            "Lorg/maplibre/geojson/Polygon;"
        }
    .end annotation

    .line 28
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    const-string p0, "Polygon"

    if-nez p2, :cond_0

    .line 32
    new-instance p2, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p2, p0, p1, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p2

    .line 33
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/geojson/LineString;

    .line 34
    invoke-static {v1}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 35
    invoke-virtual {v1}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_1
    new-instance p2, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p2, p0, p1, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p2
.end method

.method public static varargs fromOuterInner(Lorg/maplibre/geojson/LineString;Lorg/maplibre/geojson/BoundingBox;[Lorg/maplibre/geojson/LineString;)Lorg/maplibre/geojson/Polygon;
    .locals 4

    .line 10
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    const-string p0, "Polygon"

    if-nez p2, :cond_0

    .line 14
    new-instance p2, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p2, p0, p1, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p2

    .line 15
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 16
    invoke-static {v3}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 17
    invoke-virtual {v3}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p2, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p2, p0, p1, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p2
.end method

.method public static varargs fromOuterInner(Lorg/maplibre/geojson/LineString;[Lorg/maplibre/geojson/LineString;)Lorg/maplibre/geojson/Polygon;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 4
    const-string v1, "Polygon"

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p1, v1, p0, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1

    .line 6
    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 7
    invoke-static {v4}, Lorg/maplibre/geojson/Polygon;->ensureIsLinearRing(Lorg/maplibre/geojson/LineString;)V

    .line 8
    invoke-virtual {v4}, Lorg/maplibre/geojson/LineString;->coordinates()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lorg/maplibre/geojson/Polygon;

    invoke-direct {p1, v1, p0, v0}, Lorg/maplibre/geojson/Polygon;-><init>(Ljava/lang/String;Lorg/maplibre/geojson/BoundingBox;Ljava/util/List;)V

    return-object p1
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

    new-instance v0, Lorg/maplibre/geojson/Polygon$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lorg/maplibre/geojson/Polygon$GsonTypeAdapter;-><init>(Lw7/l;)V

    return-object v0
.end method


# virtual methods
.method public bbox()Lorg/maplibre/geojson/BoundingBox;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->bbox:Lorg/maplibre/geojson/BoundingBox;

    return-object p0
.end method

.method public bridge synthetic coordinates()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public coordinates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Point;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->coordinates:Ljava/util/List;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/maplibre/geojson/Polygon;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/maplibre/geojson/Polygon;

    iget-object v1, p0, Lorg/maplibre/geojson/Polygon;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/maplibre/geojson/Polygon;->type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/maplibre/geojson/Polygon;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/geojson/Polygon;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/geojson/Polygon;->bbox()Lorg/maplibre/geojson/BoundingBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/maplibre/geojson/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->coordinates:Ljava/util/List;

    invoke-virtual {p1}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

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

    iget-object v0, p0, Lorg/maplibre/geojson/Polygon;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Lorg/maplibre/geojson/Polygon;->bbox:Lorg/maplibre/geojson/BoundingBox;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/maplibre/geojson/BoundingBox;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->coordinates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public inner()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/LineString;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public outer()Lorg/maplibre/geojson/LineString;
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/geojson/Polygon;->coordinates()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lorg/maplibre/geojson/LineString;->fromLngLats(Ljava/util/List;)Lorg/maplibre/geojson/LineString;

    move-result-object p0

    return-object p0
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

    const-string v1, "Polygon{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/maplibre/geojson/Polygon;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/maplibre/geojson/Polygon;->bbox:Lorg/maplibre/geojson/BoundingBox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->coordinates:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public type()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/geojson/Polygon;->type:Ljava/lang/String;

    return-object p0
.end method
