.class public final Lorg/maplibre/android/location/LocationComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;,
        Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;,
        Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mbgl-LocationComponent"


# instance fields
.field cameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

.field private compassEngine:Lorg/maplibre/android/location/CompassEngine;

.field private compassListener:Lorg/maplibre/android/location/CompassListener;

.field private currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;"
        }
    .end annotation
.end field

.field private final developerAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;

.field private fastestInterval:J

.field private isComponentInitialized:Z

.field private isComponentStarted:Z

.field private isEnabled:Z

.field private isLayerReady:Z

.field private isListeningToCompass:Z

.field private lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

.field private lastLocation:Landroid/location/Location;

.field private lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTime:J

.field private locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

.field private locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

.field private locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

.field private locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

.field private locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

.field private final maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field private onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

.field private onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

.field private onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

.field private final onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/location/OnCameraTrackingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/location/OnLocationClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/location/OnLocationLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private onLocationStaleListener:Lorg/maplibre/android/location/OnLocationStaleListener;

.field private final onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/location/OnLocationStaleListener;",
            ">;"
        }
    .end annotation
.end field

.field private onMapClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

.field private onMapLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

.field private final onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/maplibre/android/location/OnRenderModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lorg/maplibre/android/location/LocationComponentOptions;

.field renderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

.field private staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

.field private style:Lorg/maplibre/android/maps/Style;

.field private final transform:Lorg/maplibre/android/maps/Transform;

.field private useSpecializedLocationLayer:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;-><init>(J)V

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setFastestInterval(J)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setPriority(I)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->build()Lorg/maplibre/android/location/engine/LocationEngineRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 31
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 32
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$1;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 39
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$2;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    .line 40
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$3;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    .line 41
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$4;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    .line 42
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$5;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/OnLocationStaleListener;

    .line 43
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$6;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    .line 44
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$7;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/CompassListener;

    .line 45
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$8;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    .line 46
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$9;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    .line 47
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$10;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->developerAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 49
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            "Lorg/maplibre/android/maps/Transform;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;-><init>(J)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setFastestInterval(J)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setPriority(I)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->build()Lorg/maplibre/android/location/engine/LocationEngineRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 6
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 7
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$1;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 14
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$2;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    .line 15
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$3;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    .line 16
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$4;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    .line 17
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$5;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/OnLocationStaleListener;

    .line 18
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$6;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    .line 19
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$7;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/CompassListener;

    .line 20
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$8;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    .line 21
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$9;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    .line 22
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$10;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->developerAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;

    .line 23
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 24
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    .line 25
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Ljava/util/List;Lorg/maplibre/android/location/engine/LocationEngineCallback;Lorg/maplibre/android/location/engine/LocationEngineCallback;Lorg/maplibre/android/location/LocationLayerController;Lorg/maplibre/android/location/LocationCameraController;Lorg/maplibre/android/location/LocationAnimatorCoordinator;Lorg/maplibre/android/location/StaleStateManager;Lorg/maplibre/android/location/CompassEngine;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/maplibre/android/maps/MapLibreMap;",
            "Lorg/maplibre/android/maps/Transform;",
            "Ljava/util/List<",
            "Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;",
            ">;",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;",
            "Lorg/maplibre/android/location/engine/LocationEngineCallback<",
            "Lorg/maplibre/android/location/engine/LocationEngineResult;",
            ">;",
            "Lorg/maplibre/android/location/LocationLayerController;",
            "Lorg/maplibre/android/location/LocationCameraController;",
            "Lorg/maplibre/android/location/LocationAnimatorCoordinator;",
            "Lorg/maplibre/android/location/StaleStateManager;",
            "Lorg/maplibre/android/location/CompassEngine;",
            "Z)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;-><init>(J)V

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setFastestInterval(J)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->setPriority(I)Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lorg/maplibre/android/location/engine/LocationEngineRequest$Builder;->build()Lorg/maplibre/android/location/engine/LocationEngineRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    .line 55
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$CurrentLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 56
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$LastLocationEngineCallback;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 57
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$1;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    .line 63
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$2;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$2;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    .line 64
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$3;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$3;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    .line 65
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$4;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    .line 66
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$5;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$5;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/OnLocationStaleListener;

    .line 67
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$6;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$6;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    .line 68
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$7;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$7;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/CompassListener;

    .line 69
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$8;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$8;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    .line 70
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$9;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$9;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    .line 71
    new-instance v0, Lorg/maplibre/android/location/LocationComponent$10;

    invoke-direct {v0, p0}, Lorg/maplibre/android/location/LocationComponent$10;-><init>(Lorg/maplibre/android/location/LocationComponent;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->developerAnimationListener:Lorg/maplibre/android/maps/MapLibreMap$OnDeveloperAnimationListener;

    .line 72
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 73
    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    .line 74
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iput-object p4, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 76
    iput-object p5, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    .line 77
    iput-object p6, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    .line 78
    iput-object p7, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    .line 79
    iput-object p8, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 80
    iput-object p9, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    .line 81
    iput-object p10, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    .line 82
    iput-boolean p11, p0, Lorg/maplibre/android/location/LocationComponent;->useSpecializedLocationLayer:Z

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    return-void
.end method

.method public static bridge synthetic a(Lorg/maplibre/android/location/LocationComponent;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    return p0
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/location/LocationComponent;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    return p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/location/LocationAnimatorCoordinator;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    return-object p0
.end method

.method private checkActivationState()V
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/maplibre/android/location/LocationComponentNotInitializedException;

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponentNotInitializedException;-><init>()V

    throw p0
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/location/LocationLayerController;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    return-object p0
.end method

.method private disableLocationComponent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationLayerController;->hide()V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStop()V

    return-void
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method private enableLocationComponent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    return-void
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/location/LocationComponent;)Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private getTargetLocationWithIntermediates(Landroid/location/Location;Ljava/util/List;)[Landroid/location/Location;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)[",
            "Landroid/location/Location;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v0, p0, 0x1

    new-array v0, v0, [Landroid/location/Location;

    aput-object p1, v0, p0

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Location;

    aput-object p1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic h(Lorg/maplibre/android/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/maplibre/android/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private initialize(Landroid/content/Context;Lorg/maplibre/android/maps/Style;ZLorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 9

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    invoke-virtual {p2}, Lorg/maplibre/android/maps/Style;->isFullyLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->style:Lorg/maplibre/android/maps/Style;

    iput-object p4, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    iput-boolean p3, p0, Lorg/maplibre/android/location/LocationComponent;->useSpecializedLocationLayer:Z

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->onMapClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnMapClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapClickListener;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->onMapLongClickListener:Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->addOnMapLongClickListener(Lorg/maplibre/android/maps/MapLibreMap$OnMapLongClickListener;)V

    new-instance v3, Lorg/maplibre/android/location/LayerSourceProvider;

    invoke-direct {v3}, Lorg/maplibre/android/location/LayerSourceProvider;-><init>()V

    new-instance v4, Lorg/maplibre/android/location/LayerFeatureProvider;

    invoke-direct {v4}, Lorg/maplibre/android/location/LayerFeatureProvider;-><init>()V

    new-instance v5, Lorg/maplibre/android/location/LayerBitmapProvider;

    invoke-direct {v5, p1}, Lorg/maplibre/android/location/LayerBitmapProvider;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/maplibre/android/location/LocationLayerController;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v7, p0, Lorg/maplibre/android/location/LocationComponent;->renderModeChangedListener:Lorg/maplibre/android/location/OnRenderModeChangedListener;

    move-object v2, p2

    move v8, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lorg/maplibre/android/location/LocationLayerController;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LayerSourceProvider;Lorg/maplibre/android/location/LayerFeatureProvider;Lorg/maplibre/android/location/LayerBitmapProvider;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/OnRenderModeChangedListener;Z)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    new-instance v0, Lorg/maplibre/android/location/LocationCameraController;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v3, p0, Lorg/maplibre/android/location/LocationComponent;->transform:Lorg/maplibre/android/maps/Transform;

    iget-object v4, p0, Lorg/maplibre/android/location/LocationComponent;->cameraTrackingChangedListener:Lorg/maplibre/android/location/OnCameraTrackingChangedListener;

    iget-object v6, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveInvalidateListener:Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/location/LocationCameraController;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/location/OnCameraTrackingChangedListener;Lorg/maplibre/android/location/LocationComponentOptions;Lorg/maplibre/android/location/OnCameraMoveInvalidateListener;)V

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    new-instance p2, Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object p3, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p3}, Lorg/maplibre/android/maps/MapLibreMap;->getProjection()Lorg/maplibre/android/maps/Projection;

    move-result-object p3

    invoke-static {}, Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;->getInstance()Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;

    move-result-object v0

    invoke-static {}, Lorg/maplibre/android/location/MapLibreAnimatorProvider;->getInstance()Lorg/maplibre/android/location/MapLibreAnimatorProvider;

    move-result-object v2

    invoke-direct {p2, p3, v0, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;-><init>(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/location/MapLibreAnimatorSetProvider;Lorg/maplibre/android/location/MapLibreAnimatorProvider;)V

    iput-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p4}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier()F

    move-result p3

    invoke-virtual {p2, p3}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->setTrackingAnimationDurationMultiplier(F)V

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    const-string p3, "sensor"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    new-instance p3, Lorg/maplibre/android/location/LocationComponentCompassEngine;

    invoke-direct {p3, p2, p1}, Lorg/maplibre/android/location/LocationComponentCompassEngine;-><init>(Landroid/view/WindowManager;Landroid/hardware/SensorManager;)V

    iput-object p3, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    :cond_1
    new-instance p1, Lorg/maplibre/android/location/StaleStateManager;

    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListener:Lorg/maplibre/android/location/OnLocationStaleListener;

    invoke-direct {p1, p2, p4}, Lorg/maplibre/android/location/StaleStateManager;-><init>(Lorg/maplibre/android/location/OnLocationStaleListener;Lorg/maplibre/android/location/LocationComponentOptions;)V

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-direct {p0, p4}, Lorg/maplibre/android/location/LocationComponent;->updateMapWithOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->setRenderMode(I)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Style is invalid, provide the most recently loaded one."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic j(Lorg/maplibre/android/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/maplibre/android/location/LocationComponent;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic l(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->updateAnimatorListenerHolders()V

    return-void
.end method

.method public static bridge synthetic m(Lorg/maplibre/android/location/LocationComponent;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassHeading(F)V

    return-void
.end method

.method public static bridge synthetic n(Lorg/maplibre/android/location/LocationComponent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateLayerOffsets(Z)V

    return-void
.end method

.method private notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p0, "Mbgl-LocationComponent"

    invoke-static {p0, p2}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;->onCancel()V

    :cond_1
    return-void
.end method

.method public static bridge synthetic o(Lorg/maplibre/android/location/LocationComponent;Landroid/location/Location;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method private onLocationLayerStart()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapLibreMap;->addOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-virtual {v0}, Lorg/maplibre/android/location/StaleStateManager;->onStart()V

    :cond_1
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    iget-object v3, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lorg/maplibre/android/location/engine/LocationEngine;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/engine/LocationEngineCallback;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mbgl-LocationComponent"

    const-string v3, "Unable to request location updates"

    invoke-static {v2, v3, v0}, Lorg/maplibre/android/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationCameraController;->getCameraMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(I)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->startPulsingLocationCircle()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->stopPulsingLocationCircle()V

    :goto_1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->setLastLocation()V

    invoke-direct {p0, v1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->setLastCompassHeading()V

    :cond_4
    :goto_2
    return-void
.end method

.method private onLocationLayerStop()V
    .locals 2

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-virtual {v1}, Lorg/maplibre/android/location/StaleStateManager;->onStop()V

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    :cond_1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->stopPulsingLocationCircle()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAllAnimations()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    invoke-interface {v0, v1}, Lorg/maplibre/android/location/engine/LocationEngine;->removeLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraMoveListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/MapLibreMap;->removeOnCameraMoveListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraMoveListener;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraIdleListener:Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;

    invoke-virtual {v0, p0}, Lorg/maplibre/android/maps/MapLibreMap;->removeOnCameraIdleListener(Lorg/maplibre/android/maps/MapLibreMap$OnCameraIdleListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private removeCompassListener(Lorg/maplibre/android/location/CompassEngine;)V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/CompassListener;

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/CompassEngine;->removeCompassListener(Lorg/maplibre/android/location/CompassListener;)V

    :cond_0
    return-void
.end method

.method private setLastCompassHeading()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/maplibre/android/location/CompassEngine;->getLastHeading()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateCompassHeading(F)V

    return-void
.end method

.method private setLastLocation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    invoke-interface {v0, p0}, Lorg/maplibre/android/location/engine/LocationEngine;->getLastLocation(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method private showLocationLayerIfHidden()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationLayerController;->isHidden()Z

    move-result v0

    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationLayerController;->show()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationLayerController;->adjustPulsingCircleLayerVisibility(Z)V

    :cond_0
    return-void
.end method

.method private startPulsingLocationCircle()V
    .locals 2

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->startLocationComponentCirclePulsing(Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationLayerController;->adjustPulsingCircleLayerVisibility(Z)V

    :cond_0
    return-void
.end method

.method private stopPulsingLocationCircle()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->stopPulsingCircleAnimation()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationLayerController;->adjustPulsingCircleLayerVisibility(Z)V

    return-void
.end method

.method private updateAccuracyRadius(Landroid/location/Location;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->useSpecializedLocationLayer:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-static {v0, p1}, Lorg/maplibre/android/location/Utils;->calculateZoomLevelRadius(Lorg/maplibre/android/maps/MapLibreMap;Landroid/location/Location;)F

    move-result p1

    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewAccuracyRadius(FZ)V

    return-void
.end method

.method private updateAnimatorListenerHolders()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationLayerController;->getAnimationListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v1}, Lorg/maplibre/android/location/LocationCameraController;->getAnimationListeners()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {v1, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->updateAnimatorListenerHolders(Ljava/util/Set;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v1}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v1

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v2}, Lorg/maplibre/android/location/LocationCameraController;->getCameraMode()I

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetAllCameraAnimations(Lorg/maplibre/android/camera/CameraPosition;Z)V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->resetAllLayerAnimations()V

    return-void
.end method

.method private updateCompassHeading(F)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewCompassBearing(FLorg/maplibre/android/camera/CameraPosition;)V

    return-void
.end method

.method private updateCompassListenerState(Z)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->removeCompassListener(Lorg/maplibre/android/location/CompassEngine;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationCameraController;->isConsumingCompass()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationLayerController;->isConsumingCompass()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->removeCompassListener(Lorg/maplibre/android/location/CompassEngine;)V

    return-void

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/maplibre/android/location/LocationComponent;->isListeningToCompass:Z

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->compassListener:Lorg/maplibre/android/location/CompassListener;

    invoke-interface {p1, p0}, Lorg/maplibre/android/location/CompassEngine;->addCompassListener(Lorg/maplibre/android/location/CompassListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateLayerOffsets(Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->useSpecializedLocationLayer:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    iget-wide v5, v1, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {p1, v3, v4}, Lorg/maplibre/android/location/LocationLayerController;->cameraBearingUpdated(D)V

    :cond_2
    iget-wide v3, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    iget-wide v5, p1, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {p1, v3, v4}, Lorg/maplibre/android/location/LocationLayerController;->cameraTiltUpdated(D)V

    :cond_3
    iget-wide v3, v0, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    iget-wide v5, p1, Lorg/maplibre/android/camera/CameraPosition;->zoom:D

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    :cond_4
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    return-void

    :cond_5
    :goto_0
    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastCameraPosition:Lorg/maplibre/android/camera/CameraPosition;

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    iget-wide v3, v0, Lorg/maplibre/android/camera/CameraPosition;->bearing:D

    invoke-virtual {p1, v3, v4}, Lorg/maplibre/android/location/LocationLayerController;->cameraBearingUpdated(D)V

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    iget-wide v0, v0, Lorg/maplibre/android/camera/CameraPosition;->tilt:D

    invoke-virtual {p1, v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->cameraTiltUpdated(D)V

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getLastKnownLocation()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    return-void
.end method

.method private updateLocation(Landroid/location/Location;Ljava/util/List;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;ZZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-void

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lorg/maplibre/android/location/LocationComponent;->lastUpdateTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lorg/maplibre/android/location/LocationComponent;->fastestInterval:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    :goto_0
    return-void

    .line 6
    :cond_2
    iput-wide v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastUpdateTime:J

    .line 7
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->showLocationLayerIfHidden()V

    if-nez p3, :cond_3

    .line 8
    iget-object p3, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-virtual {p3}, Lorg/maplibre/android/location/StaleStateManager;->updateLatestLocationTime()V

    .line 9
    :cond_3
    iget-object p3, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p3}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object p3

    .line 10
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz p2, :cond_5

    .line 11
    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/LocationComponent;->getTargetLocationWithIntermediates(Landroid/location/Location;Ljava/util/List;)[Landroid/location/Location;

    move-result-object p2

    .line 13
    invoke-virtual {v1, p2, p3, v0, p4}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewLocation([Landroid/location/Location;Lorg/maplibre/android/camera/CameraPosition;ZZ)V

    goto :goto_2

    .line 14
    :cond_5
    iget-object p2, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p2, p1, p3, v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewLocation(Landroid/location/Location;Lorg/maplibre/android/camera/CameraPosition;Z)V

    .line 15
    :goto_2
    invoke-direct {p0, p1, v2}, Lorg/maplibre/android/location/LocationComponent;->updateAccuracyRadius(Landroid/location/Location;Z)V

    .line 16
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method private updateLocation(Landroid/location/Location;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Ljava/util/List;ZZ)V

    return-void
.end method

.method private updateMapWithOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 4

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->padding()[I

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/maplibre/android/maps/MapLibreMap;->setPadding(IIII)V

    :cond_0
    return-void
.end method


# virtual methods
.method public activateLocationComponent(Lorg/maplibre/android/location/LocationComponentActivationOptions;)V
    .locals 4

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationComponentOptions()Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->styleRes()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lorg/maplibre/android/R$style;->maplibre_LocationComponent:I

    :cond_0
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/maplibre/android/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->style()Lorg/maplibre/android/maps/Style;

    move-result-object v2

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useSpecializedLocationLayer()Z

    move-result v3

    invoke-direct {p0, v1, v2, v3, v0}, Lorg/maplibre/android/location/LocationComponent;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/Style;ZLorg/maplibre/android/location/LocationComponentOptions;)V

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngineRequest()Lorg/maplibre/android/location/engine/LocationEngineRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->setLocationEngineRequest(Lorg/maplibre/android/location/engine/LocationEngineRequest;)V

    :cond_2
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->locationEngine()Lorg/maplibre/android/location/engine/LocationEngine;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->setLocationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->useDefaultLocationEngine()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/maplibre/android/location/engine/LocationEngineDefault;->INSTANCE:Lorg/maplibre/android/location/engine/LocationEngineDefault;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentActivationOptions;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/engine/LocationEngineDefault;->getDefaultLocationEngine(Landroid/content/Context;)Lorg/maplibre/android/location/engine/LocationEngine;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->setLocationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->setLocationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)V

    return-void
.end method

.method public addOnCameraTrackingChangedListener(Lorg/maplibre/android/location/OnCameraTrackingChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLocationClickListener(Lorg/maplibre/android/location/OnLocationClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLocationLongClickListener(Lorg/maplibre/android/location/OnLocationLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnLocationStaleListener(Lorg/maplibre/android/location/OnLocationStaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnRenderModeChangedListener(Lorg/maplibre/android/location/OnRenderModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyStyle(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 2
    invoke-static {p1, p2}, Lorg/maplibre/android/location/LocationComponentOptions;->createFromAttributes(Landroid/content/Context;I)Lorg/maplibre/android/location/LocationComponentOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    return-void
.end method

.method public applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 4
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    .line 5
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationLayerController;->applyStyle(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 7
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    .line 8
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->enableStaleState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/StaleStateManager;->setEnabled(Z)V

    .line 9
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->staleStateManager:Lorg/maplibre/android/location/StaleStateManager;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->staleStateTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/location/StaleStateManager;->setDelayTime(J)V

    .line 10
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->trackingAnimationDurationMultiplier()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->setTrackingAnimationDurationMultiplier(F)V

    .line 11
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->compassAnimationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->setCompassAnimationEnabled(Z)V

    .line 12
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->accuracyAnimationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->setAccuracyAnimationEnabled(Z)V

    .line 13
    invoke-virtual {p1}, Lorg/maplibre/android/location/LocationComponentOptions;->pulseEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->startPulsingLocationCircle()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->stopPulsingLocationCircle()V

    .line 16
    :goto_0
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateMapWithOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    :cond_1
    return-void
.end method

.method public cancelPaddingWhileTrackingAnimation()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelPaddingAnimation()V

    return-void
.end method

.method public cancelTiltWhileTrackingAnimation()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelTiltAnimation()V

    return-void
.end method

.method public cancelZoomWhileTrackingAnimation()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelZoomAnimation()V

    return-void
.end method

.method public forceLocationUpdate(Landroid/location/Location;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method public forceLocationUpdate(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-direct {p0, v1, p1, v0, p2}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Ljava/util/List;ZZ)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lorg/maplibre/android/location/LocationComponent;->updateLocation(Landroid/location/Location;Z)V

    return-void
.end method

.method public getCameraMode()I
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationCameraController;->getCameraMode()I

    move-result p0

    return p0
.end method

.method public getCompassEngine()Lorg/maplibre/android/location/CompassEngine;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    return-object p0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getLocationComponentOptions()Lorg/maplibre/android/location/LocationComponentOptions;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    return-object p0
.end method

.method public getLocationEngine()Lorg/maplibre/android/location/engine/LocationEngine;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    return-object p0
.end method

.method public getLocationEngineRequest()Lorg/maplibre/android/location/engine/LocationEngineRequest;
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    return-object p0
.end method

.method public getRenderMode()I
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationLayerController;->getRenderMode()I

    move-result p0

    return p0
.end method

.method public isLocationComponentActivated()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    return p0
.end method

.method public isLocationComponentEnabled()Z
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-boolean p0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    return p0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onFinishLoadingStyle()V
    .locals 3

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->style:Lorg/maplibre/android/maps/Style;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v1, v0, v2}, Lorg/maplibre/android/location/LocationLayerController;->initializeComponents(Lorg/maplibre/android/maps/Style;Lorg/maplibre/android/location/LocationComponentOptions;)V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->options:Lorg/maplibre/android/location/LocationComponentOptions;

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationCameraController;->initializeOptions(Lorg/maplibre/android/location/LocationComponentOptions;)V

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStart()V

    return-void
.end method

.method public onStartLoadingMap()V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStop()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->onLocationLayerStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isComponentStarted:Z

    return-void
.end method

.method public paddingWhileTracking([D)V
    .locals 3

    const-wide/16 v0, 0x2ee

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/maplibre/android/location/LocationComponent;->paddingWhileTracking([DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public paddingWhileTracking([DJ)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/maplibre/android/location/LocationComponent;->paddingWhileTracking([DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public paddingWhileTracking([DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 6

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 4
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p4, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 7
    const-string p1, "LocationComponent#paddingWhileTracking method can only be used when a camera mode other than CameraMode#NONE is engaged."

    invoke-direct {p0, p4, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    const-string p1, "LocationComponent#paddingWhileTracking method call is ignored because the camera mode is transitioning"

    invoke-direct {p0, p4, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v2

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewPadding([DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public removeOnCameraTrackingChangedListener(Lorg/maplibre/android/location/OnCameraTrackingChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onCameraTrackingChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnLocationClickListener(Lorg/maplibre/android/location/OnLocationClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnLocationLongClickListener(Lorg/maplibre/android/location/OnLocationLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationLongClickListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnLocationStaleListener(Lorg/maplibre/android/location/OnLocationStaleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onLocationStaleListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRenderModeChangedListener(Lorg/maplibre/android/location/OnRenderModeChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->onRenderModeChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCameraMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(ILorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public setCameraMode(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 9

    .line 3
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 4
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    iget-object v2, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    new-instance v8, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;

    const/4 v1, 0x0

    move-object/from16 v3, p7

    invoke-direct {v8, p0, v3, v1}, Lorg/maplibre/android/location/LocationComponent$CameraTransitionListener;-><init>(Lorg/maplibre/android/location/LocationComponent;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;I)V

    move v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lorg/maplibre/android/location/LocationCameraController;->setCameraMode(ILandroid/location/Location;JLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public setCameraMode(ILorg/maplibre/android/location/OnLocationCameraTransitionListener;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x2ee

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v7, p2

    .line 2
    invoke-virtual/range {v0 .. v7}, Lorg/maplibre/android/location/LocationComponent;->setCameraMode(IJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lorg/maplibre/android/location/OnLocationCameraTransitionListener;)V

    return-void
.end method

.method public setCompassEngine(Lorg/maplibre/android/location/CompassEngine;)V
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    :cond_0
    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->compassEngine:Lorg/maplibre/android/location/CompassEngine;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public setLocationComponentEnabled(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->enableLocationComponent()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->disableLocationComponent()V

    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationCameraController;->setEnabled(Z)V

    return-void
.end method

.method public setLocationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    invoke-interface {v0, v1}, Lorg/maplibre/android/location/engine/LocationEngine;->removeLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    invoke-virtual {v0}, Lorg/maplibre/android/location/engine/LocationEngineRequest;->getFastestInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/maplibre/android/location/LocationComponent;->fastestInterval:J

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->setLastLocation()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->currentLocationEngineListener:Lorg/maplibre/android/location/engine/LocationEngineCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-interface {p1, v0, p0, v1}, Lorg/maplibre/android/location/engine/LocationEngine;->requestLocationUpdates(Lorg/maplibre/android/location/engine/LocationEngineRequest;Lorg/maplibre/android/location/engine/LocationEngineCallback;Landroid/os/Looper;)V

    :cond_1
    return-void

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/maplibre/android/location/LocationComponent;->fastestInterval:J

    return-void
.end method

.method public setLocationEngineRequest(Lorg/maplibre/android/location/engine/LocationEngineRequest;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iput-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngineRequest:Lorg/maplibre/android/location/engine/LocationEngineRequest;

    iget-object p1, p0, Lorg/maplibre/android/location/LocationComponent;->locationEngine:Lorg/maplibre/android/location/engine/LocationEngine;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->setLocationEngine(Lorg/maplibre/android/location/engine/LocationEngine;)V

    return-void
.end method

.method public setMaxAnimationFps(I)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->setMaxAnimationFps(I)V

    return-void
.end method

.method public setRenderMode(I)V
    .locals 2

    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->cancelAndRemoveGpsBearingAnimation()V

    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    iget-object v1, p0, Lorg/maplibre/android/location/LocationComponent;->lastLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/location/LocationLayerController;->setGpsBearing(F)V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationLayerController:Lorg/maplibre/android/location/LocationLayerController;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/location/LocationLayerController;->setRenderMode(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateLayerOffsets(Z)V

    invoke-direct {p0, p1}, Lorg/maplibre/android/location/LocationComponent;->updateCompassListenerState(Z)V

    return-void
.end method

.method public tiltWhileTracking(D)V
    .locals 6

    .line 11
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const-wide/16 v3, 0x4e2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/location/LocationComponent;->tiltWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public tiltWhileTracking(DJ)V
    .locals 6

    .line 9
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/location/LocationComponent;->tiltWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public tiltWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 2
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 5
    const-string p1, "LocationComponent#tiltWhileTracking method can only be used when a camera mode other than CameraMode#NONE is engaged."

    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-string p1, "LocationComponent#tiltWhileTracking method call is ignored because the camera mode is transitioning"

    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewTilt(DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public zoomWhileTracking(D)V
    .locals 6

    .line 13
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const-wide/16 v3, 0x2ee

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    .line 14
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/location/LocationComponent;->zoomWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public zoomWhileTracking(DJ)V
    .locals 6

    .line 11
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lorg/maplibre/android/location/LocationComponent;->zoomWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method

.method public zoomWhileTracking(DJLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/maplibre/android/location/LocationComponent;->checkActivationState()V

    .line 2
    iget-boolean v0, p0, Lorg/maplibre/android/location/LocationComponent;->isLayerReady:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/maplibre/android/location/LocationComponent;->getCameraMode()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 5
    const-string p1, "LocationComponent#zoomWhileTracking method can only be used when a camera mode other than CameraMode#NONE is engaged."

    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationCameraController:Lorg/maplibre/android/location/LocationCameraController;

    invoke-virtual {v0}, Lorg/maplibre/android/location/LocationCameraController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    const-string p1, "LocationComponent#zoomWhileTracking method call is ignored because the camera mode is transitioning"

    invoke-direct {p0, p5, p1}, Lorg/maplibre/android/location/LocationComponent;->notifyUnsuccessfulCameraOperation(Lorg/maplibre/android/maps/MapLibreMap$CancelableCallback;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lorg/maplibre/android/location/LocationComponent;->locationAnimatorCoordinator:Lorg/maplibre/android/location/LocationAnimatorCoordinator;

    iget-object p0, p0, Lorg/maplibre/android/location/LocationComponent;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    .line 9
    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapLibreMap;->getCameraPosition()Lorg/maplibre/android/camera/CameraPosition;

    move-result-object v3

    move-wide v1, p1

    move-wide v4, p3

    move-object v6, p5

    .line 10
    invoke-virtual/range {v0 .. v6}, Lorg/maplibre/android/location/LocationAnimatorCoordinator;->feedNewZoomLevel(DLorg/maplibre/android/camera/CameraPosition;JLorg/maplibre/android/maps/MapLibreMap$CancelableCallback;)V

    return-void
.end method
