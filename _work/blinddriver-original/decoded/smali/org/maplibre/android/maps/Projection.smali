.class public Lorg/maplibre/android/maps/Projection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mapView:Lorg/maplibre/android/maps/MapView;

.field private final nativeMapView:Lorg/maplibre/android/maps/NativeMap;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    iput-object p2, p0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    return-void
.end method

.method public static bearing(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)D
    .locals 10

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/maplibre/android/maps/Projection;->degreesToRadians(D)D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/maplibre/android/maps/Projection;->degreesToRadians(D)D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/maplibre/android/maps/Projection;->degreesToRadians(D)D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/Projection;->degreesToRadians(D)D

    move-result-wide p0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    sub-double/2addr v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/maplibre/android/maps/Projection;->radiansToDegrees(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static degreesToRadians(D)D
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getLongitudeSpan(DD)D
    .locals 2

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double p0, p0, p2

    if-lez p0, :cond_0

    return-wide v0

    :cond_0
    const-wide p0, 0x4076800000000000L    # 360.0

    sub-double/2addr p0, v0

    return-wide p0
.end method

.method public static radiansToDegrees(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public calculateZoom(F)D
    .locals 4

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getZoom()D

    move-result-wide v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr p0, v2

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->latLngForPixel(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public fromScreenLocations([D[D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->latLngsForPixels([D[D)V

    return-void
.end method

.method public getContentPadding()[I
    .locals 5

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getContentPadding()[D

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    aget-wide v0, p0, v0

    double-to-int v0, v0

    const/4 v1, 0x1

    aget-wide v1, p0, v1

    double-to-int v1, v1

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    double-to-int v2, v2

    const/4 v3, 0x3

    aget-wide v3, p0, v3

    double-to-int p0, v3

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLatLngForProjectedMeters(Lorg/maplibre/android/geometry/ProjectedMeters;)Lorg/maplibre/android/geometry/LatLng;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->latLngForProjectedMeters(Lorg/maplibre/android/geometry/ProjectedMeters;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object p0

    return-object p0
.end method

.method public getMetersPerPixelAtLatitude(D)D
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->getMetersPerPixelAtLatitude(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getProjectedMetersForLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/ProjectedMeters;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->projectedMetersForLatLng(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/geometry/ProjectedMeters;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleCoordinateBounds([D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->getVisibleCoordinateBounds([D)V

    return-void
.end method

.method public getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/Projection;->getVisibleRegion(Z)Lorg/maplibre/android/geometry/VisibleRegion;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleRegion(Z)Lorg/maplibre/android/geometry/VisibleRegion;
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, v0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 3
    iget-object v3, v0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    move v5, v4

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lorg/maplibre/android/maps/Projection;->getContentPadding()[I

    move-result-object v2

    .line 5
    aget v3, v2, v1

    int-to-float v4, v3

    .line 6
    iget-object v3, v0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x1

    .line 7
    aget v5, v2, v5

    int-to-float v5, v5

    .line 8
    iget-object v6, v0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    const/4 v7, 0x3

    aget v2, v2, v7

    sub-int/2addr v6, v2

    int-to-float v2, v6

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    .line 9
    :goto_0
    new-instance v6, Landroid/graphics/PointF;

    sub-float v7, v2, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v7, v4

    sub-float v9, v3, v5

    div-float/2addr v9, v8

    add-float/2addr v9, v5

    invoke-direct {v6, v7, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v6}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v6

    .line 10
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v7}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v9

    .line 11
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v7}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v10

    .line 12
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v5}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v12

    .line 13
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/Projection;->fromScreenLocation(Landroid/graphics/PointF;)Lorg/maplibre/android/geometry/LatLng;

    move-result-object v11

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    const-wide v7, -0x3fa9800000000000L    # -90.0

    const-wide v13, 0x4056800000000000L    # 90.0

    move-wide v15, v3

    move-wide/from16 v19, v15

    move-wide/from16 v21, v19

    move-wide/from16 v17, v13

    move-wide v13, v7

    move-wide/from16 v7, v21

    :goto_1
    if-ge v1, v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lorg/maplibre/android/geometry/LatLng;

    .line 20
    invoke-static {v6, v5}, Lorg/maplibre/android/maps/Projection;->bearing(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;)D

    move-result-wide v23

    cmpl-double v23, v23, v3

    if-ltz v23, :cond_1

    .line 21
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v3

    move-object/from16 v23, v0

    move/from16 v24, v1

    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Lorg/maplibre/android/maps/Projection;->getLongitudeSpan(DD)D

    move-result-wide v0

    cmpl-double v3, v0, v21

    if-lez v3, :cond_2

    .line 22
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v15

    move-wide/from16 v21, v0

    goto :goto_2

    :cond_1
    move-object/from16 v23, v0

    move/from16 v24, v1

    .line 23
    invoke-virtual {v6}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/maplibre/android/maps/Projection;->getLongitudeSpan(DD)D

    move-result-wide v0

    cmpl-double v3, v0, v7

    if-lez v3, :cond_2

    .line 24
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLongitude()D

    move-result-wide v19

    move-wide v7, v0

    .line 25
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    cmpg-double v0, v13, v0

    if-gez v0, :cond_3

    .line 26
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    move-wide v13, v0

    .line 27
    :cond_3
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v17, v0

    if-lez v0, :cond_4

    .line 28
    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLng;->getLatitude()D

    move-result-wide v0

    move-wide/from16 v17, v0

    :cond_4
    move-object/from16 v0, v23

    move/from16 v1, v24

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_5
    cmpg-double v0, v15, v19

    if-gez v0, :cond_6

    .line 29
    new-instance v8, Lorg/maplibre/android/geometry/VisibleRegion;

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr v15, v0

    .line 30
    invoke-static/range {v13 .. v20}, Lorg/maplibre/android/geometry/LatLngBounds;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V

    return-object v8

    .line 31
    :cond_6
    new-instance v8, Lorg/maplibre/android/geometry/VisibleRegion;

    .line 32
    invoke-static/range {v13 .. v20}, Lorg/maplibre/android/geometry/LatLngBounds;->from(DDDD)Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lorg/maplibre/android/geometry/VisibleRegion;-><init>(Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLng;Lorg/maplibre/android/geometry/LatLngBounds;)V

    return-object v8
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->mapView:Lorg/maplibre/android/maps/MapView;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public invalidateContentPadding()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setContentPadding([I)V
    .locals 4

    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    int-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, v0}, Lorg/maplibre/android/maps/NativeMap;->setContentPadding([D)V

    return-void
.end method

.method public toScreenLocation(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->pixelForLatLng(Lorg/maplibre/android/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public toScreenLocations([D[D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/Projection;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->pixelsForLatLngs([D[D)V

    return-void
.end method
