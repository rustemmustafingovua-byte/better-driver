.class public final Lkd/u;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lad/a0;

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/u0;


# direct methods
.method public constructor <init>(Lad/a0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lkd/u;->l:Lad/a0;

    iput-object p2, p0, Lkd/u;->m:Lr0/u0;

    iput-object p3, p0, Lkd/u;->n:Lr0/u0;

    iput-object p4, p0, Lkd/u;->o:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lkd/u;

    iget-object v3, p0, Lkd/u;->n:Lr0/u0;

    iget-object v4, p0, Lkd/u;->o:Lr0/u0;

    iget-object v1, p0, Lkd/u;->l:Lad/a0;

    iget-object v2, p0, Lkd/u;->m:Lr0/u0;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lkd/u;-><init>(Lad/a0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lkd/u;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lkd/u;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lkd/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lkd/u;->m:Lr0/u0;

    invoke-interface {p1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/maplibre/android/maps/MapLibreMap;

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lkd/u;->n:Lr0/u0;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lkd/u;->l:Lad/a0;

    iget-object v3, v2, Lad/a0;->b:Lua/nav/routing/Route;

    iget v4, v2, Lad/a0;->e:F

    const-string v5, "routes-src"

    invoke-virtual {v1, v5}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v5

    check-cast v5, Lorg/maplibre/android/style/sources/GeoJsonSource;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    if-nez v3, :cond_3

    sget-object v3, Lu8/r;->l:Lu8/r;

    invoke-static {v3}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v6, v3}, Lod/g3;->a0(ILjava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_4
    iget-object v2, v2, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-nez v2, :cond_5

    :goto_1
    return-object v0

    :cond_5
    iget-wide v7, v2, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v2, v2, Lua/nav/routing/GeoPoint;->a:D

    float-to-double v9, v4

    const-string v5, "nav-src"

    invoke-virtual {v1, v5}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-eqz v1, :cond_6

    invoke-static {v7, v8, v2, v3}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v5

    invoke-static {v5}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v5

    const-string v11, "bearing"

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v5, v11, v9}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v9, "icon"

    const-string v10, "nav-arrow"

    invoke-virtual {v5, v9, v10}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/Feature;)V

    :cond_6
    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>()V

    new-instance v5, Lorg/maplibre/android/geometry/LatLng;

    invoke-direct {v5, v2, v3, v7, v8}, Lorg/maplibre/android/geometry/LatLng;-><init>(DD)V

    invoke-virtual {v1, v5}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    const-wide/high16 v2, 0x402f000000000000L    # 15.5

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    float-to-double v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->bearing(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/maplibre/android/camera/CameraPosition$Builder;->tilt(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v1

    iget-object p0, p0, Lkd/u;->o:Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double v4, p0

    const-wide v7, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v4, v7

    const/4 p0, 0x4

    new-array p0, p0, [D

    aput-wide v2, p0, v6

    const/4 v6, 0x1

    aput-wide v4, p0, v6

    const/4 v4, 0x2

    aput-wide v2, p0, v4

    const/4 v4, 0x3

    aput-wide v2, p0, v4

    invoke-virtual {v1, p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->padding([D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    invoke-static {p0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;)V

    return-object v0
.end method
