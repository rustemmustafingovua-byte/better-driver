.class public final Lorg/maplibre/android/annotations/Polygon;
.super Lorg/maplibre/android/annotations/BasePointCollection;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private fillColor:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private holes:Ljava/util/List;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private strokeColor:I
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/annotations/BasePointCollection;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/maplibre/android/annotations/Polygon;->fillColor:I

    iput v0, p0, Lorg/maplibre/android/annotations/Polygon;->strokeColor:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/annotations/Polygon;->holes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHole(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/annotations/Polygon;->holes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->update()V

    return-void
.end method

.method public getFillColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/Polygon;->fillColor:I

    return p0
.end method

.method public getHoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/maplibre/android/annotations/Polygon;->holes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 0

    iget p0, p0, Lorg/maplibre/android/annotations/Polygon;->strokeColor:I

    return p0
.end method

.method public setFillColor(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Polygon;->fillColor:I

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->update()V

    return-void
.end method

.method public setHoles(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lorg/maplibre/android/geometry/LatLng;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/maplibre/android/annotations/Polygon;->holes:Ljava/util/List;

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->update()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lorg/maplibre/android/annotations/Polygon;->strokeColor:I

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Polygon;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    invoke-virtual {p0}, Lorg/maplibre/android/annotations/Annotation;->getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->updatePolygon(Lorg/maplibre/android/annotations/Polygon;)V

    :cond_0
    return-void
.end method
