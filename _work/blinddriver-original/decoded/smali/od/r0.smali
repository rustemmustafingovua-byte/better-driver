.class public final synthetic Lod/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;


# instance fields
.field public final synthetic a:Lorg/maplibre/android/maps/MapLibreMap;

.field public final synthetic b:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/r0;->a:Lorg/maplibre/android/maps/MapLibreMap;

    iput-object p2, p0, Lod/r0;->b:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 15

    iget-object v0, p0, Lod/r0;->a:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    iget-wide v1, v1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    new-instance v4, Lod/e7;

    const-wide/high16 v5, 0x402d000000000000L    # 14.5

    cmpl-double v0, v1, v5

    if-lez v0, :cond_0

    move-wide v13, v5

    goto :goto_0

    :cond_0
    move-wide v13, v1

    :goto_0
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-direct/range {v4 .. v14}, Lod/e7;-><init>(DDDDD)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Projection;->getVisibleRegion()Lorg/maplibre/android/geometry/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lorg/maplibre/android/geometry/VisibleRegion;->latLngBounds:Lorg/maplibre/android/geometry/LatLngBounds;

    new-instance v3, Lod/e7;

    iget-wide v4, v0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeSouth:D

    const-wide v6, 0x407f400000000000L    # 500.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    iget-wide v8, v0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeWest:D

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v8, v6

    iget-wide v10, v0, Lorg/maplibre/android/geometry/LatLngBounds;->latitudeNorth:D

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v10, v6

    iget-wide v12, v0, Lorg/maplibre/android/geometry/LatLngBounds;->longitudeEast:D

    mul-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v12, v6

    const/4 v0, 0x2

    int-to-double v6, v0

    mul-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v0

    invoke-direct/range {v3 .. v13}, Lod/e7;-><init>(DDDDD)V

    move-object v4, v3

    :goto_1
    iget-object p0, p0, Lod/r0;->b:Lr0/u0;

    invoke-interface {p0, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-void
.end method
