.class public final Lorg/maplibre/android/maps/MapLibreMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;,
        Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;,
        Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;,
        Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;,
        Lorg/maplibre/android/maps/MapLibreMap$SnapshotReadyCallback;,
        Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;,
        Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-MapLibreMap"


# instance fields
.field private annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

.field private final awaitingStyleGetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/Style$OnStyleLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field private debugActive:Z

.field private final developerAnimationStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationComponent:Lorg/maplibre/android/location/LocationComponent;

.field private final nativeMapView:Lorg/maplibre/android/maps/NativeMap;

.field private onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

.field private final onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

.field private final projection:Lorg/maplibre/android/maps/Projection;

.field private started:Z

.field private style:Lorg/maplibre/android/maps/Style;

.field private styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

.field private final transform:Lorg/maplibre/android/maps/Transform;

.field private final uiSettings:Lorg/maplibre/android/maps/UiSettings;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;Lorg/maplibre/android/maps/CameraChangeDispatcher;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/maps/NativeMap;",
            "Lorg/maplibre/android/maps/Transform;",
            "Lorg/maplibre/android/maps/UiSettings;",
            "Lorg/maplibre/android/maps/Projection;",
            "Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;",
            "Lorg/maplibre/android/maps/CameraChangeDispatcher;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/List;

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    iput-object p3, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    iput-object p4, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    iput-object p5, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    iput-object p6, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    iput-object p7, p0, Lorg/maplibre/android/maps/MapLibreMap;->developerAnimationStartedListeners:Ljava/util/List;

    return-void
.end method

.method private notifyDeveloperAnimationListeners()V
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->developerAnimationStartedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;

    invoke-interface {v0}, Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;->onDeveloperAnimationStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setApiBaseUrl(Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 1

    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getApiBaseUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setApiBaseUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPrefetchesTiles(Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getPrefetchesTiles()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap;->setPrefetchZoomDelta(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getPrefetchZoomDelta()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap;->setPrefetchZoomDelta(I)V

    return-void
.end method


# virtual methods
.method public addMarker(Lorg/maplibre/android/annotations/BaseMarkerOptions;)Lorg/maplibre/android/annotations/Marker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addMarker(Lorg/maplibre/android/annotations/BaseMarkerOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Marker;

    move-result-object p0

    return-object p0
.end method

.method public addMarker(Lorg/maplibre/android/annotations/MarkerOptions;)Lorg/maplibre/android/annotations/Marker;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addMarker(Lorg/maplibre/android/annotations/BaseMarkerOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Marker;

    move-result-object p0

    return-object p0
.end method

.method public addMarkers(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/BaseMarkerOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Marker;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addMarkers(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public addOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->addOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V

    return-void
.end method

.method public addOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->addOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V

    return-void
.end method

.method public addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    return-void
.end method

.method public addOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->addOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V

    return-void
.end method

.method public addOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V

    return-void
.end method

.method public addOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    return-void
.end method

.method public addOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    return-void
.end method

.method public addOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V

    return-void
.end method

.method public addOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V

    return-void
.end method

.method public addOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V

    return-void
.end method

.method public addOnShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onAddShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V

    return-void
.end method

.method public addPolygon(Lorg/maplibre/android/annotations/PolygonOptions;)Lorg/maplibre/android/annotations/Polygon;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addPolygon(Lorg/maplibre/android/annotations/PolygonOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public addPolygons(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolygonOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polygon;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addPolygons(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public addPolyline(Lorg/maplibre/android/annotations/PolylineOptions;)Lorg/maplibre/android/annotations/Polyline;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addPolyline(Lorg/maplibre/android/annotations/PolylineOptions;Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/annotations/Polyline;

    move-result-object p0

    return-object p0
.end method

.method public addPolylines(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/PolylineOptions;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/maplibre/android/annotations/Polyline;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->addPolylines(Ljava/util/List;Lorg/maplibre/android/maps/MapLibreMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final animateCamera(Lorg/maplibre/android/camera/CameraUpdate;)V
    .locals 2

    const/16 v0, 0x12c

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final animateCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    if-lez p2, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 5
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/maplibre/android/maps/Transform;->animateCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null duration passed into animateCamera"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final animateCamera(Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0x12c

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lorg/maplibre/android/maps/MapLibreMap;->animateCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public cancelAllVelocityAnimations()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->cancelAllVelocityAnimations()V

    return-void
.end method

.method public cancelTransitions()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->cancelTransitions()V

    return-void
.end method

.method public clear()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotations()V

    return-void
.end method

.method public clearActionJournalLog()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->clearActionJournalLog()V

    return-void
.end method

.method public cycleDebugOptions()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->getDebug()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->debugActive:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, v0}, Lorg/maplibre/android/maps/NativeMap;->setDebug(Z)V

    return-void
.end method

.method public deselectMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->deselectMarker(Lorg/maplibre/android/annotations/Marker;)V

    return-void
.end method

.method public deselectMarkers()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->deselectMarkers()V

    return-void
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;)V
    .locals 1

    const/16 v0, 0x12c

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V

    return-void
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdate;IZLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdate;IZLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;IZLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 6

    if-lez p2, :cond_0

    .line 6
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 7
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/maps/Transform;->easeCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;IZLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null duration passed into easeCamera"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final easeCamera(Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    const/16 v0, 0x12c

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lorg/maplibre/android/maps/MapLibreMap;->easeCamera(Lorg/maplibre/android/camera/CameraUpdate;ILorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public enableRenderingStatsView(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->enableRenderingStatsView(Z)V

    return-void
.end method

.method public getActionJournalLog()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getActionJournalLog()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getActionJournalLogFiles()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getActionJournalLogFiles()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotation(J)Lorg/maplibre/android/annotations/Annotation;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/AnnotationManager;->getAnnotation(J)Lorg/maplibre/android/annotations/Annotation;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 1

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[I)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForGeometry(Lorg/maplibre/geojson/Geometry;DD)Lorg/maplibre/android/camera/CameraPosition;
    .locals 8

    const/4 v0, 0x0

    .line 3
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[I)Lorg/maplibre/android/camera/CameraPosition;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getBearing()D

    move-result-wide v4

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[IDD)Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface/range {p0 .. p6}, Lorg/maplibre/android/maps/NativeMap;->getCameraForGeometry(Lorg/maplibre/geojson/Geometry;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;)Lorg/maplibre/android/camera/CameraPosition;
    .locals 1

    const/4 v0, 0x0

    .line 1
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[I)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;DD)Lorg/maplibre/android/camera/CameraPosition;
    .locals 8

    const/4 v0, 0x0

    .line 3
    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[I)Lorg/maplibre/android/camera/CameraPosition;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getRawBearing()D

    move-result-wide v4

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getTilt()D

    move-result-wide v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    .line 4
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface/range {p0 .. p6}, Lorg/maplibre/android/maps/NativeMap;->getCameraForLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;[IDD)Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    return-object p0
.end method

.method public getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->getGesturesManager()Lorg/maplibre/android/gestures/AndroidGesturesManager;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Projection;->getHeight()F

    move-result p0

    return p0
.end method

.method public getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->getInfoWindowAdapter()Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getLocationComponent()Lorg/maplibre/android/location/LocationComponent;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getMarkers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMaxPitch()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getMaxPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxZoomLevel()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getMaxZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinPitch()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getMinPitch()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinZoomLevel()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->getMinZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeMapPtr()J
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getNativePtr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOnFpsChangedListener()Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    return-object p0
.end method

.method public getOnInfoWindowClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->getOnInfoWindowClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnInfoWindowCloseListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->getOnInfoWindowCloseListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnInfoWindowLongClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->getOnInfoWindowLongClickListener()Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getPadding()[I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Projection;->getContentPadding()[I

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getPolygons()Ljava/util/List;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getPolylines()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPrefetchZoomDelta()I
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getPrefetchZoomDelta()I

    move-result p0

    return p0
.end method

.method public getPrefetchesTiles()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getPrefetchTiles()Z

    move-result p0

    return p0
.end method

.method public getProjection()Lorg/maplibre/android/maps/Projection;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getSelectedMarkers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStyle()Lorg/maplibre/android/maps/Style;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStyle(Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    invoke-interface {p1, p0}, Lorg/maplibre/android/maps/Style$OnStyleLoaded;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTileCacheEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTileCacheEnabled()Z

    move-result p0

    return p0
.end method

.method public getTileLodMinRadius()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTileLodMinRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTileLodPitchThreshold()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTileLodPitchThreshold()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTileLodScale()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTileLodScale()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTileLodZoomShift()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getTileLodZoomShift()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTransform()Lorg/maplibre/android/maps/Transform;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    return-object p0
.end method

.method public getUiSettings()Lorg/maplibre/android/maps/UiSettings;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    return-object p0
.end method

.method public getWidth()F
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Projection;->getWidth()F

    move-result p0

    return p0
.end method

.method public getZoom()D
    .locals 2

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->getZoom()D

    move-result-wide v0

    return-wide v0
.end method

.method public initialise(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0, p0, p2}, Lorg/maplibre/android/maps/Transform;->initialise(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/UiSettings;->initialise(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getDebugActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap;->setDebugActive(Z)V

    invoke-direct {p0, p2}, Lorg/maplibre/android/maps/MapLibreMap;->setApiBaseUrl(Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    invoke-direct {p0, p2}, Lorg/maplibre/android/maps/MapLibreMap;->setPrefetchesTiles(Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public injectAnnotationManager(Lorg/maplibre/android/maps/AnnotationManager;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->bind(Lorg/maplibre/android/maps/MapLibreMap;)Lorg/maplibre/android/maps/AnnotationManager;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    return-void
.end method

.method public injectLocationComponent(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    return-void
.end method

.method public isAllowConcurrentMultipleOpenInfoWindows()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/InfoWindowManager;->isAllowConcurrentMultipleOpenInfoWindows()Z

    move-result p0

    return p0
.end method

.method public isDebugActive()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->debugActive:Z

    return p0
.end method

.method public isRenderingStatsViewEnabled()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->isRenderingStatsViewEnabled()Z

    move-result p0

    return p0
.end method

.method public final moveCamera(Lorg/maplibre/android/camera/CameraUpdate;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public final moveCamera(Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0, p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->moveCamera(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public notifyStyleLoaded()V
    .locals 3

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->onDidFinishLoadingStyle()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->onFinishLoadingStyle()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    invoke-interface {v0, v1}, Lorg/maplibre/android/maps/Style$OnStyleLoaded;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    iget-object v2, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    invoke-interface {v1, v2}, Lorg/maplibre/android/maps/Style$OnStyleLoaded;->onStyleLoaded(Lorg/maplibre/android/maps/Style;)V

    goto :goto_0

    :cond_2
    const-string v0, "No style to provide."

    invoke-static {v0}, Lorg/maplibre/android/MapStrictMode;->strictModeViolation(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->awaitingStyleGetters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponent;->onDestroy()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Style;->clear()V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->onDestroy()V

    return-void
.end method

.method public onFailLoadingStyle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    return-void
.end method

.method public onFinishLoadingStyle()V
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyStyleLoaded()V

    return-void
.end method

.method public onPostMapReady()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    return-void
.end method

.method public onPreMapReady()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/AnnotationManager;->reloadMarkers()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/AnnotationManager;->adjustTopOffsetPixels(Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "maplibre_cameraPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/maplibre/android/camera/CameraPosition;

    iget-object v1, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {v1, p1}, Lorg/maplibre/android/maps/UiSettings;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz v0, :cond_0

    new-instance v1, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v1, v0}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>(Lorg/maplibre/android/camera/CameraPosition;)V

    invoke-virtual {v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;)V

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    const-string v0, "maplibre_debugActive"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setDebug(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    const-string v1, "maplibre_cameraPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "maplibre_debugActive"

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->isDebugActive()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/UiSettings;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->onStop()V

    return-void
.end method

.method public onUpdateFullyRendered()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/Transform;->invalidateCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p0, v0}, Lorg/maplibre/android/maps/UiSettings;->update(Lorg/maplibre/android/camera/CameraPosition;)V

    :cond_0
    return-void
.end method

.method public onUpdateRegionChange()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->update()V

    return-void
.end method

.method public varargs queryRenderedFeatures(Landroid/graphics/PointF;Lorg/maplibre/android/style/expressions/Expression;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Lorg/maplibre/android/style/expressions/Expression;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p3, p2}, Lorg/maplibre/android/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/maplibre/android/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/PointF;[Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs queryRenderedFeatures(Landroid/graphics/RectF;Lorg/maplibre/android/style/expressions/Expression;[Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lorg/maplibre/android/style/expressions/Expression;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p3, p2}, Lorg/maplibre/android/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public varargs queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/maplibre/geojson/Feature;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/maplibre/android/maps/NativeMap;->queryRenderedFeatures(Landroid/graphics/RectF;[Ljava/lang/String;Lorg/maplibre/android/style/expressions/Expression;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeAnnotation(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotation(J)V

    return-void
.end method

.method public removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public removeAnnotations()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotations()V

    return-void
.end method

.method public removeAnnotations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/maplibre/android/annotations/Annotation;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotations(Ljava/util/List;)V

    return-void
.end method

.method public removeMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public removeOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->removeOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V

    return-void
.end method

.method public removeOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->removeOnCameraMoveCancelListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveCanceledListener;)V

    return-void
.end method

.method public removeOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->removeOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    return-void
.end method

.method public removeOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->cameraChangeDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/CameraChangeDispatcher;->removeOnCameraMoveStartedListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveStartedListener;)V

    return-void
.end method

.method public removeOnFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveFlingListener(Lorg/maplibre/android/maps/MapLibreMap$OnFlingListener;)V

    return-void
.end method

.method public removeOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    return-void
.end method

.method public removeOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    return-void
.end method

.method public removeOnMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnMoveListener;)V

    return-void
.end method

.method public removeOnRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveRotateListener(Lorg/maplibre/android/maps/MapLibreMap$OnRotateListener;)V

    return-void
.end method

.method public removeOnScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveScaleListener(Lorg/maplibre/android/maps/MapLibreMap$OnScaleListener;)V

    return-void
.end method

.method public removeOnShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->onRemoveShoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnShoveListener;)V

    return-void
.end method

.method public removePolygon(Lorg/maplibre/android/annotations/Polygon;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public removePolyline(Lorg/maplibre/android/annotations/Polyline;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->removeAnnotation(Lorg/maplibre/android/annotations/Annotation;)V

    return-void
.end method

.method public resetNorth()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/Transform;->resetNorth()V

    return-void
.end method

.method public scrollBy(FF)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->scrollBy(FFJ)V

    return-void
.end method

.method public scrollBy(FFJ)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    .line 3
    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    float-to-double v1, p1

    float-to-double v3, p2

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lorg/maplibre/android/maps/NativeMap;->moveBy(DDJ)V

    return-void
.end method

.method public selectMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "Mbgl-MapLibreMap"

    const-string p1, "marker was null, so just returning"

    invoke-static {p0, p1}, Lorg/maplibre/android/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->selectMarker(Lorg/maplibre/android/annotations/Marker;)V

    return-void
.end method

.method public setAllowConcurrentMultipleOpenInfoWindows(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->setAllowConcurrentMultipleOpenInfoWindows(Z)V

    return-void
.end method

.method public setCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)V
    .locals 1

    invoke-static {p1}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public setDebugActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->debugActive:Z

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setDebug(Z)V

    return-void
.end method

.method public setFocalBearing(DFFJ)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual/range {p0 .. p6}, Lorg/maplibre/android/maps/Transform;->setBearing(DFFJ)V

    return-void
.end method

.method public setFrustumOffset(Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setFrustumOffset(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->onGesturesManagerInteractionListener:Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;

    invoke-interface {p0, p1, p2, p3}, Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;->setGesturesManager(Lorg/maplibre/android/gestures/AndroidGesturesManager;ZZ)V

    return-void
.end method

.method public setInfoWindowAdapter(Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->setInfoWindowAdapter(Lorg/maplibre/android/maps/MapLibreMap$InfoWindowAdapter;)V

    return-void
.end method

.method public setLatLngBoundsForCameraTarget(Lorg/maplibre/android/geometry/LatLngBounds;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setLatLngBounds(Lorg/maplibre/android/geometry/LatLngBounds;)V

    return-void
.end method

.method public setMaxPitchPreference(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->setMaxPitch(D)V

    return-void
.end method

.method public setMaxZoomPreference(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->setMaxZoom(D)V

    return-void
.end method

.method public setMinPitchPreference(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->setMinPitch(D)V

    return-void
.end method

.method public setMinZoomPreference(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->transform:Lorg/maplibre/android/maps/Transform;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/Transform;->setMinZoom(D)V

    return-void
.end method

.method public setOfflineRegionDefinition(Lorg/maplibre/android/offline/OfflineRegionDefinition;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->setOfflineRegionDefinition(Lorg/maplibre/android/offline/OfflineRegionDefinition;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public setOfflineRegionDefinition(Lorg/maplibre/android/offline/OfflineRegionDefinition;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V
    .locals 6

    .line 2
    invoke-interface {p1}, Lorg/maplibre/android/offline/OfflineRegionDefinition;->getMinZoom()D

    move-result-wide v0

    .line 3
    invoke-interface {p1}, Lorg/maplibre/android/offline/OfflineRegionDefinition;->getMaxZoom()D

    move-result-wide v2

    .line 4
    new-instance v4, Lorg/maplibre/android/camera/CameraPosition$Builder;

    invoke-direct {v4}, Lorg/maplibre/android/camera/CameraPosition$Builder;-><init>()V

    .line 5
    invoke-interface {p1}, Lorg/maplibre/android/offline/OfflineRegionDefinition;->getBounds()Lorg/maplibre/android/geometry/LatLngBounds;

    move-result-object v5

    invoke-virtual {v5}, Lorg/maplibre/android/geometry/LatLngBounds;->getCenter()Lorg/maplibre/android/geometry/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/maplibre/android/camera/CameraPosition$Builder;->target(Lorg/maplibre/android/geometry/LatLng;)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v0, v1}, Lorg/maplibre/android/camera/CameraPosition$Builder;->zoom(D)Lorg/maplibre/android/camera/CameraPosition$Builder;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Lorg/maplibre/android/camera/CameraPosition$Builder;->build()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v4

    .line 8
    invoke-static {v4}, Lorg/maplibre/android/camera/CameraUpdateFactory;->newCameraPosition(Lorg/maplibre/android/camera/CameraPosition;)Lorg/maplibre/android/camera/CameraUpdate;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/maplibre/android/maps/MapLibreMap;->moveCamera(Lorg/maplibre/android/camera/CameraUpdate;)V

    .line 9
    invoke-virtual {p0, v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->setMinZoomPreference(D)V

    .line 10
    invoke-virtual {p0, v2, v3}, Lorg/maplibre/android/maps/MapLibreMap;->setMaxZoomPreference(D)V

    .line 11
    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    invoke-interface {p1}, Lorg/maplibre/android/offline/OfflineRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapLibreMap;->onFpsChangedListener:Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setOnFpsChangedListener(Lorg/maplibre/android/maps/MapLibreMap$OnFpsChangedListener;)V

    return-void
.end method

.method public setOnInfoWindowClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->setOnInfoWindowClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowClickListener;)V

    return-void
.end method

.method public setOnInfoWindowCloseListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->setOnInfoWindowCloseListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowCloseListener;)V

    return-void
.end method

.method public setOnInfoWindowLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/AnnotationManager;->getInfoWindowManager()Lorg/maplibre/android/maps/InfoWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/InfoWindowManager;->setOnInfoWindowLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnInfoWindowLongClickListener;)V

    return-void
.end method

.method public setOnMarkerClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->setOnMarkerClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMarkerClickListener;)V

    return-void
.end method

.method public setOnPolygonClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->setOnPolygonClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolygonClickListener;)V

    return-void
.end method

.method public setOnPolylineClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->setOnPolylineClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnPolylineClickListener;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->projection:Lorg/maplibre/android/maps/Projection;

    filled-new-array {p1, p2, p3, p4}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Projection;->setContentPadding([I)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->uiSettings:Lorg/maplibre/android/maps/UiSettings;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/UiSettings;->invalidate()V

    return-void
.end method

.method public setPrefetchZoomDelta(I)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setPrefetchZoomDelta(I)V

    return-void
.end method

.method public setPrefetchesTiles(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setPrefetchTiles(Z)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Ljava/lang/String;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/maplibre/android/maps/Style$Builder;

    invoke-direct {v0}, Lorg/maplibre/android/maps/Style$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/Style$Builder;->fromUri(Ljava/lang/String;)Lorg/maplibre/android/maps/Style$Builder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public setStyle(Lorg/maplibre/android/maps/Style$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V

    return-void
.end method

.method public setStyle(Lorg/maplibre/android/maps/Style$Builder;Lorg/maplibre/android/maps/Style$OnStyleLoaded;)V
    .locals 0

    .line 4
    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->styleLoadedCallback:Lorg/maplibre/android/maps/Style$OnStyleLoaded;

    .line 5
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->locationComponent:Lorg/maplibre/android/location/LocationComponent;

    invoke-virtual {p2}, Lorg/maplibre/android/location/LocationComponent;->onStartLoadingMap()V

    .line 6
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lorg/maplibre/android/maps/Style;->clear()V

    .line 8
    :cond_0
    iget-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1, p2}, Lorg/maplibre/android/maps/Style$Builder;->build(Lorg/maplibre/android/maps/NativeMap;)Lorg/maplibre/android/maps/Style;

    move-result-object p2

    iput-object p2, p0, Lorg/maplibre/android/maps/MapLibreMap;->style:Lorg/maplibre/android/maps/Style;

    .line 9
    invoke-virtual {p1}, Lorg/maplibre/android/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Style$Builder;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setStyleUri(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/maps/Style$Builder;->getJson()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-virtual {p1}, Lorg/maplibre/android/maps/Style$Builder;->getJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setStyleJson(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    const-string p1, "{\"version\": 8,\"sources\": {},\"layers\": []}"

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setStyleJson(Ljava/lang/String;)V

    return-void
.end method

.method public setSwapBehaviorFlush(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setSwapBehaviorFlush(Z)V

    return-void
.end method

.method public setTileCacheEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->setTileCacheEnabled(Z)V

    return-void
.end method

.method public setTileLodMinRadius(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setTileLodMinRadius(D)V

    return-void
.end method

.method public setTileLodPitchThreshold(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setTileLodPitchThreshold(D)V

    return-void
.end method

.method public setTileLodScale(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setTileLodScale(D)V

    return-void
.end method

.method public setTileLodZoomShift(D)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->setTileLodZoomShift(D)V

    return-void
.end method

.method public setZoom(DLandroid/graphics/PointF;J)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapLibreMap;->notifyDeveloperAnimationListeners()V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface/range {p0 .. p5}, Lorg/maplibre/android/maps/NativeMap;->setZoom(DLandroid/graphics/PointF;J)V

    return-void
.end method

.method public snapshot(Lorg/maplibre/android/maps/MapLibreMap$SnapshotReadyCallback;)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->started:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/NativeMap;->addSnapshotCallback(Lorg/maplibre/android/maps/MapLibreMap$SnapshotReadyCallback;)V

    return-void
.end method

.method public triggerRepaint()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-interface {p0}, Lorg/maplibre/android/maps/NativeMap;->triggerRepaint()V

    return-void
.end method

.method public updateMarker(Lorg/maplibre/android/annotations/Marker;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/maps/AnnotationManager;->updateMarker(Lorg/maplibre/android/annotations/Marker;Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method public updatePolygon(Lorg/maplibre/android/annotations/Polygon;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->updatePolygon(Lorg/maplibre/android/annotations/Polygon;)V

    return-void
.end method

.method public updatePolyline(Lorg/maplibre/android/annotations/Polyline;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/maplibre/android/maps/MapLibreMap;->annotationManager:Lorg/maplibre/android/maps/AnnotationManager;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/AnnotationManager;->updatePolyline(Lorg/maplibre/android/annotations/Polyline;)V

    return-void
.end method
