.class public Lorg/maplibre/android/maps/MapView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/NativeMapView$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/maps/MapView$MapCallback;,
        Lorg/maplibre/android/maps/MapView$InitialRenderCallback;,
        Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;,
        Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;,
        Lorg/maplibre/android/maps/MapView$AttributionClickListener;,
        Lorg/maplibre/android/maps/MapView$OnCameraWillChangeListener;,
        Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;,
        Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;,
        Lorg/maplibre/android/maps/MapView$OnWillStartLoadingMapListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;,
        Lorg/maplibre/android/maps/MapView$OnWillStartRenderingFrameListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;,
        Lorg/maplibre/android/maps/MapView$OnWillStartRenderingMapListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingMapListener;,
        Lorg/maplibre/android/maps/MapView$OnDidBecomeIdleListener;,
        Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;,
        Lorg/maplibre/android/maps/MapView$OnSourceChangedListener;,
        Lorg/maplibre/android/maps/MapView$OnStyleImageMissingListener;,
        Lorg/maplibre/android/maps/MapView$OnCanRemoveUnusedStyleImageListener;,
        Lorg/maplibre/android/maps/MapView$OnPreCompileShaderListener;,
        Lorg/maplibre/android/maps/MapView$OnPostCompileShaderListener;,
        Lorg/maplibre/android/maps/MapView$OnShaderCompileFailedListener;,
        Lorg/maplibre/android/maps/MapView$OnGlyphsLoadedListener;,
        Lorg/maplibre/android/maps/MapView$OnGlyphsErrorListener;,
        Lorg/maplibre/android/maps/MapView$OnGlyphsRequestedListener;,
        Lorg/maplibre/android/maps/MapView$OnTileActionListener;,
        Lorg/maplibre/android/maps/MapView$OnSpriteLoadedListener;,
        Lorg/maplibre/android/maps/MapView$OnSpriteErrorListener;,
        Lorg/maplibre/android/maps/MapView$OnSpriteRequestedListener;,
        Lorg/maplibre/android/maps/MapView$OnRenderErrorListener;,
        Lorg/maplibre/android/maps/MapView$OnSymbolErrorListener;
    }
.end annotation


# instance fields
.field private attributionClickListener:Lorg/maplibre/android/maps/MapView$AttributionClickListener;

.field private final cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

.field private compassView:Lorg/maplibre/android/maps/widgets/CompassView;

.field private destroyed:Z

.field private final focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

.field private focalPoint:Landroid/graphics/PointF;

.field private final initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

.field private isStarted:Z

.field private final mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

.field private final mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

.field private mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

.field private mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

.field private mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

.field private maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

.field maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

.field private nativeMapView:Lorg/maplibre/android/maps/NativeMap;

.field private final registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

.field private renderView:Landroid/view/View;

.field private savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 3
    new-instance v0, Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 4
    new-instance v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 5
    new-instance v0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 6
    new-instance v0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    .line 7
    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    .line 9
    sget-object v1, Lrc/b;->a:Lrc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lrc/a;->a([Ljava/lang/Object;)V

    .line 10
    invoke-static {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 13
    new-instance v0, Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 14
    new-instance v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 15
    new-instance v0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 16
    new-instance v0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    .line 17
    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 18
    new-array v0, v1, [Ljava/lang/Object;

    .line 19
    sget-object v1, Lrc/b;->a:Lrc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lrc/a;->a([Ljava/lang/Object;)V

    .line 20
    invoke-static {p1, p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p3, Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-direct {p3}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 23
    new-instance p3, Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-direct {p3, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 24
    new-instance p3, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-direct {p3, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 25
    new-instance p3, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 26
    new-instance p3, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    invoke-direct {p3, p0, v0}, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    .line 27
    new-instance p3, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {p3}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    iput-object p3, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 28
    new-array p3, v0, [Ljava/lang/Object;

    .line 29
    sget-object v0, Lrc/b;->a:Lrc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lrc/a;->a([Ljava/lang/Object;)V

    .line 30
    invoke-static {p1, p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-direct {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    .line 33
    new-instance v0, Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$MapCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    .line 34
    new-instance v0, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;-><init>(Lorg/maplibre/android/maps/MapView;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    .line 35
    new-instance v0, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    .line 36
    new-instance v0, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    invoke-direct {v0, p0, v1}, Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;-><init>(Lorg/maplibre/android/maps/MapView;I)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    .line 37
    new-instance v0, Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {v0}, Lorg/maplibre/android/maps/CameraChangeDispatcher;-><init>()V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    .line 38
    new-array v0, v1, [Ljava/lang/Object;

    .line 39
    sget-object v1, Lrc/b;->a:Lrc/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lrc/a;->a([Ljava/lang/Object;)V

    if-nez p2, :cond_0

    .line 40
    invoke-static {p1}, Lorg/maplibre/android/maps/MapLibreMapOptions;->createFromAttributes(Landroid/content/Context;)Lorg/maplibre/android/maps/MapLibreMapOptions;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/maplibre/android/maps/MapView;->initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void
.end method

.method public static synthetic a(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->onSurfaceCreated()V

    return-void
.end method

.method public static bridge synthetic b(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/widgets/CompassView;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/maplibre/android/maps/MapView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    return p0
.end method

.method private createCompassAnimationListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/MapView$2;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/maps/MapView$2;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    return-object v0
.end method

.method private createCompassClickListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/MapView$3;

    invoke-direct {v0, p0, p1}, Lorg/maplibre/android/maps/MapView$3;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    return-object v0
.end method

.method private createFocalPointChangeListener()Lorg/maplibre/android/maps/FocalPointChangeListener;
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/MapView$1;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$1;-><init>(Lorg/maplibre/android/maps/MapView;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/maplibre/android/maps/MapView;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapGestureDetector;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/maplibre/android/maps/MapView;)Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public static bridge synthetic g(Lorg/maplibre/android/maps/MapView;Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView;->focalPoint:Landroid/graphics/PointF;

    return-void
.end method

.method public static bridge synthetic h(Lorg/maplibre/android/maps/MapView;)V
    .locals 0

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->initializeMap()V

    return-void
.end method

.method private initializeDrawingSurface(Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/f0;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/f0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0, v1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->create(Lorg/maplibre/android/maps/MapLibreMapOptions;Landroid/content/Context;Ljava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/MapRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->renderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->getPixelRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->pixelRatio(F)Lorg/maplibre/android/maps/MapLibreMapOptions;

    new-instance v1, Lorg/maplibre/android/maps/NativeMapView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    iget-object v6, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    move-object v4, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lorg/maplibre/android/maps/NativeMapView;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;Lorg/maplibre/android/maps/NativeMapView$ViewCallback;Lorg/maplibre/android/maps/NativeMapView$StateCallback;Lorg/maplibre/android/maps/renderer/MapRenderer;)V

    iput-object v1, v4, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    return-void
.end method

.method private initializeMap()V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->createFocalPointChangeListener()Lorg/maplibre/android/maps/FocalPointChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;->addListener(Lorg/maplibre/android/maps/FocalPointChangeListener;)V

    new-instance v3, Lorg/maplibre/android/maps/Projection;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v3, v0, p0}, Lorg/maplibre/android/maps/Projection;-><init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/MapView;)V

    new-instance v4, Lorg/maplibre/android/maps/UiSettings;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->focalInvalidator:Lorg/maplibre/android/maps/MapView$FocalPointInvalidator;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView;->getPixelRatio()F

    move-result v2

    invoke-direct {v4, v3, v0, v2, p0}, Lorg/maplibre/android/maps/UiSettings;-><init>(Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/FocalPointChangeListener;FLorg/maplibre/android/maps/MapView;)V

    new-instance v7, Lk/q;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lk/q;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lorg/maplibre/android/maps/IconManager;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v8, v0}, Lorg/maplibre/android/maps/IconManager;-><init>(Lorg/maplibre/android/maps/NativeMap;)V

    new-instance v9, Lorg/maplibre/android/maps/AnnotationContainer;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v9, v0, v7}, Lorg/maplibre/android/maps/AnnotationContainer;-><init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;)V

    new-instance v10, Lorg/maplibre/android/maps/MarkerContainer;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v10, v0, v7, v8}, Lorg/maplibre/android/maps/MarkerContainer;-><init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;Lorg/maplibre/android/maps/IconManager;)V

    new-instance v11, Lorg/maplibre/android/maps/PolygonContainer;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v11, v0, v7}, Lorg/maplibre/android/maps/PolygonContainer;-><init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;)V

    new-instance v12, Lorg/maplibre/android/maps/PolylineContainer;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v12, v0, v7}, Lorg/maplibre/android/maps/PolylineContainer;-><init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;)V

    new-instance v13, Lorg/maplibre/android/maps/ShapeAnnotationContainer;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-direct {v13, v0, v7}, Lorg/maplibre/android/maps/ShapeAnnotationContainer;-><init>(Lorg/maplibre/android/maps/NativeMap;Lk/q;)V

    new-instance v5, Lorg/maplibre/android/maps/AnnotationManager;

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Lorg/maplibre/android/maps/AnnotationManager;-><init>(Lorg/maplibre/android/maps/MapView;Lk/q;Lorg/maplibre/android/maps/IconManager;Lorg/maplibre/android/maps/Annotations;Lorg/maplibre/android/maps/Markers;Lorg/maplibre/android/maps/Polygons;Lorg/maplibre/android/maps/Polylines;Lorg/maplibre/android/maps/ShapeAnnotations;)V

    move-object v0, v5

    new-instance v2, Lorg/maplibre/android/maps/Transform;

    iget-object v5, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    iget-object v6, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {v2, p0, v5, v6}, Lorg/maplibre/android/maps/Transform;-><init>(Lorg/maplibre/android/maps/MapView;Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    new-instance v3, Lorg/maplibre/android/maps/MapLibreMap;

    move-object v6, v4

    iget-object v4, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    iget-object v8, p0, Lorg/maplibre/android/maps/MapView;->registerTouchListener:Lorg/maplibre/android/maps/MapView$GesturesManagerInteractionListener;

    iget-object v9, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-object v5, v2

    invoke-direct/range {v3 .. v10}, Lorg/maplibre/android/maps/MapLibreMap;-><init>(Lorg/maplibre/android/maps/NativeMap;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/MapLibreMap$OnGesturesManagerInteractionListener;Lorg/maplibre/android/maps/CameraChangeDispatcher;Ljava/util/List;)V

    iput-object v3, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v3, v0}, Lorg/maplibre/android/maps/MapLibreMap;->injectAnnotationManager(Lorg/maplibre/android/maps/AnnotationManager;)V

    move-object v5, v0

    new-instance v0, Lorg/maplibre/android/maps/MapGestureDetector;

    move-object v4, v6

    iget-object v6, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    move-object v3, v7

    invoke-direct/range {v0 .. v6}, Lorg/maplibre/android/maps/MapGestureDetector;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/Projection;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/AnnotationManager;Lorg/maplibre/android/maps/CameraChangeDispatcher;)V

    move-object v6, v4

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    new-instance v3, Lorg/maplibre/android/maps/MapKeyListener;

    invoke-direct {v3, v2, v6, v0}, Lorg/maplibre/android/maps/MapKeyListener;-><init>(Lorg/maplibre/android/maps/Transform;Lorg/maplibre/android/maps/UiSettings;Lorg/maplibre/android/maps/MapGestureDetector;)V

    iput-object v3, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    new-instance v3, Lorg/maplibre/android/location/LocationComponent;

    invoke-direct {v3, v0, v2, v10}, Lorg/maplibre/android/location/LocationComponent;-><init>(Lorg/maplibre/android/maps/MapLibreMap;Lorg/maplibre/android/maps/Transform;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lorg/maplibre/android/maps/MapLibreMap;->injectLocationComponent(Lorg/maplibre/android/location/LocationComponent;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    invoke-static {}, Lorg/maplibre/android/MapLibre;->isConnected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v2}, Lorg/maplibre/android/maps/NativeMap;->setReachability(Z)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    iget-object v2, p0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-virtual {v0, v1, v2}, Lorg/maplibre/android/maps/MapLibreMap;->initialise(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v1, v0}, Lorg/maplibre/android/maps/MapLibreMap;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :goto_0
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-virtual {p0}, Lorg/maplibre/android/maps/MapView$MapCallback;->initialised()V

    return-void
.end method

.method private isGestureDetectorInitialized()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isKeyDetectorInitialized()Z
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onSurfaceCreated()V
    .locals 1

    new-instance v0, Lorg/maplibre/android/maps/MapView$4;

    invoke-direct {v0, p0}, Lorg/maplibre/android/maps/MapView$4;-><init>(Lorg/maplibre/android/maps/MapView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setMapStrictModeEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/MapStrictMode;->setStrictModeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    return-void
.end method

.method public addOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V

    return-void
.end method

.method public addOnCameraWillChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraWillChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnCameraWillChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraWillChangeListener;)V

    return-void
.end method

.method public addOnCanRemoveUnusedStyleImageListener(Lorg/maplibre/android/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnCanRemoveUnusedStyleImageListener(Lorg/maplibre/android/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V

    return-void
.end method

.method public addOnDidBecomeIdleListener(Lorg/maplibre/android/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidBecomeIdleListener(Lorg/maplibre/android/maps/MapView$OnDidBecomeIdleListener;)V

    return-void
.end method

.method public addOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public addOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V

    return-void
.end method

.method public addOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V

    return-void
.end method

.method public addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameListener;)V

    return-void
.end method

.method public addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    return-void
.end method

.method public addOnDidFinishRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnDidFinishRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingMapListener;)V

    return-void
.end method

.method public addOnGlyphsErrorListener(Lorg/maplibre/android/maps/MapView$OnGlyphsErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnGlyphsErrorListener(Lorg/maplibre/android/maps/MapView$OnGlyphsErrorListener;)V

    return-void
.end method

.method public addOnGlyphsLoadedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsLoadedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnGlyphsLoadedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsLoadedListener;)V

    return-void
.end method

.method public addOnGlyphsRequestedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsRequestedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnGlyphsRequestedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsRequestedListener;)V

    return-void
.end method

.method public addOnPostCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPostCompileShaderListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnPostCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPostCompileShaderListener;)V

    return-void
.end method

.method public addOnPreCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPreCompileShaderListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnPreCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPreCompileShaderListener;)V

    return-void
.end method

.method public addOnRenderErrorListener(Lorg/maplibre/android/maps/MapView$OnRenderErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnRenderErrorListener(Lorg/maplibre/android/maps/MapView$OnRenderErrorListener;)V

    return-void
.end method

.method public addOnShaderCompileFailedListener(Lorg/maplibre/android/maps/MapView$OnShaderCompileFailedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnShaderCompileFailedListener(Lorg/maplibre/android/maps/MapView$OnShaderCompileFailedListener;)V

    return-void
.end method

.method public addOnSourceChangedListener(Lorg/maplibre/android/maps/MapView$OnSourceChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnSourceChangedListener(Lorg/maplibre/android/maps/MapView$OnSourceChangedListener;)V

    return-void
.end method

.method public addOnSpriteErrorListener(Lorg/maplibre/android/maps/MapView$OnSpriteErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnSpriteErrorListener(Lorg/maplibre/android/maps/MapView$OnSpriteErrorListener;)V

    return-void
.end method

.method public addOnSpriteLoadedListener(Lorg/maplibre/android/maps/MapView$OnSpriteLoadedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnSpriteLoadedListener(Lorg/maplibre/android/maps/MapView$OnSpriteLoadedListener;)V

    return-void
.end method

.method public addOnSpriteRequestedListener(Lorg/maplibre/android/maps/MapView$OnSpriteRequestedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnSpriteRequestedListener(Lorg/maplibre/android/maps/MapView$OnSpriteRequestedListener;)V

    return-void
.end method

.method public addOnStyleImageMissingListener(Lorg/maplibre/android/maps/MapView$OnStyleImageMissingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnStyleImageMissingListener(Lorg/maplibre/android/maps/MapView$OnStyleImageMissingListener;)V

    return-void
.end method

.method public addOnSymbolErrorListener(Lorg/maplibre/android/maps/MapView$OnSymbolErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnSymbolErrorListener(Lorg/maplibre/android/maps/MapView$OnSymbolErrorListener;)V

    return-void
.end method

.method public addOnTileActionListener(Lorg/maplibre/android/maps/MapView$OnTileActionListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnTileActionListener(Lorg/maplibre/android/maps/MapView$OnTileActionListener;)V

    return-void
.end method

.method public addOnWillStartLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnWillStartLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartLoadingMapListener;)V

    return-void
.end method

.method public addOnWillStartRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnWillStartRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingFrameListener;)V

    return-void
.end method

.method public addOnWillStartRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->addOnWillStartRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingMapListener;)V

    return-void
.end method

.method public getMapAsync(Lorg/maplibre/android/maps/OnMapReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapView$MapCallback;->addOnMapReadyCallback(Lorg/maplibre/android/maps/OnMapReadyCallback;)V

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lorg/maplibre/android/maps/OnMapReadyCallback;->onMapReady(Lorg/maplibre/android/maps/MapLibreMap;)V

    return-void
.end method

.method public getMapLibreMap()Lorg/maplibre/android/maps/MapLibreMap;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-object p0
.end method

.method public getPixelRatio()F
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getPixelRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0

    :cond_0
    return v0
.end method

.method public getRenderView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->renderView:Landroid/view/View;

    return-object p0
.end method

.method public getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;
    .locals 1

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->getRenderingRefreshMode()Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling MapView#getRenderingRefreshMode before mapRenderer is created."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewContent()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lorg/maplibre/android/utils/BitmapUtils;->createBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public initialiseAttributionView()Landroid/widget/ImageView;
    .locals 5

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "attrView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/maplibre/android/R$string;->maplibre_attributionsIconContentDescription:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/maplibre/android/R$drawable;->maplibre_info_bg_selector:I

    invoke-static {v1, v2}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lorg/maplibre/android/maps/MapView$AttributionClickListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/maplibre/android/maps/MapView$AttributionClickListener;-><init>(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMap;I)V

    iput-object v1, p0, Lorg/maplibre/android/maps/MapView;->attributionClickListener:Lorg/maplibre/android/maps/MapView$AttributionClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public initialiseCompassView()Lorg/maplibre/android/maps/widgets/CompassView;
    .locals 3

    new-instance v0, Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    const-string v1, "compassView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/maplibre/android/R$string;->maplibre_compassContentDescription:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    iget-object v1, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {p0, v1}, Lorg/maplibre/android/maps/MapView;->createCompassAnimationListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/maplibre/android/maps/widgets/CompassView;->injectCompassAnimationListener(Lorg/maplibre/android/maps/MapLibreMap$OnCompassAnimationListener;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    iget-object v1, p0, Lorg/maplibre/android/maps/MapView;->cameraDispatcher:Lorg/maplibre/android/maps/CameraChangeDispatcher;

    invoke-direct {p0, v1}, Lorg/maplibre/android/maps/MapView;->createCompassClickListener(Lorg/maplibre/android/maps/CameraChangeDispatcher;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    return-object p0
.end method

.method public initialiseLogoView()Landroid/widget/ImageView;
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string v1, "logoView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lorg/maplibre/android/R$drawable;->maplibre_logo_icon:I

    invoke-static {p0, v1}, Lorg/maplibre/android/utils/BitmapUtils;->getDrawableFromRes(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lorg/maplibre/android/maps/MapLibreMapOptions;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/maplibre/android/MapLibre;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Lorg/maplibre/android/maps/MapLibreMapOptions;->getForegroundLoadColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lorg/maplibre/android/maps/MapView;->maplibreMapOptions:Lorg/maplibre/android/maps/MapLibreMapOptions;

    sget v0, Lorg/maplibre/android/R$string;->maplibre_mapActionDescription:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-direct {p0, p2}, Lorg/maplibre/android/maps/MapView;->initializeDrawingSurface(Lorg/maplibre/android/maps/MapLibreMapOptions;)V

    return-void

    :cond_1
    new-instance p0, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;

    invoke-direct {p0}, Lorg/maplibre/android/exceptions/MapLibreConfigurationException;-><init>()V

    throw p0
.end method

.method public isDestroyed()Z
    .locals 0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "maplibre_savedState"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView;->savedInstanceState:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapChangeReceiver;->clear()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapCallback:Lorg/maplibre/android/maps/MapView$MapCallback;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView$MapCallback;->onDestroy()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->initialRenderCallback:Lorg/maplibre/android/maps/MapView$InitialRenderCallback;

    invoke-static {v0}, Lorg/maplibre/android/maps/MapView$InitialRenderCallback;->a(Lorg/maplibre/android/maps/MapView$InitialRenderCallback;)V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->compassView:Lorg/maplibre/android/maps/widgets/CompassView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/widgets/CompassView;->resetAnimation()V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    :cond_2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onDestroy()V

    :cond_3
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isGestureDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isKeyDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/MapKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isKeyDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/MapKeyListener;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isKeyDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-virtual {v0, p1, p2}, Lorg/maplibre/android/maps/MapKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onLowMemory()V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lorg/maplibre/android/maps/MapView;->destroyed:Z

    if-nez p0, :cond_0

    invoke-interface {v0}, Lorg/maplibre/android/maps/NativeMap;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onResume()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_0

    const-string v0, "maplibre_savedState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapLibreMap;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->nativeMapView:Lorg/maplibre/android/maps/NativeMap;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/maplibre/android/maps/NativeMap;->resizeView(II)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->activate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->activate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->onStart()V

    :cond_1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onStart()V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->attributionClickListener:Lorg/maplibre/android/maps/MapView$AttributionClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapView$AttributionClickListener;->onStop()V

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapGestureDetector;->cancelAnimators()V

    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    invoke-virtual {v0}, Lorg/maplibre/android/maps/MapLibreMap;->onStop()V

    :cond_1
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/maplibre/android/maps/renderer/MapRenderer;->onStop()V

    :cond_2
    iget-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->instance(Landroid/content/Context;)Lorg/maplibre/android/net/ConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/net/ConnectivityReceiver;->deactivate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/maplibre/android/storage/FileSource;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/storage/FileSource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/maplibre/android/storage/FileSource;->deactivate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/maplibre/android/maps/MapView;->isStarted:Z

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isGestureDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapGestureDetector:Lorg/maplibre/android/maps/MapGestureDetector;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lorg/maplibre/android/maps/MapView;->isKeyDetectorInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lorg/maplibre/android/maps/MapView;->mapKeyListener:Lorg/maplibre/android/maps/MapKeyListener;

    invoke-virtual {v0, p1}, Lorg/maplibre/android/maps/MapKeyListener;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRendererScheduler;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling MapView#queueEvent before mapRenderer is created."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnCameraDidChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraDidChangeListener;)V

    return-void
.end method

.method public removeOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnCameraIsChangingListener(Lorg/maplibre/android/maps/MapView$OnCameraIsChangingListener;)V

    return-void
.end method

.method public removeOnCameraWillChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraWillChangeListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnCameraWillChangeListener(Lorg/maplibre/android/maps/MapView$OnCameraWillChangeListener;)V

    return-void
.end method

.method public removeOnCanRemoveUnusedStyleImageListener(Lorg/maplibre/android/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnCanRemoveUnusedStyleImageListener(Lorg/maplibre/android/maps/MapView$OnCanRemoveUnusedStyleImageListener;)V

    return-void
.end method

.method public removeOnDidBecomeIdleListener(Lorg/maplibre/android/maps/MapView$OnDidBecomeIdleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidBecomeIdleListener(Lorg/maplibre/android/maps/MapView$OnDidBecomeIdleListener;)V

    return-void
.end method

.method public removeOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFailLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFailLoadingMapListener;)V

    return-void
.end method

.method public removeOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFinishLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingMapListener;)V

    return-void
.end method

.method public removeOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFinishLoadingStyleListener(Lorg/maplibre/android/maps/MapView$OnDidFinishLoadingStyleListener;)V

    return-void
.end method

.method public removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameListener;)V

    return-void
.end method

.method public removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFinishRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingFrameWithStatsListener;)V

    return-void
.end method

.method public removeOnDidFinishRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnDidFinishRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnDidFinishRenderingMapListener;)V

    return-void
.end method

.method public removeOnGlyphsErrorListener(Lorg/maplibre/android/maps/MapView$OnGlyphsErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnGlyphsErrorListener(Lorg/maplibre/android/maps/MapView$OnGlyphsErrorListener;)V

    return-void
.end method

.method public removeOnGlyphsLoadedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsLoadedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnGlyphsLoadedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsLoadedListener;)V

    return-void
.end method

.method public removeOnGlyphsRequestedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsRequestedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnGlyphsRequestedListener(Lorg/maplibre/android/maps/MapView$OnGlyphsRequestedListener;)V

    return-void
.end method

.method public removeOnPostCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPostCompileShaderListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnPostCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPostCompileShaderListener;)V

    return-void
.end method

.method public removeOnPreCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPreCompileShaderListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnPreCompileShaderListener(Lorg/maplibre/android/maps/MapView$OnPreCompileShaderListener;)V

    return-void
.end method

.method public removeOnRenderErrorListener(Lorg/maplibre/android/maps/MapView$OnRenderErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnRenderErrorListener(Lorg/maplibre/android/maps/MapView$OnRenderErrorListener;)V

    return-void
.end method

.method public removeOnShaderCompileFailedListener(Lorg/maplibre/android/maps/MapView$OnShaderCompileFailedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnShaderCompileFailedListener(Lorg/maplibre/android/maps/MapView$OnShaderCompileFailedListener;)V

    return-void
.end method

.method public removeOnSourceChangedListener(Lorg/maplibre/android/maps/MapView$OnSourceChangedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnSourceChangedListener(Lorg/maplibre/android/maps/MapView$OnSourceChangedListener;)V

    return-void
.end method

.method public removeOnSpriteErrorListener(Lorg/maplibre/android/maps/MapView$OnSpriteErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnSpriteErrorListener(Lorg/maplibre/android/maps/MapView$OnSpriteErrorListener;)V

    return-void
.end method

.method public removeOnSpriteLoadedListener(Lorg/maplibre/android/maps/MapView$OnSpriteLoadedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnSpriteLoadedListener(Lorg/maplibre/android/maps/MapView$OnSpriteLoadedListener;)V

    return-void
.end method

.method public removeOnSpriteRequestedListener(Lorg/maplibre/android/maps/MapView$OnSpriteRequestedListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnSpriteRequestedListener(Lorg/maplibre/android/maps/MapView$OnSpriteRequestedListener;)V

    return-void
.end method

.method public removeOnStyleImageMissingListener(Lorg/maplibre/android/maps/MapView$OnStyleImageMissingListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnStyleImageMissingListener(Lorg/maplibre/android/maps/MapView$OnStyleImageMissingListener;)V

    return-void
.end method

.method public removeOnSymbolErrorListener(Lorg/maplibre/android/maps/MapView$OnSymbolErrorListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnSymbolErrorListener(Lorg/maplibre/android/maps/MapView$OnSymbolErrorListener;)V

    return-void
.end method

.method public removeOnTileActionListener(Lorg/maplibre/android/maps/MapView$OnTileActionListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnTileActionListener(Lorg/maplibre/android/maps/MapView$OnTileActionListener;)V

    return-void
.end method

.method public removeOnWillStartLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartLoadingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnWillStartLoadingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartLoadingMapListener;)V

    return-void
.end method

.method public removeOnWillStartRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingFrameListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnWillStartRenderingFrameListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingFrameListener;)V

    return-void
.end method

.method public removeOnWillStartRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingMapListener;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapChangeReceiver:Lorg/maplibre/android/maps/MapChangeReceiver;

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/MapChangeReceiver;->removeOnWillStartRenderingMapListener(Lorg/maplibre/android/maps/MapView$OnWillStartRenderingMapListener;)V

    return-void
.end method

.method public setMapLibreMap(Lorg/maplibre/android/maps/MapLibreMap;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/maps/MapView;->maplibreMap:Lorg/maplibre/android/maps/MapLibreMap;

    return-void
.end method

.method public setMaximumFps(I)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setMaximumFps(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling MapView#setMaximumFps before mapRenderer is created."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/maps/MapView;->mapRenderer:Lorg/maplibre/android/maps/renderer/MapRenderer;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/maplibre/android/maps/renderer/MapRenderer;->setRenderingRefreshMode(Lorg/maplibre/android/maps/renderer/MapRenderer$RenderingRefreshMode;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling MapView#setRenderingRefreshMode before mapRenderer is created."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
