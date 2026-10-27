.class public Lio/flutter/plugin/platform/PlatformViewsController;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsController"

.field private static VIEW_TYPES_REQUIRE_NON_TLHC:[Ljava/lang/Class;

.field private static enableImageRenderTarget:Z

.field private static enableSurfaceProducerRenderTarget:Z


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

.field final channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

.field private context:Landroid/content/Context;

.field final contextToEmbeddedView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFrameUsedOverlayLayerIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final currentFrameUsedPlatformViewIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private flutterView:Lio/flutter/embedding/android/FlutterView;

.field private flutterViewConvertedToImageView:Z

.field private final motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

.field private nextOverlayLayerId:I

.field private final overlayLayerViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/PlatformOverlayView;",
            ">;"
        }
    .end annotation
.end field

.field private final platformViewParent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;",
            ">;"
        }
    .end annotation
.end field

.field private final platformViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/PlatformView;",
            ">;"
        }
    .end annotation
.end field

.field private platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

.field private final registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

.field private synchronizeToNativeViewHierarchy:Z

.field private textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

.field textureRegistry:Lio/flutter/view/TextureRegistry;

.field private usesSoftwareRendering:Z

.field final vdControllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lio/flutter/plugin/platform/VirtualDisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private final viewWrappers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/PlatformViewWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Landroid/view/SurfaceView;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lio/flutter/plugin/platform/PlatformViewsController;->VIEW_TYPES_REQUIRE_NON_TLHC:[Ljava/lang/Class;

    .line 157
    const/4 v0, 0x1

    sput-boolean v0, Lio/flutter/plugin/platform/PlatformViewsController;->enableImageRenderTarget:Z

    .line 159
    sput-boolean v0, Lio/flutter/plugin/platform/PlatformViewsController;->enableSurfaceProducerRenderTarget:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->nextOverlayLayerId:I

    .line 138
    iput-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    .line 143
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->synchronizeToNativeViewHierarchy:Z

    .line 155
    iput-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->usesSoftwareRendering:Z

    .line 161
    new-instance v0, Lio/flutter/plugin/platform/PlatformViewsController$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/PlatformViewsController$1;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    .line 775
    new-instance v0, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    invoke-direct {v0}, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    .line 776
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    .line 777
    new-instance v0, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    invoke-direct {v0}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->contextToEmbeddedView:Ljava/util/HashMap;

    .line 779
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    .line 780
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedOverlayLayerIds:Ljava/util/HashSet;

    .line 781
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedPlatformViewIds:Ljava/util/HashSet;

    .line 782
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    .line 783
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    .line 784
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    .line 786
    invoke-static {}, Lio/flutter/embedding/android/MotionEventTracker;->getInstance()Lio/flutter/embedding/android/MotionEventTracker;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    .line 787
    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 54
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->ensureValidRequest(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->throwIfHCPPEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lio/flutter/plugin/platform/PlatformViewsController;D)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # D

    .line 54
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lio/flutter/plugin/platform/PlatformViewsController;)F
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->getDisplayDensity()F

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 54
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->lockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V

    return-void
.end method

.method static synthetic access$1300(Lio/flutter/plugin/platform/PlatformViewsController;D)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # D

    .line 54
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->toLogicalPixels(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 54
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->validateDirection(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lio/flutter/plugin/platform/PlatformViewsController;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->synchronizeToNativeViewHierarchy:Z

    return p1
.end method

.method static synthetic access$1700(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 54
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->unlockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V

    return-void
.end method

.method static synthetic access$1800(Lio/flutter/plugin/platform/PlatformViewsController;DF)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # D
    .param p3, "x2"    # F

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/PlatformViewsController;->toLogicalPixels(DF)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Lio/flutter/plugin/platform/PlatformView;
    .param p2, "x2"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 54
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->configureForHybridComposition(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/embedding/android/FlutterView;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .locals 1

    .line 54
    sget-object v0, Lio/flutter/plugin/platform/PlatformViewsController;->VIEW_TYPES_REQUIRE_NON_TLHC:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Lio/flutter/plugin/platform/PlatformViewsController;)Z
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->usesSoftwareRendering:Z

    return v0
.end method

.method static synthetic access$700(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 2
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p1, "x1"    # Lio/flutter/plugin/platform/PlatformView;
    .param p2, "x2"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 54
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->configureForVirtualDisplay(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/flutter/plugin/platform/PlatformViewsController;

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    return-object v0
.end method

.method private configureForHybridComposition(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 2
    .param p1, "platformView"    # Lio/flutter/plugin/platform/PlatformView;
    .param p2, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using hybrid composition for platform view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsController"

    invoke-static {v1, v0}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->throwIfHCPPEnabled()V

    .line 554
    return-void
.end method

.method private configureForVirtualDisplay(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 10
    .param p1, "platformView"    # Lio/flutter/plugin/platform/PlatformView;
    .param p2, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hosting view in a virtual display for platform view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsController"

    invoke-static {v1, v0}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->makePlatformViewRenderTarget(Lio/flutter/view/TextureRegistry;)Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    move-result-object v4

    .line 573
    .local v4, "renderTarget":Lio/flutter/plugin/platform/PlatformViewRenderTarget;
    iget-wide v0, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalWidth:D

    invoke-direct {p0, v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v5

    .line 574
    .local v5, "physicalWidth":I
    iget-wide v0, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalHeight:D

    invoke-direct {p0, v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v6

    .line 575
    .local v6, "physicalHeight":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    iget v7, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    new-instance v9, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, p2}, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 576
    const/4 v8, 0x0

    move-object v3, p1

    .end local p1    # "platformView":Lio/flutter/plugin/platform/PlatformView;
    .local v3, "platformView":Lio/flutter/plugin/platform/PlatformView;
    invoke-static/range {v1 .. v9}, Lio/flutter/plugin/platform/VirtualDisplayController;->create(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/VirtualDisplayController;

    move-result-object p1

    .line 591
    .local p1, "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    iget v1, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-interface {v3}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, "embeddedView":Landroid/view/View;
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->contextToEmbeddedView:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-interface {v4}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getId()J

    move-result-wide v1

    return-wide v1

    .line 592
    .end local v0    # "embeddedView":Landroid/view/View;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed creating virtual display for a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disposeAllViews()V
    .locals 2

    .line 1107
    nop

    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1108
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1110
    .local v0, "viewId":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v1, v0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->dispose(I)V

    .line 1111
    .end local v0    # "viewId":I
    goto :goto_0

    .line 1112
    :cond_0
    return-void
.end method

.method private ensureValidRequest(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 3
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 499
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->direction:I

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->validateDirection(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    return-void

    .line 500
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a view with unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->direction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private finishFrame(Z)V
    .locals 6
    .param p1, "isFrameRenderedUsingImageReaders"    # Z

    .line 1318
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v0, v1, :cond_2

    .line 1319
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1320
    .local v1, "overlayId":I
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/plugin/platform/PlatformOverlayView;

    .line 1322
    .local v3, "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedOverlayLayerIds:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1323
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v3}, Lio/flutter/embedding/android/FlutterView;->attachOverlaySurfaceToRender(Lio/flutter/embedding/android/FlutterImageView;)V

    .line 1324
    invoke-virtual {v3}, Lio/flutter/plugin/platform/PlatformOverlayView;->acquireLatestImage()Z

    move-result v2

    .line 1325
    .local v2, "didAcquireOverlaySurfaceImage":Z
    and-int/2addr p1, v2

    .line 1326
    .end local v2    # "didAcquireOverlaySurfaceImage":Z
    goto :goto_1

    .line 1330
    :cond_0
    iget-boolean v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    if-nez v4, :cond_1

    .line 1331
    invoke-virtual {v3}, Lio/flutter/plugin/platform/PlatformOverlayView;->detachFromRenderer()V

    .line 1334
    :cond_1
    invoke-virtual {v3, v2}, Lio/flutter/plugin/platform/PlatformOverlayView;->setVisibility(I)V

    .line 1335
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v3}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 1318
    .end local v1    # "overlayId":I
    .end local v3    # "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1339
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1340
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1341
    .local v1, "viewId":I
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1352
    .local v3, "parentView":Landroid/view/View;
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedPlatformViewIds:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p1, :cond_3

    iget-boolean v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->synchronizeToNativeViewHierarchy:Z

    if-nez v4, :cond_4

    .line 1354
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1356
    :cond_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    .end local v1    # "viewId":I
    .end local v3    # "parentView":Landroid/view/View;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1359
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method private getDisplayDensity()F
    .locals 1

    .line 1091
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private initializeRootImageViewIfNeeded()V
    .locals 1

    .line 1143
    iget-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->synchronizeToNativeViewHierarchy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->convertToImageView()V

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    .line 1147
    :cond_0
    return-void
.end method

.method private lockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 1
    .param p1, "controller"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 1004
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-nez v0, :cond_0

    .line 1005
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->lockPlatformViewInputConnection()V

    .line 1008
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->onInputConnectionLocked()V

    .line 1009
    return-void
.end method

.method private static makePlatformViewRenderTarget(Lio/flutter/view/TextureRegistry;)Lio/flutter/plugin/platform/PlatformViewRenderTarget;
    .locals 4
    .param p0, "textureRegistry"    # Lio/flutter/view/TextureRegistry;

    .line 1021
    sget-boolean v0, Lio/flutter/plugin/platform/PlatformViewsController;->enableSurfaceProducerRenderTarget:Z

    const/16 v1, 0x1d

    const-string v2, "PlatformViewsController"

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 1023
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_0

    .line 1024
    sget-object v0, Lio/flutter/view/TextureRegistry$SurfaceLifecycle;->resetInBackground:Lio/flutter/view/TextureRegistry$SurfaceLifecycle;

    goto :goto_0

    .line 1025
    :cond_0
    sget-object v0, Lio/flutter/view/TextureRegistry$SurfaceLifecycle;->manual:Lio/flutter/view/TextureRegistry$SurfaceLifecycle;

    :goto_0
    nop

    .line 1026
    .local v0, "lifecycle":Lio/flutter/view/TextureRegistry$SurfaceLifecycle;
    nop

    .line 1027
    invoke-interface {p0, v0}, Lio/flutter/view/TextureRegistry;->createSurfaceProducer(Lio/flutter/view/TextureRegistry$SurfaceLifecycle;)Lio/flutter/view/TextureRegistry$SurfaceProducer;

    move-result-object v1

    .line 1028
    .local v1, "textureEntry":Lio/flutter/view/TextureRegistry$SurfaceProducer;
    const-string v3, "PlatformView is using SurfaceProducer backend"

    invoke-static {v2, v3}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    new-instance v2, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;

    invoke-direct {v2, v1}, Lio/flutter/plugin/platform/SurfaceProducerPlatformViewRenderTarget;-><init>(Lio/flutter/view/TextureRegistry$SurfaceProducer;)V

    return-object v2

    .line 1031
    .end local v0    # "lifecycle":Lio/flutter/view/TextureRegistry$SurfaceLifecycle;
    .end local v1    # "textureEntry":Lio/flutter/view/TextureRegistry$SurfaceProducer;
    :cond_1
    sget-boolean v0, Lio/flutter/plugin/platform/PlatformViewsController;->enableImageRenderTarget:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 1032
    invoke-interface {p0}, Lio/flutter/view/TextureRegistry;->createImageTexture()Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    move-result-object v0

    .line 1033
    .local v0, "textureEntry":Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    const-string v1, "PlatformView is using ImageReader backend"

    invoke-static {v2, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    new-instance v1, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    invoke-direct {v1, v0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;-><init>(Lio/flutter/view/TextureRegistry$ImageTextureEntry;)V

    return-object v1

    .line 1036
    .end local v0    # "textureEntry":Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    :cond_2
    invoke-interface {p0}, Lio/flutter/view/TextureRegistry;->createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    move-result-object v0

    .line 1037
    .local v0, "textureEntry":Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    const-string v1, "PlatformView is using SurfaceTexture backend"

    invoke-static {v2, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    new-instance v1, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;

    invoke-direct {v1, v0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;-><init>(Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V

    return-object v1
.end method

.method private maybeInvokeOnFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;)V
    .locals 2
    .param p1, "view"    # Lio/flutter/plugin/platform/PlatformView;

    .line 904
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    if-nez v0, :cond_0

    .line 905
    const-string v0, "PlatformViewsController"

    const-string v1, "null flutterView"

    invoke-static {v0, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-interface {p1, v0}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 910
    return-void
.end method

.method private static parsePointerCoords(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;
    .locals 6
    .param p0, "rawCoords"    # Ljava/lang/Object;
    .param p1, "density"    # F

    .line 1076
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 1077
    .local v0, "coordsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1078
    .local v1, "coords":Landroid/view/MotionEvent$PointerCoords;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1079
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1080
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1081
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 1082
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 1083
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 1084
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 1085
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1086
    const/16 v2, 0x8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    float-to-double v4, p1

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1087
    return-object v1
.end method

.method private static parsePointerCoordsList(Ljava/lang/Object;F)Ljava/util/List;
    .locals 5
    .param p0, "rawCoordsList"    # Ljava/lang/Object;
    .param p1, "density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "F)",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerCoords;",
            ">;"
        }
    .end annotation

    .line 1066
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 1067
    .local v0, "rawCoords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v1, "pointerCoords":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerCoords;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1069
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->parsePointerCoords(Ljava/lang/Object;F)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1071
    :cond_0
    return-object v1
.end method

.method private static parsePointerProperties(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;
    .locals 3
    .param p0, "rawProperties"    # Ljava/lang/Object;

    .line 1057
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 1058
    .local v0, "propertiesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 1059
    .local v1, "properties":Landroid/view/MotionEvent$PointerProperties;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1060
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 1061
    return-object v1
.end method

.method private static parsePointerPropertiesList(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p0, "rawPropertiesList"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    .line 1047
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 1048
    .local v0, "rawProperties":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v1, "pointerProperties":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent$PointerProperties;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1050
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController;->parsePointerProperties(Ljava/lang/Object;)Landroid/view/MotionEvent$PointerProperties;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1051
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1052
    :cond_0
    return-object v1
.end method

.method private removeOverlaySurfaces()V
    .locals 3

    .line 1417
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    if-nez v0, :cond_0

    .line 1418
    const-string v0, "PlatformViewsController"

    const-string v1, "removeOverlaySurfaces called while flutter view is null"

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    return-void

    .line 1421
    :cond_0
    const/4 v0, 0x0

    .local v0, "viewId":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1422
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 1421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1424
    .end local v0    # "viewId":I
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1425
    return-void
.end method

.method private throwIfHCPPEnabled()V
    .locals 2

    .line 558
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->IsSurfaceControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    return-void

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to create a Hybrid Composition view with HC++ enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toLogicalPixels(D)I
    .locals 1
    .param p1, "physicalPixels"    # D

    .line 1103
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->getDisplayDensity()F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->toLogicalPixels(DF)I

    move-result v0

    return v0
.end method

.method private toLogicalPixels(DF)I
    .locals 2
    .param p1, "physicalPixels"    # D
    .param p3, "displayDensity"    # F

    .line 1099
    float-to-double v0, p3

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private toPhysicalPixels(D)I
    .locals 2
    .param p1, "logicalPixels"    # D

    .line 1095
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->getDisplayDensity()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static translateMotionEvent(Landroid/view/MotionEvent;[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .param p0, "originalEvent"    # Landroid/view/MotionEvent;
    .param p1, "pointerCoords"    # [Landroid/view/MotionEvent$PointerCoords;

    .line 688
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 689
    return-void

    .line 692
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 693
    .local v1, "xOffset":F
    aget-object v0, p1, v0

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 695
    .local v0, "yOffset":F
    invoke-virtual {p0, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 696
    return-void
.end method

.method private unlockInputConnection(Lio/flutter/plugin/platform/VirtualDisplayController;)V
    .locals 1
    .param p1, "controller"    # Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 1012
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-nez v0, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    .line 1016
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->onInputConnectionUnlocked()V

    .line 1017
    return-void
.end method

.method private static validateDirection(I)Z
    .locals 1
    .param p0, "direction"    # I

    .line 1042
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textureRegistry"    # Lio/flutter/view/TextureRegistry;
    .param p3, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 802
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 807
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    .line 808
    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;

    .line 809
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-direct {v0, p3}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    .line 810
    return-void

    .line 803
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "A PlatformViewsController can only be attached to a single output target.\nattach was called while the PlatformViewsController was already attached."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1, "accessibilityBridge"    # Lio/flutter/view/AccessibilityBridge;

    .line 914
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->setAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 915
    return-void
.end method

.method public attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0
    .param p1, "textInputPlugin"    # Lio/flutter/plugin/editing/TextInputPlugin;

    .line 932
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 933
    return-void
.end method

.method public attachToFlutterRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2
    .param p1, "flutterRenderer"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 1204
    new-instance v0, Lio/flutter/embedding/android/AndroidTouchProcessor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lio/flutter/embedding/android/AndroidTouchProcessor;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)V

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    .line 1205
    return-void
.end method

.method public attachToView(Lio/flutter/embedding/android/FlutterView;)V
    .locals 3
    .param p1, "newFlutterView"    # Lio/flutter/embedding/android/FlutterView;

    .line 854
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 856
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 857
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformViewWrapper;

    .line 858
    .local v1, "view":Lio/flutter/plugin/platform/PlatformViewWrapper;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 856
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformViewWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 862
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 863
    .local v1, "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 861
    .end local v1    # "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 866
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 867
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformView;

    .line 868
    .local v1, "view":Lio/flutter/plugin/platform/PlatformView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-interface {v1, v2}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    .line 866
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 870
    .end local v0    # "index":I
    :cond_2
    return-void
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 950
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 951
    return v0

    .line 953
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->contextToEmbeddedView:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 954
    return v0

    .line 956
    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->contextToEmbeddedView:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 957
    .local v0, "platformView":Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 958
    const/4 v1, 0x1

    return v1

    .line 960
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method public configureForTextureLayerComposition(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 11
    .param p1, "platformView"    # Lio/flutter/plugin/platform/PlatformView;
    .param p2, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hosting view in view hierarchy for platform view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlatformViewsController"

    invoke-static {v1, v0}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-wide v0, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalWidth:D

    invoke-direct {p0, v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v0

    .line 620
    .local v0, "physicalWidth":I
    iget-wide v1, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalHeight:D

    invoke-direct {p0, v1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v1

    .line 623
    .local v1, "physicalHeight":I
    iget-boolean v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->usesSoftwareRendering:Z

    if-eqz v2, :cond_0

    .line 624
    new-instance v2, Lio/flutter/plugin/platform/PlatformViewWrapper;

    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lio/flutter/plugin/platform/PlatformViewWrapper;-><init>(Landroid/content/Context;)V

    .line 625
    .local v2, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    const-wide/16 v3, -0x1

    .local v3, "textureId":J
    goto :goto_0

    .line 627
    .end local v2    # "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    .end local v3    # "textureId":J
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->makePlatformViewRenderTarget(Lio/flutter/view/TextureRegistry;)Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    move-result-object v2

    .line 628
    .local v2, "renderTarget":Lio/flutter/plugin/platform/PlatformViewRenderTarget;
    new-instance v3, Lio/flutter/plugin/platform/PlatformViewWrapper;

    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lio/flutter/plugin/platform/PlatformViewWrapper;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/PlatformViewRenderTarget;)V

    .line 629
    .local v3, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getId()J

    move-result-wide v4

    move-object v2, v3

    move-wide v3, v4

    .line 631
    .local v2, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    .local v3, "textureId":J
    :goto_0
    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-virtual {v2, v5}, Lio/flutter/plugin/platform/PlatformViewWrapper;->setTouchProcessor(Lio/flutter/embedding/android/AndroidTouchProcessor;)V

    .line 632
    invoke-virtual {v2, v0, v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->resizeRenderTarget(II)V

    .line 634
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x33

    invoke-direct {v5, v0, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 638
    .local v5, "viewWrapperLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-wide v6, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalTop:D

    invoke-direct {p0, v6, v7}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v6

    .line 639
    .local v6, "physicalTop":I
    iget-wide v7, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->logicalLeft:D

    invoke-direct {p0, v7, v8}, Lio/flutter/plugin/platform/PlatformViewsController;->toPhysicalPixels(D)I

    move-result v7

    .line 640
    .local v7, "physicalLeft":I
    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 641
    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 642
    invoke-virtual {v2, v5}, Lio/flutter/plugin/platform/PlatformViewWrapper;->setLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 645
    invoke-interface {p1}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v8

    .line 646
    .local v8, "embeddedView":Landroid/view/View;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 658
    invoke-virtual {v2, v8}, Lio/flutter/plugin/platform/PlatformViewWrapper;->addView(Landroid/view/View;)V

    .line 662
    new-instance v9, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0, p2}, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    invoke-virtual {v2, v9}, Lio/flutter/plugin/platform/PlatformViewWrapper;->setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 671
    iget-object v9, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v9, v2}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 672
    iget-object v9, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    iget v10, p2, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v9, v10, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 674
    invoke-direct {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->maybeInvokeOnFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;)V

    .line 676
    return-wide v3
.end method

.method public createOverlaySurface()Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 5

    .line 1391
    new-instance v0, Lio/flutter/plugin/platform/PlatformOverlayView;

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 1393
    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 1394
    invoke-virtual {v2}, Lio/flutter/embedding/android/FlutterView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 1395
    invoke-virtual {v3}, Lio/flutter/embedding/android/FlutterView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/flutter/plugin/platform/PlatformOverlayView;-><init>(Landroid/content/Context;IILio/flutter/plugin/platform/AccessibilityEventsDelegate;)V

    .line 1391
    invoke-virtual {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->createOverlaySurface(Lio/flutter/plugin/platform/PlatformOverlayView;)Lio/flutter/embedding/engine/FlutterOverlaySurface;

    move-result-object v0

    return-object v0
.end method

.method public createOverlaySurface(Lio/flutter/plugin/platform/PlatformOverlayView;)Lio/flutter/embedding/engine/FlutterOverlaySurface;
    .locals 3
    .param p1, "imageView"    # Lio/flutter/plugin/platform/PlatformOverlayView;

    .line 1371
    iget v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->nextOverlayLayerId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->nextOverlayLayerId:I

    .line 1372
    .local v0, "id":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1373
    new-instance v1, Lio/flutter/embedding/engine/FlutterOverlaySurface;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/PlatformOverlayView;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lio/flutter/embedding/engine/FlutterOverlaySurface;-><init>(ILandroid/view/Surface;)V

    return-object v1
.end method

.method public createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Z)Lio/flutter/plugin/platform/PlatformView;
    .locals 7
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
    .param p2, "wrapContext"    # Z

    .line 519
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewRegistryImpl;->getFactory(Ljava/lang/String;)Lio/flutter/plugin/platform/PlatformViewFactory;

    move-result-object v0

    .line 520
    .local v0, "viewFactory":Lio/flutter/plugin/platform/PlatformViewFactory;
    if-eqz v0, :cond_3

    .line 525
    const/4 v1, 0x0

    .line 526
    .local v1, "createParams":Ljava/lang/Object;
    iget-object v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewFactory;->getCreateArgsCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    iget-object v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Lio/flutter/plugin/common/MessageCodec;->decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    .line 533
    :cond_0
    if-eqz p2, :cond_1

    new-instance v2, Landroid/content/MutableContextWrapper;

    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    .line 534
    .local v2, "mutableContext":Landroid/content/Context;
    :goto_0
    iget v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    .line 535
    invoke-virtual {v0, v2, v3, v1}, Lio/flutter/plugin/platform/PlatformViewFactory;->create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;

    move-result-object v3

    .line 538
    .local v3, "platformView":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v3}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v4

    .line 539
    .local v4, "embeddedView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 543
    iget v5, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->direction:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 544
    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    iget v6, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    invoke-direct {p0, v3}, Lio/flutter/plugin/platform/PlatformViewsController;->maybeInvokeOnFlutterViewAttached(Lio/flutter/plugin/platform/PlatformView;)V

    .line 546
    return-object v3

    .line 540
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 521
    .end local v1    # "createParams":Ljava/lang/Object;
    .end local v2    # "mutableContext":Landroid/content/Context;
    .end local v3    # "platformView":Lio/flutter/plugin/platform/PlatformView;
    .end local v4    # "embeddedView":Landroid/view/View;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create a platform view of unregistered type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public destroyOverlaySurfaces()V
    .locals 2

    .line 1405
    const/4 v0, 0x0

    .local v0, "viewId":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1406
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformOverlayView;

    .line 1407
    .local v1, "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformOverlayView;->detachFromRenderer()V

    .line 1408
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformOverlayView;->closeImageReader()V

    .line 1405
    .end local v1    # "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1414
    .end local v0    # "viewId":I
    :cond_0
    return-void
.end method

.method public detach()V
    .locals 2

    .line 838
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;)V

    .line 841
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->destroyOverlaySurfaces()V

    .line 842
    iput-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    .line 843
    iput-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    .line 844
    iput-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;

    .line 845
    return-void
.end method

.method public detachAccessibilityBridge()V
    .locals 2

    .line 919
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->setAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 920
    return-void
.end method

.method public detachFromView()V
    .locals 3

    .line 881
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 882
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->viewWrappers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformViewWrapper;

    .line 883
    .local v1, "view":Lio/flutter/plugin/platform/PlatformViewWrapper;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 881
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformViewWrapper;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "index":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 887
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 888
    .local v1, "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v2, v1}, Lio/flutter/embedding/android/FlutterView;->removeView(Landroid/view/View;)V

    .line 886
    .end local v1    # "view":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 891
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->destroyOverlaySurfaces()V

    .line 892
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->removeOverlaySurfaces()V

    .line 893
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    .line 897
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_2
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 898
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformView;

    .line 899
    .local v1, "view":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v1}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewDetached()V

    .line 897
    .end local v1    # "view":Lio/flutter/plugin/platform/PlatformView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 901
    .end local v0    # "index":I
    :cond_2
    return-void
.end method

.method public detachTextInputPlugin()V
    .locals 1

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 938
    return-void
.end method

.method public disposePlatformView(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 1139
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->dispose(I)V

    .line 1140
    return-void
.end method

.method public getOverlayLayerViews()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/flutter/plugin/platform/PlatformOverlayView;",
            ">;"
        }
    .end annotation

    .line 1429
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPlatformViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "viewId"    # I

    .line 982
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 984
    .local v0, "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 987
    .end local v0    # "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 988
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_1

    .line 989
    const/4 v1, 0x0

    return-object v1

    .line 991
    :cond_1
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getPlatformViewsChannel()Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
    .locals 1

    .line 511
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    return-object v0
.end method

.method public getRegistry()Lio/flutter/plugin/platform/PlatformViewRegistry;
    .locals 1

    .line 964
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->registry:Lio/flutter/plugin/platform/PlatformViewRegistryImpl;

    return-object v0
.end method

.method initializePlatformViewIfNeeded(I)Z
    .locals 7
    .param p1, "viewId"    # I

    .line 1157
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 1158
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_0

    .line 1159
    const/4 v1, 0x0

    return v1

    .line 1161
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1162
    return v2

    .line 1164
    :cond_1
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v1

    .line 1165
    .local v1, "embeddedView":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 1169
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1174
    new-instance v3, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController;->context:Landroid/content/Context;

    .line 1176
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lio/flutter/plugin/platform/PlatformViewsController;->androidTouchProcessor:Lio/flutter/embedding/android/AndroidTouchProcessor;

    invoke-direct {v3, v4, v5, v6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;-><init>(Landroid/content/Context;FLio/flutter/embedding/android/AndroidTouchProcessor;)V

    .line 1178
    .local v3, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    new-instance v4, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;I)V

    invoke-virtual {v3, v4}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1187
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1196
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1198
    invoke-virtual {v3, v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->addView(Landroid/view/View;)V

    .line 1199
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v4, v3}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 1200
    return v2

    .line 1170
    .end local v3    # "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The Android view returned from PlatformView#getView() was already added to a parent view."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1166
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "PlatformView#getView() returned null, but an Android view reference was expected."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method synthetic lambda$configureForTextureLayerComposition$1$io-flutter-plugin-platform-PlatformViewsController(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Landroid/view/View;Z)V
    .locals 2
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 664
    if-eqz p3, :cond_0

    .line 665
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->invokeViewFocused(I)V

    goto :goto_0

    .line 666
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin;->clearPlatformViewClient(I)V

    .line 669
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$configureForVirtualDisplay$0$io-flutter-plugin-platform-PlatformViewsController(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Landroid/view/View;Z)V
    .locals 2
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 586
    if-eqz p3, :cond_0

    .line 587
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->invokeViewFocused(I)V

    .line 589
    :cond_0
    return-void
.end method

.method synthetic lambda$initializePlatformViewIfNeeded$2$io-flutter-plugin-platform-PlatformViewsController(ILandroid/view/View;Z)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "hasFocus"    # Z

    .line 1180
    if-eqz p3, :cond_0

    .line 1181
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewsChannel:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->invokeViewFocused(I)V

    goto :goto_0

    .line 1182
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->textInputPlugin:Lio/flutter/plugin/editing/TextInputPlugin;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->clearPlatformViewClient(I)V

    .line 1185
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$onEndFrame$3$io-flutter-plugin-platform-PlatformViewsController()V
    .locals 1

    .line 1299
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->finishFrame(Z)V

    .line 1300
    return-void
.end method

.method public onBeginFrame()V
    .locals 1

    .line 1280
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedOverlayLayerIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1281
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedPlatformViewIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1282
    return-void
.end method

.method public onDetachedFromJNI()V
    .locals 0

    .line 972
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->disposeAllViews()V

    .line 973
    return-void
.end method

.method public onDisplayOverlaySurface(IIIII)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1260
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1263
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->initializeRootImageViewIfNeeded()V

    .line 1265
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->overlayLayerViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformOverlayView;

    .line 1266
    .local v0, "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1267
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    invoke-virtual {v1, v0}, Lio/flutter/embedding/android/FlutterView;->addView(Landroid/view/View;)V

    .line 1270
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1271
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1272
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1273
    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1274
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lio/flutter/plugin/platform/PlatformOverlayView;->setVisibility(I)V

    .line 1275
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformOverlayView;->bringToFront()V

    .line 1276
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedOverlayLayerIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1277
    return-void

    .line 1261
    .end local v0    # "overlayView":Lio/flutter/plugin/platform/PlatformOverlayView;
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The overlay surface (id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDisplayPlatformView(IIIIIIILio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "viewWidth"    # I
    .param p7, "viewHeight"    # I
    .param p8, "mutatorsStack"    # Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;

    .line 1229
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->initializeRootImageViewIfNeeded()V

    .line 1230
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->initializePlatformViewIfNeeded(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViewParent:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 1235
    .local v1, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v2, p8

    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "width":I
    .end local p5    # "height":I
    .end local p8    # "mutatorsStack":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
    .local v2, "mutatorsStack":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;
    .local v3, "x":I
    .local v4, "y":I
    .local v5, "width":I
    .local v6, "height":I
    invoke-virtual/range {v1 .. v6}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->readyToDisplay(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorsStack;IIII)V

    .line 1236
    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setVisibility(I)V

    .line 1237
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->bringToFront()V

    .line 1239
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p6, p7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1241
    .local p2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object p3, p0, Lio/flutter/plugin/platform/PlatformViewsController;->platformViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/flutter/plugin/platform/PlatformView;

    invoke-interface {p3}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object p3

    .line 1242
    .local p3, "view":Landroid/view/View;
    if-eqz p3, :cond_1

    .line 1243
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1244
    invoke-virtual {p3}, Landroid/view/View;->bringToFront()V

    .line 1246
    :cond_1
    iget-object p4, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedPlatformViewIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1247
    return-void
.end method

.method public onEndFrame()V
    .locals 2

    .line 1294
    iget-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->currentFrameUsedPlatformViewIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    iput-boolean v1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    .line 1296
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    new-instance v1, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/platform/PlatformViewsController;)V

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/FlutterView;->revertImageView(Ljava/lang/Runnable;)V

    .line 1301
    return-void

    .line 1312
    :cond_0
    iget-boolean v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterViewConvertedToImageView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 1313
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->acquireLatestImageViewFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1314
    .local v1, "isFrameRenderedUsingImageReaders":Z
    :goto_0
    invoke-direct {p0, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->finishFrame(Z)V

    .line 1315
    return-void
.end method

.method public onPreEngineRestart()V
    .locals 0

    .line 976
    invoke-direct {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->disposeAllViews()V

    .line 977
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 1128
    .local v1, "vdc":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v1}, Lio/flutter/plugin/platform/VirtualDisplayController;->resetSurface()V

    .line 1129
    .end local v1    # "vdc":Lio/flutter/plugin/platform/VirtualDisplayController;
    goto :goto_0

    .line 1130
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .line 1116
    const/16 v0, 0x28

    if-ge p1, v0, :cond_0

    .line 1117
    return-void

    .line 1119
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 1120
    .local v1, "vdc":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v1}, Lio/flutter/plugin/platform/VirtualDisplayController;->clearSurface()V

    .line 1121
    .end local v1    # "vdc":Lio/flutter/plugin/platform/VirtualDisplayController;
    goto :goto_0

    .line 1122
    :cond_1
    return-void
.end method

.method public setFlutterJNI(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 0
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 995
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 996
    return-void
.end method

.method public setSoftwareRendering(Z)V
    .locals 0
    .param p1, "useSoftwareRendering"    # Z

    .line 825
    iput-boolean p1, p0, Lio/flutter/plugin/platform/PlatformViewsController;->usesSoftwareRendering:Z

    .line 826
    return-void
.end method

.method public toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewTouch;Z)Landroid/view/MotionEvent;
    .locals 23
    .param p1, "density"    # F
    .param p2, "touch"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;
    .param p3, "usingVirtualDisplay"    # Z

    .line 701
    move-object/from16 v0, p2

    iget-wide v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->motionEventId:J

    .line 702
    invoke-static {v1, v2}, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->from(J)Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;

    move-result-object v1

    .line 703
    .local v1, "motionEventId":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    move-object/from16 v2, p0

    iget-object v3, v2, Lio/flutter/plugin/platform/PlatformViewsController;->motionEventTracker:Lio/flutter/embedding/android/MotionEventTracker;

    invoke-virtual {v3, v1}, Lio/flutter/embedding/android/MotionEventTracker;->pop(Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 710
    .local v3, "trackedEvent":Landroid/view/MotionEvent;
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerCoords:Ljava/lang/Object;

    .line 711
    move/from16 v5, p1

    invoke-static {v4, v5}, Lio/flutter/plugin/platform/PlatformViewsController;->parsePointerCoordsList(Ljava/lang/Object;F)Ljava/util/List;

    move-result-object v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    new-array v6, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 712
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, [Landroid/view/MotionEvent$PointerCoords;

    .line 717
    .local v13, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->rawPointerPropertiesList:Ljava/lang/Object;

    .line 718
    invoke-static {v4}, Lio/flutter/plugin/platform/PlatformViewsController;->parsePointerPropertiesList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    new-array v6, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 719
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, [Landroid/view/MotionEvent$PointerProperties;

    .line 721
    .local v12, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    if-nez p3, :cond_1

    if-eqz v3, :cond_1

    .line 723
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    if-ne v4, v6, :cond_0

    .line 724
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget v6, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->action:I

    if-ne v4, v6, :cond_0

    .line 726
    invoke-static {v3, v13}, Lio/flutter/plugin/platform/PlatformViewsController;->translateMotionEvent(Landroid/view/MotionEvent;[Landroid/view/MotionEvent$PointerCoords;)V

    .line 727
    return-object v3

    .line 738
    :cond_0
    nop

    .line 739
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    .line 740
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget v10, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->action:I

    iget v11, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    .line 745
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    .line 746
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v15

    .line 747
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v16

    .line 748
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v17

    .line 749
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v18

    .line 750
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v19

    .line 751
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSource()I

    move-result v20

    .line 752
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    .line 738
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    return-object v4

    .line 757
    :cond_1
    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->downTime:Ljava/lang/Number;

    .line 758
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->eventTime:Ljava/lang/Number;

    .line 759
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    iget v10, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->action:I

    iget v11, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->pointerCount:I

    iget v14, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->metaState:I

    iget v15, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->buttonState:I

    iget v4, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->xPrecision:F

    move-object/from16 v22, v1

    .end local v1    # "motionEventId":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    .local v22, "motionEventId":Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    iget v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->yPrecision:F

    move/from16 v17, v1

    iget v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->deviceId:I

    move/from16 v18, v1

    iget v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->edgeFlags:I

    move/from16 v19, v1

    iget v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->source:I

    move/from16 v20, v1

    iget v1, v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->flags:I

    .line 757
    move/from16 v21, v1

    move/from16 v16, v4

    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method public usesVirtualDisplay(I)Z
    .locals 2
    .param p1, "id"    # I

    .line 1000
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
