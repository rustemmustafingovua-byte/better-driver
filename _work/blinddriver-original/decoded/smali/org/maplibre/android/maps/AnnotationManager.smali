.class Lorg/maplibre/android/maps/AnnotationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;,
        Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;,
        Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;,
        Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;
    }
.end annotation


# static fields
.field private static final NO_ANNOTATION_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "Mbgl-AnnotationManager"


# instance fields
.field private annotations:Lorg/maplibre/android/maps/Annotations;

.field private final annotationsArray:Lk/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/q;"
        }
    .end annotation
.end field

.field private final iconManager:Lorg/maplibre/android/maps/IconManager;

.field private final infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

.field private final mapView:Lorg/maplibre/android/maps/MapView;

.field private maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field private markers:Lorg/maplibre/android/maps/Markers;

.field private onMarkerClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;

.field private onPolygonClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;

.field private onPolylineClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;

.field private polygons:Lorg/maplibre/android/maps/Polygons;

.field private polylines:Lorg/maplibre/android/maps/Polylines;

.field private final selectedMarkers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/MapView;Lk/q;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/Annotations;Lorg/maplibre/android/maps/Markers;Lorg/maplibre/android/maps/Polygons;Lorg/maplibre/android/maps/Polylines;Lorg/maplibre/android/maps/ShapeAnnotations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/maps/MapView;",
            "Lk/q;",
            "Lorg/maplibre/android/maps/IconManager;",
            "Lorg/maplibre/android/maps/Annotations;",
            "Lorg/maplibre/android/maps/Markers;",
            "Lorg/maplibre/android/maps/Polygons;",
            "Lorg/maplibre/android/maps/Polylines;",
            "Lorg/maplibre/android/maps/ShapeAnnotations;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/maplibre/android/maps/InfoWindowManager;

    invoke-direct {v0}, Lorg/maplibre/android/maps/InfoWindowManager;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager;->mapView:Lorg/maplibre/android/maps/MapView;

    iput-object p2, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    iput-object p3, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    iput-object p4, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    iput-object p5, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    iput-object p6, p0, Lorg/maplibre/android/maps/AnnotationManager;->polygons:Lorg/maplibre/android/maps/Polygons;

    iput-object p7, p0, Lorg/maplibre/android/maps/AnnotationManager;->polylines:Lorg/maplibre/android/maps/Polylines;

    iput-object p8, p0, Lorg/maplibre/android/maps/AnnotationManager;->shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;

    return-void
.end method

.method private getMarkerHitFromTouchArea(Landroid/graphics/PointF;)Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;
    .locals 6

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/IconManager;->getHighestIconHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/IconManager;->getHighestIconWidth()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v4, v2

    double-to-int v1, v4

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    int-to-float v0, v0

    sub-float v4, v3, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    int-to-float v1, v1

    sub-float v5, p1, v1

    add-float/2addr v3, v0

    add-float/2addr p1, v1

    invoke-direct {v2, v4, v5, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p1, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;

    invoke-virtual {p0, v2}, Lorg/maplibre/android/maps/AnnotationManager;->getMarkersInRect(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;-><init>(Landroid/graphics/RectF;Ljava/util/List;)V

    return-object p1
.end method

.method private getShapeAnnotationHitFromTap(Landroid/graphics/PointF;)Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;
    .locals 4

    invoke-static {}, Lorg/maplibre/android/MapLibre;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/maplibre/android/R$dimen;->maplibre_eight_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, p0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float v3, p1, p0

    add-float/2addr v1, p0

    add-float/2addr p1, p0

    invoke-direct {v0, v2, v3, v1, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance p0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;

    invoke-direct {p0, v0}, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;-><init>(Landroid/graphics/RectF;)V

    return-object p0
.end method

.method private handleClickForShapeAnnotation(Lorg/maplibre/android/annotations/Annotation;)Z
    .locals 2

    instance-of v0, p1, Lorg/maplibre/android/annotations/Polygon;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->onPolygonClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/maplibre/android/annotations/Polygon;

    invoke-interface {v0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;->onPolygonClick(Lorg/maplibre/android/annotations/Polygon;)V

    return v1

    :cond_0
    instance-of v0, p1, Lorg/maplibre/android/annotations/Polyline;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->onPolylineClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/maplibre/android/annotations/Polyline;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;->onPolylineClick(Lorg/maplibre/android/annotations/Polyline;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isAddedToMap(Lorg/maplibre/android/annotations/Annotation;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Annotation;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lk/q;->g(J)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isClickHandledForMarker(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/AnnotationManager;->getAnnotation(J)Lorg/maplibre/android/annotations/Annotation;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/annotations/Marker;

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->onClickMarker(Lorg/maplibre/android/annotations/Marker;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->toggleMarkerSelectionState(Lorg/maplibre/android/annotations/Marker;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private logNonAdded(Lorg/maplibre/android/annotations/Annotation;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Attempting to update non-added %s with value %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Mbgl-AnnotationManager"

    invoke-static {p1, p0}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onClickMarker(Lorg/maplibre/android/annotations/Marker;)Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->onMarkerClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;->onMarkerClick(Lorg/maplibre/android/annotations/Marker;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private toggleMarkerSelectionState(Lorg/maplibre/android/annotations/Marker;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->selectMarker(Lorg/maplibre/android/annotations/Marker;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->deselectMarker(Lorg/maplibre/android/annotations/Marker;)V

    return-void
.end method


# virtual methods
.method public addMarker(Lorg/maplibre/android/annotations/BaseMarkerOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Marker;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Markers;->addBy(Lorg/maplibre/android/annotations/BaseMarkerOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Marker;

    move-result-object p0

    return-object p0
.end method

.method public addMarkers(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/BaseMarkerOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Markers;->addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public addPolygon(Lorg/maplibre/android/annotations/PolygonOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polygon;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polygons:Lorg/maplibre/android/maps/Polygons;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Polygons;->addBy(Lorg/maplibre/android/annotations/PolygonOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public addPolygons(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolygonOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polygon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polygons:Lorg/maplibre/android/maps/Polygons;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Polygons;->addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public addPolyline(Lorg/maplibre/android/annotations/PolylineOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polyline;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polylines:Lorg/maplibre/android/maps/Polylines;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Polylines;->addBy(Lorg/maplibre/android/annotations/PolylineOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polyline;

    move-result-object p0

    return-object p0
.end method

.method public addPolylines(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolylineOptions;",
            ">;",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polyline;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polylines:Lorg/maplibre/android/maps/Polylines;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Polylines;->addBy(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public adjustTopOffsetPixels(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 5

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    invoke-virtual {v0}, Lk/q;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/maplibre/android/annotations/Annotation;

    instance-of v3, v2, Lorg/maplibre/android/annotations/Marker;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/maplibre/android/annotations/Marker;

    iget-object v3, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v2}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/maplibre/android/maps/IconManager;->getTopOffsetPixelsForIcon(Lorg/maplibre/android/annotations/Icon;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/maplibre/android/annotations/Marker;->setTopOffsetPixels(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/annotations/Marker;

    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->isInfoWindowShown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v1, p1, v2}, Lorg/maplibre/android/annotations/Marker;->showInfoWindow(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bind(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/maps/AnnotationManager;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public deselectMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->isInfoWindowShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public deselectMarkers()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/annotations/Marker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->isInfoWindowShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getAnnotation(J)Lorg/maplibre/android/annotations/Annotation;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Annotations;->obtainBy(J)Lorg/maplibre/android/annotations/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Annotations;->obtainAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    return-object p0
.end method

.method public getMarkers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Markers;->obtainAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMarkersInRect(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/Markers;->obtainAllIn(Landroid/graphics/RectF;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPolygons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polygon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polygons:Lorg/maplibre/android/maps/Polygons;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Polygons;->obtainAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPolylines()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polyline;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polylines:Lorg/maplibre/android/maps/Polylines;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Polylines;->obtainAll()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedMarkers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    return-object p0
.end method

.method public onTap(Landroid/graphics/PointF;)Z
    .locals 4

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->getMarkerHitFromTouchArea(Landroid/graphics/PointF;)Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;

    move-result-object v0

    new-instance v1, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;

    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-direct {v1, v2}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;-><init>(Lorg/maplibre/android/maps/MapLibreMap;)V

    invoke-virtual {v1, v0}, Lorg/maplibre/android/maps/AnnotationManager$MarkerHitResolver;->execute(Lorg/maplibre/android/maps/AnnotationManager$MarkerHit;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/maps/AnnotationManager;->isClickHandledForMarker(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->getShapeAnnotationHitFromTap(Landroid/graphics/PointF;)Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;

    move-result-object p1

    new-instance v0, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;

    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->shapeAnnotations:Lorg/maplibre/android/maps/ShapeAnnotations;

    invoke-direct {v0, v1}, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;-><init>(Lorg/maplibre/android/maps/ShapeAnnotations;)V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHitResolver;->execute(Lorg/maplibre/android/maps/AnnotationManager$ShapeAnnotationHit;)Lorg/maplibre/android/annotations/Annotation;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->handleClickForShapeAnnotation(Lorg/maplibre/android/annotations/Annotation;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public reloadMarkers()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Markers;->reload()V

    return-void
.end method

.method public removeAnnotation(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Annotations;->removeBy(J)V

    return-void
.end method

.method public removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lorg/maplibre/android/annotations/Marker;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Lorg/maplibre/android/annotations/Marker;

    .line 4
    invoke-virtual {v0}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    .line 5
    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v0}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/maplibre/android/maps/IconManager;->iconCleanup(Lorg/maplibre/android/annotations/Icon;)V

    .line 8
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/Annotations;->removeBy(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public removeAnnotations()V
    .locals 6

    .line 9
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    invoke-virtual {v0}, Lk/q;->size()I

    move-result v0

    .line 10
    new-array v1, v0, [J

    .line 11
    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    iget-object v3, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    invoke-virtual {v3, v2}, Lk/q;->h(I)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 13
    iget-object v5, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotationsArray:Lk/q;

    invoke-virtual {v5, v3, v4}, Lk/q;->f(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/maplibre/android/annotations/Annotation;

    .line 14
    instance-of v4, v3, Lorg/maplibre/android/annotations/Marker;

    if-eqz v4, :cond_0

    .line 15
    check-cast v3, Lorg/maplibre/android/annotations/Marker;

    .line 16
    invoke-virtual {v3}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    .line 17
    iget-object v4, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v3}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/maplibre/android/maps/IconManager;->iconCleanup(Lorg/maplibre/android/annotations/Icon;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0}, Lorg/maplibre/android/maps/Annotations;->removeAll()V

    return-void
.end method

.method public removeAnnotations(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/annotations/Annotation;

    .line 2
    instance-of v2, v1, Lorg/maplibre/android/annotations/Marker;

    if-eqz v2, :cond_0

    .line 3
    check-cast v1, Lorg/maplibre/android/annotations/Marker;

    .line 4
    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->hideInfoWindow()V

    .line 5
    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->iconManager:Lorg/maplibre/android/maps/IconManager;

    invoke-virtual {v1}, Lorg/maplibre/android/annotations/Marker;->getIcon()Lorg/maplibre/android/annotations/Icon;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/maplibre/android/maps/IconManager;->iconCleanup(Lorg/maplibre/android/annotations/Icon;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->annotations:Lorg/maplibre/android/maps/Annotations;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/Annotations;->removeBy(Ljava/util/List;)V

    return-void
.end method

.method public selectMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/InfoWindowManager;->isAllowConcurrentMultipleOpenInfoWindows()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->deselectMarkers()V

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->isInfoWindowValidForMarker(Lorg/maplibre/android/annotations/Marker;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/InfoWindowManager;->getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    iget-object v1, p0, Lorg/maplibre/android/maps/AnnotationManager;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lorg/maplibre/android/maps/AnnotationManager;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p1, v1, v2}, Lorg/maplibre/android/annotations/Marker;->showInfoWindow(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/annotations/InfoWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/InfoWindowManager;->add(Lorg/maplibre/android/annotations/InfoWindow;)V

    :cond_3
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->selectedMarkers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager;->onMarkerClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;

    return-void
.end method

.method public setOnPolygonClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager;->onPolygonClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;

    return-void
.end method

.method public setOnPolylineClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/AnnotationManager;->onPolylineClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;

    return-void
.end method

.method public update()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->infoWindowManager:Lorg/maplibre/android/maps/InfoWindowManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->update()V

    return-void
.end method

.method public updateMarker(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->isAddedToMap(Lorg/maplibre/android/annotations/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->logNonAdded(Lorg/maplibre/android/annotations/Annotation;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->markers:Lorg/maplibre/android/maps/Markers;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/Markers;->update(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method public updatePolygon(Lorg/maplibre/android/annotations/Polygon;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->isAddedToMap(Lorg/maplibre/android/annotations/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->logNonAdded(Lorg/maplibre/android/annotations/Annotation;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polygons:Lorg/maplibre/android/maps/Polygons;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/Polygons;->update(Lorg/maplibre/android/annotations/Polygon;)V

    return-void
.end method

.method public updatePolyline(Lorg/maplibre/android/annotations/Polyline;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->isAddedToMap(Lorg/maplibre/android/annotations/Annotation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->logNonAdded(Lorg/maplibre/android/annotations/Annotation;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/AnnotationManager;->polylines:Lorg/maplibre/android/maps/Polylines;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/Polylines;->update(Lorg/maplibre/android/annotations/Polyline;)V

    return-void
.end method
